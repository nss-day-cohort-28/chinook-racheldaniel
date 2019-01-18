-- Provide a query that shows total sales made by each sales agent.
SELECT E.FirstName || " " || E.LastName as "Name" , round(sum(I.Total), 2) as "Total Sales"
FROM Employee E
INNER JOIN Customer C on E.EmployeeId = C.SupportRepId
INNER JOIN Invoice I on I.CustomerId = C.CustomerId
GROUP BY "Name"
