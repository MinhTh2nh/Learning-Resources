UPDATE PRODMASTER
SET PRODMASTER.PROD_QOH = PRODMASTER.PROD_QOH - PRODSALES.PS_QTY
FROM PRODMASTER INNER JOIN PRODSALES ON (PRODMASTER.PROD_ID = PRODSALES.PROD_ID)
