-- What are the respective total sales for each of those years? (2009-2011
SELECT  strftime('%Y', InvoiceDate) as Year, sum(total) as "Total Revenue"
FROM Invoice
WHERE InvoiceDate between '2009-01-01 00:00:00' and '2011-12-31 00:00:00'
GROUP BY strftime('%Y', InvoiceDate)