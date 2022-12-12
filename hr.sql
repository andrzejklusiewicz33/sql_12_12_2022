--test
select * from employees;
select * from jobs;
select * from departments;
select * from locations;
select * from countries;
select * from regions;
select * from user_constraints;

--DBEAVER

select * from employees;
select first_name,last_name,salary,department_id from employees;

select department_id,employee_id,last_name from employees;


select department_id numer_departamentu,employee_id "numer pracownika",last_name from employees;
select department_id as numer_departamentu,employee_id as "numer pracownika",last_name from employees;


select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by department_id;



select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by department_id asc;


select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by department_id desc;


select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by numer_departamentu;


select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by "numer pracownika";



select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by "numer pracownika" desc;

select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by 3;

select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by 3 desc;




select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by department_id,last_name;




select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by 1,last_name;


select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by 1 desc,last_name;



select department_id as numer_departamentu,employee_id as "numer pracownika",last_name 
from employees
order by numer_departamentu desc,3;
select * from employees;

/*
1. Wyœwietl nazwiska, daty zatrudnienia, wysokosci wynagrodzen w taki sposob by kazda z kolumn 
miala alias a wynik byl posortowany malejaco wg. daty zatrudnienia a w przypadku tej samej daty zatrudnienia
malejaco po wysokosci wynagrodzenia.
*/

select * from employees;
desc employees;

select last_name,hire_date,salary from employees;
select last_name nazwisko,hire_date data_zatrudnienia,salary wynagrodzenie from employees;
select last_name nazwisko,hire_date data_zatrudnienia,salary wynagrodzenie from employees order by hire_date desc;
select last_name nazwisko,hire_date data_zatrudnienia,salary wynagrodzenie from employees order by hire_date desc,salary desc;
select last_name nazwisko,hire_date data_zatrudnienia,salary wynagrodzenie from employees order by data_zatrudnienia desc,wynagrodzenie desc;
select last_name nazwisko,hire_date data_zatrudnienia,salary wynagrodzenie from employees order by 2 desc,3 desc;



select * from employees order by commission_pct;

select * from employees order by commission_pct desc;
select * from employees order by commission_pct desc nulls last;

select * from employees order by commission_pct nulls first;

select * from employees order by commission_pct nulls first,last_name;


select department_id,department_id*1000,department_id/10 kolumna_a,salary*commission_pct kolumna_b from employees;
/*
2. Wyœwietl nazwiska, prowizje, wynagrodzenie i wynik mnozenia kolumny z wynagrodzeniem razy kolumna z prowizja. 
Kolumnom nadaj aliasy, a wynik posortuj w taki sposob by najpierw byl wiersze majace wartosci w prowizjach (sortowanie malejace),
po nich te majace null w wartosci prowizji
*/

select last_name nazwisko,commission_pct proporcja_prowizji,salary zarobki,salary*commission_pct wartosc_prowizji from employees
order by commission_pct desc nulls last;

--przerwa do 12:47

select * from employees;

select last_name,commission_pct,nvl(commission_pct,0) from employees;
select last_name,commission_pct,nvl(commission_pct,0),salary*commission_pct,nvl(salary*commission_pct,0) from employees;

select last_name,commission_pct,nvl(commission_pct,0),salary*commission_pct,nvl(salary*commission_pct,0) from employees order by 5 desc;

select last_name,commission_pct,nvl(commission_pct,0) from employees order by nvl(commission_pct,0) desc;

select * from employees;

select * from employees where department_id=90;
select * from employees where salary>5000;
select * from employees where salary<5000;
select * from employees where salary<=5000;
select * from employees where salary>=5000;
select * from employees where department_id<>90;
select * from employees where department_id!=90;

select * from employees where department_id=90 or department_id=40;
select * from employees where department_id in (90,40,30);
select * from employees where department_id not in (90,40,30);
select * from employees where department_id=50 and salary>5000;
select * from employees 
where department_id=90 or department_id=40
order by last_name;

select * from employees where last_name like 'Kowalski';
select * from employees where last_name='Kowalski';
select * from employees where last_name like 'L%';
select * from employees where last_name like 'l%';
select * from employees where last_name like '%a%';
select * from employees where last_name like '___a%';
select * from employees where last_name not like '___a%';
select * from employees where commission_pct=null; ---fuuuuuu
select * from employees where commission_pct is null;
select * from employees where commission_pct is not null;

/*3.
Wyœwietl nazwiska,imiona i wynagrodzenia osob zarabiajacych wiecej niz 10000. Wynik posortuj malej¹co wg. wynagrodzeñ.
*/

select last_name,first_name,salary from employees order by 3 desc;

/*4.
Wyœwietl nazwiska, wynagrodzenia, prowizjê,numer departamentu osób które nie pracuja w departamencie numer 50 i jednoczesnie
zarabiaja wiecej niz 5000. Kolumnom nadaj aliasy a wynik posortuj rosnaco najpierw wg  numeru departamentu,
a w przypadku tego samego numeru departamentu malejaco po wynagrodzeniu.
*/


