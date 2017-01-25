/* This script is intended to be used at release time when generating scripts for the released conversion process.  This script is not applicable to "Clean" or "Eval" specific processes */
/* "LucityDev" is the master database for the release and "LucityNightly" is an Eval database from the prior release */

/* Remove user-defined code/types from LucityDEV for picklists that existed in the prior release and remove all user-defined code/types from LucityNightly */
/* NOTE that it is assumed that the release processes will not be generating DELETE statements for XXFIELDSDESC and XXFIELDSDESCTXT.  If this assumption changes, considerations for a code/type
   which was NOT user-defined and is changed to be user-defined need to be made as the below statements would result in DELETE statements being generated */
DELETE FROM LucityDEV..CMFIELDSDESC WHERE ID IN (SELECT ID FROM LucityNIGHTLY..CMFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..CMFIELDSDESC WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..CMFIELDSDESCTXT WHERE ID IN (SELECT ID FROM LucityNIGHTLY..CMFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..CMFIELDSDESCTXT WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..ELFIELDSDESC WHERE ID IN (SELECT ID FROM LucityNIGHTLY..ELFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..ELFIELDSDESC WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..ELFIELDSDESCTXT WHERE ID IN (SELECT ID FROM LucityNIGHTLY..ELFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..ELFIELDSDESCTXT WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..EFFIELDSDESC WHERE ID IN (SELECT ID FROM LucityNIGHTLY..EFFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..EFFIELDSDESC WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..EFFIELDSDESCTXT WHERE ID IN (SELECT ID FROM LucityNIGHTLY..EFFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..EFFIELDSDESCTXT WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..PKFIELDSDESC WHERE ID IN (SELECT ID FROM LucityNIGHTLY..PKFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..PKFIELDSDESC WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..PKFIELDSDESCTXT WHERE ID IN (SELECT ID FROM LucityNIGHTLY..PKFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..PKFIELDSDESCTXT WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..SWFIELDSDESC WHERE ID IN (SELECT ID FROM LucityNIGHTLY..SWFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..SWFIELDSDESC WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..SWFIELDSDESCTXT WHERE ID IN (SELECT ID FROM LucityNIGHTLY..SWFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..SWFIELDSDESCTXT WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..SMFIELDSDESC WHERE ID IN (SELECT ID FROM LucityNIGHTLY..SMFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..SMFIELDSDESC WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..SMFIELDSDESCTXT WHERE ID IN (SELECT ID FROM LucityNIGHTLY..SMFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..SMFIELDSDESCTXT WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..STFIELDSDESC WHERE ID IN (SELECT ID FROM LucityNIGHTLY..STFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..STFIELDSDESC WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..STFIELDSDESCTXT WHERE ID IN (SELECT ID FROM LucityNIGHTLY..STFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..STFIELDSDESCTXT WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..WTFIELDSDESC WHERE ID IN (SELECT ID FROM LucityNIGHTLY..WTFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..WTFIELDSDESC WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..WTFIELDSDESCTXT WHERE ID IN (SELECT ID FROM LucityNIGHTLY..WTFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..WTFIELDSDESCTXT WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..WKFIELDSDESC WHERE ID IN (SELECT ID FROM LucityNIGHTLY..WKFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..WKFIELDSDESC WHERE USERDEFINED <> 0
DELETE FROM LucityDEV..WKFIELDSDESCTXT WHERE ID IN (SELECT ID FROM LucityNIGHTLY..WKFIELDS) AND USERDEFINED <> 0
DELETE FROM LucityNIGHTLY..WKFIELDSDESCTXT WHERE USERDEFINED <> 0

/* Remove some of the nUnit and QA picklist items from the LucityDev database */
DELETE FROM LucityDEV..CMFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucityDEV..CMFIELDS) OR DESCRIPTION LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..CMFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucityDEV..CMFIELDS) OR DESCRIPTION LIKE '%nunit%' OR CODE LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..ELFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucityDEV..ELFIELDS) OR DESCRIPTION LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..ELFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucityDEV..ELFIELDS) OR DESCRIPTION LIKE '%nunit%' OR CODE LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..EFFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucityDEV..EFFIELDS) OR DESCRIPTION LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..EFFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucityDEV..EFFIELDS) OR DESCRIPTION LIKE '%nunit%' OR CODE LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..PKFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucityDEV..PKFIELDS) OR DESCRIPTION LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..PKFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucityDEV..PKFIELDS) OR DESCRIPTION LIKE '%nunit%' OR CODE LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..SWFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucityDEV..SWFIELDS) OR DESCRIPTION LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..SWFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucityDEV..SWFIELDS) OR DESCRIPTION LIKE '%nunit%' OR CODE LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..SMFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucityDEV..SMFIELDS) OR DESCRIPTION LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..SMFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucityDEV..SMFIELDS) OR DESCRIPTION LIKE '%nunit%' OR CODE LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..STFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucityDEV..STFIELDS) OR DESCRIPTION LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..STFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucityDEV..STFIELDS) OR DESCRIPTION LIKE '%nunit%' OR CODE LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..WTFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucityDEV..WTFIELDS) OR DESCRIPTION LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..WTFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucityDEV..WTFIELDS) OR DESCRIPTION LIKE '%nunit%' OR CODE LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..WKFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucityDEV..WKFIELDS) OR DESCRIPTION LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'
DELETE FROM LucityDEV..WKFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucityDEV..WKFIELDS) OR DESCRIPTION LIKE '%nunit%' OR CODE LIKE '%nunit%' OR DESCRIPTION LIKE 'qq%' OR DESCRIPTION LIKE 'qa%'

