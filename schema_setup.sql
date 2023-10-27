CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	gender VARCHAR(1) CHECK (gender IN ('M', 'F')),
	dob DATE,
	signup_date DATE NOT NULL,
	city TEXT
);

