-- liquibase formatted SQL
-- changeset Pawel_TOMICKI: EMPLOYEE_PKG_BODY runOnChange:true stripComments:false
-- comment create EMPLOYEE_PKG body
CREATE OR REPLACE package body EMPLOYEE_PKG 
AS
    function f_count_firstname( pi_fname IN EMPLOYEES.first_name%TYPE) return NUMBER
    AS
        v_ile_firstname number :=0 ;
    BEGIN
        select count (*) into v_ile_firstname
        from employees
        where upper( first_name ) = upper( pi_fname );

        RETURN v_ile_firstname;

    END f_count_firstname;

END EMPLOYEE_PKG;
/