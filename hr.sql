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

select * from employees where to_char(hire_date,'d')>5;
select * from employees where to_char(hire_date,'d') in (6,7);
select * from employees where to_char(hire_date,'d') in ('6','7');
select * from employees where to_char(hire_date,'d')=6 or to_char(hire_date,'d')=7;
select * from employees where to_char(hire_date,'day') like '%sobota%' or to_char(hire_date,'day') like '%niedziela%';

select sysdate from dual;
select sysdate,to_char(sysdate,'dd-mm-yyyy hh24:mi:ss') from dual;

select sysdate,to_char(  trunc(sysdate,'day') ,'dd-mm-yyyy hh24:mi:ss') from dual;
select sysdate,to_char(  trunc(sysdate,'month') ,'dd-mm-yyyy hh24:mi:ss') from dual;

select sysdate-hire_date,hire_date,last_name from employees;
select to_char(hire_date,'dd-mm-yyyy hh24:mi:ss') from employees;

select trunc(sysdate-hire_date),hire_date,last_name from employees;
select hire_date,hire_date-1000,last_name from employees;
select hire_date,hire_date+1000,last_name from employees;
select sysdate,add_months(sysdate,10) from dual;
select sysdate,hire_date,sysdate-hire_date,months_between(sysdate,hire_date) from employees;
select sysdate,hire_date,sysdate-hire_date,months_between(sysdate,hire_date),months_between(sysdate,hire_date)/12 from employees;

/*10.
 Wyœwietl imiona, nazwiska, daty zatrudnienia w formacie dd-mm-yyyy i iloœæ PE£NYCH lat przepracowanych w firmie.
*/

select user from dual;
select user from employees;
select user,systimestamp from dual;


select firsT_name,last_name from employees;
select firsT_name,last_name,to_char(hire_date,'dd-mm-yyyy') from employees;
select firsT_name,last_name,to_char(hire_date,'dd-mm-yyyy'),months_between(sysdate,hire_date) from employees;
select firsT_name,last_name,to_char(hire_date,'dd-mm-yyyy'),months_between(sysdate,hire_date)/12 from employees;
select firsT_name,last_name,to_char(hire_date,'dd-mm-yyyy'),trunc(months_between(sysdate,hire_date)/12) from employees;

--przerwa do 15:44

select * from employees where hire_date<'01-01-2001'; ---fuuuuu

select * from employees where hire_date<to_date('01-01-2004','dd-mm-yyyy');

/*11.
Wyœwietl nazwiska i daty zatrudnienia w formacie dd-mm-yyyy osob ktore zostaly zatrudnione pomiêdzy 01-01-2002 a 31-12-2004.
Wynik powinien byc posortowany odwrotnie chronolicznie (tak by najpozniej zatrudnieni byli wyswietlani jako pierwsi).
*/

select * from employees where salary between 4000 and 5000;

select * from employees where (salary > 5000 and commission_pct is not null) or department_id=90;


select last_name,to_char(hire_date,'dd-mm-yyyy') from employees;
select last_name,to_char(hire_date,'dd-mm-yyyy') from employees
where hire_date>=to_date('01-01-2002','dd-mm-yyyy') and hire_date<=to_date('31-12-2004','dd-mm-yyyy')
order by hire_date desc;


select last_name,to_char(hire_date,'dd-mm-yyyy') from employees
where hire_date>=to_date('01-01-2002','dd-mm-yyyy') and hire_date<=to_date('31-12-2004','dd-mm-yyyy')
order by 2 desc; --fuuuuu


select last_name,to_char(hire_date,'dd-mm-yyyy') from employees
where hire_date between to_date('01-01-2002','dd-mm-yyyy') and to_date('31-12-2004','dd-mm-yyyy')
order by hire_date desc;

/*12.
**. Dowiedz siê jakiego dnia tygodnia siê urodziles (tylko nie dzwon do mamy ;) )
*/

select to_char(sysdate,'day') from dual;

select to_char(to_date('29-09-1986','dd-mm-yyyy'),'day') from dual;
/

--sum,max,min,avg,count

select * from employees;
select sum(salary) from employees;
select sum(salary),last_name from employees; --fuuu
select sum(salary),count(*) from employees;
select sum(salary),count(*) from employees where department_id=90;
select sum(salary)/100 from employees;
select sum(salary*commission_pct) from employees;
select min(salary),max(salary) from employees;
select min(salary),max(salary) from employees where department_id=90;
select min(hire_date),max(hire_date) from employees;
select max(hire_date)-min(hire_date) from employees;
select min(last_name),max(last_name) from employees;
select avg(salary) from employees;
select min(salary*commission_pct),max(salary*commission_pct), avg(salary*commission_pct) from employees;
select avg(salary),round(avg(salary),2) from employees;
select count(*) from employees;
select count(*) from employees where department_id=60;
select count(*),count(commission_pct) from employees;

select distinct department_id from employees;
select count(distinct department_id) from employees;
select count(salary),last_name from employees;

select last_name, (select count(*) from employees) from employees;
select last_name,salary,salary- (select avg(salary) from employees) from employees;

/*13.
Wyswietl w formacie dd-mm-yyyy najwczesniejsza datê zatrudnienia w firmie.

*/

select min(hire_Date) from employees;
select to_char( min(hire_Date),'dd-mm-yyyy') from employees;


/*14.
Wyœwietl z dokladnoscia do 2 miejsc po przecinku przycieta ilosc lat pomiedzy zatrudnieniem pierwszej i ostatniej osoby w firmie
*/

select trunc(months_between(max(hire_date),min(hire_date))/12,2) from employees;

/*15.
Wyœwietl iloœæ osob otrzymujacych jakas prowizjê które nie zostaly zatrudnione w 2001 roku
*/

select count(*) from employees where commission_pct is not null and to_char(hire_date,'yyyy')<>2001;




select count(*) from employees where commission_pct is not null and hire_date<>to_date('01-01-2001','dd-mm-yyyy');

/*16.
Wyœwietl sumê wynagrodzeñ osób które nie zostaly zatrudnione w latach 2001-2005
*/

SELECT SUM(SALARY) FROM EMPLOYEES;
SELECT SUM(SALARY) FROM EMPLOYEES WHERE HIRE_DATE<TO_DATE('01-01-2001','DD-MM-YYYY') OR HIRE_DATE>TO_DATE('31-12-2005','DD-MM-YYYY');
SELECT SUM(SALARY) FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'YYYY') NOT BETWEEN 2001 AND 2005;
SELECT SUM(SALARY) FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'YYYY')>2005 OR TO_CHAR(HIRE_DATE,'YYYY')<2001;




