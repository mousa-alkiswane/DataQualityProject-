CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_email VARCHAR(50),
    emp_salary DECIMAL(10,2),
    emp_join_date DATE,
    emp_department VARCHAR(50)
);

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    dept_location VARCHAR(50),
    dept_head VARCHAR(50),
    dept_budget DECIMAL(12,2)
);

CREATE TABLE Customers (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    cust_email VARCHAR(50),
    cust_phone VARCHAR(20),
    cust_address VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    cust_id INT,
    order_date DATE,
    order_amount DECIMAL(10,2),
    order_status VARCHAR(20),
    order_notes VARCHAR(200)
);


CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    product_category VARCHAR(50),
    product_price DECIMAL(10,2),
    product_stock INT
);
