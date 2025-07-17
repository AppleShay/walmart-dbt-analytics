# 🛒 Walmart Analytics Pipeline with dbt

This project is an end-to-end data analytics pipeline built using **dbt**, powered by a Walmart sales dataset. The pipeline transforms raw transactional data into clean, tested, and documented models ready for BI and reporting.

---

## 🚀 Tech Stack

- **dbt-core**
- **PostgreSQL**
- **Power BI** (optional)
- **Python (venv)** for local environment

---

## 📁 Project Structure
    ecommerce_analytics/
    ├── models/
    │ ├── staging/
    │ │ ├── stg_walmart_raw.sql
    │ ├── dim_customers.sql
    │ ├── dim_products.sql
    │ ├── fct_sales.sql
    ├── seeds/
    ├── .gitignore
    ├── dbt_project.yml
    ├── README.md



---

## 📊 Data Models

### 1. `walmart_raw` (Source)
- Raw data loaded from CSV into PostgreSQL

### 2. `stg_walmart_raw`
- Cleaned and typed version of the source

### 3. `dim_customers`
- Unique customers with attributes like age, gender, city, occupation

### 4. `dim_products`
- Unique products and their category

### 5. `fct_sales`
- Fact table with purchase metrics

---

## 🧪 Tests Implemented

- `not_null` tests on all critical fields
- `relationships` test: `fct_sales.user_id` → `dim_customers.user_id`
- (Optional) `accepted_values` test on purchase (for demo)
- Source freshness and model documentation planned

Run tests via:

 ```bash
dbt test


