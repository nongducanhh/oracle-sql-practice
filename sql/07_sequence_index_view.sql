-- Oracle SQL Practice
-- Chapter 9: Sequence, Index
-- Chapter 10: View

-- =====================================================
-- 1. SEQUENCE
-- =====================================================

CREATE SEQUENCE EMP_TEST_SEQ
    START WITH 8001
    INCREMENT BY 1
    MAXVALUE 999999
    NOCYCLE;

-- Kiểm tra sequence
SELECT EMP_TEST_SEQ.NEXTVAL
FROM DUAL;

SELECT EMP_TEST_SEQ.CURRVAL
FROM DUAL;


-- =====================================================
-- 2. INDEX
-- =====================================================

CREATE INDEX IDX_EMP_ENAME
ON EMP (ENAME);

-- Kiểm tra index
SELECT INDEX_NAME, TABLE_NAME
FROM USER_INDEXES
WHERE INDEX_NAME = 'IDX_EMP_ENAME';


-- =====================================================
-- 3. VIEW
-- =====================================================

CREATE OR REPLACE VIEW EMP_DEPT_VIEW AS
SELECT E.EMPNO,
       E.ENAME,
       E.JOB,
       E.SAL,
       D.DNAME,
       D.LOC
FROM EMP E
JOIN DEPT D
  ON E.DEPTNO = D.DEPTNO;

-- Kiểm tra VIEW
SELECT *
FROM EMP_DEPT_VIEW;


-- =====================================================
-- 4. Xóa đối tượng test nếu cần
-- =====================================================
-- DROP VIEW EMP_DEPT_VIEW;
-- DROP INDEX IDX_EMP_ENAME;
-- DROP SEQUENCE EMP_TEST_SEQ;