------ QUESTION 1 ------
-- List the first name, last name, email, and office code of all employees along with
USE salesDB;

SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM 
    employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;

------ QUESTION 2 ------

SELECT 
    p.productName,
    p.productVendor,
    q.productLine
FROM 
    products p
LEFT JOIN productlines q 
    ON p.productLine = q.productLine;

------ QUESTION 3 ------
USE salesDB;

SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM 
    customers c
RIGHT JOIN orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;

