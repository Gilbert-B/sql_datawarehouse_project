# Source Datasets

Raw exports from two fictional source systems of a bicycle retailer. These files are the input to the **bronze layer**. Load them as they are, without editing them.

## source_crm (sales system)

| File | Rows | Description |
|---|---|---|
| `cust_info.csv` | ~18,000 | Customer master data: ID, key, name, marital status, gender, created date |
| `prd_info.csv` | ~250 | Product catalogue with price/cost history (start and end dates per version) |
| `sales_details.csv` | 60,000 | Sales order lines: order, product, customer, dates, sales amount, quantity, price |

## source_erp (back office system)

| File | Rows | Description |
|---|---|---|
| `cust_az12.csv` | ~18,000 | Customer demographics: birthdate and gender |
| `loc_a101.csv` | ~18,000 | Customer country |
| `px_cat_g1v2.csv` | ~20 | Product categories, subcategories and a maintenance flag |

## Notes

- All files are comma-separated, UTF-8, and have a header row.
- Dates in `sales_details.csv` are stored as integers (`YYYYMMDD`).
- The two systems were not designed to work together: keys, codes and formats don't always line up. Like real source data, this data is **not clean**. Finding and fixing its problems is part of the project.
