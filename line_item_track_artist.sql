-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT I.*, T.Name as "Track Name", AR.Name as "Artist Name"
FROM InvoiceLine as I
INNER JOIN Track as T on I.TrackId = T.TrackId
INNER JOIN Album as AL on T.AlbumId = AL.AlbumId
INNER JOIN Artist as AR on AL.ArtistId = AR.ArtistId