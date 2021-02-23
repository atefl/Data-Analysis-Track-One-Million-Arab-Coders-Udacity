-- Q1
SELECT *
FROM Invoice
WHERE invoiceDate >= '2013-01-01' ;

-- Q2
SELECT customer.FirstName , customer.LastName , customer.Country
FROM Customer
WHERE customer.Country IN ('Brazil', 'Canada' , 'India' , 'Sweden') ;

-- Q3
SELECT track.name ,  track.composer , album.title
FROM track
JOIN album ON track.AlbumID = album.AlbumId
WHERE track.name LIKE 'A%' AND track.composer NOT LIKE ' ';

-- Q4
SELECT Customer.FirstName , Customer.LastName , Invoice.Total
FROM Customer
Join Invoice
ON Invoice.CustomerId = Customer.CustomerId 
ORDER BY Invoice.Total DESC
LIMIT 10;

/* Good Luck */
