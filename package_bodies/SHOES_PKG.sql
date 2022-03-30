-- liquibase formatted SQL
-- changeset Pawel_TOMICKI: SHOES_PKG_BODY runOnChange:true stripComments:false
-- comment create SHOES_PKG body
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
