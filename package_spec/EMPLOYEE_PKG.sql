-- liquibase formatted SQL
-- changeset Pawel_TOMICKI: EMPLOYEE_PKG_SPEC runOnChange: true stripComments:false
-- comment create EMPLOYEE_PKG specification
create or replace package EMPLOYEE_PKG
AS
    
    function f_count_firstname( pi_fname IN EMPLOYEES.first_name%TYPE) return NUMBER;

end EMPLOYEE_PKG;
/