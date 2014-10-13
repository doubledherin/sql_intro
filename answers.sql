-- Problem 1
SELECT * from salespeople

-- Problem 2
SELECT * FROM salespeople WHERE region = 'Northwest';

-- Problem 3
SELECT email FROM salespeople WHERE region = 'Southwest'

-- Problem 4
SELECT givenname, surname, email from salespeople WHERE region = 'Northwest'

-- Problem 5
SELECT common_name FROM melons WHERE price > 5;

-- Problem 6
SELECT melon_type, common_name FROM melons WHERE melon_type = 'Watermelon' AND price > 5;

-- Problem 7
SELECT common_name FROM melons WHERE common_name LIKE 'C%';

-- Problem 8
SELECT common_name FROM melons WHERE common_name LIKE '%Golden%';

-- Problem 9
SELECT DISTINCT region from salespeople

-- Problem 10
SELECT email from salespeople WHERE region = 'Northwest' or region = 'Southwest'

-- Problem 11
select email from salespeople where region in ('Northwest','Southwest')

-- Problem 12
SELECT email, givenname, surname from salespeople WHERE region in ('Northwest', 'Southwest') AND surname LIKE 'M%';

-- Problem 13
select melon_type, common_name, price, price*0.735693 from melons

-- Problem 14
SELECT COUNT(*) FROM customers

-- Problem 15
SELECT count(*) FROM orders WHERE shipto_state = 'CA';

-- Problem 16
SELECT SUM(order_total) FROM orders;

-- Problem 17
select AVG(order_total) from orders;

-- Problem 18
SELECT MIN(order_total) FROM orders

-- Problem 19
select id from customers where email = 'phyllis@demizz.edu'

-- Problem 20
SELECT id, status, order_total FROM orders WHERE customer_id=100;

-- Problem 21
select id, status, order_total from orders where customer_id = (select id from customers where email = 'phyllis@demizz.edu')

-- Problem 22
select orders.id, status, order_total from orders join customers on (orders.customer_id=customers.id) WHERE email='phyllis@demizz.edu'

