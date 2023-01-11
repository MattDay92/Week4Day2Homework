CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INTEGER,
    email VARCHAR(150),
    reward_member BOOLEAN,
    reward_id SERIAL
);

CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100),
    item_cost DECIMAL (5,2)
);

CREATE TABLE movie(
    film_id SERIAL PRIMARY KEY,
    film_name VARCHAR(100),
    running_time VARCHAR(50),
    release_year INTEGER,
    award_winner BOOLEAN,
    film_description VARCHAR(300)
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    film_id INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (film_id) REFERENCES movie(film_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE transaction(
    transaction_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    film_id INTEGER,
    concession_id INTEGER,
    transaction_time TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (film_id) REFERENCES movie(film_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (concession_id) REFERENCES concession(concession_id)
);

ALTER TABLE movie
ALTER COLUMN film_description TYPE VARCHAR;
