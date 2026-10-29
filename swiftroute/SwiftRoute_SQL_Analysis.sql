-- ============================================================
-- SwiftRoute Logistics — SQL Analysis
-- Covers Business Requirements dashboard KPIs
-- ============================================================

-- Clean view with proper date parsing
CREATE OR REPLACE VIEW orders_v AS
SELECT *,
  strptime(Order_Date, '%d-%m-%Y') AS order_date_parsed,
  strptime(Actual_Delivery_Date, '%d-%m-%Y') AS delivery_date_parsed,
  strftime(strptime(Order_Date, '%d-%m-%Y'), '%Y-%m') AS year_month
FROM orders;

-- ========== 1. OVERVIEW KPIs ==========
SELECT 
  COUNT(*) AS total_orders,
  ROUND(100.0 * SUM(CASE WHEN Is_On_Time THEN 1 ELSE 0 END) / COUNT(*), 1) AS on_time_pct,
  ROUND(AVG(Customer_Satisfaction_Score), 2) AS avg_csat,
  ROUND(AVG(Delivery_Time_Hours), 1) AS avg_delivery_hours,
  ROUND(AVG(Hub_Processing_Time_Hours), 2) AS avg_hub_processing_hours
FROM orders_v;

-- ========== 2. MONTHLY TREND (for MoM) ==========
SELECT 
  year_month,
  COUNT(*) AS orders,
  ROUND(100.0 * SUM(CASE WHEN Is_On_Time THEN 1 ELSE 0 END) / COUNT(*), 1) AS on_time_pct,
  ROUND(AVG(Customer_Satisfaction_Score), 2) AS avg_csat,
  ROUND(AVG(Delivery_Time_Hours), 1) AS avg_delivery_hrs
FROM orders_v
GROUP BY year_month
ORDER BY year_month;

-- ========== 3. HUB PERFORMANCE ==========
SELECT 
  h.HubName,
  h.Hub_Capacity,
  COUNT(*) AS orders,
  ROUND(100.0 * SUM(CASE WHEN o.Is_On_Time THEN 1 ELSE 0 END) / COUNT(*), 1) AS on_time_pct,
  ROUND(AVG(o.Customer_Satisfaction_Score), 2) AS avg_csat,
  ROUND(AVG(o.Delivery_Time_Hours), 1) AS avg_delivery_hrs,
  ROUND(COUNT(*) * 1.0 / h.Hub_Capacity, 1) AS orders_per_capacity
FROM orders_v o
JOIN hubs h ON o.Hub_Name = h.HubName
GROUP BY h.HubName, h.Hub_Capacity
ORDER BY orders DESC;

-- ========== 4. TOP DELAY REASONS ==========
SELECT Delay_Reason, COUNT(*) AS cnt,
       ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 1) AS pct_of_delays
FROM orders_v
WHERE Is_Delayed = true
GROUP BY 1
ORDER BY cnt DESC;

-- ========== 5. DRIVERS WITH MOST DELAYS ==========
SELECT 
  d.DriverName,
  d.Experience_Years,
  d.Performance_Rating,
  d.Employment_Type,
  COUNT(*) AS orders,
  ROUND(100.0 * SUM(CASE WHEN o.Is_Delayed THEN 1 ELSE 0 END) / COUNT(*), 1) AS delay_pct,
  ROUND(AVG(o.Customer_Satisfaction_Score), 2) AS avg_csat
FROM orders_v o
JOIN drivers d ON o.Driver_ID = d.DriverID
GROUP BY 1,2,3,4
HAVING COUNT(*) >= 200
ORDER BY delay_pct DESC
LIMIT 10;

-- ========== 6. EXPERIENCE vs PERFORMANCE ==========
SELECT 
  CASE 
    WHEN d.Experience_Years <= 2 THEN '0-2 yrs'
    WHEN d.Experience_Years <= 5 THEN '3-5 yrs'
    ELSE '6+ yrs'
  END AS experience_band,
  COUNT(DISTINCT d.DriverID) AS drivers,
  COUNT(*) AS orders,
  ROUND(AVG(d.Performance_Rating), 2) AS avg_rating,
  ROUND(100.0 * SUM(CASE WHEN o.Is_On_Time THEN 1 ELSE 0 END) / COUNT(*), 1) AS on_time_pct
FROM orders_v o
JOIN drivers d ON o.Driver_ID = d.DriverID
GROUP BY 1
ORDER BY 1;

-- ========== 7. VEHICLE PERFORMANCE ==========
SELECT 
  Vehicle_Type,
  COUNT(*) AS orders,
  ROUND(100.0 * SUM(CASE WHEN Is_On_Time THEN 1 ELSE 0 END) / COUNT(*), 1) AS on_time_pct,
  ROUND(AVG(Delivery_Time_Hours), 1) AS avg_hrs
FROM orders_v
GROUP BY 1
ORDER BY orders DESC;

-- Vehicle model + status vs delays
SELECT 
  v.Vehicle_Model,
  v.Vehicle_Status,
  COUNT(*) AS orders,
  ROUND(100.0 * SUM(CASE WHEN o.Is_Delayed THEN 1 ELSE 0 END) / COUNT(*), 1) AS delay_pct,
  v.Breakdown
FROM orders_v o
JOIN vehicles v ON o.Vehicle_Name = v.Vehicle_Code
GROUP BY 1,2,5
ORDER BY delay_pct DESC;
