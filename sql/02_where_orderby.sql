-- Oracle SQL Practice
-- Chapter 3: WHERE and ORDER BY

-- 1. Nhân viên có lương lớn hơn 2000
SELECT ENAME, DEPTNO, SAL
FROM EMP
WHERE SAL > 2000;

-- 2. Nhân viên có lương từ 1000 đến 2000
SELECT ENAME, DEPTNO, SAL
FROM EMP
WHERE SAL BETWEEN 1000 AND 2000;

-- 3. Nhân viên thuộc phòng ban 10, 20 hoặc 30
SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO IN (10, 20, 30);

-- 4. Nhân viên có nghề MANAGER
SELECT ENAME, JOB
FROM EMP
WHERE JOB = 'MANAGER';

-- 5. Nhân viên không có COMM
SELECT ENAME, COMM
FROM EMP
WHERE COMM IS NULL;

-- 6. Sắp xếp lương tăng dần
SELECT ENAME, SAL
FROM EMP
ORDER BY SAL ASC;

-- 7. Sắp xếp lương giảm dần
SELECT ENAME, SAL
FROM EMP
ORDER BY SAL DESC;