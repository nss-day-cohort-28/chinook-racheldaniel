-- Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT CustomerId, FirstName || " " || LastName as FullName, Country
FROM Customer
WHERE Country != "USA"