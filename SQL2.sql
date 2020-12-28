------------------------------------------
--문1 employee 테이블에서 모든 칼럼의 데이터를 검색하면?
------------------------------------------
select emp_no, dep_no, jikup, salary, hire_date, jumin_num, phone_num from employee;
select * from  employee;

------------------------------------------
--<문2> employee 테이블에서 select emp_no, dep_no, jikup, salary, hire_date 칼럼의 데이터를 검색하면?
------------------------------------------
select emp_no, dep_no, jikup, salary, hire_date from employee;

------------------------------------------
--<문3> employee 테이블에서 select emp_no, dep_no, jikup, salary, hire_date 을 검색하면서
-- 컬럼의 별칭을 사원번호, 직원명, 직급, 연봉, 입사일로 하고 연봉에 만원이란 문자를 붙여 검색하면? (as 생략 가능)
------------------------------------------
select  emp_no "직원번호"
        , emp_name "직원명"
        , jikup "직급"
        , salary||'만원'as "연봉"
        , hire_date as "입사일"
from employee;

------------------------------------------
--<문4> employee 테이블에서 직원명, 직급, 연봉, 세금을 검색하면? (세금은 연봉의 12%)
------------------------------------------
select
          emp_name as "직원명"
        , jikup as "직급"
        , salary||'만원' as "연봉"
        , salary*0.12||'만원' as "세금"
from employee;

------------------------------------------
--<문5> employee 테이블에서 직원명, 직급, 연봉, 실수령액을 검색하면? (세금은 연봉의 12%)
------------------------------------------
select
          emp_name as "직원명"
        , jikup as "직급"
        , salary||'만원' as "연봉"
        , salary*0.88||'만원' as "실수령액"
from employee;

------------------------------------------
--<문6> employee 테이블에서 직급을 중복 없이 검색하면?(방법 1.distinct, 2.unique 함수)
------------------------------------------
select distinct jikup as "직급" from employee;
select unique(jikup) as "직급" from employee;

------------------------------------------
--<문7> employee 테이블에서 부서번호와 직급을 중복없이 검색하고 오름차순으로 정렬하려면?
------------------------------------------
select distinct dep_no "부서번호", jikup as "직급" from employee order by 1 asc;