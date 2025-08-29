## 🗂️ Before Cleaning (`weekly_sales`)

| week_date   | region  | platform | segment | customer_type | transactions | sales    |
|-------------|---------|----------|---------|---------------|--------------|----------|
| 31/12/2018  | ASIA    | Retail   | C1      | New           | 1200         | 25000    |
| 07/01/2019  | EUROPE  | Shopify  | F2      | Existing      | 850          | 17500    |
| 14/01/2019  | AFRICA  | Retail   |         | New           | 900          | 22000    |
| 21/01/2019  | USA     | Retail   | C3      | Existing      | 1000         | 30000    |

## ✅ After Cleaning (`clean_weekly_sales`)

| week_date   | week_number | month_number | calendar_year | region  | platform | segment | age_band      | demographic | customer_type | transactions | sales    | avg_transaction |
|-------------|-------------|--------------|---------------|---------|----------|---------|---------------|-------------|---------------|--------------|----------|-----------------|
| 2018-12-31  | 1           | 12           | 2018          | ASIA    | Retail   | C1      | Young Adults  | Couples     | New           | 1200         | 25000    | 20.83           |
| 2019-01-07  | 2           | 1            | 2019          | EUROPE  | Shopify  | F2      | Middle Aged   | Families    | Existing      | 850          | 17500    | 20.59           |
| 2019-01-14  | 3           | 1            | 2019          | AFRICA  | Retail   | unknown | unknown       | unknown     | New           | 900          | 22000    | 24.44           |
| 2019-01-21  | 4           | 1            | 2019          | USA     | Retail   | C3      | Retirees      | Couples     | Existing      | 1000         | 30000    | 30.00           |
