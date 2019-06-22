SELECT first_name,
	last_name,
	amount
FROM customers,orders 
WHERE customers.id = orders.customer_id;

SELECT first_name,
	last_name,
	SUM(amount)
FROM customers 
JOIN orders  -- INNER JOIN is also applicable
ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY amount DESC;

	
SELECT * FROM customers;

SELECT first_name,
	last_name,
	SUM(amount) AS total_spent
FROM customers
LEFT JOIN orders 
ON customers.id = orders.customer_id
GROUP BY customers.id;

SELECT  first_name,
	last_name,
	IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders 
ON customers.id = orders.customer_id
GROUP BY customers.id;




