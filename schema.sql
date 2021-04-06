CREATE TABLE card_holder(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE credit_card(
	card VARCHAR(20) PRIMARY KEY,
	cardholder_id SERIAL 
);

CREATE TABLE merchant_category(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE merchant(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	id_merchant_category SERIAL 
);

CREATE TABLE transaction(
	id SERIAL PRIMARY KEY,
	date TIMESTAMP,
	amount FLOAT,
	card VARCHAR(20),
	id_merchant SERIAL 
);



