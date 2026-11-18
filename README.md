# 🚖 Ola Booking Data Analysis & Operational Dashboard

An end-to-end SQL and Power BI analytics project examining **100,000 ride bookings in Bengaluru (January 2025)** to uncover operational bottlenecks, turnaround times, location demand, and cancellation root causes.

---

## 📊 Key Metrics & Findings
- **Total Bookings Analyzed:** 100,000 (`100K`)
- **Completed Rides:** 85,097 (`85.1%`)
- **Cancelled Rides:** 14,903 (`14.9%`)
- **Average Vehicle Turnaround Time (`AvgVTAT`):** `10.96 mins`
- **Average Customer Turnaround Time (`AvgCTAT`):** `24.99 mins`
- **Vehicle Categories Evaluated:** Prime Sedan, Prime SUV, Prime Plus, Mini, Auto, Bike, e-Bike

### 🔍 Actionable Business Insights
1. **Cancellation Drivers:** The leading causes behind the 14.9% cancellation rate are *Wrong Address*, *Driver asked to cancel*, *Change of plans*, and *Driver not moving*—pointing to a need for better GPS pin accuracy and peak-hour driver incentives.
2. **High-Demand Bengaluru Corridors:** Areas such as *Banaswadi, Whitefield, Hoodi, Bellandur, Electronic City,* and *BTM Layout* consistently generate peak ride demand.
3. **High-Cancellation Zones:** *Bannerghatta Road, Kengeri, Whitefield,* and *Brookefield* experience the highest cancellation counts, requiring targeted driver supply allocation.

---

## 🛠 Tech Stack & Project Files
- **Database & Querying:** MySQL (`sql project1.sql`) — built reusable SQL Views (`CREATE VIEW`) for successful bookings, turnaround times, and cancellation metrics.
- **Visualization:** Power BI (`ola booking.pdf`) — 5-page interactive report covering *Overall, Vehicle Type, Location, Time,* and *Cancellation* analysis.
- **Dataset:** `booking.csv` (100K structured ride records).
