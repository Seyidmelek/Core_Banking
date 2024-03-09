Create table cb_customer_deposits
(id number generated always as   identity primary key,
customer_id number, deposit_product_id number,
contract_no varchar2(30),
deposit_amount number(22,2),
profit_amount number(22,2),
start_date date);

CREATE OR REPLACE PROCEDURE cb_customer_deposit_insert (
    p_customer_id NUMBER,
    p_deposit_product_id NUMBER,
    p_contract_no VARCHAR2,
    p_deposit_amount NUMBER,
    p_profit_amount NUMBER,
    p_start_date DATE
) IS 
BEGIN 
    INSERT INTO cb_customer_deposits (
        customer_id,
        deposit_product_id,
        contract_no,
        deposit_amount,
        profit_amount,
        start_date
    ) VALUES (
        p_customer_id,
        p_deposit_product_id,
        p_contract_no,
        p_deposit_amount,
        p_profit_amount,
        p_start_date
    );
    COMMIT;
END;
/


CREATE OR REPLACE PROCEDURE cb_customer_deposit_update (
    p_id number,
    p_customer_id NUMBER,
    p_deposit_product_id NUMBER,
    p_contract_no VARCHAR2,
    p_deposit_amount NUMBER,
    p_profit_amount NUMBER,
    p_start_date DATE
) IS 
BEGIN 
    INSERT INTO cb_customer_deposits (
        customer_id,
        deposit_product_id,
        contract_no,
        deposit_amount,
        profit_amount,
        start_date
    ) VALUES (
        p_customer_id,
        p_deposit_product_id,
        p_contract_no,
        p_deposit_amount,
        p_profit_amount,
        p_start_date
    );
    COMMIT;
END;
/

