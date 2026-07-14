INSERT INTO Customer
VALUES (1,'Sara Ali','sara@email.com','0780000000','Kigali');

INSERT INTO Customer
VALUES (2,'Ahmed Omar','ahmed@email.com','0781111111','Kigali');


INSERT INTO Artist
VALUES (1,'Michael Jackson','USA');

INSERT INTO Artist
VALUES (2,'The Beatles','UK');

INSERT INTO Artist
VALUES (3,'Adele','UK');


INSERT INTO Vinyl_Record
VALUES (1,'Thriller',1,'Pop',1982,25.99,10);

INSERT INTO Vinyl_Record
VALUES (2,'Abbey Road',2,'Rock',1969,30,5);

INSERT INTO Vinyl_Record
VALUES (3,'25',3,'Pop',2015,20,8);


INSERT INTO Orders
VALUES (1,1,SYSDATE,90,'Pending');

INSERT INTO Orders
VALUES (2,2,SYSDATE,30,'Pending');


INSERT INTO Order_Item
VALUES (1,1,1,2,25.99);

INSERT INTO Order_Item
VALUES (2,2,2,1,30);


INSERT INTO Payment
VALUES (1,1,SYSDATE,90,'Card');

INSERT INTO Payment
VALUES (2,2,SYSDATE,30,'Cash');


INSERT INTO Public_Holidays
VALUES (1,TO_DATE('15-07-2026','DD-MM-YYYY'),
'Public Holiday');


COMMIT;
