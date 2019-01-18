-- Which sales agent made the most in sales in 2009?
SELECT HighestSales.EmployeeName , max(HighestSales.Sales) as "Total Sales"
FROM 	(
			SELECT E.FIrstName || " " || E.LastName as "EmployeeName" , sum(I.Total) as "Sales"
			FROM Employee E
			INNER JOIN Customer C on E.EmployeeId = C.SupportRepId
			INNER JOIN Invoice I on I.CustomerId = C.CustomerId
			WHERE I.InvoiceDate between '2009-01-01 00:00:00' and '2009-12-31 00:00:00'
			GROUP BY E.EmployeeId
)
AS "HighestSales"