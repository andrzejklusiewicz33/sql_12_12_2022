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

