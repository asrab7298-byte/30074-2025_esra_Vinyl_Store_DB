Package Specification:

CREATE OR REPLACE PACKAGE Vinyl_Package

IS


PROCEDURE Add_Order
(
    p_order_id NUMBER,
    p_customer_id NUMBER,
    p_amount NUMBER
);



FUNCTION Get_Total_Sales

RETURN NUMBER;



END Vinyl_Package;
/

Package Body:
CREATE OR REPLACE PACKAGE BODY Vinyl_Package

IS


PROCEDURE Add_Order
(
    p_order_id NUMBER,
    p_customer_id NUMBER,
    p_amount NUMBER
)

IS

BEGIN


INSERT INTO Orders

VALUES
(
p_order_id,
p_customer_id,
SYSDATE,
p_amount,
'Pending'
);


COMMIT;


END Add_Order;



FUNCTION Get_Total_Sales

RETURN NUMBER

IS

v_total NUMBER;


BEGIN


SELECT SUM(total_amount)

INTO v_total

FROM Orders;


RETURN NVL(v_total,0);



END Get_Total_Sales;



END Vinyl_Package;
/
