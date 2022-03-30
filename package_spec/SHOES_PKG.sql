-- liquibase formatted SQL
-- changeset Pawel_TOMICKI: SHOES_PKG_SPEC runOnChange: true stripComments:false
-- comment create SHOES_PKG specification
create or replace package SHOES_PKG
AS
    function f_get_SHOES(pi_ID IN SHOES.ID%TYPE) return SHOES%ROWTYPE;
end SHOES_PKG;

/