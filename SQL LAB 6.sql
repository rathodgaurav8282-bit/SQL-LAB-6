-- dislay customer table 
select * from customer;
-- display all customer firstname  in uppercase .
select f_name,upper(f_name) as new_name from customer;
select upper ("hello");
-- display all customer firstname in lowercase.
select lower(f_name) as l_s from customer;
-- find the total number of character in each customer firstname 
select length("hello");
select f_name,length(f_name) as lengthofname from customer;
-- display only the first three characters of customer firstname.
select f_name, left(f_name,3) from customer;
-- combine customer's firstname with lastname 
select concat(f_name," ",l_name) as combine from customer;

use bank;

-- trim function
select upper(f_name), length(f_name),trim(f_name) from customer;

-- right and mid function 
select right (f_name,2),mid(f_name,2,3),mid(f_name,2) from customer;

select round(15.5),ceil(15.1),floor(15.1),abs(15.5),mod(15,5);

-- Display customer Table
select * from customer;

-- Display the current system date
select current_date();
-- display current system date and time
select now();

-- display the birth of year 
select dateofbirth,year(dateofbirth) from customer;

. Display the Birth month;
select dateofbirth,month(dateofbirth) from customer;

6. Calculate the number of days since BirthDate;
select dateofbirth,datediff(curdate(),dateofbirth) from customer;

7. Find the latest birth date;
select max(dateofbirth) from customer;

select dateofbirth from customer
order by dateofbirth desc
limit 1;

8. Find the earliest birth date;
select min(dateofbirth) from customer;

select dateofbirth from customer
order by dateofbirth ASC 
limit 1;

-- Identify the highest balance maintained in any customer account.
select * from accounts
select  max(balance) from accounts;

 -- Identify the lowest balance maintained in any customer account
 select min(balance) from accounts;
 
-- Determine the total number of customer accounts available in the system.
select count(distinct(account_id)) from accounts;

-- The bank wants to calculate the total account balance for each AccountType by grouping the records based on AccountType and identify which account type is attracting the highest total deposits fromdelec customers.
select account_type, sum(balance) from accounts
group by account_type ;

 -- Calculate the average balance maintained across all customer accounts to understand the typical amount held by customers.
 select avg(balance) from accounts;
 
-- Categorize customers as Adult or Young based on their birth year
select dateofbirth,
case
when year(dateofbirth) >1998 then "young"
when year(dateofbirth) <= 1998 then "adult" end as type from customer;
	
 -- Display 'Not Available' if a phone number is NULL
select ifnull(phone,"not avaiable") from customer;

 -- The bank management wants to identify only those account types whose total customer deposits exceed ₹25,000.
select account_type, sum(balance) from accounts
group by account_type 
having sum(balance)>25000;



