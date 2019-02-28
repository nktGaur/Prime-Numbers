//Program to identify whether the supplied number is Prime or not.

SET SERVEROUTPUT ON
ACCEPT num NUMBER PROMPT 'Enter number of your choice : ';

DECLARE
n   NUMBER := &num;
i   NUMBER := 1;
flag NUMBER := 1;
BEGIN
FOR i in 2..n/2 LOOP
    if mod(n,i)=0 
        THEN flag := 0;
        exit;
    end if;
END LOOP;
IF flag=0
 THEN DBMS_OUTPUT.PUT_LINE('Number '||n||' is not prime.');
ELSE DBMS_OUTPUT.PUT_LINE('Number '||n||' is a prime number.');
END IF;
END;
/
