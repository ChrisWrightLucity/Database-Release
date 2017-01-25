/* THIS SCRIPT POPULATES THE LSYSTEMBOJECTS TABLE IN THE LUCITYDEV DATABASE BASED ON THE STRUCTURE INFORMATION OF THE LUCITYNIGHTLY DATABASE AS THE NIGHTLY DATABASE DOES NOT HAVE CUSTOM OBJECTS IN IT */

USE LUCITYNIGHTLY
GO

DECLARE @IGNORE_TABLES_TABLE TABLE (TABLE_NAME VARCHAR(100))
INSERT INTO @IGNORE_TABLES_TABLE SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES T1 LEFT JOIN ::fn_listextendedproperty(default, 'user', 'dbo', 'table', default, default, default) SYSPROP ON T1.TABLE_NAME = SYSPROP.OBJNAME COLLATE SQL_Latin1_General_CP1_CI_AS WHERE TABLE_TYPE = 'BASE TABLE' AND (OBJECTPROPERTY(OBJECT_ID(T1.TABLE_NAME), 'IsSystemTable') = 1 OR SYSPROP.NAME = 'microsoft_database_tools_support' OR OBJECTPROPERTY(OBJECT_ID(T1.TABLE_NAME), 'IsMSShipped') = 1)

INSERT INTO LUCITYDEV.DBO.LSYSTEMOBJECTS (ObjectName, ObjectType)
SELECT LUCITY_OBJECTS.* FROM 
(
SELECT UPPER(TABLE_NAME) AS NAME, 'TABLE' AS TYPE FROM INFORMATION_SCHEMA.TABLES V1 WHERE TABLE_SCHEMA = 'dbo' AND TABLE_TYPE = 'BASE TABLE' AND TABLE_NAME NOT IN (SELECT TABLE_NAME FROM @IGNORE_TABLES_TABLE)
UNION
SELECT UPPER(I.NAME) AS NAME, 'INDEX' AS TYPE FROM SYSOBJECTS O WITH(NOLOCK)INNER JOIN SYSINDEXES I WITH(NOLOCK) ON O.ID = I.ID INNER JOIN SYSINDEXKEYS K WITH(NOLOCK) ON I.ID = K.ID AND I.INDID = K.INDID INNER JOIN SYSCOLUMNS C WITH(NOLOCK) ON K.ID = C.ID AND K.COLID = C.COLID WHERE O.XTYPE = 'U' AND I.NAME NOT LIKE '_wa_sys_%' AND O.NAME NOT IN (SELECT TABLE_NAME FROM @IGNORE_TABLES_TABLE)
UNION
SELECT UPPER(OBJECT_NAME(CONSTID)) AS NAME, 'RELATIONSHIP' AS TYPE FROM SYSFOREIGNKEYS V1 INNER JOIN INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS V2 ON OBJECT_NAME(V1.CONSTID) = V2.CONSTRAINT_NAME
UNION
SELECT DISTINCT UPPER(NAME) AS NAME, 'VIEW' AS TYPE FROM sys.all_views WHERE is_ms_shipped = 0
UNION
SELECT SYSOBJECTS.NAME AS NAME, 'PROCEDURE' AS TYPE FROM SYSOBJECTS LEFT JOIN ::fn_listextendedproperty(default, 'user', 'dbo', 'procedure', default, default, default) SYSPROP ON SYSOBJECTS.NAME = SYSPROP.OBJNAME COLLATE SQL_Latin1_General_CP1_CI_AS WHERE OBJECTPROPERTY(SYSOBJECTS.ID, 'IsProcedure') = 1 AND OBJECTPROPERTY (SYSOBJECTS.ID, 'IsMSShipped') = 0 AND (SYSPROP.NAME <> 'microsoft_database_tools_support' OR SYSPROP.NAME IS NULL)
UNION
SELECT SYSOBJECTS.NAME, 'TRIGGER' AS TYPE FROM SYSOBJECTS LEFT JOIN ::fn_listextendedproperty(default, 'user', 'dbo', 'trigger', default, default, default) SYSPROP ON SYSOBJECTS.NAME = SYSPROP.OBJNAME COLLATE SQL_Latin1_General_CP1_CI_AS WHERE OBJECTPROPERTY(SYSOBJECTS.ID, 'IsTrigger') = 1 AND OBJECTPROPERTY (SYSOBJECTS.ID, 'IsMSShipped') = 0 AND (SYSPROP.NAME <> 'microsoft_database_tools_support' OR SYSPROP.NAME IS NULL)
) LUCITY_OBJECTS LEFT JOIN LUCITYDEV.DBO.LSYSTEMOBJECTS EXISTING_OBJECT ON LUCITY_OBJECTS.NAME = EXISTING_OBJECT.ObjectName AND LUCITY_OBJECTS.TYPE = EXISTING_OBJECT.ObjectType WHERE EXISTING_OBJECT.ObjectName IS NULL