UPDATE LucityDEV..CMFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..ELFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..EFFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..PKFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..SWFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..SMFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..STFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..WTFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..WKFIELDS SET ALLOWINPUT = 1

UPDATE LucityDEV..CMFIELDSDESC SET GISCODE = NULL
UPDATE LucityNIGHTLY..CMFIELDSDESC SET GISCODE = NULL
UPDATE LucityDEV..CMFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityNIGHTLY..CMFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityDEV..ELFIELDSDESC SET GISCODE = NULL
UPDATE LucityNIGHTLY..ELFIELDSDESC SET GISCODE = NULL
UPDATE LucityDEV..ELFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityNIGHTLY..ELFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityDEV..EFFIELDSDESC SET GISCODE = NULL
UPDATE LucityNIGHTLY..EFFIELDSDESC SET GISCODE = NULL
UPDATE LucityDEV..EFFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityNIGHTLY..EFFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityDEV..PKFIELDSDESC SET GISCODE = NULL
UPDATE LucityNIGHTLY..PKFIELDSDESC SET GISCODE = NULL
UPDATE LucityDEV..PKFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityNIGHTLY..PKFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityDEV..SWFIELDSDESC SET GISCODE = NULL
UPDATE LucityNIGHTLY..SWFIELDSDESC SET GISCODE = NULL
UPDATE LucityDEV..SWFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityNIGHTLY..SWFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityDEV..SMFIELDSDESC SET GISCODE = NULL
UPDATE LucityNIGHTLY..SMFIELDSDESC SET GISCODE = NULL
UPDATE LucityDEV..SMFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityNIGHTLY..SMFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityDEV..STFIELDSDESC SET GISCODE = NULL
UPDATE LucityNIGHTLY..STFIELDSDESC SET GISCODE = NULL
UPDATE LucityDEV..STFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityNIGHTLY..STFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityDEV..WTFIELDSDESC SET GISCODE = NULL
UPDATE LucityNIGHTLY..WTFIELDSDESC SET GISCODE = NULL
UPDATE LucityDEV..WTFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityNIGHTLY..WTFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityDEV..WKFIELDSDESC SET GISCODE = NULL
UPDATE LucityNIGHTLY..WKFIELDSDESC SET GISCODE = NULL
UPDATE LucityDEV..WKFIELDSDESCTXT SET GISCODE = NULL
UPDATE LucityNIGHTLY..WKFIELDSDESCTXT SET GISCODE = NULL