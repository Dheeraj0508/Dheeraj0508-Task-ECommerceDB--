-- Use the database
USE ECommerceDB;

1. COUNT: Total number of customers
SELECT COUNT(*) AS Total_Customers
FROM Customers;

2. COUNT(column): Customers with contact info
SELECT COUNT(Contact) AS Customers_With_Contact
FROM Customers;

3. COUNT(DISTINCT): Unique countries
SELECT COUNT(DISTINCT Country) AS Unique_Countries
FROM Customers;

4. SUM: Sum of all contact numbers (hypothetical use)
SELECT SUM(Contact) AS Total_Contact_Numbers
FROM Customers;

5. AVG: Average contact number (hypothetical use)
SELECT AVG(Contact) AS Average_Contact_Number
FROM Customers;

6. ROUND with AVG: Rounded average contact number
SELECT ROUND(AVG(Contact), 2) AS Rounded_Avg_Contact
FROM Customers;

7. GROUP BY: Number of customers per country
SELECT Country, COUNT(*) AS Total_Customers
FROM Customers
GROUP BY Country;

8. GROUP BY multiple columns: Customers per city in each country
SELECT Country, City, COUNT(*) AS Total_Customers
FROM Customers
GROUP BY Country, City;

9. HAVING: Countries with more than 5 customers
SELECT Country, COUNT(*) AS Total_Customers
FROM Customers
GROUP BY Country
HAVING COUNT(*) > 5;

10. MAX: Highest contact number per country
SELECT Country, MAX(Contact) AS Max_Contact
FROM Customers

GROUP BY Country;

11. MIN: Lowest contact number per city
SELECT City, MIN(Contact) AS Min_Contact
FROM Customers
GROUP BY City;