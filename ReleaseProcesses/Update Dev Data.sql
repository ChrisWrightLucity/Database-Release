UPDATE LucityDEV..CMFIELDS SET MASK = MAXMASK WHERE (MASK <> MAXMASK OR MASK IS NULL) AND ID IN (SELECT PROP_FIELDID FROM LucityDEV..CMPROPERTY WHERE PROP_READONLY = 1 OR PROP_COMPONENTID NOT IN (1, 2, 3))
UPDATE LucityDEV..EFFIELDS SET MASK = MAXMASK WHERE (MASK <> MAXMASK OR MASK IS NULL) AND ID IN (SELECT PROP_FIELDID FROM LucityDEV..EFPROPERTY WHERE PROP_READONLY = 1 OR PROP_COMPONENTID NOT IN (1, 2, 3))
UPDATE LucityDEV..ELFIELDS SET MASK = MAXMASK WHERE (MASK <> MAXMASK OR MASK IS NULL) AND ID IN (SELECT PROP_FIELDID FROM LucityDEV..ELPROPERTY WHERE PROP_READONLY = 1 OR PROP_COMPONENTID NOT IN (1, 2, 3))
UPDATE LucityDEV..PKFIELDS SET MASK = MAXMASK WHERE (MASK <> MAXMASK OR MASK IS NULL) AND ID IN (SELECT PROP_FIELDID FROM LucityDEV..PKPROPERTY WHERE PROP_READONLY = 1 OR PROP_COMPONENTID NOT IN (1, 2, 3))
UPDATE LucityDEV..SWFIELDS SET MASK = MAXMASK WHERE (MASK <> MAXMASK OR MASK IS NULL) AND ID IN (SELECT PROP_FIELDID FROM LucityDEV..SWPROPERTY WHERE PROP_READONLY = 1 OR PROP_COMPONENTID NOT IN (1, 2, 3))
UPDATE LucityDEV..SMFIELDS SET MASK = MAXMASK WHERE (MASK <> MAXMASK OR MASK IS NULL) AND ID IN (SELECT PROP_FIELDID FROM LucityDEV..SMPROPERTY WHERE PROP_READONLY = 1 OR PROP_COMPONENTID NOT IN (1, 2, 3))
UPDATE LucityDEV..STFIELDS SET MASK = MAXMASK WHERE (MASK <> MAXMASK OR MASK IS NULL) AND ID IN (SELECT PROP_FIELDID FROM LucityDEV..STPROPERTY WHERE PROP_READONLY = 1 OR PROP_COMPONENTID NOT IN (1, 2, 3))
UPDATE LucityDEV..WTFIELDS SET MASK = MAXMASK WHERE (MASK <> MAXMASK OR MASK IS NULL) AND ID IN (SELECT PROP_FIELDID FROM LucityDEV..WTPROPERTY WHERE PROP_READONLY = 1 OR PROP_COMPONENTID NOT IN (1, 2, 3))
UPDATE LucityDEV..WKFIELDS SET MASK = MAXMASK WHERE (MASK <> MAXMASK OR MASK IS NULL) AND ID IN (SELECT PROP_FIELDID FROM LucityDEV..WKPROPERTY WHERE PROP_READONLY = 1 OR PROP_COMPONENTID NOT IN (1, 2, 3))

UPDATE LucityDEV..CMFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..ELFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..EFFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..PKFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..SWFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..SMFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..STFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..WTFIELDS SET ALLOWINPUT = 1
UPDATE LucityDEV..WKFIELDS SET ALLOWINPUT = 1

INSERT INTO LucityDEV..CMDEF (DEF_FLD_ID, DEF_TEXT, DEF_LUCITY) SELECT ID, DEFAULTNAME, DEFAULTNAME FROM LucityDEV..CMFIELDS LEFT JOIN LucityDEV..CMDEF ON DEF_FLD_ID = ID WHERE DEF_FLD_ID IS NULL
INSERT INTO LucityDEV..ELDEF (DEF_FLD_ID, DEF_TEXT, DEF_LUCITY) SELECT ID, DEFAULTNAME, DEFAULTNAME FROM LucityDEV..ELFIELDS LEFT JOIN LucityDEV..ELDEF ON DEF_FLD_ID = ID WHERE DEF_FLD_ID IS NULL
INSERT INTO LucityDEV..EFDEF (DEF_FLD_ID, DEF_TEXT, DEF_LUCITY) SELECT ID, DEFAULTNAME, DEFAULTNAME FROM LucityDEV..EFFIELDS LEFT JOIN LucityDEV..EFDEF ON DEF_FLD_ID = ID WHERE DEF_FLD_ID IS NULL
INSERT INTO LucityDEV..PKDEF (DEF_FLD_ID, DEF_TEXT, DEF_LUCITY) SELECT ID, DEFAULTNAME, DEFAULTNAME FROM LucityDEV..PKFIELDS LEFT JOIN LucityDEV..PKDEF ON DEF_FLD_ID = ID WHERE DEF_FLD_ID IS NULL
INSERT INTO LucityDEV..SWDEF (DEF_FLD_ID, DEF_TEXT, DEF_LUCITY) SELECT ID, DEFAULTNAME, DEFAULTNAME FROM LucityDEV..SWFIELDS LEFT JOIN LucityDEV..SWDEF ON DEF_FLD_ID = ID WHERE DEF_FLD_ID IS NULL
INSERT INTO LucityDEV..SMDEF (DEF_FLD_ID, DEF_TEXT, DEF_LUCITY) SELECT ID, DEFAULTNAME, DEFAULTNAME FROM LucityDEV..SMFIELDS LEFT JOIN LucityDEV..SMDEF ON DEF_FLD_ID = ID WHERE DEF_FLD_ID IS NULL
INSERT INTO LucityDEV..STDEF (DEF_FLD_ID, DEF_TEXT, DEF_LUCITY) SELECT ID, DEFAULTNAME, DEFAULTNAME FROM LucityDEV..STFIELDS LEFT JOIN LucityDEV..STDEF ON DEF_FLD_ID = ID WHERE DEF_FLD_ID IS NULL
INSERT INTO LucityDEV..WTDEF (DEF_FLD_ID, DEF_TEXT, DEF_LUCITY) SELECT ID, DEFAULTNAME, DEFAULTNAME FROM LucityDEV..WTFIELDS LEFT JOIN LucityDEV..WTDEF ON DEF_FLD_ID = ID WHERE DEF_FLD_ID IS NULL
INSERT INTO LucityDEV..WKDEF (DEF_FLD_ID, DEF_TEXT, DEF_LUCITY) SELECT ID, DEFAULTNAME, DEFAULTNAME FROM LucityDEV..WKFIELDS LEFT JOIN LucityDEV..WKDEF ON DEF_FLD_ID = ID WHERE DEF_FLD_ID IS NULL

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