--avg,MAX,MIN,SUM,COUNT

SELECT * FROM EMPLOYEES;
SELECT DISTINCT DEPARTMENT_ID FROM EMPLOYEES;

SELECT DEPARTMENT_ID,AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;
SELECT DISTINCT DEPARTMENT_ID,AVG(sALARY) FROM EMPLOYEES;  --FUUUU
SELECT DEPARTMENT_ID,round(AVG(SALARY)),max(salary)-min(salary),count(*) FROM EMPLOYEES GROUP BY DEPARTMENT_ID order by 1;


select last_name,count(*) from employees group by last_name order by 2 desc;
select to_char(hire_date,'d') ,count(*) from employees group by to_char(hire_date,'d') order by 1; 



/*17.
Wyœwietl numery departamentów i ró¿nicê w pelnych dniach pomiedzy zatrudnieniem pierwszego i ostatniego
pracownika w ramach danego departamentu.
*/

select department_id,max(hire_date)-min(hire_date) from employees group by department_id;
select department_id,trunc(max(hire_date)-min(hire_date)) from employees group by department_id;

select department_id,max(hire_date)-min(hire_date) from employees group by department_id order by 1 desc nulls last;

select * from employees;

update  employees set first_name=' ' where employee_id>204;
select * from employees;

select first_name,replace(first_name,' ',null) from employees order by replace(first_name,' ',null) desc nulls last;
select first_name,replace(first_name,' ',null) from employees order by replace(first_name,' ',null) asc nulls last;


create table trigerowa(
 id integer,
 data_czegos date
);

insert into trigerowa values (1,sysdate);
insert into trigerowa values (2,sysdate);
insert into trigerowa values (3,sysdate);
insert into trigerowa values (1000,sysdate);
select id,to_char(data_czegos,'dd-mm-yyyy hh24:mi:ss') from trigerowa;

create or replace trigger datoulepszacz 
before insert on trigerowa
for each row
begin
:new.data_czegos:=trunc(:new.data_czegos,'day')+1;
end;

update trigerowa set data_czegos=trunc(data_czegos,'day')+1;



create or replace function vat23(x number)  return number is
begin
return round(x*1.23,2);
end;

select salary,vat23(salary) from employees;

/*
18. wyœwietl rok zatrudnienia i ilosc osob zatrudnionych w danym roku. Wynik posortuj po roku

2001 13
2002 5

*/
/
select to_char(hire_date,'yyyy') from employees group by to_char(hire_date,'yyyy');
select to_char(hire_date,'yyyy'),count(*) from employees group by to_char(hire_date,'yyyy');
select to_char(hire_date,'yyyy'),count(*) from employees group by to_char(hire_date,'yyyy') order by 1;

select to_char(hire_date,'yyyy'),count(*) from employees group by to_char(hire_date,'yyyy') order by to_char(hire_date,'yyyy');


select count(*) from employees where department_id=50;

select department_id,count(*) from employees group by department_id;

select department_id,count(*) from employees where manager_id=100 group by department_id;

select department_id,count(*) from employees  group by department_id having count(*)>1;

select department_id,count(*) from employees  group by department_id having avg(salary)>3000;

select department_id,count(*) from employees  group by department_id having avg(salary)>3000 order by 2;

/*19. 
Wyswietl grupy pracownikow wg. roku zatrudnienia a obok roku zatrudnienia wyswietl 
sumê zarobkow wsrod osob zatrudnionych w danym roku.
Interesuja nas tylko grupy ktore maja sumê zarobkow wieksza niz 30000. Wynik posortuj
malejaco wg. sumy zarobkow a kolumnom nadaj aliasy.
*/

select to_char(hire_date,'yyyy') rok,sum(salary) suma
from employees 
group by to_char(hire_date,'yyyy')
having sum(salary)>30000
order by 2 desc;
/

create table fakturki as select employee_id numer_faktury, hire_date data_faktury, salary suma_faktury from employees;

select * from fakturki;


select to_char(data_faktury,'yyyy'),to_char(data_faktury,'mm'),count(*),sum(suma_faktury)
from fakturki 
group by to_char(data_faktury,'yyyy'),to_char(data_faktury,'mm')
order by 1,2;

select * from employees;

select department_id,manager_id,count(*)
from employees
group by department_id,manager_Id
order by 1,2;


select department_id,manager_id,count(*)
from employees
group by rollup(department_id,manager_Id);


/*20.
Wyswietl srednie zarobki zaokraglone do 2 miejsc po przecinku w podziale najpierw na departamenty a nastepnie
na rok zatrudnienia.
*/

select department_id,to_char(hire_date,'yyyy'),round(avg(salary),2)
from employees
group by  department_id,to_char(hire_date,'yyyy')
order by 1,2;
/

--przerwa do 12:39


select lasT_name,salary from employees;
select avg(salary) from employees;

select lasT_name,salary,(select avg(salary) from employees)
from employees;


select lasT_name,salary,(select avg(salary) from employees)
,salary-(select avg(salary) from employees)
from employees;


select lasT_name,salary,department_id,(select avg(salary) from employees where department_id=e.department_Id)
from employees e;


select lasT_name,salary,(select avg(salary) from employees)
,salary-(select avg(salary) from employees)
from employees;


select last_name,hire_date
,hire_date-(select min(hire_date) from employees)
from employees;
/

select last_name,hire_date
,hire_date-min(hire_Date) ---fuuuuu
from employees;

select min(hire_date) from employees where department_id=90;

select last_name,hire_date
,hire_date-(select min(hire_date) from employees),min(hire_date) over ()
from employees where department_id=90;

select months_between(max(hire_date),min(hire_date))/12 from employees;
/*21.
Wyswietl nazwiska, zarobki oraz stosunek zarobkow danego goscia do sumy zarobkow w calej firmie wyrazone 
procentowo.
King|20000|0.05
King|20000|5
King|20000|5%
*/

select last_name,salary,(select sum(salary) from employees),
round((salary/(select sum(salary) from employees))*100,2)||'%'
from employees;

select last_name,salary,(select sum(salary) from employees),
to_char(round((salary/(select sum(salary) from employees))*100,2),'0.99' )||'%'
from employees;


select to_char(max(hire_date),'yyyy') from employees;

/

select last_name,salary,
salary-(select avg(salary) from employees),
hire_date,
hire_date-(select min(hire_date) from employees)
from employees;

select * from employees where hire_date=(select min(hire_date) from employees);

