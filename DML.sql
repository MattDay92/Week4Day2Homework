INSERT INTO customer(
    first_name,
    last_name,
    age,
    email,
    reward_member
) VALUES (
    'Matt',
    'Day',
    30,
    'mattdaymusic10@gmail.com',
    'True'
),(
    'Kelly',
    'Day',
    32,
    'dayk@franklinschools.org',
    'False'
),(
    'Josh',
    'Brown',
    30,
    'josh.brown108@gmail.com',
    'True'
),(
    'Jordan',
    'Brown',
    30,
    'jrdnbrwn@gmail.com',
    'True'
);

INSERT INTO concession(
    item_name,
    item_cost
) VALUES(
    'Popcorn',
    11.99
),(
    'Drink',
    4.99
),(
    'Combo Meal',
    13.99
),(
    'Nachos',
    9.99
),(
    'Candy',
    18.99
);

INSERT INTO movie(
    film_name,
    running_time,
    release_year,
    award_winner,
    film_description
)VALUES(
    'Rocky',
    '2hr 30min',
    1976,
    'Yes',
    'Rocky Balboa, an uneducated, small-time club fighter and debt collector gets an unlikely shot at the world heavyweight championship held by Apollo Creed.'
),(
    'Back to the Future',
    '1hr 56min',
    1985,
    'Yes',
    'The story follows Marty McFly, a teenager accidentally sent back to 1955 in a time-traveling DeLorean automobile built by his eccentric scientist friend Emmett "Doc" Brown.'
),(
    'Home on the Range',
    '1hr 16min',
    2004,
    'No',
    'Home on the Range is set in the Old West, and centers on a mismatched trio of dairy cows—brash, adventurous Maggie; prim, proper Mrs. Calloway; and ditzy, happy-go-lucky Grace.'
);

INSERT INTO ticket(
    film_id,
    customer_id
)VALUES(
    1,
    1
),(
    1,
    2
),(
    1,
    3
),(
    3,
    4
);

INSERT INTO transaction(
    customer_id,
    film_id,
    concession_id
)VALUES(
    1,
    1,
    3
),(
    3,
    1,
    2
),(
    4,
    3,
    5
)