CREATE OR REPLACE FUNCTION Calculate_Order_Total
(
    p_order_id NUMBER
)

RETURN NUMBER

IS

    v_total NUMBER;


BEGIN


SELECT SUM(quantity * unit_price)

INTO v_total

FROM Order_Item

WHERE order_id = p_order_id;


RETURN NVL(v_total,0);



EXCEPTION

WHEN NO_DATA_FOUND THEN

RETURN 0;


END;
/
