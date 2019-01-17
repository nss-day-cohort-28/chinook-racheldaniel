-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT I.InvoiceId, C.FirstName || " " || C.LastName as "Customer Full Name", C.Country, I.Total as "Invoice Total" , E.FirstName || " " || E.LastName as "Agent Full Name"
FROM Invoice as I
INNER JOIN Customer as C on I.CustomerId = C.CustomerId
INNER JOIN Employee as E on C.SupportRepId = E.EmployeeId
ORDER BY I.InvoiceId
