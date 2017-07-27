/*When SQL Server 2012 becomes the lowest supported version, change the SELECT statement for shrinking the database file */
/*Perform a FIND-AND-REPLACE on "1750" to indicate the appropriate Version*/
/*Perform a FIND-AND-REPLACE on "LucitySUFFIX" to indicate the appropriate database */

update LucitySUFFIX..cmfields set defaultvalue = null where defaultvalue = ''
update LucitySUFFIX..elfields set defaultvalue = null where defaultvalue = ''
update LucitySUFFIX..effields set defaultvalue = null where defaultvalue = ''
update LucitySUFFIX..pkfields set defaultvalue = null where defaultvalue = ''
update LucitySUFFIX..swfields set defaultvalue = null where defaultvalue = ''
update LucitySUFFIX..smfields set defaultvalue = null where defaultvalue = ''
update LucitySUFFIX..stfields set defaultvalue = null where defaultvalue = ''
update LucitySUFFIX..wtfields set defaultvalue = null where defaultvalue = ''
update LucitySUFFIX..wkfields set defaultvalue = null where defaultvalue = ''
update LucitySUFFIX..cmfields set calculation = null where calculation = ''
update LucitySUFFIX..elfields set calculation = null where calculation = ''
update LucitySUFFIX..effields set calculation = null where calculation = ''
update LucitySUFFIX..pkfields set calculation = null where calculation = ''
update LucitySUFFIX..swfields set calculation = null where calculation = ''
update LucitySUFFIX..smfields set calculation = null where calculation = ''
update LucitySUFFIX..stfields set calculation = null where calculation = ''
update LucitySUFFIX..wtfields set calculation = null where calculation = ''
update LucitySUFFIX..wkfields set calculation = null where calculation = ''
update LucitySUFFIX..cmfields set UserName = null where username = ''
update LucitySUFFIX..elfields set UserName = null where username = ''
update LucitySUFFIX..effields set UserName = null where username = ''
update LucitySUFFIX..pkfields set UserName = null where username = ''
update LucitySUFFIX..swfields set UserName = null where username = ''
update LucitySUFFIX..smfields set UserName = null where username = ''
update LucitySUFFIX..stfields set UserName = null where username = ''
update LucitySUFFIX..wtfields set UserName = null where username = ''
update LucitySUFFIX..wkfields set UserName = null where username = ''
update LucitySUFFIX..cmfields set Allowinput = 1
update LucitySUFFIX..elfields set Allowinput = 1
update LucitySUFFIX..effields set Allowinput = 1
update LucitySUFFIX..pkfields set Allowinput = 1
update LucitySUFFIX..swfields set Allowinput = 1
update LucitySUFFIX..smfields set Allowinput = 1
update LucitySUFFIX..stfields set Allowinput = 1
update LucitySUFFIX..wtfields set Allowinput = 1
update LucitySUFFIX..wkfields set Allowinput = 1
DELETE FROM LucitySUFFIX..CMFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..CMFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..CMFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..CMFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..ELFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..ELFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..ELFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..ELFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..EFFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..EFFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..EFFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..EFFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..PKFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..PKFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..PKFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..PKFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..SWFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..SWFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..SWFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..SWFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..SMFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..SMFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..SMFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..SMFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..STFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..STFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..STFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..STFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..WTFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..WTFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..WTFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..WTFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..WKFIELDSDESC WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..WKFIELDS WHERE SHAREDFIELD IS NULL)
DELETE FROM LucitySUFFIX..WKFIELDSDESCTXT WHERE ID NOT IN (SELECT ID FROM LucitySUFFIX..WKFIELDS WHERE SHAREDFIELD IS NULL)
delete from LucitySUFFIX..activeuser
delete from LucitySUFFIX..AUDITLOGONS
delete from LucitySUFFIX..INDIV_OVERRIDE
delete from LucitySUFFIX..OBJECTLOCK
delete from LucitySUFFIX..TEMPORARYTOKENS
delete from LucitySUFFIX..USERLICENSES
delete from LucitySUFFIX..EMAILQUEUE
DELETE FROM LucitySUFFIX..LTASKS
DELETE FROM LucitySUFFIX..CMIMPORTUPDATE WHERE IMP_TEMPLATE = 0

