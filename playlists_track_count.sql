-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
SELECT P.Name, count() as "Total Tracks"
FROM PlaylistTrack as PT
INNER JOIN Playlist as P on P.PlaylistId = PT.PlaylistId
GROUP BY P.Name
