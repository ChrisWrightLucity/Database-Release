/* Queries to list all new XXWEBRPTS and XXRPTS records for a release */
SELECT 'CMWEBRPTS' AS TABLE_NAME, T1.RT_MODULEID, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC, T1.RT_MOD_BY FROM LucityDEV..CMWEBRPTS T1 LEFT JOIN LucityNIGHTLY..CMWEBRPTS T2 ON T1.RT_MODULEID = T2.RT_MODULEID AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'ELWEBRPTS' AS TABLE_NAME, T1.RT_MODULEID, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC, T1.RT_MOD_BY FROM LucityDEV..ELWEBRPTS T1 LEFT JOIN LucityNIGHTLY..ELWEBRPTS T2 ON T1.RT_MODULEID = T2.RT_MODULEID AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'EFWEBRPTS' AS TABLE_NAME, T1.RT_MODULEID, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC, T1.RT_MOD_BY FROM LucityDEV..EFWEBRPTS T1 LEFT JOIN LucityNIGHTLY..EFWEBRPTS T2 ON T1.RT_MODULEID = T2.RT_MODULEID AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'PKWEBRPTS' AS TABLE_NAME, T1.RT_MODULEID, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC, T1.RT_MOD_BY FROM LucityDEV..PKWEBRPTS T1 LEFT JOIN LucityNIGHTLY..PKWEBRPTS T2 ON T1.RT_MODULEID = T2.RT_MODULEID AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'SWWEBRPTS' AS TABLE_NAME, T1.RT_MODULEID, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC, T1.RT_MOD_BY FROM LucityDEV..SWWEBRPTS T1 LEFT JOIN LucityNIGHTLY..SWWEBRPTS T2 ON T1.RT_MODULEID = T2.RT_MODULEID AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'SMWEBRPTS' AS TABLE_NAME, T1.RT_MODULEID, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC, T1.RT_MOD_BY FROM LucityDEV..SMWEBRPTS T1 LEFT JOIN LucityNIGHTLY..SMWEBRPTS T2 ON T1.RT_MODULEID = T2.RT_MODULEID AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'STWEBRPTS' AS TABLE_NAME, T1.RT_MODULEID, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC, T1.RT_MOD_BY FROM LucityDEV..STWEBRPTS T1 LEFT JOIN LucityNIGHTLY..STWEBRPTS T2 ON T1.RT_MODULEID = T2.RT_MODULEID AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'WTWEBRPTS' AS TABLE_NAME, T1.RT_MODULEID, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC, T1.RT_MOD_BY FROM LucityDEV..WTWEBRPTS T1 LEFT JOIN LucityNIGHTLY..WTWEBRPTS T2 ON T1.RT_MODULEID = T2.RT_MODULEID AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'WKWEBRPTS' AS TABLE_NAME, T1.RT_MODULEID, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC, T1.RT_MOD_BY FROM LucityDEV..WKWEBRPTS T1 LEFT JOIN LucityNIGHTLY..WKWEBRPTS T2 ON T1.RT_MODULEID = T2.RT_MODULEID AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'USWEBRPTS' AS TABLE_NAME, T1.RT_MODULEID, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC, T1.RT_MOD_BY FROM LucityDEV..USWEBRPTS T1 LEFT JOIN LucityNIGHTLY..USWEBRPTS T2 ON T1.RT_MODULEID = T2.RT_MODULEID AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL

SELECT 'CMRPTS' AS TABLE_NAME, T1.RT_MODULE, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC FROM LucityDEV..CMRPTS T1 LEFT JOIN LucityNIGHTLY..CMRPTS T2 ON T1.RT_MODULE = T2.RT_MODULE AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'ELRPTS' AS TABLE_NAME, T1.RT_MODULE, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC FROM LucityDEV..ELRPTS T1 LEFT JOIN LucityNIGHTLY..ELRPTS T2 ON T1.RT_MODULE = T2.RT_MODULE AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'EFRPTS' AS TABLE_NAME, T1.RT_MODULE, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC FROM LucityDEV..EFRPTS T1 LEFT JOIN LucityNIGHTLY..EFRPTS T2 ON T1.RT_MODULE = T2.RT_MODULE AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'PKRPTS' AS TABLE_NAME, T1.RT_MODULE, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC FROM LucityDEV..PKRPTS T1 LEFT JOIN LucityNIGHTLY..PKRPTS T2 ON T1.RT_MODULE = T2.RT_MODULE AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'SWRPTS' AS TABLE_NAME, T1.RT_MODULE, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC FROM LucityDEV..SWRPTS T1 LEFT JOIN LucityNIGHTLY..SWRPTS T2 ON T1.RT_MODULE = T2.RT_MODULE AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'SMRPTS' AS TABLE_NAME, T1.RT_MODULE, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC FROM LucityDEV..SMRPTS T1 LEFT JOIN LucityNIGHTLY..SMRPTS T2 ON T1.RT_MODULE = T2.RT_MODULE AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'STRPTS' AS TABLE_NAME, T1.RT_MODULE, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC FROM LucityDEV..STRPTS T1 LEFT JOIN LucityNIGHTLY..STRPTS T2 ON T1.RT_MODULE = T2.RT_MODULE AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'WTRPTS' AS TABLE_NAME, T1.RT_MODULE, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC FROM LucityDEV..WTRPTS T1 LEFT JOIN LucityNIGHTLY..WTRPTS T2 ON T1.RT_MODULE = T2.RT_MODULE AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL
UNION
SELECT 'WKRPTS' AS TABLE_NAME, T1.RT_MODULE, T1.RT_NAME, T1.RT_FILE, T1.RT_DESC FROM LucityDEV..WKRPTS T1 LEFT JOIN LucityNIGHTLY..WKRPTS T2 ON T1.RT_MODULE = T2.RT_MODULE AND T1.RT_FILE = T2.RT_FILE WHERE T2.RT_ID IS NULL