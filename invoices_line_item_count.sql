-- Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT I.*, count(IL.InvoiceId) as "Line Items"
FROM Invoice as I
INNER JOIN InvoiceLine as IL on I.InvoiceId = IL.InvoiceId
GROUP BY I.InvoiceId