/*22.
Wyœwietl numery pracownikow, nazwiska, ilosc dni od zatrudnienia pierwszego pracownika w calej firmie do 
zatrudnienia tego pracownika, datê zatrudnienia danego pracownika w formacie dd-mm-yyyy, datê zatrudnienia
pierwszego pracownika w calej firmie w formacie dd-mm-yyyy. W wyniku powinny pojawic sie tylko te osoby
które zarabiaja wiecej niz wynosi srednia w firmie. Wyeliminuj tez prezesa z wyniku. Calosc posortuj 
malejaco wg stazu pracy a kolumnom nadaj aliasy.
*/
select
employee_id,last_name
,hire_date-(select min(hire_date) from employees) roznica_od_pierwszego
,to_char(hire_date,'dd-mm-yyyy') data_zatrudnienia
,(select to_char(min(hire_date),'dd-mm-yyyy') from employees) zatrudnienie_pierwszego
from employees
where salary>(select avg(salary) from employees)
and manager_id is not null
order by hire_date desc;

/*23.
Wyœwietl departamenty oraz ilosc pracownikow w nich. 

Interesuja nas tylko departamenty w ktorych
srednia zarobkow jest wyzsza od sredniej zarobkow w calej firmie.
*/

select department_id,count(*) 
from employees
group by department_Id
having avg(salary)>(select avg(salary) from employees);

select avg(salary) from employees;

--przerwa obiadowa do 14:07


select * from employees where department_id in (10,20,30);

select department_id,
avg(salary) srednia_departament,
(select avg(salary) from employees) srednia_firma
from employees
group by department_Id
having avg(salary)>(select avg(salary) from employees);

select * from employees where department_id in ();

select department_id
from employees
group by department_Id
having avg(salary)>(select avg(salary) from employees);

select * from employees where department_id in (    
    select department_id
    from employees
    group by department_Id
    having avg(salary)>(select avg(salary) from employees)
);

/*24.
Wyœwietl osoby pracujace w departamentach liczniejszych niz 1 osobowe
*/

select department_id,count(*) from employees group by department_id;

select department_id,count(*) from employees group by department_id having count(*)>1;

select department_id from employees group by department_id having count(*)>1;

select * from employees where department_id in
    (
    select department_id from employees group by department_id having count(*)>1
    );


select * from departments;

select * from employees where employee_id in (select manager_id from departments);

/*25.
 Wyœwietl pracowników którzy sa przelozonymi innych pracownikow. Employee_id tych pracownikow 
pojawia sie w wartosciach kolumny manager_id innych pracownikow.
*/
select * from employees;

select * from employees where employee_id in (select manager_id from employees);
select count(*) from employees;
select 107-18 from dual;

select * from employees where employee_id not in (select manager_id from employees);
select * from employees where department_id in (10,20,30,null);
select * from employees where department_id not in (10,20,30,null);

select * from employees where employee_id not in (select manager_id from employees where manager_id is not null);

/*26.
Wyœwietl goœci którzy nie sa managerami ani innych pracownikow ani zadnego z departamentow.
*/

select * from employees 
where employee_id not in (select manager_id from employees where manager_id is not null)
and employee_id not in (select manager_Id from departments where manager_id is not null);

/*27.
Wyœwietl powiêkszone imiê i nazwisko w jednej kolumnie z aliasem, miesiac i rok zatrudnienia, wysokoœæ wynagrodzenia,
wysokoœæ prowizji jako iloczyn wynagrodzenia i kolumny commission_pct przyciete do centow
- w tej kolumnie zamiast ewentualnego nulla
chcemy wyswietlic zero. W wyniku chcemy wyœwietliæ tylko osoby zatrudnione w drugiej polowie roku.
*/
select upper(first_name||' '||last_name) imie_nazwisko 
,to_char(hire_date,'mm-yyyy') zatrudnienie
,salary
,nvl(trunc(salary*commission_pct,2),0) prowizja
from employees
where to_char(hire_date,'mm')>6;



select upper(first_name||' '||last_name) imie_nazwisko 
,to_char(hire_date,'mm-yyyy') zatrudnienie
,salary
,trunc(salary*nvl(commission_pct,0),2) prowizja
from employees
where to_char(hire_date,'mm')>6;

/*28.
Wyœwietl poszczególne lata zatrudnienia,liczbe pracownikow zatrudnionych w danym roku, srednia zarobkow w danym roku przycieta do centow,
roznicê pomiêdzy najwy¿szymi i najni¿szymi zarobkami wœród osób zatrudnionych w danym roku. Do obliczeñ nie chcemy braæ pod uwagê prezesa.
*/

select to_char(hire_date,'yyyy'),round(avg(salary),2)
from employees
where department_Id in (10,20,30)
group by to_char(hire_date,'yyyy')
order by 1;


select to_char(hire_date,'yyyy') rok,count(*) liczba_pracownikow,round(avg(salary),2) srednia_zarobkow,max(salary)-min(salary) roznica_najwyzzsze_najnizsze
from employees
where manager_id is not null
group by to_char(hire_date,'yyyy')
order by 1;



--przerwa do 15:36


/*29.
Wyœwietl numery pracownikow, nazwiska, wynagrodzenia, srednie zarobki w calej firmie zaokragone do $, roznicê pomiêdzy 
zarobkami danego goœcia a œrednia zarobkow w calej firmie. Wynik posortuj tak by na poczatku byly osoby najlepiej 
zarabiajace.
*/

--dupa

select employee_Id,last_name,salary,
(select avg(salary) from employees) 
from employees;


select employee_Id,last_name,salary,
(select round(avg(salary)) from employees) 
from employees;


select employee_Id,last_name,salary,
round((select avg(salary) from employees))
from employees;

select employee_Id,last_name,salary,
(select round(avg(salary)) from employees) srednia, 
salary-(select round(avg(salary)) from employees) roznica_do_sredniej
from employees
order by salary desc;


/*30.
Wyœwietl numery departamentów, œrednie zarobki w nich, ró¿nicê pomiêdzy œrednimi zarobkami w departamencie a œrednimi zarobkami w firmie.
Interesuja nas tylko departamenty w ktorych srednia zarobkow jest wyzsza niz srednia zarobkow w firmie. Wynik posortuj tak by na 
poczatku byly dzialy o najwyzszej sredniej zarobkow. Kolumnom nadaj aliasy.
*/

--klusiewicz@jsystems.pl


create or replace view raport1 as 
select employee_Id,last_name,salary,
(select round(avg(salary)) from employees) srednia, 
salary-(select round(avg(salary)) from employees) roznica_do_sredniej
from employees
order by salary desc;


select * from raport1;

