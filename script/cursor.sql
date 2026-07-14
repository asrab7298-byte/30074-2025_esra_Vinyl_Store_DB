DECLARE

CURSOR order_cursor IS

SELECT 
order_id,
customer_id,
total_amount,
status

FROM Orders;



BEGIN


FOR order_record IN order_cursor

LOOP


DBMS_OUTPUT.PUT_LINE(
'Order ID: '
|| order_record.order_id
||
' Amount: '
||
order_record.total_amount
);


END LOOP;


END;
/
