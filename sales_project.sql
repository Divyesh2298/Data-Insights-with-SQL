-- Sales Data Quality & Insights using SQL

CREATE DATABASE sales_project;
USE sales_project;

-- Create table
CREATE TABLE sales_data (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    region VARCHAR(30),
    product VARCHAR(50),
    quantity INT,
    price_per_unit DECIMAL(10,2),
    sale_date DATE
);

-- Insert sample data
INSERT INTO sales_data VALUES
(1, 'Ravi', 'North', 'Laptop', 2, 55000, '2024-12-01'),
(2, 'Amit', 'East', 'Mouse', 5, 800, '2024-12-02'),
(3, 'Neha', 'West', 'Keyboard', 3, 1500, '2024-12-03'),
(4, 'Ravi', 'North', 'Monitor', 1, 12000, '2024-12-04'),
(5, 'Simran', 'South', 'Laptop', 1, 55000, '2024-12-05'),
(6, 'Amit', 'East', 'Mouse', 2, 800, '2024-12-06');

-- QA Checks
SELECT * FROM sales_data WHERE customer_name IS NULL;
SELECT sale_id, COUNT(*) FROM sales_data GROUP BY sale_id HAVING COUNT(*) > 1;
SELECT * FROM sales_data WHERE quantity <= 0 OR price_per_unit <= 0;

-- Data Transformation
ALTER TABLE sales_data ADD COLUMN total_amount DECIMAL(10,2);
UPDATE sales_data SET total_amount = quantity * price_per_unit;

-- Business Insights
SELECT SUM(total_amount) AS total_revenue FROM sales_data;
SELECT region, SUM(total_amount) AS region_revenue FROM sales_data GROUP BY region;
SELECT product, SUM(quantity) AS total_sold FROM sales_data GROUP BY product ORDER BY total_sold DESC LIMIT 1;
SELECT customer_name, SUM(total_amount) AS customer_spending FROM sales_data GROUP BY customer_name;
