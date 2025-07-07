1. SELECT id, first_name, last_name, age, gender FROM User Where age  <=18 OR first_name LIKE '%A%' ORDER BY age DESC

2. a) SELECT name FROM Clients WHERE name LIKE '%Ivanov%';
b) SELECT name, COUNT(account_number) AS account_count FROM Clients GROUP BY name ORDER BY account_count DESC;

3. a) SELECT amount FROM accounts INNER JOIN clients ON accounts.account_number = clients.account_number WHERE name = 'Ivanov';
b) SELECT amount FROM accounts INNER JOIN clients ON accounts.account_number = clients.account_number WHERE name = 'Ivanov' AND amount > 1000;
в) SELECT name, SUM(amount) AS total_amount FROM accounts INNER JOIN clients ON accounts.account_number = clients.account_number GROUP BY name HAVING SUM(amount) > 1000;