-- Provide a query that includes the purchased track name with each invoice line item.
SELECT I.*, T.Name as "Track Name"
FROM InvoiceLine as I
INNER JOIN Track as T on I.TrackId = T.TrackId