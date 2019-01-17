-- How many Invoices were there in 2009 and 2011?
SELECT count()
FROM Invoice
WHERE InvoiceDate between '2009-01-01 00:00:00' and '2011-12-31 00:00:00'