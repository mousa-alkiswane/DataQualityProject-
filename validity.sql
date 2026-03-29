insert into  parent_table_VALIDITY  (
	table_source ,
    emp_id  ,
    emp_name  ,
    emp_email  ,
    emp_salary  ,
    emp_join_date  ,
    emp_department  ,
    dept_id  ,
    dept_name  ,
    dept_location  ,
    dept_head  ,
    dept_budget  ,
    cust_id  ,
    cust_name  ,
    cust_email  ,
    cust_phone  ,
    cust_address  ,
    order_id  ,
    order_date  ,
    order_amount  ,
    order_status  ,
    order_notes  ,
    product_id  ,
    product_name  ,
    product_category  ,
    product_price  ,
    product_stock , 
	load_date 
	)
	select table_source , 
	
	case 
		WHEN  emp_id is not null AND emp_id  > 0  
			then '1'	
				ELSE '0'
	END AS emp_id ,
		
	case 
		WHEN  emp_name is not null and trim (emp_name) <> ''
			then '1'	
				ELSE '0'
	END AS emp_name,	
	case 
		WHEN  emp_email is not null and trim (emp_email) <> '' AND emp_email  like '%@%'
			then '1'	
				ELSE '0'
	END AS emp_email,
	
	case 
		when emp_salary  is not null  and emp_salary  >= 0  
			then'1' 
				else '0'
	end as emp_salary,
	
	
	CASE 
		when emp_join_date IS NOT NULL AND  emp_join_date <= CURRENT_DATE
			THEN '1'
				ELSE '0'
	  
	END AS emp_join_date,   
	
	CASE 
		when emp_department is not null and trim (emp_department) <> '' 
			then '1'
				else '0'
	end as emp_department,
	
	case 
		when dept_id is not null and dept_id >= 0 
			then '1' 
				else '0'
	end as dept_id,
	
	case 
		WHEN  dept_name  is not  null  and trim (dept_name) <> '' 
			then '1'	
				ELSE '0'
	END AS dept_name,
	
	case 
		WHEN dept_location is not  null  and trim (dept_location) <> '' 
			then '1'	
				ELSE '0'
	END AS dept_location,
	
	case 
		WHEN  dept_head is not  null  and trim (dept_head ) <> '' 
			then '1'	
				ELSE '0'
	END AS dept_head,
	
	case 
		WHEN dept_budget IS NOT NULL AND dept_budget >= 0 
			THEN'1'
				ELSE '0'
	END as dept_budget, 
	
	case 
		when  cust_id  is not null and  cust_id > 0 
			then '1'
				else '0'
	end as  cust_id,

	case  
		when cust_name is not null and trim (cust_name) <> '' 
			then'1'
				else '0'
	END as cust_name,   	
	
	case 
		when cust_email is not null and trim (cust_email ) <> ''  and cust_email like '%@%'
			then '1'
				else '0'
	end as cust_email,	
	
	
	case 
		when  cust_phone is not null  and trim (cust_phone) <> '' and LENGTH(cust_phone) = 10 
			then '1' 
				else '0'
		
	end as cust_phone,	 
	
	case 
		when cust_address is not null  and trim (cust_address) <> ''
			then '1' 
					else '0'
	end as cust_address, 
	case 
		when order_id is not null and order_id > 0 
			then '1'
				else '0' 
	end as order_id,
	
	case 
		when order_date is not null and order_date  <= CURRENT_DATE 
			then '1' 
				else '0'
	end as order_date, 
	
	case 
		when order_amount is not null and order_amount >  0 
			then '1' 
				ELSE '0' 
	END AS order_amount, 
	
	CASE 
		when order_status is not null and trim (order_status) <> ''
			then '1' 
				else '0' 
	end as order_status ,
	
	case 
		when order_notes is not null and trim (order_notes) <>'' and  order_notes like '^[A-Za-z]+$'
			THEN '1' 
					ELSE '0' 
	END AS order_notes,
	
	case 
		when product_id is not null and product_id > 0 
			then '1'
				else '0'
	end as product_id ,
	
	case 
		when product_name  is not null and trim (product_name) <> ''
			THEN '1' 
				ELSE '0' 
	END AS product_name, 
	
	CASE  
		WHEN product_category IS NOT NULL and trim (product_category) <> '' 
			THEN '1' 
				ELSE '0' 
	END AS product_category, 
	
	CASE 
		WHEN product_price IS NOT NULL AND product_price > 0 
			then '1' 
				else '0' 
	end as product_price,
	
	case 
		WHEN product_stock IS NOT NULL and product_stock >= 0 
			then '1' 
				ELSE '0' 
	END AS product_stock,
	
	CURRENT_DATE AS load_date 

 from parent_table ; 



/* 	CREATE  table parent_table_VALIDITY  (
 table_source VARCHAR ,
    emp_id VARCHAR ,
    emp_name VARCHAR ,
    emp_email VARCHAR ,
    emp_salary VARCHAR ,
    emp_join_date VARCHAR ,
    emp_department VARCHAR  ,
    dept_id VARCHAR ,
    dept_name VARCHAR ,
    dept_location VARCHAR ,
    dept_head VARCHAR ,
    dept_budget  VARCHAR,
    cust_id  VARCHAR,
    cust_name VARCHAR ,
    cust_email VARCHAR ,
    cust_phone VARCHAR  ,
    cust_address VARCHAR ,
    order_id VARCHAR ,
    order_date VARCHAR ,
    order_amount VARCHAR ,
    order_status VARCHAR  ,
    order_notes VARCHAR ,
    product_id VARCHAR ,
    product_name VARCHAR ,
    product_category VARCHAR ,
    product_price VARCHAR ,
    product_stock VARCHAR,
	load_date  DATE 
);