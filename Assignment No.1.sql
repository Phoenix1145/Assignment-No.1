use mavenmovies;

-- SQL Commands
-- Assignment No. 1

-- Q1. Identify the primary keys and foreign keys in maven movies db. Discuss the differences
-- Ans.
      SELECT * FROM information_schema.key_column_usage WHERE constraint_name = 'PRIMARY' AND table_schema = 'mavenmovies';
	  SELECT * FROM information_schema.key_column_usage WHERE constraint_name != 'PRIMARY' AND table_schema = 'mavenmovies';
      
-- Difference between Primary Key and Foreign Key
-- Primary Key
--   Primary Key Represents Unique Values in a Table 
--   There is Only one Primary Key in a Table
--   Primary Key can not be a null value
--   It's value can not be deleted from Parent Table
-----------------------------------------------------------
-- Foreign Key
--   Foreign Key is Primary Key in another Table
--   Foreign Key column provides Data of Two Tables
--   It allows Duplicate value and contain Null values

-- Q2. List all Details of Actors
-- Ans.
       Select * From actor;
       
-- Q3. List all customer information from DB. 
-- Ans.
       Select * From customer;
       
-- Q4. List different countries. 
-- Ans.
       Select * From Country;
       
-- Q5. Display all active customers. 
-- Ans. 
       Select * from customer where active = 1;
       
-- Q6.  List of all rental IDs for customer with ID 1.
-- Ans. 
       select rental_id from rental where customer_id = 1;
       
-- Q7. Display all the films whose rental duration is greater than 5.
-- Ans.
       Select * from film where rental_duration > 5;
       
-- Q8. List the total number of films whose replacement cost is greater than $15 and less than $20.
-- Ans.
       Select * From film where replacement_cost > 15 and replacement_cost < 20;
       
-- Q9. Display the count of unique first names of actors. 
-- Ans.
       Select count(Distinct(first_name)) as First_Names from actor;
       
-- Q10.  Display the first 10 records from the customer table.
-- Ans. 
       Select * From customer limit 10;
       
-- Q11. Display the first 3 records from the customer table whose first name starts with ‘b'.
-- Ans.
       Select * From customer where first_name like 'B%' limit 3;
       
-- Q12. Display the names of the first 5 movies which are rated as ‘G'.
-- Ans.
       Select title, rating from film where rating = 'G' limit 5;
       
-- Q13. Find all customers whose first name starts with "a".
-- Ans. 
       Select * from customer where first_name like 'A%';
       
-- Q14.  Find all customers whose first name ends with "a". 
-- Ans.
       Select * from customer where first_name like '%a';
       
-- Q15. Display the list of first 4 cities which start and end with ‘a’.
-- Ans. 
       Select city from city where city like 'a%a' limit 4;
       
-- Q16. Find all customers whose first name have "NI" in any position.
-- Ans.
       select first_name from customer where first_name like '%Ni%';
       
-- Q17. Find all customers whose first name have "r" in the second position.
-- Ans. 
       select First_Name from customer where first_name like '_r%';
       
-- Q18. Find all customers whose first name starts with "a" and are at least 5 characters in length.
-- Ans.
       Select First_Name From customer where first_name like 'a%' and length(first_name) >= 5;
       
-- Q19. Find all customers whose first name starts with "a" and ends with "o".
-- Ans. 
       Select First_Name from customer where first_name like 'a%o';
       
-- Q20. Get the films with pg and pg-13 rating using IN operator.
-- Ans.
       Select Title, Rating From Film where rating IN ('PG', 'PG-13');
       
-- Q21. Get the films with length between 50 to 100 using between operator.
-- Ans.
       Select Title, length from film where length between 50 and 100;
       
-- Q22. Get the top 50 actors using limit operator. 
-- Ans. 
       Select * From actor limit 50;
       
-- Q23. Get the distinct film ids from inventory table.
-- Ans.
       Select distinct film_id From inventory;
       