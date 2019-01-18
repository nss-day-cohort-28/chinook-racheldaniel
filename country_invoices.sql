-- Provide a query that shows the # of invoices per country.
SELECT BillingCountry, count()
FROM Invoice
GROUP BY BillingCountry