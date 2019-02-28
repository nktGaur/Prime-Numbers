//Program to generate prime numbers until a User provided digit.

SET SERVEROUTPUT ON
ACCEPT num NUMBER PROMPT 'Enter number : ';

DECLARE
n   NUMBER := &num;
i   NUMBER := 1;
flag NUMBER := 1;
BEGIN
FOR ind in 2..n LOOP
    flag := 1;
    FOR i in 2..ind/2 LOOP
        if mod(ind,i)=0 AND ind!=2
            THEN flag := 0;
            exit;
        end if;
    END LOOP;
IF flag=1 
 THEN DBMS_OUTPUT.PUT_LINE(ind);
END IF;
END LOOP;
END;
/
