SELECT NAME, birthdate, DATEDIFF(NOW(),birthdate) FROM people;

SELECT NAME, birthdt, DATE_ADD(birthdt, INTERVAL 10 MONTH) FROM people;

SELECT NAME, birthdt, DATE_ADD(birthdt, INTERVAL 10 SECOND) FROM people;

SELECT NAME, birthdt, DATE_SUB(birthdt, INTERVAL 3 QUARTER) FROM people;

SELECT NAME, birthdt, birthdt - INTERVAL 5 MONTH FROM people;

SELECT NAME, birthdt, birthdt + INTERVAL 5 MONTH + INTERVAL 10 HOUR FROM people;

