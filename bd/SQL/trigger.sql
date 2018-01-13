--------------------------------------------------------
--  文件已创建 - 星期一-十一月-27-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger ALERTE
--------------------------------------------------------

CREATE OR REPLACE EDITIONABLE TRIGGER ALERTE 
AFTER INSERT OR UPDATE ON PRODUIT_simple FOR EACH ROW
 WHEN (NEW.stock<10/*Qte minimum*/ AND NEW.stock>=0)
BEGIN
        DBMS_OUTPUT.PUT_LINE('Il y a pas beaucoup de restant');
END;

