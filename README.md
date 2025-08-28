# 🛒 Data Mart — Case Study (SQL)

## 📖 Overview
The goal is to clean and analyze retail sales data to generate valuable business insights for **Data Mart**, a large online supermarket that operates across multiple regions.

---

## 📂 Dataset
The dataset contains weekly sales data across different platforms, regions, and customer segments.  

### **Table: weekly_sales**
| Column        | Description |
|---------------|-------------|
| `week_date`   | Week start date (string format initially) |
| `region`      | Region where sales occurred |
| `platform`    | Retail or Shopify |
| `segment`     | Customer segment (C1, C2, F1, etc.) |
| `customer_type` | Type of customer |
| `transactions` | Number of transactions |
| `sales`        | Total sales value |

---

## 🛠️ Data Cleaning
A new cleaned table **`clean_weekly_sales`** was created in the `data_mart` schema with the following transformations:
1. Converted `week_date` into `DATE` format.  
2. Added `week_number`, `month_number`, and `calendar_year` columns.  
3. Created **age_band** mapping based on segment codes:  
   - 1 → Young Adults  
   - 2 → Middle Aged  
   - 3,4 → Retirees  
4. Created **demographic** mapping based on segment prefixes:  
   - C → Couples  
   - F → Families  
5. Replaced all `NULL` or empty string values with `'unknown'`.  
6. Added a new column **avg_transaction = sales / transactions** (rounded to 2 decimals).  

---

## 🔍 Data Exploration Questions
1. What day of the week is used for each `week_date` value?  
2. What range of week numbers are missing from the dataset?  
3. How many total transactions were there for each year?  
4. What is the total sales for each region for each month?  
5. What is the total count of transactions for each platform?  
6. What is the percentage of sales for **Retail vs Shopify** for each month?  
7. What is the percentage of sales by **demographic** for each year?  
8. Which **age_band** and **demographic** contribute the most to Retail sales?  
9. Can we use the `avg_transaction` column to find the average transaction size for each year for Retail vs Shopify? If not, how should it be calculated instead?  
