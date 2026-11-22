# DecodeLabs Data Analytics Internship – Project 3
## SQL Data Analysis Using PostgreSQL

### Project Overview
This project is part of the DecodeLabs Data Analytics Internship (2026). The objective is to analyze a structured e-commerce dataset using SQL queries in PostgreSQL to retrieve, filter, sort, group, and summarize data.

The project focuses on developing practical SQL skills and extracting useful information from the dataset through relational database queries.

### Project Objectives
- Create a PostgreSQL database and table.
- Import the cleaned dataset into PostgreSQL.
- Retrieve records using SELECT statements.
- Filter records using WHERE conditions.
- Sort query results using ORDER BY.
- Group records using GROUP BY.
- Perform aggregations using COUNT(), SUM(), and AVG().
- Extract useful information from the dataset.

### Dataset Description
The project uses the cleaned e-commerce dataset from Project 1 (Data Cleaning and Preparation).

**Dataset Details:**
- Dataset: Cleaned E-commerce Dataset
- Records: 1,200 orders
- Columns: 14
- Format: CSV
- Database: PostgreSQL

**Main Dataset Columns:**

| Column | Description |
|---|---|
| order_id | Unique order identifier |
| order_date | Date of the order |
| customer_id | Customer identifier |
| product | Product name |
| quantity | Number of products ordered |
| unit_price | Price per unit |
| shipping_address | Customer shipping address |
| payment_method | Payment method |
| order_status | Order status |
| tracking_number | Shipment tracking number |
| items_in_cart | Number of items in cart |
| coupon_code | Applied coupon code |
| referral_source | Customer referral source |
| total_price | Recorded order value |

### Tools & Technologies
- PostgreSQL 16 – Relational database management system
- pgAdmin 4 – Database management and SQL query execution
- Microsoft Excel – Dataset preparation and CSV conversion
- SQL – Data querying and analysis
- Git & GitHub – Version control and project documentation

### Database Structure
**Database Name:** `DecodeLabs_Project_3`

**Table Name:** `orders`

The cleaned dataset was imported into the `orders` table using the CSV Import feature in pgAdmin 4.

### SQL Concepts Implemented

**1. SELECT Statements**
- Retrieve all records.
- Select specific columns.
- Retrieve unique values using DISTINCT.

**2. WHERE Clause**
- Filter orders by status.
- Find orders within a specified price range.
- Filter records by payment method.
- Retrieve orders within a specific date range.

**3. ORDER BY Clause**
- Sort orders by total price.
- Arrange records by order date.
- Identify the highest-value orders.

**4. Aggregate Functions**
- COUNT() – Calculate the number of orders.
- SUM() – Calculate total recorded order value and quantity.
- AVG() – Calculate average order value and quantity.
- MIN() and MAX() – Identify minimum and maximum order values.

**5. GROUP BY Clause**
- Product-wise order analysis.
- Payment method analysis.
- Order status distribution.
- Referral source analysis.

**6. HAVING Clause (Additional Practice)**
- Filter products based on order counts.
- Identify payment methods based on average order value.

**7. Date-Based Analysis**
- Analyze orders by year.
- Analyze monthly order activity.

### Key Analysis Performed
The SQL queries were designed to answer the following questions:

- How many orders are available in the dataset?
- Which products appear most frequently?
- What is the total recorded order value?
- What is the average order value?
- Which payment methods are most commonly used?
- How are orders distributed across different statuses?
- Which referral sources generate the most orders?
- Which orders have the highest recorded values?
- How does order activity change over time?

### Project Files

```text
Project_3(SQL_Data_Analysis)/
│
├── Cleaned_Dataset.csv
├── Project_3.sql
└── README.md
```

### Learning Outcomes
Through this project, I gained practical experience in:

- Creating and managing relational databases.
- Importing CSV datasets into PostgreSQL.
- Writing and executing SQL queries.
- Filtering and sorting structured data.
- Grouping records for category-wise analysis.
- Applying aggregate functions to calculate meaningful metrics.
- Using HAVING to filter aggregated results.
- Understanding how SQL supports data analysis and business reporting.

### Conclusion
This project strengthened my understanding of SQL and relational database management through hands-on analysis of an e-commerce dataset.

By implementing SELECT, WHERE, ORDER BY, GROUP BY, and aggregate functions, I developed practical skills in retrieving and summarizing structured data using PostgreSQL.

This project represents another step in my Data Analytics learning journey at DecodeLabs.

---

**Internship:** DecodeLabs – Data Analytics Internship   
**Project:** Project 3 – SQL Data Analysis  
**Database:** PostgreSQL 16
