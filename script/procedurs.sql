CREATE OR REPLACE PROCEDURE Get_Order_Details
(
    p_order_id IN NUMBER
)

IS

BEGIN

    SELECT 
        o.order_id,
        c.customer_name,
        o.order_date,
        o.total_amount,
        o.status

    FROM Orders o
    JOIN Customer c
    ON o.customer_id = c.customer_id

    WHERE o.order_id = p_order_id;


EXCEPTION

WHEN NO_DATA_FOUND THEN

    DBMS_OUTPUT.PUT_LINE('Order not found');


END;
/
