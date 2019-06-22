SELECT first_name, 
	last_name,
	SUM(amount)
FROM customers 
RIGHT JOIN orders
ON customers.id = orders.customer_id
GROUP BY customer_id;

SELECT first_name, 
	last_name,
	amount
FROM customers 
RIGHT JOIN orders
ON customers.id = orders.customer_id;