UPDATE LucitySUFFIX..CONNECTSTRINGS SET CONN_SERVER = NULL, CONN_DB = NULL, CONN_USERID = NULL, CONN_PASSWORD = NULL
--SELECT 'UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = ' + CASE WHEN SYSSET_VALUE IS NULL THEN 'NULL' ELSE '''' + REPLACE(SYSSET_VALUE, '''', '''''') + '''' END + ' WHERE SYSSET_ID = ' + CAST(SYSSET_ID AS VARCHAR) FROM SYSTEMSETTINGS ORDER BY SYSSET_ID
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 2
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 3
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 4
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 6
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 7
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 8
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 9
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'PublicWebUser' WHERE SYSSET_ID = 10
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'BackgroundTaskUser' WHERE SYSSET_ID = 19
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 27
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 32
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '240' WHERE SYSSET_ID = 33
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Your information has been received by .' WHERE SYSSET_ID = 35
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Disclaimer: This e-mail is confidential. If you are not the intended recipient, please disregard this e-mail.' WHERE SYSSET_ID = 36
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 40
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '60' WHERE SYSSET_ID = 41
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '28' WHERE SYSSET_ID = 43
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '15' WHERE SYSSET_ID = 44
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '25' WHERE SYSSET_ID = 45
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '700' WHERE SYSSET_ID = 46
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '200' WHERE SYSSET_ID = 47
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '150' WHERE SYSSET_ID = 48
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '7' WHERE SYSSET_ID = 49
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '88' WHERE SYSSET_ID = 50
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '134' WHERE SYSSET_ID = 51
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '5' WHERE SYSSET_ID = 52
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '2' WHERE SYSSET_ID = 53
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '14' WHERE SYSSET_ID = 54
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '20' WHERE SYSSET_ID = 55
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '32' WHERE SYSSET_ID = 56
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '24' WHERE SYSSET_ID = 57
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '8' WHERE SYSSET_ID = 58
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '10' WHERE SYSSET_ID = 59
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 60
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Reports\Work\WebTimesheetBasic1WeekWeb.rpt' WHERE SYSSET_ID = 61
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 64
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '90' WHERE SYSSET_ID = 65
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 67
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 68
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 69
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Use Requestor''s Address' WHERE SYSSET_ID = 79
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Remember Me' WHERE SYSSET_ID = 80
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'RESTAPILogOn' WHERE SYSSET_ID = 81
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Add Another' WHERE SYSSET_ID = 82
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 83
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 84
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '50' WHERE SYSSET_ID = 85
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 86
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 87
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 88
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 89
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 90
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 91
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 94
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '30' WHERE SYSSET_ID = 95
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 98
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 100
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'To open this record in the web application click on the link below.  If this does not work for you, you can copy the link and paste it into Internet Explorer' WHERE SYSSET_ID = 101
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 103
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 104
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 105
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 116
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 117
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 118
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'pdf' WHERE SYSSET_ID = 119
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 120
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '' WHERE SYSSET_ID = 121
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 124
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Street' WHERE SYSSET_ID = 125
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 126
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 127
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 128
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 129
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 131
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 133
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'exe,com,dll,ocx,bat,reg,tmp,dat,scr,bak,acl,acm,cpl,ax' WHERE SYSSET_ID = 134
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 136
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 137
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 138
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 140
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 141
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '(connectstrings|user_info|information_schema| insert | update | delete | truncate |reconfigure| union |sysobjects|waitfor|xp_cmdshell|;|--)' WHERE SYSSET_ID = 143
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 144
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 145
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 146
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 147
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '|' WHERE SYSSET_ID = 148
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '8' WHERE SYSSET_ID = 149
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'http://help.lucity.com/webhelp' WHERE SYSSET_ID = 150
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 152
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Send e-mail copy.' WHERE SYSSET_ID = 156
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Send this to these additional email addresses (Note: Use semi-colons to separate email addresses):' WHERE SYSSET_ID = 157
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '10' WHERE SYSSET_ID = 158
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '2' WHERE SYSSET_ID = 159
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 160
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 161
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 162
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'jpg,gif,png,bmp' WHERE SYSSET_ID = 164
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 165
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'There was an error uploading the document' WHERE SYSSET_ID = 166
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Conversion' WHERE SYSSET_ID = 168
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '\images\SignLib\' WHERE SYSSET_ID = 169
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'StartsWith' WHERE SYSSET_ID = 170
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 171
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 172
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '100' WHERE SYSSET_ID = 173
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 174
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 175
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 176
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '110' WHERE SYSSET_ID = 177
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'False' WHERE SYSSET_ID = 178
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Request number [RQ_NUMBER] was created from this e-mail:' WHERE SYSSET_ID = 179
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Request number [RQ_NUMBER] has been created from the e-mail you sent' WHERE SYSSET_ID = 180
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '40' WHERE SYSSET_ID = 181
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 182
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 183
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 184
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'True' WHERE SYSSET_ID = 185
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'A Comment was added to Request number [RQ_NUMBER] from the e-mail you sent' WHERE SYSSET_ID = 186
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'A Comment was added to Request number [RQ_NUMBER] from this e-mail:' WHERE SYSSET_ID = 187
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Unable to locate Request number [[RQ_NUMBER]] referenced in your email. Please verify the number and send a new email.' WHERE SYSSET_ID = 188
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 189
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '90' WHERE SYSSET_ID = 190
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '30' WHERE SYSSET_ID = 191
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 192
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 193
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 194
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '20' WHERE SYSSET_ID = 195
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 197
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'This email was generated by Lucity' WHERE SYSSET_ID = 198
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'This email came from an automated system.  Do not reply to this email. ' WHERE SYSSET_ID = 199
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '25' WHERE SYSSET_ID = 200
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 201
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 202
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 203
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 204
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 205
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 207
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 208
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 210
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 211
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 212
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 213
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 215
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 216
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 217
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'GISDev_TopoWithSewerSync' WHERE SYSSET_ID = 218
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 219
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 220
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 221
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 222
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 223
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 224
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 225
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 226
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 227
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 228
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '30' WHERE SYSSET_ID = 229
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 235
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 236
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 238
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '#F8981D' WHERE SYSSET_ID = 239
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '#98C93C' WHERE SYSSET_ID = 240
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '#98C93C' WHERE SYSSET_ID = 241
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '#F0F0E1' WHERE SYSSET_ID = 242
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'rgb(77, 116, 186)' WHERE SYSSET_ID = 243
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '99999' WHERE SYSSET_ID = 244
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '10' WHERE SYSSET_ID = 245
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 246
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 247
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '20' WHERE SYSSET_ID = 248
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'short' WHERE SYSSET_ID = 249
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 250
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '3' WHERE SYSSET_ID = 251
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 252
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '[\u0000-\u007F]' WHERE SYSSET_ID = 253
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '' WHERE SYSSET_ID = 254
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 255
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 256
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 257
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 258
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 259
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '500' WHERE SYSSET_ID = 261
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 262
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 263
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 264
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 265
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 266
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '600' WHERE SYSSET_ID = 267
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '600' WHERE SYSSET_ID = 268
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'secret' WHERE SYSSET_ID = 269
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'secret' WHERE SYSSET_ID = 270
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 271
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'LucityIDServer' WHERE SYSSET_ID = 272
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'LucityIDServer' WHERE SYSSET_ID = 273
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 274
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 275
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '15' WHERE SYSSET_ID = 276
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 277
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '' WHERE SYSSET_ID = 278
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '' WHERE SYSSET_ID = 279
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 280
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '' WHERE SYSSET_ID = 281
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 282
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 283
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 284
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 285
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 286
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 287
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 288
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 289
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '6400' WHERE SYSSET_ID = 290
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '6405' WHERE SYSSET_ID = 291
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '8080' WHERE SYSSET_ID = 292
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '6642' WHERE SYSSET_ID = 293
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 294
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '/BOE/OpenDocument/opendoc/openDocument.jsp?' WHERE SYSSET_ID = 295
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 296
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 297
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Send an e-mail copy of this to the specified e-mail address.' WHERE SYSSET_ID = 298
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 299
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 300
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 301
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '0' WHERE SYSSET_ID = 302
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '0' WHERE SYSSET_ID = 303
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 304
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 305
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 306
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '#007EA8' WHERE SYSSET_ID = 307
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'U.S.' WHERE SYSSET_ID = 308
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 309
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 310
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 311
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 312
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 313
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '10' WHERE SYSSET_ID = 314
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '' WHERE SYSSET_ID = 315
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '' WHERE SYSSET_ID = 316
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 317
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 318
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 319
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 320
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '1000' WHERE SYSSET_ID = 321
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '1000' WHERE SYSSET_ID = 322
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '1000' WHERE SYSSET_ID = 323
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Overall, how was the quality of response to your service request or problem call?' WHERE SYSSET_ID = 324
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '"Excellent","Good","Fair","Poor","Unacceptable","Issue/Request Unresolved"' WHERE SYSSET_ID = 325
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '365' WHERE SYSSET_ID = 327
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 328
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '15' WHERE SYSSET_ID = 329
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '3' WHERE SYSSET_ID = 330
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '10' WHERE SYSSET_ID = 331
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 332
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Your response could not be submitted at this time.' WHERE SYSSET_ID = 333
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'Thank you for your feedback!' WHERE SYSSET_ID = 334
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 335
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 336
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 337
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'https://www.arcgis.com' WHERE SYSSET_ID = 338
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 339
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '600' WHERE SYSSET_ID = 340
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 341
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 342
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 343
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '' WHERE SYSSET_ID = 344
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '10' WHERE SYSSET_ID = 345
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'SingleLine' WHERE SYSSET_ID = 346
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 347
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '100' WHERE SYSSET_ID = 348
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 349
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 350
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'FALSE' WHERE SYSSET_ID = 351
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = '10' WHERE SYSSET_ID = 352
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = 'TRUE' WHERE SYSSET_ID = 353
UPDATE LucitySUFFIX..SYSTEMSETTINGS SET SYSSET_VALUE = NULL WHERE SYSSET_ID = 354

