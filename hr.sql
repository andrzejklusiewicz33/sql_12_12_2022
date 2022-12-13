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
