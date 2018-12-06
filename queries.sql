USE adlister_db;

SELECT email AS 'User Email'
FROM users
WHERE user_id IN (
    SELECT user_id
    FROM listings
    WHERE title LIKE '%note%'
);

SELECT type AS Categories
FROM categories
WHERE category_id IN (
    SELECT category_id
    FROM listings
    WHERE title LIKE '%massage%'
);

SELECT title AS ADs
FROM listings
WHERE category_id IN (
    SELECT category_id
    FROM categories
    WHERE type = 'guitars'
);

SELECT title AS ADs
FROM listings
WHERE user_id IN (
    SELECT user_id
    FROM users
    WHERE user_id = 1
);

SELECT name Person, email email, title ADs
FROM users
JOIN listings USING (user_id)
WHERE user_id IN (
    SELECT user_id
    FROM listings
    WHERE description LIKE '%DEEP%'
);