select department_id
,round(avg(salary)) srednia_departament
,round(avg(salary)-(select avg(salary) from employees)) roznica_srednich
from employees
group by department_Id
having avg(salary)>(select avg(salary) from employees)
order by 2 desc;

select last_name,manager_id
,(select count(*) from employees where manager_id=e.manager_id)
from employees e;

select last_name,department_id
,(select sum(salary) from employees where department_id=e.department_id)
from employees e;


select last_name,department_id
,(select sum(salary) from employees where department_id=90)
from employees e;

select last_name,department_name from employees join departments using(department_id);

select
last_name
,(select department_name from departments where department_id=e.department_id)
from employees e;
/



select koza.last_name,koza.department_id
,(select sum(salary) from employees where department_id=koza.department_id)
,(select sum(salary) from employees)
from employees koza;


select department_id,sum(salary) 
from employees
group by department_id;


select last_name,department_id,sum(salary) --fuuuuu
from employees
group by department_id;

/*31.
Wyœwietl nazwiska,zarobki, numery departamentów i stosunek zarobków danego goœcia do sumy zarobków w departamencie 
w którym pracuje.
*/

select last_name,salary,department_id,
(select sum(salary) from employees where department_id=90)
from employees;


select last_name,salary,department_id,
salary/(select sum(salary) from employees where department_id=zewn.department_id)
from employees zewn;


select last_name,salary,department_id,
round(salary/(select sum(salary) from employees where department_id=zewn.department_id),2)*100||'%' stusunek_do_sumy_departament
from employees zewn;


select last_name,salary,department_id from employees;
select avg(salary) from employees;
select avg(salary) from employees where department_id=90;


select last_name,salary,department_id,(select avg(salary) from employees) from employees;
select last_name,salary,department_id,(select avg(salary) from employees where department_id=90) from employees;
select last_name,salary,department_id,(select avg(salary) from employees where department_id=x) from employees;

select department_id,avg(salary) from employees group by department_id;

select last_name,salary,department_id,(select avg(salary) from employees where department_id=poza_nawiasem.department_id) from employees poza_nawiasem;
select poza_nawiasem.last_name,poza_nawiasem.salary,poza_nawiasem.department_id,(select avg(salary) from employees where department_id=poza_nawiasem.department_id) 
from employees poza_nawiasem;

select employees.first_name,employees.last_name from employees;
select e.first_name,e.last_name from employees e;

select last_name,salary,department_id,(select avg(salary) from employees where department_id=poza_nawiasem.department_id) from employees poza_nawiasem;

select last_name,manager_id,(select count(*) from employees where manager_id=e.manager_id) from employees e;

/*32.
wyœwietl nazwiska,zarobki,numer departamentu i roznicê zarobkow goscia do najwyzszych zarobkow w departamencie w ktorym pracuje
*/

select last_name,salary, department_id from employees;
select last_name,salary, department_id,(select max(salary) from employees where department_id=e.department_id) from employees e;
select last_name,salary, department_id,(select max(salary) from employees where department_id=e.department_id)-salary roznica_do_max from employees e;

/*33.
Wyœwietl nazwiska i nazwy departamentów. Skorzystaj z danych zawartych w tabelce departaments
*/

select * from departments;

-- klusiewicz@jsystems.pl
--OCA + OCP, SQL Expert


select last_name, salary
from employees 
where salary>(select avg(salary) from employees);


select last_name, salary, (select round(avg(salary)) from employees) srednia
from employees 
where salary>(select avg(salary) from employees);


select last_name, salary,department_id,(select round(avg(salary)) from employees where department_id=e.department_id) srednia_departament
from employees e
where salary>(select avg(salary) from employees where department_id=e.department_id);


/*34.
Wyœwietl osoby które zarabiaj¹ najwiecej w dziale w ktorym pracuja...
*/

select * from employees where salary=(select max(salary) from employees);
select * from employees zewn where salary=(select max(salary) from employees where department_id=zewn.department_id);

--przerwa do 11:30

select * from employees;
select * from departments;

select * from employees join departments on employees.department_id=departments.department_id;
select * from employees e join departments d on e.department_id=d.department_id;
select * from employees join departments using(department_id);
select * from employees natural join departments; -- nie uzywac!
select * from employees;
select * from departments;
select * from employees e join departments d on e.department_id=d.department_id and e.manager_id=d.manager_id;

select last_name,department_name from employees join departments using(department_id);

select count(*) from employees;
select count(*) from employees join departments using(department_id);
select * from employees where department_id is null;
select * from employees e join departments d on e.department_id=d.department_id;
select * from employees e join departments d on e.department_id=d.numer_departamentu;

select * from employees e join departments d on e.department_id<>d.department_id;
select * from employees e join departments d on e.department_id=d.department_id;

/*35.
Wyœwietl nazwiska i nazwy zawodow. Zawody znajduja sie w tabelce jobs
*/
select * from jobs;

select last_name,job_title from employees join jobs using(job_id);
select last_name,job_title from jobs join employees using(job_id);
select last_name,job_title from employees e join jobs j on e.job_id=j.job_id;

select * from employees join departments using(department_id);

select department_name,avg(salary),count(*) from employees join departments using(department_id) 
group by department_name;

select * from employees join departments using(department_id) join locations using(location_id) join countries using(country_id);

/*36.
Wyœwietl nazwy zawodów i liczbê pracowników je wykonujacych
*/

select * from employees join jobs using(job_id);

select job_title,count(*)
from employees join jobs using(job_id)
group by job_title;

select * from employees join departments using(department_id) join locations using(location_id) join jobs using(job_Id);

select last_name,department_name,city,job_title from employees join departments using(department_id) join locations using(location_id) join jobs using(job_Id);
select last_name,department_name,city,job_title from employees join jobs using(job_Id) join departments using(department_id) join locations using(location_id) ;

select * from locations;

select last_name,e.department_id from employees e join departments d on e.department_id=d.department_id;

/*37.
Wyœwietl nazwy miast i iloœæ pracowników w nich. Wynik posortuj malejaco wg. ilosci pracownikow
*/

select * from employees join departments using(department_id) join locations using(location_id);
select city,count(*) ilosc_pracownikow from employees join departments using(department_id) join locations using(location_id) group by city order by 2 desc;

/*38.
Wyswietl nazwy departamentów, zaokraglone do jednostek bez czesci ulamkowej srednie zarobki w tych departamentach,
srednie zarobki w firmie, roznice pomiedzy srednimi zarobkami w departamencie a srednimi zarobkami w firmie.
*/

select department_name
,round(avg(salary)) srednia_departament
,(select round(avg(salary)) from employees) srednia_firma
,(select round(avg(salary)) from employees)-round(avg(salary)) roznica_srednich
from employees join departments using(department_id)
group by department_name
order by 4 desc;


