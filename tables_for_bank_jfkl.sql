CREATE TABLE customer(
	customer_id VARCHAR(11),
	first_name VARCHAR(30),
	middle_name VARCHAR(30),
	last_name VARCHAR(30),
	city VARCHAR(15),
	mobile_number VARCHAR(15),
	occupation VARCHAR(15),
	date_of_birth VARCHAR(15),
	CONSTRAINT customr_id_pk PRIMARY KEY (customer_id)
);

CREATE TABLE branch(
	branch_id VARCHAR(11),
	branch_name VARCHAR(15),
	branch_city VARCHAR(15),
	CONSTRAINT branch_id_pk PRIMARY KEY (branch_id)
);

CREATE TABLE account(
	account_number VARCHAR(11),
	customer_id VARCHAR(11),
	branch_id VARCHAR(11),
	opening_balance INTEGER,
	AOD DATE,
	account_type VARCHAR(10),
	account_status VARCHAR(10),
	CONSTRAINT account_account_number_pk PRIMARY KEY (account_number),
	CONSTRAINT account_customer_id_fk FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT account_branch_id_fk FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE transaction_details(
	transaction_number VARCHAR(15),
	account_number VARCHAR(11),
	transaction_date DATE,
	medium_of_transaction VARCHAR(20),
	transaction_type VARCHAR(20),
	transaction_amount INTEGER,
	CONSTRAINT transaction_details_transaction_number_pk PRIMARY KEY (transaction_number),
	CONSTRAINT transaction_details_account_number_fk FOREIGN KEY (account_number) REFERENCES account(account_number)
);
DROP TABLE loan;
CREATE TABLE loan(
	customer_id VARCHAR(11),
	branch_id VARCHAR(11),
	loan_amount INTEGER,
	CONSTRAINT loan_customer_id_branch_id_pk PRIMARY KEY (customer_id, branch_id),
	CONSTRAINT loan_customer_id_fk FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	CONSTRAINT loan_branch_id_fk FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);



