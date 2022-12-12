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
1. Wy�wietl nazwiska, daty zatrudnienia, wysokosci wynagrodzen w taki sposob by kazda z kolumn 
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
2. Wy�wietl nazwiska, prowizje, wynagrodzenie i wynik mnozenia kolumny z wynagrodzeniem razy kolumna z prowizja. 
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
Wy�wietl nazwiska,imiona i wynagrodzenia osob zarabiajacych wiecej niz 10000. Wynik posortuj malej�co wg. wynagrodze�.
*/

select last_name,first_name,salary from employees order by 3 desc;

/*4.
Wy�wietl nazwiska, wynagrodzenia, prowizj�,numer departamentu os�b kt�re nie pracuja w departamencie numer 50 i jednoczesnie
zarabiaja wiecej niz 5000. Kolumnom nadaj aliasy a wynik posortuj rosnaco najpierw wg  numeru departamentu,
a w przypadku tego samego numeru departamentu malejaco po wynagrodzeniu.
*/


select last_name nazwisko,salary wynagrodzenie,commission_pct prowizja,department_id departament from employees
where department_id<>50 and salary>5000
order by department_id, salary desc;

/*5. 
Wy�wietl osoby kt�rych nazwisko zaczyna si� na K a jednocze�nie otrzymuj� jakas prowizje
*/