--Lab 9 
--Bruce Tovee
--1
SELECT 
	CONCAT(Cust_Fname, ' ', Cust_Lname) As "Name",
	Cust_Balance As "Balance"
FROM
	Customer_t
WHERE
	Cust_Balance > 0
ORDER BY
	Cust_Balance DESC;

--2
SELECT
	Invoice_Number As "Invoice Number",
	Prod_Code As "Product Code",
	Line_Price As "Line Price",
	Line_units AS "Line Units",
	(Line_Price*Line_units) As "Line Cost"
FROM
	Invoice_Line_T
WHERE
	(Line_Price*Line_units) > 500
ORDER BY
	(Line_Price*Line_units), Invoice_Number DESC;

--3
SELECT
	Prod_Code AS "Product Code",
	Prod_Description AS "Product Description",
	Prod_QOH AS "Quantity on hand",
	Prod_Price AS "Product Price",
	(Prod_Price*Prod_QOH) AS "Inventory Cost"
FROM
	Product_T
WHERE
	Prod_QOH > 50
ORDER BY
	Prod_Description ASC;

--4
SELECT
	Cust_Lname AS "Last Name",
	Cust_Fname AS "First Name",
	Cust_Balance AS "Balance"
FROM
	Customer_T
WHERE
	Cust_Balance  = 0 AND Cust_City = 'Ottawa'
ORDER BY
	Cust_Lname ASC;

--5
SELECT 
	Invoice_Number AS "Invoice Number",
	Prod_Code AS "Product Code",
	Line_Units AS "Line Units",
	Line_Price AS "Line Price"
FROM
	Invoice_Line_T
WHERE
	Line_Price NOT BETWEEN 100 AND 600
ORDER BY
	Line_Price DESC;

--6
SELECT
	CONCAT(Cust_Fname, ' ', Cust_Lname) AS "Name",
	Cust_Address AS "Address"
FROM
	Customer_T
WHERE
	Cust_Lname LIKE 'T%' AND Cust_Balance BETWEEN 0 AND 100;

--7
SELECT
	Prod_Description AS "Product Description",
	Prod_QOH AS "Quantity on hand",
	Prod_Price AS "Product Price"
FROM
	Product_T
WHERE
	Prod_QOH IN(60, 70, 80, 90)
ORDER BY
	Prod_QOH ASC;

--8
SELECT
	Prod_Description AS "Product Description",
	Prod_QOH AS "Quantity on hand",
	Prod_Price AS "Product Price",
	Prod_Discount AS "Product Discount"
FROM
	Product_T
WHERE
	Prod_Discount IS NULL;

--9
SELECT DISTINCT 
	Cust_City AS "City Name"
FROM
	Customer_T
ORDER BY
	Cust_City ASC;

--10
SELECT * 
FROM
	Customer_T
WHERE
	Cust_City ILIKE 'ottawa';
	


	
	
	


	