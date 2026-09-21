-- Question 1
-- Total payment amount for each payment date
SELECT
    paymentDate,
    SUM(amount) AS total_amount_paid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- Question 2
-- Average credit limit of each customer
SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- Question 3
-- Total price of products ordered
SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- Question 4
-- Highest payment amount for each check number
SELECT
    checkNumber,
    MAX(amount) AS highest_amount_paid
FROM payments
GROUP BY checkNumber;
