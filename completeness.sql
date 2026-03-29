INSERT INTO parent_table_completeness (
    table_source,
    emp_id,
    emp_name,
    emp_email,
    emp_salary,
    emp_join_date,
    emp_department,
    dept_id,
    dept_name,
    dept_location,
    dept_head,
    dept_budget,
    cust_id,
    cust_name,
    cust_email,
    cust_phone,
    cust_address,
    order_id,
    order_date,
    order_amount,
    order_status,
    order_notes,
    product_id,
    product_name,
    product_category,
    product_price,
    product_stock,
	load_date
)
SELECT
      table_source,

    CASE 
        WHEN emp_id IS NOT NULL 
        THEN '1' 
        ELSE '0' 
    END AS emp_id,

    CASE 
        WHEN emp_name IS NOT NULL AND trim (emp_name) <> '' 
        THEN '1' 
        ELSE '0' 
    END AS emp_name,

    CASE 
        WHEN emp_email IS NOT NULL AND trim(emp_email) <> '' 
        THEN '1' 
        ELSE '0' 
    END AS emp_email,

    CASE 
        WHEN emp_salary IS NOT NULL 
        THEN '1' 
        ELSE '0' 
    END AS emp_salary,

    CASE 
        WHEN emp_join_date IS NOT NULL 
        THEN '1' 
        ELSE '0' 
    END AS emp_join_date,

    CASE 
        WHEN emp_department IS NOT NULL AND trim(emp_department) <> '' 
        THEN '1' 
        ELSE '0' 
    END AS emp_department,

    CASE 
        WHEN dept_id IS NOT NULL 
        THEN '1' 
        ELSE '0' 
    END AS dept_id,

    CASE 
        WHEN dept_name IS NOT NULL AND trim(dept_name) <> '' 
        THEN '1' 
        ELSE '0' 
    END AS dept_name,

    CASE 
        WHEN dept_location IS NOT NULL AND trim(dept_location) <> '' 
        THEN '1' 
        ELSE '0' 
    END AS dept_location,

    CASE 
        WHEN dept_head IS NOT NULL AND  trim (dept_head) <> '' 
        THEN '1' 
        ELSE '0' 
    END AS dept_head,

    CASE 
        WHEN dept_budget IS NOT NULL 
        THEN '1' 
        ELSE '0' 
    END AS dept_budget,

    CASE 
        WHEN cust_id IS NOT NULL 
         THEN '1' 
        ELSE '0' 
    END AS cust_id,

    CASE 
        WHEN cust_name IS NOT NULL AND  trim (cust_name) <> '' 
         THEN '1' 
        ELSE '0' 
    END AS cust_name,

    CASE 
        WHEN cust_email IS NOT NULL AND trim(cust_email) <> '' 
         THEN '1' 
        ELSE '0' 
    END AS cust_email,

    CASE 
        WHEN cust_phone IS NOT NULL AND trim(cust_phone) <> '' 
        THEN '1' 
        ELSE '0' 
    END AS cust_phone,

    CASE 
        WHEN cust_address IS NOT NULL AND trim(cust_address)<> '' 
         THEN '1' 
        ELSE '0' 
    END AS cust_address,

    CASE 
        WHEN order_id IS NOT NULL 
        THEN '1' 
        ELSE '0' 
    END AS order_id,

    CASE 
        WHEN order_date IS NOT NULL 
        THEN '1' 
        ELSE '0' 
    END AS order_date,

    CASE 
        WHEN order_amount IS NOT NULL 
        THEN '1' 
        ELSE '0' 
    END AS order_amount,

    CASE 
        WHEN order_status IS NOT NULL AND trim(order_status) <> '' 
        THEN '1' 
        ELSE '0' 
    END AS order_status,

    CASE 
        WHEN order_notes IS NOT NULL AND trim(order_notes)<> '' 
        THEN '1' 
        ELSE '0' 
    END AS order_notes,

    CASE 
        WHEN product_id IS NOT NULL 
        THEN '1' 
        ELSE '0' 
    END AS product_id,


    CASE 
        WHEN product_name IS NOT NULL AND  trim(product_name) <> '' 
		THEN '1' 
        ELSE '0' 
    END AS product_name,

    CASE 
        WHEN product_category IS NOT NULL AND trim(product_category) <> '' 
        THEN '1' 
        ELSE '0' 
    END AS product_category,

    CASE 
        WHEN product_price IS NOT NULL 
        THEN '1' 
        ELSE '0' 
    END AS product_price,

    CASE 
        WHEN product_stock IS NOT NULL 
        THEN '1' 
        ELSE '0' 
    END AS product_stock, 
	
	CURRENT_DATE as load_date

FROM parent_table;



	/*CREATE   TABLE  parent_completeness (
    table_source VARCHAR,
    emp_id VARCHAR,
    emp_name VARCHAR,
    emp_email VARCHAR,
    emp_salary VARCHAR,
    emp_join_date VARCHAR,
    emp_department VARCHAR,
    dept_id VARCHAR,
    dept_name VARCHAR,
    dept_location VARCHAR,
    dept_head VARCHAR,
    dept_budget VARCHAR,
    cust_id VARCHAR,
    cust_name VARCHAR,
    cust_email VARCHAR,
    cust_phone VARCHAR,
    cust_address VARCHAR,
    order_id VARCHAR,
    order_date VARCHAR,
    order_amount VARCHAR,
    order_status VARCHAR,
    order_notes VARCHAR,
    product_id VARCHAR,
    product_name VARCHAR,
    product_category VARCHAR,
    product_price VARCHAR,
    product_stock VARCHAR,
	load_date DATE
);