--przerwa do 12:52

/*39.
Wyœwietl iloœæ zatrudnionych pracowników w podziale na departamenty i rok zatrudnienia. Wynik powinien wygladac 
mniej wiecej tak:
IT 2001 15
IT 2002 4
IT 2003 1
Sales 2001 5
Sales 2002 4
*/

select department_id,manager_id, count(*) 
from employees 
group by department_id,manager_id 
order by 1,2;

select * from employees join departments using(department_id);

select department_name,to_char(hire_date,'yyyy') ,count(*)
from employees join departments using(department_id)
group by  department_name,to_char(hire_date,'yyyy')
order by 1,2;

select * from employees where department_id is null;
select * from departments where department_id not in (select department_id from employees where department_id is not null);
select * from employees join departments using(department_id);
select * from employees inner join departments using(department_id);
select count(*) from employees;
select * from employees e join departments d on e.department_id=d.department_id;

select * from employees left outer join departments using(department_id) order by department_id;
select * from employees left join departments using(department_id) order by department_id;
select * from employees right outer join departments using(department_id) order by department_id;
select * from employees right join departments using(department_id) order by last_name;
select * from employees full outer join departments using(department_id) order by last_name;
select * from employees full join departments using(department_id) order by last_name;

/*40.
Wyœwietl miasta i nazwy departamentów w nich, w taki sposob by wyswietlic rowniez miasta 
w ktorych nie ma zadnych departamentow
*/

select department_name,city from departments right join locations using(location_id);
select department_name,city from locations left join departments using(location_id);

/*41.
Wyswietl:
- imie
- nazwisko
- data zatrudnienia w formacie dd-mm-yyyy
- staz w pelnych latach
- nazwa departamentu
- miasto
- wykonywany zawod
- zarobki
- roznica pomiedzy zarobkami danej osoby a srednimi zarobkami w calej firmie
- roznica pomiedzy zarobkami danej osoby a srednimi zarobkami w departamencie w ktorym pracuje.
Z wyniku wyeliminuj prezesa, nie chcemy tez osob ktore nie maja przypisanego zadnego departamentu lub zawodu
Wynik posortuj malejaco wg. stazu pracy, a gdyby byly dwie osoby zatrudnione tego samego dnia to alfabetycznie po nazwisku rosnaco.
*/

select first_name imie,last_name nazwisko,to_char(hire_date,'dd-mm-yyyy')  zatrudnienie
,trunc(months_between(sysdate,hire_date)/12) staz_lata
,department_name,city,job_title
,salary
,round((select avg(salary) from employees)-salary) roznica_firma
,round((select avg(salary) from employees where department_id=e.department_Id)-salary) roznica_dzial
from employees e
join departments d on e.department_id=d.department_id
join locations using(location_id)
join jobs using(job_id)
where e.manager_id is not null
order by hire_date,last_name;

select * from employees join departments using(department_id) join jobs using(job_id);

select firsT_name,last_Name, (select avg(salary) from employees where department_id=e.department_id),department_name
from employees e join departments d on e.department_id=d.department_id;

--przerwa obiadowa do 14:35


select * from employees where department_id=50;
select * from employees where manageR_id=100;



select * from employees where department_id=50
union all
select * from employees where manageR_id=100;


select * from employees where department_id=50
union 
select * from employees where manageR_id=100;


select * from employees where department_Id=50 or manager_Id=100;

select * from employees where department_id=50
intersect
select * from employees where manageR_id=100;

select * from employees where department_id=50 and manager_id=100;

select * from employees where department_id=50
minus
select * from employees where manageR_id=100;

select * from employees where manageR_id=100
minus
select * from employees where department_id=50;

select employee_id,last_name from employees
union all
select department_id,department_name from departments;

select employee_id kol1,last_name kol2 from employees
union all
select department_id,department_name from departments;

/*42.
**. Wyswietl osoby ktore sa managerami innych pracownikow ale nie sa managerami zadnego z departamentow.
Zrealizuj na dwa sposoby:
--operatorami zbiorowymi
--podzapytaniami w klauzuli where
*/

select * from employees where employee_Id in (select manageR_id from employees);
select * from employees where employee_id in (select manager_id from departments);

select * from employees where employee_Id in (select manageR_id from employees)
minus 
select * from employees where employee_id in (select manager_id from departments);

select * from employees where employee_id in 
(select manager_id from employees) and employee_id not in (select manager_id from departments where manager_id is not null);
/*
union all -- sklejenie 2 wynikow
union -- sklejenie 2 wynikow ale z usunieciem duplikatow
minus -- od pierwszego zbioru odejmujemy drugi
intersect - czesc wspolna obu zbiorow
*/

/*
update --aktualizacja
insert --wstawianie
delete --kasowanie
*/

update employees set salary=1000 where employee_id=100;
select salary from employees where employee_Id=100;
update employees set salary=salary+1000 where employee_id=100;
update employees set salary=salary+1000,commission_Pct=0.5 where employee_id=100;
select salary,commission_pct from employees where employee_Id=100;
commit;
update employees set salary=salary+10;
rollback;
commit;

select last_name from employees where employee_id=102;

update employees set last_name='Nowak' where employee_Id=102;
commit;
rollback;

5xUpdate
rollback;

5xUpdate
commit;
rollback;

/*43.
Daj podwyzkê o 10 procent osobom ktore zarabiaja mniej niz srednia w calej firmie.
*/

create table employees_slawek as select * from employees;


update employees set salary=salary*1.1 where salary<(select avg(salary) from employees);
commit;

--przerwa do 15:40

drop table owoce;

create table owoce(
id_owocu integer primary key,
nazwa varchar2(3000)
);

select * from owoce;
insert into owoce values (1,'banan');
insert into owoce values (2,'truskawka');
commit;

insert into owoce(id_owocu) values (3);

create sequence sekw;
select sekw.nextval from dual;

create sequence owoce_seq start with 4;
create sequence owoce_seq start with 4 increment by 1;
insert into owoce values (owoce_seq.nextval,'jab³ko');

create sequence moja_seq start with 1000 increment by 100;
select moja_seq.nextval from dual;


create or replace trigger yeti
before insert on owoce
for each row
begin
:new.id_owocu:=owoce_seq.nextval;
end;


insert into owoce(nazwa) values ('jakaœ wartoœæ');
select * from owoce;

create table emps as select * from employees where 1=2;

select * from emps;
insert into emps select * from employees;
insert into emps select sekwencja.nextval,first_name,last_name ..... from employees;

