USE [master]
GO

update Lucity..cmfields set defaultvalue = null where defaultvalue = ''
update Lucity..elfields set defaultvalue = null where defaultvalue = ''
update Lucity..effields set defaultvalue = null where defaultvalue = ''
update Lucity..pkfields set defaultvalue = null where defaultvalue = ''
update Lucity..swfields set defaultvalue = null where defaultvalue = ''
update Lucity..smfields set defaultvalue = null where defaultvalue = ''
update Lucity..stfields set defaultvalue = null where defaultvalue = ''
update Lucity..wtfields set defaultvalue = null where defaultvalue = ''
update Lucity..wkfields set defaultvalue = null where defaultvalue = ''
update Lucity..cmfields set calculation = null where calculation = ''
update Lucity..elfields set calculation = null where calculation = ''
update Lucity..effields set calculation = null where calculation = ''
update Lucity..pkfields set calculation = null where calculation = ''
update Lucity..swfields set calculation = null where calculation = ''
update Lucity..smfields set calculation = null where calculation = ''
update Lucity..stfields set calculation = null where calculation = ''
update Lucity..wtfields set calculation = null where calculation = ''
update Lucity..wkfields set calculation = null where calculation = ''
update Lucity..cmfields set UserName = null
update Lucity..elfields set UserName = null
update Lucity..effields set UserName = null
update Lucity..pkfields set UserName = null
update Lucity..swfields set UserName = null
update Lucity..smfields set UserName = null
update Lucity..stfields set UserName = null
update Lucity..wtfields set UserName = null
update Lucity..wkfields set UserName = null
update Lucity..cmfields set Allowinput = 1
update Lucity..elfields set Allowinput = 1
update Lucity..effields set Allowinput = 1
update Lucity..pkfields set Allowinput = 1
update Lucity..swfields set Allowinput = 1
update Lucity..smfields set Allowinput = 1
update Lucity..stfields set Allowinput = 1
update Lucity..wtfields set Allowinput = 1
update Lucity..wkfields set Allowinput = 1
DELETE FROM Lucity..CMFIELDSDESC WHERE ID NOT IN (SELECT ID FROM Lucity..CMFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..CMFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM Lucity..CMFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..ELFIELDSDESC WHERE ID NOT IN (SELECT ID FROM Lucity..ELFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..ELFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM Lucity..ELFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..EFFIELDSDESC WHERE ID NOT IN (SELECT ID FROM Lucity..EFFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..EFFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM Lucity..EFFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..PKFIELDSDESC WHERE ID NOT IN (SELECT ID FROM Lucity..PKFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..PKFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM Lucity..PKFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..SWFIELDSDESC WHERE ID NOT IN (SELECT ID FROM Lucity..SWFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..SWFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM Lucity..SWFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..SMFIELDSDESC WHERE ID NOT IN (SELECT ID FROM Lucity..SMFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..SMFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM Lucity..SMFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..STFIELDSDESC WHERE ID NOT IN (SELECT ID FROM Lucity..STFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..STFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM Lucity..STFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..WTFIELDSDESC WHERE ID NOT IN (SELECT ID FROM Lucity..WTFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..WTFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM Lucity..WTFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..WKFIELDSDESC WHERE ID NOT IN (SELECT ID FROM Lucity..WKFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM Lucity..WKFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM Lucity..WKFIELDS WHERE SHAREDFIELD IS NULL)
delete from Lucity..activeuser
delete from Lucity..AUDITLOGONS
delete from Lucity..Group_Assignment WHERE Group_name + Initials <> 'PublicWebGroupPublicWebUser' AND Group_name + Initials <> 'RESTAPIGroupRESTAPILogon'
delete from Lucity..OBJECTLOCK
delete from Lucity..TEMPORARYTOKENS
delete from Lucity..CLIENTLICENSES
delete from Lucity..User_Info WHERE Initials NOT IN ('PublicWebUser', 'RESTAPILogOn', 'BackgroundTaskUser')
update Lucity..User_Info set Password = '5A69527563653665' where initials = 'PublicWebUser'
update Lucity..User_Info set Password = '' where initials = 'RESTAPILogOn'
delete from Lucity..USERLICENSES
delete from Lucity..WINDOWSTOUSER	
update Lucity..SYSTEMSETTINGS set SYSSET_VALUE = NULL WHERE SYSSET_NAME IN ('LicenseIdentifier','ClientNumber','ClientName','ConfigDirectory','LicenseType', 'LicenseCode', 'CustomerAccountID')
update Lucity..CONNECTSTRINGS set CONN_SERVER = NULL, CONN_DB = NULL, CONN_USERID = NULL, CONN_PASSWORD = NULL, CONN_DISABLED = 0, CONN_COMPT = 1, CONN_PARMS = NULL

USE LUCITY
GO
EXEC sp_changedbowner @loginame = N'sa', @map = false
GO
ALTER DATABASE LUCITY SET RECOVERY SIMPLE
ALTER DATABASE LUCITY SET RECOVERY FULL
DBCC SHRINKFILE (LucityLog, 100)


DECLARE @FileSize int,
	@NewFileSize varchar(10),
	@RemoveViewsql VARCHAR(1000),
	@DropUserssql VARCHAR(1000),
	@sql VARCHAR(1000),
	@VER INT
	
SELECT @VER = cmptlevel FROM [master].dbo.sysdatabases WHERE NAME = 'MODEL'
	
SET @DropUserssql = 'USE ++

DECLARE @userDefinition AS NVARCHAR(1000)
DECLARE USER_CURSOR CURSOR STATIC FOR
SELECT ''sp_revokedbaccess '' + name FROM sysusers WHERE issqluser = 1 AND hasdbaccess = 1 AND name not in (''guest'', ''dbo'')
OPEN USER_CURSOR
FETCH NEXT FROM USER_CURSOR 
INTO @userDefinition
WHILE @@FETCH_STATUS = 0
BEGIN
	EXEC (@userDefinition)
	FETCH NEXT FROM USER_CURSOR INTO @userDefinition
END
CLOSE USER_CURSOR
DEALLOCATE USER_CURSOR'

SELECT @sql = REPLACE(@DropUserssql, '++', 'Lucity')
EXEC (@sql)
EXEC ('ALTER DATABASE [Lucity] MODIFY FILE ( NAME = ''Lucity'', MAXSIZE = 1500)')
ALTER DATABASE LUCITY SET RECOVERY SIMPLE
ALTER DATABASE LUCITY SET RECOVERY FULL
ALTER DATABASE [Lucity] MODIFY FILE ( NAME = N'LucityLog', MAXSIZE = 1000)
EXEC [master]..sp_dbcmptlevel [Lucity], @VER


GO

BACKUP DATABASE Lucity TO DISK =  'D:\SQLServerBackups\2008\Lucity1700.bak' WITH INIT
GO