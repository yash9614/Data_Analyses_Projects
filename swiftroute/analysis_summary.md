# SwiftRoute Logistics — Analysis Summary

## Overview
Analysis of 27,979 delivery orders across 6 Texas hubs from January 2023 to December 2024.

## Core KPIs
- **On-Time Rate**: 78.9%
- **Average CSAT**: 4.17 / 5
- **Average Delivery Time**: 35.8 hours
- **Average Hub Processing Time**: 1.97 hours
- **Cancellation Rate**: 0.9%

## Hub Insights
Dallas Main Hub handles the highest volume and is significantly overloaded relative to capacity (29.4 orders per capacity unit vs ~18 for other hubs). El Paso Hub shows the strongest performance (80.6% on-time, 4.19 CSAT).

## Delay Drivers
Delays are evenly distributed. Top reasons:
- Vehicle Breakdown (~10.5%)
- Road Construction (~10.5%)
- Package Sorting Error (~10.2%)
- Driver Unavailable (~10.1%)
- Hub Processing Delay (~10.0%)

No single root cause dominates.

## Driver Insights
Experience bands show an interesting pattern:
- 0–2 years: highest on-time rate (79.9%), lowest rating (3.19)
- 6+ years: highest rating (4.22), slightly lower on-time (78.5%)

Contract drivers (n=2) have the highest on-time rate among employment types.

## Vehicle Insights
Vehicle type has negligible impact on on-time performance (all types ~78.6–79.0%). Maintenance status correlates with higher breakdown counts, as expected.

## Recommendations
1. Investigate Dallas Main Hub capacity constraints.
2. Prioritize the top delay reasons (vehicle reliability, sorting process, driver availability) rather than chasing a single cause.
3. Review how performance ratings are calculated — they do not perfectly align with on-time outcomes.
