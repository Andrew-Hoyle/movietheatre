-- Movie Theatre Mock - Week 4 - Day 2 - SQL - Homework




-- CUSTOMER TABLE

CREATE TABLE customer (
	customer_id INT PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	billing_info VARCHAR(200),
	address VARCHAR(200)
);





-- TICKET TABLE


CREATE TABLE ticket (
	ticket_id INT PRIMARY KEY,
	showtime VARCHAR(10),
	upc VARCHAR(100),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	film_id VARCHAR NOT NULL,
	FOREIGN KEY(film_id) REFERENCES movie(film_id),
	film_title VARCHAR NOT NULL,
	FOREIGN KEY(film_title) REFERENCES movie(film_title)
);





-- CREATE CONCESSION TABLE

create table concession (
	item_id INT PRIMARY KEY,
	price INTEGER,
	upc INTEGER
);



-- CREATE MOVIE TABLE
create table movie (
	film_id INT PRIMARY KEY,
	price INTEGER,
	film_title VARCHAR(100),
	upc INTEGER,
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);

