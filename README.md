# MySQL SQL Assignment

## Overview

This repository contains SQL queries for a MySQL database assignment based on the **Classic Models** database.

The assignment focuses on using SQL aggregate functions such as:

* `SUM()`
* `AVG()`
* `MAX()`
* `GROUP BY`
* `ORDER BY`
* `LIMIT`

## Database Tables Used

The queries in this assignment use the following tables:

* `payments`
* `customers`
* `orderdetails`

## Assignment Questions

### Question 1: Total Payment Amount by Date

The first query calculates the total payment amount received on each payment date.

It:

* Groups payments by `paymentDate`
* Calculates the total using `SUM(amount)`
* Sorts the dates from newest to oldest
* Displays only the five latest payment dates

```sql
SELECT
    paymentDate,
    SUM(amount) AS total_amount_paid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;
```

### Question 2: Average Credit Limit by Customer

The second query calculates the average credit limit for each customer.

It displays:

* Customer name
* Country
* Average credit limit

```sql
SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;
```

### Question 3: Total Price of Products Ordered

The third query calculates the total price of products ordered.

The total price is calculated by multiplying:

**Quantity Ordered × Price Each**

```sql
SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;
```

### Question 4: Highest Payment Amount by Check Number

The fourth query finds the highest payment amount for each check number.

It uses the `MAX()` function to identify the highest payment amount.

```sql
SELECT
    checkNumber,
    MAX(amount) AS highest_amount_paid
FROM payments
GROUP BY checkNumber;
```

## SQL Concepts Demonstrated

This assignment demonstrates the use of:

| SQL Concept | Purpose                                  |
| ----------- | ---------------------------------------- |
| `SUM()`     | Calculates the total of numeric values   |
| `AVG()`     | Calculates the average of numeric values |
| `MAX()`     | Finds the highest value                  |
| `GROUP BY`  | Groups rows based on specified columns   |
| `ORDER BY`  | Sorts query results                      |
| `LIMIT`     | Restricts the number of results returned |
| `AS`        | Gives a column a readable alias          |

## Files

```text
.
├── README.md
└── answer.sql
```

## How to Run the Queries

1. Open MySQL Workbench or the MySQL terminal.
2. Select the Classic Models database.
3. Open `answer.sql`.
4. Run each query.
5. Check the results returned by MySQL.

## Author

**Farah Salat**

MySQL / Database Systems Assignment