select last_name nazwisko,salary wynagrodzenie,commission_pct prowizja,department_id departament from employees
where department_id<>50 and salary>5000
order by department_id, salary desc;

/*5. 
Wyœwietl osoby których nazwisko zaczyna siê na K a jednoczeœnie otrzymuj¹ jakas prowizje
*/
select * from employees where last_name like 'K%' and commission_pct is not null;

--SQL Developer
--Dbeaver
--PL/SQL Developer
--Toad
/

select last_name from employees;
select last_name,upper(last_name),lower(last_name),initcap(last_name),length(lasT_name),last_name||' '||first_name imie_i_nazwisko from employees;
select last_name,substr(last_name,1,3), upper(   substr(last_name,1,3)  ) from employees;
select * from employees where last_name like '%k%' or last_name like '%K%';
select * from employees where upper(last_name) like '%K%';

select last_name from employees where department_id = 50 order by salary;
/*
6. Wyœwietl imiona i nazwiska powiêkszone i sklejone do jednej kolumny. Wynik powinien byæ posortowany po nazwiskach a kolumna mieæ alias.
*/

select firsT_name||' '||last_name from employees;

select upper(firsT_name||' '||last_name) from employees;

select UPPER(firsT_name)||' '||UPPER(last_name) from employees;

select upper(firsT_name||' '||last_name) IMIE_I_NAZWISKO from employees ORDER BY LAST_NAME;

/*7.
**. Wyœwietl powiekszone nazwiska,imiona i emaile. Emaile nie pobieraj z kolumny email tylko wygeneruj.
Adresy email powinny skladac sie z pierwszej litery imienia, kropki, calego nazwiska i ciagu @jsystems.pl.
Caly adres email powinien byc napisany malymi literami. W wyniku nie chcemy osob ktore otrzymuja jakas 
prowizjê, ani osob z departamentu 90. Kolumnom nadaj aliasy.
*/

SELECT * FROM EMPLOYEES;
SELECT FIRST_NAME,SUBSTR(FIRST_NAME,1,1) FROM EMPLOYEES;

SELECT upper(first_name) imie,upper(last_name) nazwisko, lower(substr(firsT_name,1,1)||'.'||last_name||'@jsystems.pl')  email
from employees
where commission_pct is null and department_id<>90;

select * from employees;

SELECT DEPARTMENT_ID,SALARY,SALARY/DEPARTMENT_ID FROM EMPLOYEES;
SELECT DEPARTMENT_ID,SALARY,SALARY/DEPARTMENT_ID,ROUND(SALARY/DEPARTMENT_ID),TRUNC(SALARY/DEPARTMENT_ID) FROM EMPLOYEES;
SELECT DEPARTMENT_ID,SALARY,SALARY/DEPARTMENT_ID,ROUND(SALARY/DEPARTMENT_ID,2),TRUNC(SALARY/DEPARTMENT_ID,2) FROM EMPLOYEES;

SELECT NVL(COMMISSION_PCT*SALARY,0) FROM EMPLOYEES;

--PRZERWA OBIADOWA DO 14:26
/*
8. 
Wyœwietl nazwiska, wynagrodzenia, prowizje i wartosc prowizji wyliczona jako iloczyn wynagrodzenia i prowizji 
zaokraglony do 2 miejsc po przecinku. Zadbaj o to by w ostatniej kolumnie nigdy nie pojawial sie null. W przypadku
pojawienia sie null'a chcemy tam wstawic 0. Wynik posortuj po ostatniej kolumnie malejaco.
*/

--SELECT NVL( ROUND(SALARY*0.33,2) ,0) FROM EMPLOYEES;

SELECT LAST_NAME,SALARY, COMMISSION_PCT, NVL(ROUND(SALARY*COMMISSION_PCT,2),0)
FROM EMPLOYEES ORDER BY 4 DESC;


SELECT LAST_NAME NAZWISKO,SALARY WYNAGRODZENIE, COMMISSION_PCT PROWIZJA, NVL(ROUND(SALARY*COMMISSION_PCT,2),0) WARTOSC_PROWIZJI
FROM EMPLOYEES ORDER BY 4 DESC;
/

SELECT * FROM DUAL;
SELECT SYSDATE FROM DUAL;
SELECT SYSTIMESTAMP FROM DUAL;

SELECT SYSTIMESTAMP FROM EMPLOYEES;

SELECT UPPER('dupa') from dual;

select last_name,hire_date,to_char(hire_date,'dd-mm-yyyy hh24:mi:ss d day month year w ww q') from employees;
select * from employees where to_char(hire_date,'mm')>6;

/*9.
*. Wyœwietl osoby zatrudnione w weekend
*/