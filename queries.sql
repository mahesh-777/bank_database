-- Q1. Write a query to display the customer number, first_name, customer's dob,
--Display in sorted order of date of birth year and within that sort by first_name.
SELECT customer_id, first_name, date_of_birth FROM customer
	ORDER BY date_of_birth, customer_id;
	
--Q2. Write a query to display the customer's number, first_name and middle_name.
--And the customer's who don't have a middle name, for them display the last name.
--Give the alias name as cust_name.

SELECT customer_id, first_name, middle_name FROM customer
	if middle_name == null
		then;
		
--Q3. Write a query to display account_number, customer's number, customer's first_name, last_name,
-- and account opening date

Select account.account_number, customer.customer_id, customer.first_name, customer.last_name, account.AOD
FROM account
INNER JOIN customer
ON account.customer_id = customer.customer_id;