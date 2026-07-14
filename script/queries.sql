-- Display all customers
SELECT * FROM Customer;


-- Display all artists
SELECT * FROM Artist;


-- Display vinyl records with artists
SELECT 
v.title,
a.artist_name,
v.price

FROM Vinyl_Record v

JOIN Artist a
ON v.artist_id = a.artist_id;



-- Display orders with customer names
SELECT
o.order_id,
c.customer_name,
o.total_amount,
o.status

FROM Orders o

JOIN Customer c

ON o.customer_id = c.customer_id;



-- Count records in tables

SELECT COUNT(*) FROM Customer;

SELECT COUNT(*) FROM Artist;

SELECT COUNT(*) FROM Vinyl_Record;

SELECT COUNT(*) FROM Orders;

SELECT COUNT(*) FROM Order_Item;

SELECT COUNT(*) FROM Payment;



-- Show Audit History

SELECT * FROM Audit_Log;
