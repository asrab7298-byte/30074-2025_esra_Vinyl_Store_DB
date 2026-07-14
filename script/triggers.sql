Audit Trigger
CREATE OR REPLACE TRIGGER trg_vinyl_price_audit

FOR UPDATE OF price ON Vinyl_Record

COMPOUND TRIGGER


AFTER EACH ROW IS

BEGIN

INSERT INTO Audit_Log

VALUES(
audit_seq.NEXTVAL,
'VINYL_RECORD',
'PRICE UPDATE',
SYSDATE,
USER
);

END AFTER EACH ROW;


END trg_vinyl_price_audit;
/


Compound Trigger

CREATE OR REPLACE TRIGGER trg_vinyl_price_audit

FOR UPDATE OF price ON Vinyl_Record

COMPOUND TRIGGER


AFTER EACH ROW IS

BEGIN

INSERT INTO Audit_Log

VALUES(
audit_seq.NEXTVAL,
'VINYL_RECORD',
'PRICE UPDATE',
SYSDATE,
USER
);

END AFTER EACH ROW;


END trg_vinyl_price_audit;
/


Security Trigger

CREATE OR REPLACE TRIGGER trg_security_orders

BEFORE INSERT OR UPDATE OR DELETE ON Orders

DECLARE
v_holiday_count NUMBER;

BEGIN


IF TO_CHAR(SYSDATE,'DY',
'NLS_DATE_LANGUAGE=ENGLISH')
IN ('MON','TUE','WED','THU','FRI')

THEN

RAISE_APPLICATION_ERROR(
-20001,
'Database changes are not allowed on weekdays'
);

END IF;



SELECT COUNT(*)

INTO v_holiday_count

FROM Public_Holidays

WHERE TRUNC(holiday_date)=TRUNC(SYSDATE);



IF v_holiday_count > 0 THEN

RAISE_APPLICATION_ERROR(
-20002,
'Database changes are not allowed on public holidays'
);

END IF;


END;
/
