-- Oracle SQL Practice
-- Chapter 12: Basic PL/SQL

-- 1. PL/SQL block cơ bản
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello Oracle PL/SQL');
END;
/

-- 2. IF
DECLARE
    v_salary NUMBER := 2500;
BEGIN
    IF v_salary >= 2000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary is high');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary is low');
    END IF;
END;
/

-- 3. LOOP
DECLARE
    v_counter NUMBER := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('Counter = ' || v_counter);
        v_counter := v_counter + 1;

        EXIT WHEN v_counter > 5;
    END LOOP;
END;
/

-- 4. WHILE LOOP
DECLARE
    v_counter NUMBER := 1;
BEGIN
    WHILE v_counter <= 5 LOOP
        DBMS_OUTPUT.PUT_LINE('While = ' || v_counter);
        v_counter := v_counter + 1;
    END LOOP;
END;
/

-- 5. SELECT INTO
DECLARE
    v_name EMP.ENAME%TYPE;
    v_salary EMP.SAL%TYPE;
BEGIN
    SELECT ENAME, SAL
    INTO v_name, v_salary
    FROM EMP
    WHERE EMPNO = 7839;

    DBMS_OUTPUT.PUT_LINE(
        'Employee: ' || v_name || ', Salary: ' || v_salary
    );
END;
/