select owoce_seq.currval from dual;

/*44.
Stwórz sekwencjê która bêdzie sluzyla nadawaniu numeracji wierszom w tabeli departments.
Zadbaj o to by sekwencja podala wlasciwa wartosc poczatkowa i miala zachowana konsekwencje 
zwiekszania wartosci. Korzystajac z tej sekwencji wstaw wiersz do tabeli 
departments uzupelniajac kolumny department_id, department_name i location_id

*/

create table departments_slawek as select * from departments;
select *  FROM DEPARTMENTS;
select * from locations;

create sequence dep_seq start with 280 increment by 10;
insert into departments(department_id,department_name,location_id) values (dep_seq.nextval,'Zamieszanie i ba³agan',1200);
insert into departments values (dep_seq.nextval,'Zamieszanie i ba³agan',null,1200);
select * from locations;

delete from departments where department_id=280;
commit;
select *  FROM DEPARTMENTS;
delete from departments;

select * from regions;
insert into regions values (5,'Australia');
insert into regions values (6,'Arctica');
commit;

select * from countries;

delete from regions where region_id not in (select region_id from countries where region_id is not null);

select * from regions;

drop table abc;


select * from countries;
insert into countries values ('NW','Nowy',27);
commit;

delete from regions where region_id=27;

/

/*45.
Skasuj trwale te lokalizacje w których nie ma zadnych departamentow.
*/

delete from locations where location_id not in (select location_id from departments where location_id is not null);
rollback;

create table samochody(
    id_samochodu integer primary key,
    marka varchar2(4000) not null,
    model varchar2(4000) not null,
    rejestracja varchar2(4000) not null unique check (length(rejestracja)>3 and length(rejestracja)<10),
    id_kierowcy integer references employees(employee_id),
    pojemnosc number
);

insert into samochody values (1,'Renault','Kadjar','WY722CP',100);
select * from samochody s join employees e on s.id_kierowcy=e.employee_id;

create table regiony (
id_regionu integer primary key,
nazwa varchar2(4000)
);

insert into regiony select region_id,region_name from regions;
select * from regiony;

/*46.
*.  Stwórz tabelê dane_kontaktowe z polami: klucz glowny, imie,nazwisko, email,telefon
a nastepnie przepompuj do niej dane z tabeli employees (tylko wybrane pola).
*/

create table dane_kontaktowe(
id_dk integer primary key,
imie varchar2(4000) not null,
nazwisko varchar2(4000) not null,
email varchar2(4000) not null unique,
telefon varchar2(4000) not null unique
);

insert into dane_kontaktowe 
select employee_Id,first_name,lasT_name,email,phone_number from employees;
commit;
select * from dane_kontaktowe;


select * from employees;

select last_name,salary,dense_rank() over(order by salary desc) from employees;
select last_name,salary,dense_rank() over(order by salary desc),rank() over(order by salary desc) from employees;

select employee_id,last_name,salary,dense_rank() over(order by salary desc, employee_id) from employees;

select employee_id,last_name,salary hajs,dense_rank() over(order by salary desc, employee_id) ranking from employees;

/*47.
Wyswietl nazwiska, daty zatrudnienia w formacie dd-mm-yyyy oraz ranking w ktorym pierwsze miejsce zajmie osoba
najwczesniej zatrudniona. Nie chcemy umozliwiac zajmowania jednego miejsca przez wiecej niz jedna osobe.
Gdyby okazalo sie ze sa 2 lub wiecej pracownicy na tym samym miejscu to wyzej w rankingu powinna znalezc sie osoba
zarabiajaca wiecej.
*/

select last_name,to_char(hire_date,'dd-mm-yyyy'),
dense_rank() over(order by hire_date,salary desc) ranking,
rank() over(order by hire_date,salary desc) ranking2
from employees;

select last_name,salary,department_id
, dense_rank() over(partition by department_id order by salary desc )
from employees;



select last_name,salary,to_char(hire_date,'mm')
, dense_rank() over(partition by to_char(hire_date,'mm') order by salary desc )
from employees;

/*48.
  Wyœwietl nazwisko, rok zatrudnienia, ranking wzgledem zarobkow tak by kazdy rok zatrudnienia mial swoj osobny ranking.
*/

select last_name,to_char(hire_date,'yyyy') 
,dense_rank() over(partition by to_char(hire_date,'yyyy') order by salary desc)
from employees;
/

select last_name,salary from employees;
select last_name,salary,(select avg(salary) from employees), avg(salary) over() from employees;

select last_name,salary,department_id,
(select avg(salary) from employees where department_id=e.department_id), 
avg(salary) over(partition by department_id) 
from employees e;


select last_name,salary
,(select count(*) from employees)
,count(*) over() 
from employees;



select last_name,salary
,(select count(*) from employees)
,count(*) over() 
from employees where department_id=90;

select employee_id,department_id,salary, dense_rank() over(order by salary desc) from employees where department_id=20;

select 
department_Id,sum(salary),sum(sum(salary)) over() 
from employees 
group by department_id;

select salary,department_id,
count(*) over(),
sum(salary) over(),
max(hire_date) over(),
min(hire_date) over(),
avg(salary) over()
from employees;


select salary,department_id,
count(*) over(partition by department_Id),
sum(salary) over(partition by department_Id),
max(hire_date) over(partition by department_Id),
min(hire_date) over(partition by department_Id),
avg(salary) over(partition by department_Id)
from employees;

/*49.
Wyswietl nazwiska, rok zatrudnienia i z uzyciem funkcji analitycznej srednia zarobkow wsrod osob zatrudnionych w 
tym samym roku. Srednia zaokraglij do 2 miejsc po przecinku a kolumnom nadaj aliasy.
*/

select last_name,salary,to_char(hire_date,'yyyy') rok_zatrudnienia
,round(avg(salary) over (partition by to_char(hire_date,'yyyy')),2) srednia_dla_roku
from employees;

--przerwa do 11:12

select employee_id 
,lag(employee_id) over(order by employee_id)
from employees;


select employee_id 
,lag(employee_id,12) over(order by employee_id)
from employees;


select employee_id 
,lead(employee_id) over(order by employee_id)
from employees;


select employee_id 
,lead(employee_id,12) over(order by employee_id)
from employees;

/*50.
Wyœwietl nazwiska, zarobki, miejsce w rankingu zarobkow (1 miejsce zajmuje najlepiej zarabiajacy)
i roznicê pomiedzy zarobkami danego goscia a zarobkami goscia wiersz wyzej w rankingu zarobkow.
*/

