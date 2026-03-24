# 🌍 US Emissions Analysis with Databricks

<p align="center">
  <b>Data Cleaning • SQL Analytics • Dashboarding</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Tool-Databricks-orange?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Engine-Apache_Spark-red?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Focus-Data_Analytics-green?style=for-the-badge" />
</p>

---

## 📌 Overview

This project analyzes **greenhouse gas (GHG) emissions in the United States** using **Databricks SQL** and an interactive dashboard.

It demonstrates how raw, messy data can be transformed into **clean, analysis-ready datasets** and used to build **insightful visualizations**.

---

## 🎯 Objectives

* Prepare emissions data for **dashboard visualization**
* Compare **total emissions vs emissions per person**
* Identify **top emitting states**
* Explore **geographical distribution of emissions**
* Handle **real-world data issues using SQL**

---

## 📁 Project Structure

```
📦 Databricks-Emissions-Analysis
 ┣ 📂 dashboard
 ┃ ┣ dashboard.json
 ┃ ┗ dashboard.pdf
 ┣ 📂 data
 ┃ ┗ emissions_data.csv
 ┣ 📂 data-analysis
 ┃ ┣ emissions_per_person.sql
 ┃ ┣ geo_distribution.sql
 ┃ ┣ total_emissions_state.sql
 ┃ ┗ top10_emissions.sql
 ┗ README.md
```

---

## 📊 Dataset

* GHG emissions (CO₂ equivalent)
* Population data
* State & county information
* Latitude & longitude

📌 Source: EPA (2023)

---

## ⚠️ Data Challenges

Real-world data issues handled:

* ❌ `"156,670"` → malformed numeric values
* ❌ NULL values
* ❌ Type conversion errors

### ✔️ Solutions

* `REPLACE()` → clean numeric strings
* `TRY_CAST()` → safe conversions
* `NULLIF()` → avoid division by zero
* `ROUND()` → readable metrics

---

## 🧪 SQL Analysis

### 👥 Emissions per Person

* Normalizes emissions using population

### 🌍 Geographical Distribution

* Enables map-based visualization

### 🏭 Total Emissions per State

* Aggregation + ranking using window functions

### 🔝 Top 10 States

* Identifies major contributors

---

## 📊 Dashboard Preview

👉 Full dashboard available in:
`/dashboard/dashboard.pdf`

<p align="center">
  <img src="dashboard/dashboard.png" width="800"/>
</p>

---

## 📈 Visualizations Included

* 📍 Map → emissions by location
* 📉 Scatter → emissions per person vs population
* 📊 Bar → emissions by state
* 🥧 Pie → top 10 states

---

## 💡 Key Insights

* Emissions are concentrated in a few states
* Per capita analysis changes rankings significantly
* High population ≠ high emissions per person
* Data cleaning is essential for reliable analytics

---

## 🚀 How to Use

1. Upload dataset from `/data` to Databricks
2. Run SQL queries from `/data-analysis`
3. Import or recreate dashboard using `/dashboard/dashboard.json`
4. Explore insights

---

## 💡 Key Learnings

* SQL for **analytical pipelines**
* Handling **messy datasets**
* Window functions (`ROW_NUMBER`)
* Building **dashboard-ready datasets**

---

## 🔮 Future Improvements

* Add PySpark transformations
* Automate workflows (Databricks Jobs)
* Add time-series analysis
* Improve dashboard interactivity

---

## 👤 Author

**Matheus Sabaudo**
Aspiring Data Engineer

---

## ⭐ Project Value

✔ Data cleaning with SQL
✔ Analytical thinking
✔ Dashboard creation
✔ Real-world dataset handling

👉 Strong foundation for **Data Engineer / Data Analyst roles**
