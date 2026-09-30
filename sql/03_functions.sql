-- Oracle SQL Practice
-- Chapter 4: SQL Functions

-- 1. Tính lương tăng 15%
SELECT DEPTNO,
       ENAME,
       SAL,
       SAL * 1.15 AS PCTSAL
FROM EMP;

-- 2. Tên nhân viên viết chữ thường
SELECT LOWER(ENAME) AS LOWER_NAME
FROM EMP;

-- 3. Tên nhân viên viết chữ hoa
SELECT UPPER(ENAME) AS UPPER_NAME
FROM EMP;

-- 4. Viết hoa chữ cái đầu
SELECT INITCAP(DNAME) AS DEPARTMENT_NAME,
       INITCAP(LOC) AS LOCATION
FROM DEPT;

-- 5. Độ dài tên nhân viên
SELECT ENAME,
       LENGTH(ENAME) AS NAME_LENGTH
FROM EMP;

-- 6. Lấy một phần chuỗi tên nhân viên
SELECT ENAME,
       SUBSTR(ENAME, 1, 3) AS NAME_PART
FROM EMP;

-- 7. Tìm vị trí ký tự trong tên nhân viên
SELECT ENAME,
       INSTR(ENAME, 'A') AS POSITION_A
FROM EMP;

-- 8. Thay thế SALESMAN thành SALESPERSON
SELECT JOB,
       REPLACE(JOB, 'SALESMAN', 'SALESPERSON') AS NEW_JOB
FROM EMP;

-- 9. Tính lương năm, xử lý COMM NULL bằng NVL
SELECT ENAME,
       SAL * 12 + NVL(COMM, 0) AS ANNUAL_SALARY
FROM EMP;

-- 10. Lương trung bình toàn bộ nhân viên
SELECT AVG(SAL) AS AVERAGE_SALARY
FROM EMP;

-- 11. Lương cao nhất
SELECT MAX(SAL) AS MAX_SALARY
FROM EMP;

-- 12. Lương thấp nhất
SELECT MIN(SAL) AS MIN_SALARY
FROM EMP;

-- 13. Tổng lương
SELECT SUM(SAL) AS TOTAL_SALARY
FROM EMP;

-- 14. Số lượng nhân viên
SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP;

-- 15. Lương trung bình theo nghề nghiệp
SELECT JOB,
       AVG(SAL) AS AVERAGE_SALARY
FROM EMP
GROUP BY JOB;

-- 16. Lương cao nhất theo nghề nghiệp
SELECT JOB,
       MAX(SAL) AS MAX_SALARY
FROM EMP
GROUP BY JOB;

-- 17. Chỉ lấy những nghề có hơn 3 nhân viên
SELECT JOB,
       MAX(SAL) AS MAX_SALARY
FROM EMP
GROUP BY JOB
HAVING COUNT(*) > 3;

-- 18. CASE biểu thức
SELECT ENAME,
       SAL,
       CASE
           WHEN SAL >= 3000 THEN 'HIGH'
           WHEN SAL >= 1500 THEN 'MEDIUM'
           ELSE 'LOW'
       END AS SALARY_LEVEL
FROM EMP;