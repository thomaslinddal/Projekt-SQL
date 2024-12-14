-- JEG GENNEMGÅR EN TUTORIAL VIDEO HTTPS://WWW.YOUTUBE.COM/WATCH?V=7S_TZ1Z_5BA
-- I MYSQL WORKBENCH, OG KAN IKKE PUSHE TIL GIT FRA DETTE PROGRAM.
-- DERFOR OPDATERER JEG LØBENDE MIT REPO VED AT KOPIERE MIN KODE IND,
-- SÅ DU KAN FØLGE MIN FREMGANG.

USE sql_store;

-- * betyder at man vælger alle. i det her tilfælde hele sql_store
SELECT *
FROM customers
-- WHERE customer_id = 1
-- ORDER BY sorterer first_name alfabetisk
ORDER BY first_name;

-- Syntax er altid i ovenstående rækkefølge, SELECT, FROM, WHERE, ORDER.

SELECT 
	last_name, 
    first_name, 
    points, 
    points * 2 + 50, -- man kan +, -, *, / og %.
    (points + 50) * 3, -- *, / kommer før + -. Derfor parentes
    points + 10 AS discount_factor, -- AS navngiver den nye kollonne
    points + 10 AS 'discount factor' -- '' navngiver som string
FROM customers;

SELECT DISTINCT state -- DISTINCT fremviser én stat fremfor at skrive samme stat flere gange per customer.
FROM customers;

-- ØVELSE
-- find name, unit_price og en ny kollonne med unit_price * 1.1 i products.
SELECT
	name,
    unit_price,
unit_price * 1.1 AS new_price
FROM products
ORDER BY unit_price;

SELECT *
FROM customers
WHERE points > 3000; -- her tager man kun customers med 3000 points eller mere.
-- vi kan bruge følgende:
--  > større end eller < mindre end
-- >= større end eller lig med <= mindre end eller lig med
-- = lig med eller != ikke lig med

SELECT * 
FROM customers
WHERE state != 'VA'; -- her finder vi kun customers som IKKE er i staten VA.

SELECT *
FROM customers
WHERE birth_date >= '1990-01-01'; -- finder kun customers født på eller efter den givne dato

-- ØVELSE, find alle orders fra år 2018
SELECT *
FROM orders
WHERE order_date >= '2018-01-01' AND order_date <= '2018-12-31'
ORDER BY order_date;

-- AND, OR, IN, NOT IN, NOT, LIKE, NOT LIKE og BETWEEN
SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' AND points > 1000 -- finder kun customers ældre end datoen
ORDER BY points;							 	  -- og samtidig har mere end 1000 point

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' 
	OR points > 1000 
	AND state = 'VA'; -- her brugt både OR og AND
-- rækkefølgen af logiske termer er AND OR NOT uanset hvordan rækkefølgen er skrevet.
-- Dette kan ændres ved at bruge parenteser

-- ØVELSE, fra order_items tabellen skal der findes 
-- ordre #6 og hvor den totale pris er højere end 30.
SELECT *
FROM order_items
WHERE order_id = 6 AND unit_price * quantity > 30;

SELECT *
FROM customers
WHERE state IN ('VA', 'FL', 'CA'); -- IN () bruges i stedet for state = 'VA' OR state ='FL' osv.

-- ØVELSE, find products med quantity = 49, 38, 72
SELECT *
FROM products
WHERE quantity_in_stock IN (49,38,72);

SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000; -- virker som >= og <=, så det skrevne tal er inkluderet

-- find customers født mellem 1990-1-1 og 2000-1-1
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-1-1' AND '2000-1-1';

SELECT *
FROM customers
WHERE last_name LIKE 'b%'; -- b% finder alle der starter med b

SELECT *
FROM customers
WHERE last_name LIKE '%b%'; -- %b% finder alle efternavne hvor b indgår uanset hvor i navnet 

SELECT *
FROM customers
WHERE last_name LIKE '%y'; -- %y finder alle efternavne der slutter med y

-- Man kan også bruge '_y' - et ord på 2 bogstaver som slutter med y.
-- man kan indsætte så mange underscores som man vil, de vil altid være blanke
-- hvis man vil finde efternavnet 'Boagey' kan man skrive 'b____y'

-- ØVELSE find customers hvor adressen indeholder TRAIL eller AVENUE
-- ØVELSE 2, find tlf numre der ender med 9.
SELECT *
FROM customers
WHERE address LIKE '%trail%' OR 
	  address LIKE '%avenue%';

SELECT *
FROM customers
WHERE phone LIKE '%9';

-- REGULAR EXPRESSIONS
SELECT * 
FROM customers
WHERE last_name REGEXP '^boa';
-- regexp kan rigtig meget.  
-- '^boa' finder efternavne startende med boa
-- 'field%' finder efternavne der slutter med field
-- 'boa|field|rose' finder efternavne der indeholder boa ELLER field ELLER rose
-- 'e' finder alle med e i efternavne
-- '[gim]e' finder alle med enten ge, ie eller me i efternavnet
-- 'e[gim]' ville finde alle kombinationer af eg, ei eller em
-- '[a-h]e' finder alle med bogstav fra A til H og e - så ae, be, ce, de, fe osv

-- ØVELSE customers REGEXP
-- fornavne med ELKA eller AMBUR
SELECT *
FROM customers
WHERE first_name REGEXP 'elka|ambur';
-- efternavne der slutter med EY eller ON
SELECT *
FROM customers
WHERE last_name REGEXP 'ey$|on$';
-- efternavne der starter med MY eller indeholder SE
SELECT *
FROM customers
WHERE last_name REGEXP '^my|se';
-- efternavne der indeholder B efterfulgt af R eller U
SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';