GO

USE LucitySUFFIX
GO
EXEC sp_changedbowner @loginame = N'sa', @map = false
GO
ALTER DATABASE LucitySUFFIX SET RECOVERY SIMPLE
ALTER DATABASE LucitySUFFIX SET RECOVERY FULL
DBCC SHRINKFILE (LucityLog, 200)


DECLARE @FileSize int,
	@NewFileSize varchar(10),
	@NewUsedFileSize int,
	@DropUserssql VARCHAR(1000),
	@VER INT
	
SELECT @VER = cmptlevel FROM [master].dbo.sysdatabases WHERE NAME = 'MODEL'
	
SET @DropUserssql = 'USE LucitySUFFIX

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

EXEC (@DropUserssql)

--USE THE FOLLOWING ONCE 2012 is the lowest supported version
--select @FileSize = CAST(CASE s.type WHEN 2 THEN s.size * CONVERT(float,8) ELSE dfs.allocated_extent_page_count*convert(float,8) END AS float)/1024
select @FileSize = CAST(CASE s.type WHEN 2 THEN 0 ELSE CAST(FILEPROPERTY(s.name, 'SpaceUsed') AS float)* CONVERT(float,8) END AS float)/1024
from sys.filegroups AS g inner join sys.database_files AS s on ((s.type = 2 or s.type = 0) and (s.drop_lsn IS NULL)) AND (s.data_space_id=g.data_space_id) left outer join sys.dm_db_file_space_usage as dfs ON dfs.database_id = db_id() AND dfs.file_id = s.file_id
where s.name = N'Lucity' and g.data_space_id = 1
Set @NewUsedFileSize = @FileSize * 1.2
DBCC SHRINKFILE (Lucity, @NewUsedFileSize, TRUNCATEONLY)

SELECT TOP 1 @FileSize = (size*8/1024) FROM LucitySUFFIX..SYSFILES
Set @NewFileSize = @FileSize + 1000
EXEC ('ALTER DATABASE [LucitySUFFIX] MODIFY FILE ( NAME = ''Lucity'', MAXSIZE = ' + @NewFileSize + ')')
ALTER DATABASE [LucitySUFFIX] MODIFY FILE ( NAME = N'LucityLog', MAXSIZE = 500)
ALTER DATABASE [LucitySUFFIX] SET RECOVERY SIMPLE
EXEC [master]..sp_dbcmptlevel [LucitySUFFIX], @VER

GO

BACKUP DATABASE LucitySUFFIX TO DISK =  'D:\SQLServerBackups\2008\LucityEval1750.bak' WITH INIT
GO

