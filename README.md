# Data Analyses Projects

Portfolio of data analysis projects focused on real-world business problems using SQL, Python, and dashboard-oriented workflows.

## Projects

### 1. SwiftRoute Logistics — Delivery Performance Analysis

End-to-end analysis of a last-mile logistics dataset covering orders, hubs, drivers, and vehicles. Built to support operational dashboards tracking on-time delivery, customer satisfaction, hub capacity, and fleet reliability.

**Business questions answered**
- What is the overall on-time delivery rate and how does it trend month-over-month?
- Which hubs are overloaded relative to capacity?
- What are the primary drivers of delays?
- How do driver experience and employment type relate to performance?
- Does vehicle type or model meaningfully affect delivery reliability?

**Key findings**
| Metric | Result |
|--------|--------|
| Total Orders | 27,979 (Jan 2023 – Dec 2024) |
| On-Time Rate | 78.9% |
| Average CSAT | 4.17 / 5 |
| Average Delivery Time | 35.8 hours |
| Highest Load Hub | Dallas Main (29.4 orders per capacity unit) |
| Best Performing Hub | El Paso (80.6% on-time, 4.19 CSAT) |

Delay reasons are evenly distributed across vehicle breakdowns, road construction, sorting errors, driver availability, and hub processing — no single dominant cause.

**Tools used**
- DuckDB (SQL)
- Python (data cleaning + loading)
- Excel (result tables for dashboard handoff)

**Files**
- `swiftroute/SwiftRoute_SQL_Analysis.sql` — full SQL covering all dashboard KPIs
- `swiftroute/analysis_summary.md` — written insights
- Dimension tables: `Drivers.csv`, `Hubs.csv`, `Vehicles.csv`

> Orders.csv (~28k rows) is large and not committed. Contact for the full dataset or regenerate from the source.

## How to run the analysis

```bash
# Requires DuckDB
duckdb swiftroute.db
```

Then execute the queries in `swiftroute/SwiftRoute_SQL_Analysis.sql` after loading the CSVs.

## Structure

```
.
├── README.md
└── swiftroute/
    ├── SwiftRoute_SQL_Analysis.sql
    ├── analysis_summary.md
    ├── Drivers.csv
    ├── Hubs.csv
    └── Vehicles.csv
```

## Author

Yash Paprikar  
[GitHub](https://github.com/yash9614)
