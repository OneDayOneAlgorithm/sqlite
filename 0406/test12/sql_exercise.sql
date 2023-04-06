INSERT INTO emp (ename,job,sal)
    VALUES('KIMSSAFY','PROGRAMMER','6000');

INSERT INTO EMP
    VALUES('7777','KIMSSAFY','PROGRAMMER','7566','6/6/2023','6000',NULL,20);

delete from emp where emame = 'SCOOT';

UPDATE emp
set 
DEPTNO = 50
WHERE MGR = 7698;

UPDATE emp
set 
DEPTNO = 30
WHERE MGR = 7698;

-- 전 직원의 급여의 총합을 구하라
SELECT sum(SAL) as "급여 총합"
FROM EMP;

-- 전 사원의 수를 구하라
SELECT count(*) as "사원 수"
FROM EMP;

-- 부서별 급여의 합
SELECT sum(sal),ename
from EMP
GROUP BY DEPTNO;

-- 업무별 급여의 총합
SELECT sum(sal+ifnull(COMM,0)),JOB
FROM EMP
GROUP BY job;

-- 부서별 업무별 급여의 총합을 알고 싶다.
SELECT sum(sal+ifnull(COMM,0)) as "급여의 총 합",DEPTNO,JOB
FROM EMP
GROUP BY DEPTNO,JOB;

-- 자신의 업무 별 급여의 평균보다 많이 받는 직원을 조회
SELECT e1.empno,e1.ENAME, e1.JOB, e1.sal
from EMP e1
where e1.sal > (SELECT avg(e2.sal+ifnull(e2.COMM,0))
            from EMP e2
            WHERE e2.JOB = e1.job
            GROUP BY e2.JOB);


SELECT avg(sal+ifnull(COMM,0)),JOB
from EMP
 WHERE deptno = 20
GROUP BY JOB;1
--  HAVING ;


SELECT empno, ename, e.deptno, d.DEPTNO, DNAME
FROM emp e, dept d
WHERE e.deptno = d.deptno;

SELECT * FROM EMP;

SELECT e1.EMPNO, e1.ENAME, e1.deptno, e1.mgr, e1.JOB
    FROM emp e1, emp e2
    where e1.mgr = e2.EMPNO;

SELECT EMPNO, ENAME, e.deptno, d.deptno, dname
    FROM emp e left outer join dept d
    on e.DEPTNO = d.DEPTNO;