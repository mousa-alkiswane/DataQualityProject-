INSERT into parent_table_Uniqueness(
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
    product_stock ,
	load_date ) 
select 

	table_source , 
	
	case 
		when emp_id is not null  and count(*) over (PARTITION by emp_id)  = 1 
			then '1'  
				else '0'
	end as emp_id ,
	
	
	'NA' as emp_name ,

	case 
		when emp_email is not null and trim(emp_email) <> '' and count(*) over  (PARTITION   by emp_id,emp_email) = 1 
			then '1' 
				else '0' 
		end as emp_email , 

	'NA' as emp_salary  ,
	'NA' as emp_join_date ,
	'NA' as emp_department , 
	
	case 
		when dept_id is not null  and count(*) over (PARTITION by emp_id)  = 1 
			then '1'  
				else '0'
	end as dept_id , 
	 
	 
	case 
		when dept_name is not null and trim(dept_name) <> '' and count(*) over  (PARTITION  by emp_id,dept_name) = 1 
			then '1' 
				else '0' 
	end as dept_name ,
	 
	 
	'NA' as dept_location,
	'NA' as  dept_head,
	'NA' as  dept_budge ,
	
	
	case 
		when dept_id is not null  and count(*) over (PARTITION by dept_id)  = 1 
			then '1'  
				else '0'
	end as dept_id ,
	
	'NA' as cust_name  , 
	
		
	case 
		when cust_email is not null and trim(cust_email) <> '' and count(*) over (PARTITION by emp_id, cust_email) = 1 
			then '1' 
				else '0' 
	end as cust_email, 
	
	
		
	case 
		when cust_phone is not null and trim(cust_phone) <> '' and count(*) over (PARTITION by emp_id, cust_phone) = 1 
			then '1' 
				else '0' 
	end as cust_phone , 
	
	
	'NA' as cust_address , 
	
	
	case 
		when order_id is not null  and count(*) over (PARTITION by order_id)  = 1 
			then '1'  
				else '0'
	end as order_id ,
	
	'NA' as order_date,
	'NA' as order_amount,
	'NA' as order_status,
	'NA' as order_notes,
	
	case 
		when product_id is not null  and count(*) over (PARTITION by product_id)  = 1 
			then '1'  
				else '0'
	end as product_id,

	case 
		when product_name is not null and trim(product_name) <> '' and count(*) over( PARTITION by emp_id,product_name) = 1 
			then '1' 
				else '0' 
		end as product_name, 
		
	'NA' as	product_category ,
	'NA' as	product_price , 
	'NA' as	product_stock , 

	CURRENT_DATE as load_date   

from parent_table ;





/*CREATE TABLE parent_table_Uniqueness(
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


