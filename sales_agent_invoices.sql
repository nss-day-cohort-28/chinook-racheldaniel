-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT E.FirstName || " " || E.LastName as "Agent Full Name", I.*
FROM Invoice as I
INNER JOIN Customer as C on I.CustomerId = C.CustomerId
INNER JOIN Employee as E on C.SupportRepId = E.EmployeeId
ORDER BY "Agent Full Name"