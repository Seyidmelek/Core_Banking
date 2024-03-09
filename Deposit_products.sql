CREATE TABLE CB_DEPOSIT_PRODUCTS (
    ID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    currency_id NUMBER,
    product_name VARCHAR2(100),
    term NUMBER(4),
    interest_rate NUMBER(10,2)
);

Create or replace procedure cb_deposit_products_insert
(p_currency_id number,
p_product_name varchar2,
p_term number,
p_interest_rate number)is 
begin 
insert into cb_deposit_products(currency_id, product_name, term,interest_rate)
values(p_currency_id,p_product_name,p_term,p_interest_rate);
commit;
end;

CREATE OR REPLACE PROCEDURE cb_deposit_products_update (
    p_id NUMBER,
    p_currency_id NUMBER DEFAULT NULL,
    p_product_name VARCHAR2 DEFAULT NULL,
    p_term NUMBER DEFAULT NULL,
    p_interest_rate NUMBER DEFAULT NULL
) IS 
BEGIN 
    UPDATE cb_deposit_products
    SET 
        currency_id = NVL(p_currency_id, currency_id),
        product_name = NVL(p_product_name, product_name),
        term = NVL(p_term, term),
        interest_rate = NVL(p_interest_rate, interest_rate)
    WHERE 
        ID = p_id;
    COMMIT;
END;
/

BEGIN 
    cb_deposit_products_update(1, p_interest_rate => 1.6);
END;
/