select last_name,salary,
dense_rank() over(order by salary desc) ranking,
lag(salary) over(order by salary desc)-salary roznica_pietro_wyzej
from employees;

/*
51.

Wyœwietl nazwy departamentów, srednie zarobki w nich przyciete do calych jednostek, ----grupowanie + join

miejsce w rankingu --funkcje analityczne
srednich zarobkow w departamentach, roznicê pomiedzy srednimi zarobkami w danym departamencie a srednimi zarobkami
w departamencie o wiersz wyzej w rankingu.
*/

select department_name,round(avg(salary)) srednia
,dense_rank() over(order by avg(salary) desc) ranking
,lag(round(avg(salary))) over(order by avg(salary) desc) - round(avg(Salary)) roznica_wyzej
from employees join departments using(department_id)
group by department_Name;


/*
preceding - ilosc poprzedzajacych (od góry)
following - iloœæ nastêpuj¹cych (od dolu)
current row - bie¿¹cy wiersz
unbounded - bez ograniczen w dana stronê
*/
select last_name,salary, sum(salary) over() from employees;
select employee_id,last_name,salary
, sum(salary) over(order by employee_Id rows between unbounded preceding and current row)
from employees;


select employee_id,last_name,salary
, sum(salary) over(order by employee_Id rows between unbounded preceding and unbounded following)
from employees;

select employee_id,last_name,salary
, sum(salary) over(order by employee_Id rows between current row and unbounded following)
from employees;

select employee_id,last_name,salary
, avg(salary) over(order by employee_Id rows between 3 preceding and 3 following)
from employees;


/*52.
Stwórz tabelkê która bêdzie zawierala klucz glowny, numer miesiaca i kwotê bilansu jako kolumny.
Wszystkie kolumny maja miec wlasnosc wymuszaca wstawienie wartosci (czyli nie moze byc null).
Dodaj sekwencjê i korzystajac z niej wstaw 12 wierszy  - po jednym dla kazdego miesiaca z jakims wymyslonym bilansem.


Wyswietl miesiace, bilanse dla kazdego miesiaca , sumê bilansów od poczatku roku do danego miesiaca,
srednia bilansow zaokraglona od poczatku roku do danego miesiaca , miejsce w rankingu bilansow danego miesiaca 
wzgledem calego roku, roznice pomiedzy bilansem  w danym miesiacu a poprzedzajacym miesiacu.
Caly wynik powinien byc posortowany wzgledem numeru miesiaca, a kolumny powinny miec aliasy
*/

create table wyniki_finansowe(
id integer primary key,
miesiac integer not null,
bilans number not null
);

create sequence wf;

insert into wyniki_finansowe values (wf.nextval,1,345691);
insert into wyniki_finansowe values (wf.nextval,2,286000);
insert into wyniki_finansowe values (wf.nextval,3,-420040);
insert into wyniki_finansowe values (wf.nextval,4,15432);
insert into wyniki_finansowe values (wf.nextval,5,-9000);
insert into wyniki_finansowe values (wf.nextval,6,-57000);
insert into wyniki_finansowe values (wf.nextval,7,654320);
insert into wyniki_finansowe values (wf.nextval,8,-260780);
insert into wyniki_finansowe values (wf.nextval,9,-467001);
insert into wyniki_finansowe values (wf.nextval,10,525200);
insert into wyniki_finansowe values (wf.nextval,11,-130050);
insert into wyniki_finansowe values (wf.nextval,12,-250670);
commit;

select * from wyniki_finansowe;

/*
Wyswietl miesiace, bilanse dla kazdego miesiaca , sumê bilansów od poczatku roku do danego miesiaca,
srednia bilansow zaokraglona od poczatku roku do danego miesiaca , miejsce w rankingu bilansow danego miesiaca 
wzgledem calego roku, roznice pomiedzy bilansem  w danym miesiacu a poprzedzajacym miesiacu.
Caly wynik powinien byc posortowany wzgledem numeru miesiaca, a kolumny powinny miec aliasy
*/

select wf.*
,sum(bilans) over(order by miesiac rows between unbounded preceding and current row) suma_kroczaca
,round(avg(bilans) over(order by miesiac rows between unbounded preceding and current row)) srednia_kroczaca
,dense_rank() over(order by bilans desc) ranking
,bilans-lag(bilans) over (order by miesiac) roznica_miesiac_przed
from wyniki_finansowe wf
order by miesiac;
/

--przerwa do 13:03

select * from employees;
update employees set salary=1000;
commit;
select * from employees;
rollback;

select * from employees as of timestamp to_date('15-12-2022 12:01:00','dd-mm-yyyy hh24:mi:ss');

alter table employees enable row movement;
flashback table employees to timestamp to_date('15-12-2022 12:01:00','dd-mm-yyyy hh24:mi:ss');
select * from employees;

select * from employees as of timestamp to_timestamp('15-12-2022 12:01:00','dd-mm-yyyy hh24:mi:ss');

select * from employees as of timestamp sysdate-1/24;
flashback table employees to timestamp sysdate-1/24;

select * from employees as of timestamp to_date('14-12-2022 12:01:00','dd-mm-yyyy hh24:mi:ss');

create table employees_stare as 
select * from employees as of timestamp to_date('14-12-2022 12:01:00','dd-mm-yyyy hh24:mi:ss');

select * from employees_stare;


update employees e set salary=(select round(avg(salary)) from employees where department_id=e.department_id )
--flashback query, update i podzapytanie skorelowane

update employees set salary=2000;
commit;

select first_name,last_name,salary 
,(select salary from employees as of timestamp systimestamp-1/24 where employee_id=e.employee_id)
from employees e;

/*53.
**. Dokonaj i zatwierdz aktualizacjê danych jak poni¿ej

update employees set last_name='zmienione';
commit;

Nastepnie przywroc stan kolumny last_name do stanu przed zmiana korzystajac z 
update, podzapytania skorelowanego i flashback query.
*/

update employees e set last_name=(last_name tego goscia jakis czas temu)

select lasT_name from employees as of timestamp sysdate-1/24 where employee_id=100;

update employees e set last_name=(select lasT_name from employees as of timestamp sysdate-1/24 where employee_id=100)
select * from employees;

update employees e set last_name=(select lasT_name from employees as of timestamp sysdate-1/24 where employee_id=e.employee_id);
commit;


select lasT_name,salary, commission_pct,department_id,
case department_id
when 50 then 'dzial sprzedazy'
when 90 then 'zarzad'
when 60 then 'it'
else 'coœ innego'
end warunek
from employees;



select lasT_name,salary, commission_pct,department_id,
case 
when commission_pct is null then 'brak prowizji'
else 'prowizja '||commission_pct
end case
from employees;
/


