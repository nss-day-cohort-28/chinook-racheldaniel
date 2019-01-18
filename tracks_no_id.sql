-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre
SELECT T.Name as "Track", A.Title as "Album", G.Name as "Genre", M.Name as "Media Type"
FROM Track as T
INNER JOIN Album as A on T.AlbumId = A.AlbumId
INNER JOIN MediaType as M on T.MediaTypeId = M.MediaTypeId
INNER JOIN Genre as G on T.GenreId = G.GenreId
