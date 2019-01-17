--  Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT FirstName || " " || LastName as FullName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer as C
INNER JOIN Invoice as I ON C.CustomerId = I.CustomerId
WHERE Country = "Brazil"