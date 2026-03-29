

## Description
This project demonstrates a **Data Quality Framework** applied on multiple tables: Employees, Departments, Customers, Orders, and Products.  
The framework calculates **data quality metrics** for each table including **Completeness, Validity, Accuracy, and Uniqueness**.  
A **score** is generated for each table and visualized in a **dashboard**.  

---

## Project Files

- **Scripts/** – Contains all SQL scripts used to create `parent_table` and generate quality metrics tables:  
  - `parent_table.sql`  
  - `parent_table_completeness.sql`  
  - `parent_table_validity.sql`  
  - `parent_table_accuracy.sql`  
  - `parent_table_uniqueness.sql`  



- **Scores/** – Contains the calculated score tables for each metric.

- **Dashboard/** – Contains images and snapshots of the dashboard visualizing data quality scores.

- **Table_Rules/** – Contains the threshold rules applied for each metric in table format.

---

## How to Run

1. Run the SQL scripts in the following order:  
   1. `parent_table.sql` → to consolidate all source tables into a single `parent_table`.  
   2. `parent_table_completeness.sql` → to calculate **Completeness** scores.  
   3. `parent_table_validity.sql` → to calculate **Validity** scores.  
   4. `parent_table_accuracy.sql` → to calculate **Accuracy** scores.  
   5. `parent_table_uniqueness.sql` → to calculate **Uniqueness** scores.

2. Load the generated score tables into your dashboard tool to visualize data quality.

---

## Data Quality Metrics

| Metric       | Description                                                                 |
|--------------|-----------------------------------------------------------------------------|
| Completeness | Checks whether required fields are not NULL or empty.                        |
| Validity     | Ensures values conform to expected formats or ranges.                        |
| Accuracy     | Verifies correctness of the values (e.g., valid emails, proper date format).|
| Uniqueness   | Checks for duplicate records in primary fields or key attributes.           |


<img width="2277" height="1270" alt="DQ(dashbord)" src="https://github.com/user-attachments/assets/fe83e2b1-085c-4581-8497-94a039f5c720" />


---