select lasT_name,salary, commission_pct,department_id,
case 
when manager_id is null then 'prezes'
when department_id=90 then 'zarzad'
when salary>=10000 then 'dobrze zarabiajacy'
when salary>=5000 then 'srednio zarabiajacy'
else 'slabo zarabiajacy bez przywilejow'
end warunek
from employees;

select * from employees where manager_id is null;

/*54.
Wyswietl imiona, nazwiska, zarobki,zaokraglona srednia w calej firmie i kolumne w ktorej pojawi sie albo "powyzej sredniej"
albo "ponizej sredniej" w zaleznosci od tego czy dany gosc zarabia mniej czy wiecej niz wynosi srednia w firmie.
*/

select first_name,last_name,salary
,(select round(avg(salary)) from employees) srednia_firma
,case 
when salary>(select avg(salary) from employees)  then 'powyzej sredniej'
else 'ponizej sredniej'
end case
from employees;

--przerwa obiadowa do 14:45
/*
regexp_substr --wycinanie
regexp_instr  --okreslanie pozycji
regexp_like  --czy zawiera wzorzec
regexp_count --ilosc wystapien wzorca
regexp_replace -- podmienia elementy pasujace do wzorca
*/


select regexp_substr('sia³a baba mak i dosta³a 10 lat bo nie p³aci³a vat','.') from dual;
select regexp_substr('sia³a baba mak i dosta³a 10 lat bo nie p³aci³a vat','[[:digit:]]') from dual;
select regexp_substr('sia³a baba mak i dosta³a 10 lat bo nie p³aci³a vat','[[:alpha:]]') from dual;
select regexp_substr('sia³a baba mak i dosta³a 10 lat bo nie p³aci³a vat','[[:alnum:]]') from dual;

select regexp_substr('sia³a baba mak i dosta³a 10 lat bo nie p³aci³a vat','[[:digit:]]{2}') from dual;
select regexp_substr('sia³a baba mak i dosta³a 10 lat bo nie p³aci³a vat','[[:digit:]]{1,}') from dual;
select regexp_substr('sia³a baba mak i dosta³a 10 lat bo nie p³aci³a vat','[[:digit:]]{1,3}') from dual;
select regexp_substr('sia³a baba mak i dosta³a 10 lat bo nie p³aci³a vat','[[:digit:]]*') from dual;
select regexp_substr('sia³a baba mak i dosta³a 10 lat bo nie p³aci³a vat','[[:digit:]]{,3}') from dual;

select regexp_substr('dupa dupa dupa 1111 dupa dupa dupa 22 000 00 00 dupa dupa','[[:digit:]]{2} [[:digit:]]{3} [[:digit:]]{2} [[:digit:]]{2}') from dual;
select regexp_substr('dupa dupa dupa 1111 dupa dupa dupa 22 000 00 00 dupa dupa','([[:digit:]]| ){13}') from dual;
select regexp_substr('costam costam. Costam, costam www.jsystems.pl dupa dupa dupa','(www\.)[[:alnum:]]{1,}\.[[:alpha:]]{2,4}') from dual;

select regexp_substr('costam costam. Costam, costam www.jsystems.pl dupa dupa dupa','(www\.)?([[:alnum:]]|_|\.){1,}\.[[:alpha:]]{2,4}') from dual;

select regexp_substr('costam costam. Costam, costam www.jsystems.pl dupa dupa dupa','(www\.)?([[:alnum:]]|_|\.){1,}\.[[:alpha:]]{2,4}') from dual;
select regexp_instr('costam costam. Costam, costam www.jsystems.pl dupa dupa dupa','(www\.)?([[:alnum:]]|_|\.){1,}\.[[:alpha:]]{2,4}') from dual;
select regexp_count('dupa dupa dupa 1111 dupa dupa dupa 22 000 00 00 dupa dupa','[[:digit:]]') from dual;

update employees set last_name=last_name||'1' where department_id=90;

select * from employees where regexp_like(last_name,'.*[[:digit:]]');

select regexp_replace('dupa dupa dupa 1111 dupa dupa dupa 22 000 00 00 dupa dupa','[[:digit:]]','X') from dual;

/*55.
Wyœwietl osoby majace dwuczlonowe nazwisko za pomoc¹ regexp_like
*/

select  * from employees where regexp_like(last_name,'.* .*');
select  * from employees where regexp_like(last_name,'[[:alpha:]]* [[:alpha:]]*');
select  * from employees where regexp_like(last_name,'[[:alpha:]]{1,} [[:alpha:]]{1,}');
select * from employees where last_name like '% %';
select * from employees;
update employees set last_name='Twoj Stary' where employee_id=100;
commit;

/*56.
*. Wyœwietl osoby ktore maja w numerze telefonu co najmniej 13 cyfr
*/

select * from employees;

--regexp_count w where ....

select employee_id,phone_number,regexp_count(phone_number,'[[:digit:]]')
from employees where regexp_count(phone_number,'[[:digit:]]')>=13;


/*57.
Z ci¹gu " fgsfsf@fdsff-pl @11a biuro@jsystems.pl aaddda"  wyci¹gnij przy u¿yciu wyra¿eñ regularnych nasz email.
Zalozenie jest takie ze email moze byc np. w domenie jsystems.com.pl albo jsystems.pl a poczatek maila moze byc np. andrzej.klusiewicz@
lub np. andrzej_klusiewicz@
*/

select regexp_substr('fgsfsf@fdsff-pl @11a biuro@jsystems.pl aaddda','[[:alpha:]]@[[:alpha:]]',1,2) from dual;
select regexp_substr('fgsfsf@fdsff-pl @11a biuro@jsystems.pl aaddda','[[:alnum:]]{1,}([[:alnum:]]|_|\.)*@[[:alnum:]]{1,}([[:alnum:]]|_|\.)*\.[[:alpha:]]{2,4}') from dual;
select regexp_substr('fgsfsf@fdsff-pl @11a andrzej.klusiewicz@jsystems.pl aaddda','[[:alnum:]]{1,}([[:alnum:]]|_|\.)*@[[:alnum:]]{1,}([[:alnum:]]|_|\.)*\.[[:alpha:]]{2,4}') from dual;
select regexp_substr('fgsfsf@fdsff-pl @11a andrzej_klusiewicz@jsystems.com.pl aaddda',
'[[:alnum:]]{1,}([[:alnum:]]|_|\.)*@[[:alnum:]]{1,}([[:alnum:]]|_|\.)*\.[[:alpha:]]{2,4}') from dual;

--przerwa do 16:11