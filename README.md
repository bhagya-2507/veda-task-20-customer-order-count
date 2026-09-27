# VEDA Task 20 | Customer Order Count Analysis

![Excel](https://img.shields.io/badge/Excel-Data%20Analysis-217346?style=flat-square&logo=microsoft-excel&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-Repository-181717?style=flat-square&logo=github&logoColor=white)
![VEDA Internship](https://img.shields.io/badge/VEDA-Internship-blue?style=flat-square)

## Overview

This project was completed as part of **VEDA Internship – Task 20: Customer Order Count Analysis**.

The objective of the project is to analyze transactional order data, calculate the number of **unique orders placed by each customer**, and identify customers with the highest order activity.

The project demonstrates the use of **Microsoft Excel and MySQL** to perform data preparation, aggregation, duplicate-order handling, analysis, validation, and reporting.

---

## Business Objective

The analysis focuses on answering the following business questions:

- How many unique orders has each customer placed?
- Which customers have the highest order frequency?
- How can duplicate product lines within the same order be prevented from inflating order counts?
- Can the results obtained in Excel be independently validated using SQL?

---

## Dataset

The dataset contains transactional customer order information.

### Columns

| Column | Description |
|---|---|
| Customer ID | Unique identifier assigned to each customer |
| Customer Name | Name of the customer |
| Order ID | Unique identifier for an order |
| Order Date | Date on which the order was placed |
| Product | Product included in the order |
| Category | Product category |
| Sales | Sales value associated with the product line |

The dataset contains **30 transaction rows** representing **27 unique orders** across **10 customers**.

Some orders contain multiple product lines. Therefore, counting rows directly would overstate the actual number of orders.

---

## Analytical Approach

The analysis was performed in the following stages:

### 1. Data Preparation

The transactional dataset was structured in Excel and reviewed for customer and order-level information.

### 2. Duplicate Order Handling

A single order can contain multiple products.

For example, an order such as `O1001` appears on multiple rows because it contains more than one product.

Therefore, each `Order ID` must be counted only once for a customer.

### 3. Excel Analysis

A **Unique Order Flag** was created to identify the first occurrence of each customer-order combination.

The customer-level order count was then calculated using the unique order flags.

### 4. SQL Validation

The same analysis was independently performed in MySQL using:

```sql
COUNT(DISTINCT order_id)
