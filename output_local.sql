-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: liquibase/update.xml
-- Ran at: 28.03.2022, 14:34
-- Against: HR@jdbc:oracle:thin:@127.0.0.1:1521/XEPDB1
-- Liquibase version: 4.8.0
-- *********************************************************************

-- Lock Database
UPDATE HR.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'DESKTOP-IOLEM3Q (192.168.0.234)', LOCKGRANTED = SYSTIMESTAMP WHERE ID = 1 AND LOCKED = 0;

-- Changeset ./package_bodies/SHOES_PKG.sql::SHOES_PKG_BODY::Pawel_TOMICKI
-- create SHOES_PKG body
CREATE OR REPLACE package body SHOES_PKG 
AS
    function f_get_SHOES(
        pi_ID IN SHOES.ID%TYPE
    ) return SHOES%ROWTYPE
    IS  
        v_row SHOES%ROWTYPE;
    BEGIN
        
        SELECT * INTO v_row
        FROM SHOES WHERE 1 = 1; /* AND ID = pi_ID; */
        RETURN v_row;
    END;

END SHOES_PKG;
/

UPDATE HR.DATABASECHANGELOG SET COMMENTS = 'create SHOES_PKG body', CONTEXTS = NULL, DATEEXECUTED = SYSTIMESTAMP, DEPLOYMENT_ID = '8470870252', EXECTYPE = 'RERAN', LABELS = NULL, MD5SUM = '8:743b5f832380c6b0b2cec21e3bf7dc45', ORDEREXECUTED = 7 WHERE ID = 'SHOES_PKG_BODY' AND AUTHOR = 'Pawel_TOMICKI' AND FILENAME = './package_bodies/SHOES_PKG.sql';

-- Changeset package_bodies/SHOES_PKG.sql::SHOES_PKG_BODY::Pawel_TOMICKI
-- create SHOES_PKG body
CREATE OR REPLACE package body SHOES_PKG 
AS
    function f_get_SHOES(
        pi_ID IN SHOES.ID%TYPE
    ) return SHOES%ROWTYPE
    IS  
        v_row SHOES%ROWTYPE;
    BEGIN
        
        SELECT * INTO v_row
        FROM SHOES WHERE 1 = 1; /* AND ID = pi_ID; */
        RETURN v_row;
    END;

END SHOES_PKG;
/

UPDATE HR.DATABASECHANGELOG SET COMMENTS = 'create SHOES_PKG body', CONTEXTS = NULL, DATEEXECUTED = SYSTIMESTAMP, DEPLOYMENT_ID = '8470870252', EXECTYPE = 'RERAN', LABELS = NULL, MD5SUM = '8:743b5f832380c6b0b2cec21e3bf7dc45', ORDEREXECUTED = 8 WHERE ID = 'SHOES_PKG_BODY' AND AUTHOR = 'Pawel_TOMICKI' AND FILENAME = 'package_bodies/SHOES_PKG.sql';

-- Release Database Lock
UPDATE HR.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

