select * from customer;

COPY customer
FROM 'C:\Users\mahes\Desktop\X Training\Postgres\customer_details.csv'
WITH (FORMAT CSV);

COPY branch
FROM 'C:\Users\mahes\Desktop\X Training\Postgres\branch_details.csv'
WITH (FORMAT CSV);

COPY account
FROM 'C:\Users\mahes\Desktop\X Training\Postgres\account_details.csv'
WITH (FORMAT CSV);
	
SELECT * FROM branch;
Select * from account;
SELECT * FROM loan;
SELECT * FROM transaction_details;

COPY loan
FROM 'C:\Users\mahes\Desktop\X Training\Postgres\loan.csv'
WITH (FORMAT CSV);

COPY transaction_details
FROM 'C:\Users\mahes\Desktop\X Training\Postgres\transaction_details.csv'
WITH (FORMAT CSV);
