CREATE OR REPLACE PROCEDURE PRC_LINE_ADD (W_LN IN NUMBER, W_P_CODE IN VARCHAR2, W_LU NUMBER)
AS 
 W_LP NUMBER := 0.00;
BEGIN
   -- GET THE PRODUCT PRICE
	SELECT P_PRICE INTO W_LP 
	       FROM PRODUCT
	            WHERE P_CODE = W_P_CODE;

   -- ADDS THE NEW LINE ROW   
	INSERT INTO LINE
          VALUES(INV_NUMBER_SEQ.CURRVAL, W_LN, W_P_CODE, W_LU, W_LP);

	DBMS_OUTPUT.PUT_LINE('Invoice line ' || W_LN || ' added');
END;
