
insert into parent_table_Accuracy (
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
select  
	table_source , 
	
	case 
		WHEN emp_id is not null and emp_id > 0 
			then '1'
				else '0' 
	end as emp_id, 
	
	
	case when emp_name is not null and  trim(emp_name) <> '' 
			THEN '1' 
				ELSE '0' 
	END AS emp_name ,
		
		
	CASE
    WHEN emp_email IS NOT NULL  AND trim(emp_email) <> '' AND emp_email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
			THEN '1'
				ELSE '0'
	END AS emp_email ,
	
	
	case 
		when emp_salary is not null and emp_salary  > 0 
			then '1' 
				else '0' 
	end as emp_salary, 
	
	
	case 
		WHEN emp_join_date is not null and  emp_join_date::text ~ '^\d{4}-\d{2}-\d{2}$'
			then '1'
				else '0'
	end as  emp_join_date,
	
	
	
	case 
		when emp_department is not null  and trim (emp_department)  <> '' 
			then '1' 
				else '0' 
	end as emp_department, 
	
	
	case 
		when dept_id is not null and dept_id > 0 
			then '1' 
					else '0' 
	end as dept_id ,
	
	
	
	case 
		when dept_name is not null and trim (dept_name) <> '' 
			then '1' 
				else '0' 
	end as dept_name ,
	
	
	case 
		when dept_location is not null and trim (dept_location) <> ''  
			THEN '1' 
				ELSE 	'0' 
	END AS dept_location ,
	
	
	case 
		when dept_head is not null and  trim (dept_head) <> '' 
			then '1' 
				else '0'
	end as dept_head , 
	
	case 
		WHEN dept_budget is not null and dept_budget > 0 
			then '1' 
				else'0' 
	end as dept_budget ,
	
	case 
		when cust_id is not null and cust_id > 0 
			then '1' 
				else '0' 
	end as cust_id ,
	
	case 
		when cust_name is not null and trim(cust_name ) <> '' 
			then'1' 
				ELSE '0' 
	END AS cust_name ,
	
	
	case
		when cust_email is not null and trim(cust_email) <> ''  and cust_email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
			then '1' 
				else'0' 
	end as cust_email, 
		
	case 
		when cust_phone is not null and trim(cust_phone) <> '' and cust_phone ~ '^07[7-9]\d{7}$'
			then '1' 
				else'0' 
	end as cust_phone ,
	
	case 
		when cust_address is not null and trim(cust_address) <> '' 
			then '1' 
				else '0' 
	end as cust_address,
	
	case 
		when order_id is not null and order_id > 0 
			then '1' 
				else'0' 
	end as order_id ,
	
	case 
		when order_date is not null and order_date ::text ~ '^\d{4}-\d{2}-\d{2}$'
			THEN '1' 
				ELSE '0' 
	end as order_date,
	  
	 case 
		when order_amount is not null 
			then '1' 
				else '0' 
	end as order_amount ,
	
	
	case 
		when order_status is not null and trim (order_status) <>'' 
			then '1' 
				else '0' 
	end as order_status ,
	   
	case 
		when order_notes is not null and trim (order_notes) <> '' 
			then '1' 
				else '0' 
	end as order_notes ,
	

	case 
		when product_id is not null and product_id > 0 
			then '1' 
				else '0' 
	end as product_id , 
	
	case 
		when product_name is not null and trim (product_name) <>  '' 
			then '1' 
				else '0' 
	end as product_name , 
	
	case 
		when product_category is not null and trim (product_category) <> '' 
				then '1' 
					else '0' 
	end as product_category, 
	 
	 
	case 
		when product_price is not null and  product_price > 0 
			THEN '1' 
				ELSE '0' 
	END AS product_price , 
	
	CASE 
		WHEN product_stock IS NOT NULL AND product_stock > 0 
			THEN '1' 
				else '0'
	end as product_stock , 
	
	CURRENT_DATE as load_date 
	 
	from parent_table ;
	
/*CREATE TABLE parent_table_Accuracy(
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



 
