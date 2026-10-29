# Data Analyses Projects

Portfolio of data analysis projects focused on real-world business problems using SQL, Python, and dashboard-oriented workflows.

## Projects

### 1. SwiftRoute Logistics — Delivery Performance Analysis

End-to-end analysis of a last-mile logistics dataset covering orders, hubs, drivers, and vehicles. Focused on identifying the highest-leverage operational fixes.

**Core insight**
Delays crush CSAT (4.50 on-time → 2.94 delayed). **40.8% of delays are internal and controllable**. That is the highest-ROI intervention zone.

**Key findings**
| Finding | Detail |
|---------|--------|
| On-Time Rate | 78.9% (stable, plateaued) |
| CSAT Gap | On-time 4.50 vs Delayed 2.94 (–1.56 pts) |
| Controllable Delays | 40.8% (vehicle breakdown, sorting, driver availability, hub processing) |
| Hub Narrative Corrected | Dallas has highest volume but is **not** the worst for delays |
| Vehicle Model > Type | Freightliner M2 has highest breakdowns (17.0 avg); type shows no difference |
| Driver Ratings Misaligned | Juniors have best on-time rate but lowest ratings |

**Recommended priorities**
1. Freightliner M2 reliability program
2. Sorting process audit
3. Driver scheduling / backup coverage
4. Realign performance ratings to on-time outcomes
5. Deprioritize Dallas capacity expansion as a delay fix

Full write-up: [`swiftroute/analysis_summary.md`](swiftroute/analysis_summary.md)

**Tools used**
- DuckDB (SQL)
- Python (data cleaning + loading)

**Files**
- `swiftroute/SwiftRoute_SQL_Analysis.sql` — full SQL covering all dashboard KPIs
- `swiftroute/analysis_summary.md` — sharp insights + action plan
- Dimension tables: `Drivers.csv`, `Hubs.csv`, `Vehicles.csv`

> Orders.csv (~28k rows) is large and not committed.

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
