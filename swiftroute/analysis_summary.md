# SwiftRoute Logistics — Sharp Analysis & Solutions

## Executive Snapshot
| Metric | Value | Implication |
|--------|-------|-------------|
| On-Time Rate | 78.9% | Stable but plateaued |
| Delayed Orders | 5,908 | 21.1% of volume |
| CSAT (On-Time) | **4.50** | Healthy baseline |
| CSAT (Delayed) | **2.94** | **–1.56 point drop** |
| Internal Controllable Delays | **40.8%** | Highest-ROI intervention zone |

**Core insight**: Delays destroy CSAT (4.50 → 2.94). ~41% of delays are internal and controllable. Fixing those is the highest-leverage move.

---

## 1. Hub Capacity Is Not the Primary Problem

| Hub | Orders | Delay % | Avg Hub Processing | Orders/Capacity |
|-----|--------|---------|--------------------|-----------------|
| Austin | 4,065 | 22.1% | 1.98 hrs | 18.5 |
| Fort Worth | 3,255 | 21.5% | 1.97 hrs | 18.1 |
| Dallas Main | 7,345 | 21.1% | 1.95 hrs | **29.4** |
| El Paso | 2,718 | **19.4%** | 1.99 hrs | 18.1 |

Dallas has the highest relative volume but does **not** have the worst delay rate or hub processing time. The earlier "Dallas is overloaded" framing is weak.

**Solution**: Stop treating Dallas capacity as the top priority. Focus on delay *causes*, not hub volume.

---

## 2. 40.8% of Delays Are Internal and Controllable

| Delay Reason | Share of Delays | Category |
|--------------|-----------------|----------|
| Vehicle Breakdown | 10.5% | Internal |
| Package Sorting Error | 10.2% | Internal |
| Driver Unavailable | 10.1% | Internal |
| Hub Processing Delay | 10.0% | Internal |
| **Subtotal Internal** | **40.8%** | — |
| Road Construction, Weather, Customer Not Home, Traffic, etc. | 59.2% | External / Mixed |

**Solution (priority order)**:
1. **Vehicle reliability** — Freightliner M2 has the highest average breakdowns (17.0). Target this model for accelerated maintenance or replacement.
2. **Sorting process** — Package Sorting Error is fully internal. Audit the hub sorting workflow.
3. **Driver availability** — Driver Unavailable is operational. Review scheduling and backup coverage.
4. **Hub processing** — 10% of delays. Standardize processing SLAs.

---

## 3. Vehicle Model Matters More Than Type

| Model | Avg Breakdowns | In Maintenance |
|-------|----------------|----------------|
| **Freightliner M2** | **17.0** | 3 |
| Ford F-150 | 15.3 | 2 |
| Isuzu NPR | 14.7 | 0 |
| Mercedes Sprinter | 10.2 | 0 |
| Chevrolet Express | 5.5 | 1 |

Vehicle *type* (Van/Truck/Pickup) shows almost no difference in on-time rate. Model reliability does.

**Solution**: Prioritize Freightliner M2 and Ford F-150 for reliability review. Chevrolet Express is the most reliable model in the fleet.

---

## 4. Driver Ratings Do Not Track On-Time Performance

| Experience Band | Avg Delay % | Avg Rating |
|-----------------|-------------|------------|
| Junior (0–2 yrs) | **20.1%** | 3.15 |
| Mid (3–5 yrs) | 21.5% | 3.48 |
| Senior (6+ yrs) | 21.4% | **4.13** |

Junior drivers have the *best* on-time rate but the *lowest* ratings. Senior drivers have the highest ratings but not the best on-time performance.

**Solution**: Recalibrate the performance rating system. Currently it does not reward on-time outcomes. Align incentives with the metric that actually drives CSAT.

---

## 5. CSAT Is the Real Business Metric

- On-time orders: **4.50** CSAT
- Delayed orders: **2.94** CSAT
- Delta: **–1.56 points**

Every internal delay prevented has a direct, measurable CSAT payoff.

---

## Recommended Action Plan

| Priority | Action | Expected Impact | Owner |
|----------|--------|-----------------|-------|
| 1 | Reliability program for Freightliner M2 + high-breakdown units | Reduce Vehicle Breakdown delays (~10.5%) | Fleet |
| 2 | Sorting process audit at all hubs | Reduce Package Sorting Error (~10.2%) | Hub Ops |
| 3 | Driver scheduling / backup coverage review | Reduce Driver Unavailable (~10.1%) | Workforce |
| 4 | Realign driver performance ratings to on-time outcomes | Better incentive alignment | HR / Ops |
| 5 | Deprioritize Dallas capacity expansion as a delay fix | Avoid misallocated capital | Leadership |

**Target**: Moving the 40.8% internal delays even halfway would lift on-time rate by ~4 percentage points and recover a large share of the CSAT gap.
