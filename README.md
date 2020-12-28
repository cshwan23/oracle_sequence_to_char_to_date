# oracle_sequence_to_char_to_date
오라클 시퀀스.. 변환함수



employee 테이블에서 사용할 PK 번호를 제공하는 시퀀스(sequence) 생성하기
(일련 번호 자동 생성기)

> 시퀀스는 객체의(sequence) 한 종류로서 자동 일련번호를 제공한다. 주로 pk 값을 뽑아준다.
> 은행에서 번호표 생성기와 동일한 기능을 가진다.


          create + sequence + 시퀀스명(_sq) 
          + start with + 처음시작값 
          + increment by + 증가값 
          + minvalue + 최소값 
          + maxvalue + 최대값;



          create  sequence  emp_sq
               start with 1          --> 처음 시작값
               increment by 1    --> 증가값
               minvalue 1           --> 최소값
               maxvalue 1          --> 최대값





<p>
-- customer 테이블에서 사용할 PK 번호를 제공하는 시퀀스(sequence) 생성하기 (일련 번호 자동 생성기)
-- 시퀀스는 객체의(sequence) 한 종류로서 자동 일련번호를 제공한다. 주로 pk 값을 뽑아준다.
-- 은행에서 번호표 생성기와 동일한 기능을 가진다.
<p>

 
시퀀스명 . nextval


: 증가된 일련번호 얻기<p>
------------------------------------------------
pk자리에 emp_sq.nextval 을 삽입해준다.
------------------------------------------------



시퀀스는 개발자가 쓰기엔 안좋다. 
서비스 오픈하기 전에 만드는게 좋다.

drop sequence 시퀀스명 ;
:  시퀀스 삭제



# oracle to_char_to_date


to_char

문자가 아닌 형태의 자료형을(대표적으로 날짜형) 문자열로 바꾸는 변환함수/<b>


     select emp_no, emp_name,to_char(hire_date,'YYYY.MM.DD Q')||'/4분기' from employee;


분기 / 요일 / 한글변경/<b>/<b>

고용날짜를 YYYY.MM.DD Q  <-- Q는 분기 자료형이다./<b>
오라클에서 연결연산자는 || 이다. /<b>
DY는 day 즉 요일 자료형이다. /<b>
NLS_DATE_LANGUAGE = Korean 한글로 변환시켜준다,/<b>

     select emp_no, emp_name,to_char(hire_date,'YYYY.MM.DD Q')||'/4분기'||to_char(hire_date,'DY','NLS_DATE_LANGUAGE = Korean') from employee;

<p>


     select emp_no,emp_name,
     to_char(hire_date,'YYYY.MM.DD')||'('||to_char(hire_date,'DY','NLS_DATE_LANGUAGE = Korean') ||')'
     from employee;



<p>
     select emp_no, emp_name,to_char(hire_date,'YYYY.MM') from employee;



