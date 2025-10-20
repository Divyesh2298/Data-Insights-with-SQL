## Sales Data Quality & Insights using SQL

## Project Overview
A beginner-friendly SQL project combining QA data validation,data cleaning, and business insights, designed to simulate real-world data engineering tasks.

## Technologies Used
- MySQL
- SQL queries
- GitHub for version control

##  Objectives
1. Validate data quality (check for nulls, duplicates, negatives)
2. Transform data (add derived fields like total amount)
3. Generate business insights (revenue, top products, etc.)

## Database Setup
```sql
CREATE DATABASE sales_project;
USE sales_project;
```

## Dataset
| sale_id | customer_name | region | product  | quantity | price_per_unit | sale_date   |
|----------|----------------|--------|-----------|-----------|----------------|-------------|
| 1 | Ravi | North | Laptop | 2 | 55000 | 2024-12-01 |
| 2 | Amit | East | Mouse | 5 | 800 | 2024-12-02 |
| 3 | Neha | West | Keyboard | 3 | 1500 | 2024-12-03 |
| 4 | Ravi | North | Monitor | 1 | 12000 | 2024-12-04 |
| 5 | Simran | South | Laptop | 1 | 55000 | 2024-12-05 |
| 6 | Amit | East | Mouse | 2 | 800 | 2024-12-06 |

## Example Queries
Check data quality:
```sql
SELECT * FROM sales_data WHERE customer_name IS NULL;
```
Get total revenue:
```sql
SELECT SUM(total_amount) FROM sales_data;
```

## Outcome
- Identified and cleaned data issues.
- Created a reliable dataset.
- Generated regional and customer-level insights.

