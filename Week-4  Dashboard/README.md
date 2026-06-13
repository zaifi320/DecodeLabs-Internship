# 📊 Data Analytics - Week 4 (Power BI Dashboard)

## 🚀 Overview

This repository contains my **Week 4 Data Analytics Project** completed as part of my training at DecodeLabs.

In this project, I built an **interactive Power BI dashboard** to visualize and analyze e-commerce sales data.

---

## 📁 Files Included

* `Cleaned_Dataset.csv` → Clean dataset used for dashboard
* `Dashboard.pbix` → Power BI dashboard file
* `Dashboard Sample.png` → Final dashboard preview

---

## 🎯 Objective

The main goal of this project is to:

* Create an interactive dashboard
* Visualize business data using charts
* Track key performance indicators (KPIs)
* Convert data into actionable insights

---

## 🛠 Tools & Technologies

* Power BI
* DAX (Data Analysis Expressions)
* Data Analytics Concepts
* Data Cleaning (Week 1)
* EDA (Week 2)
* SQL Analysis (Week 3)

---

## 📊 Dashboard Features

### 🔹 KPI Cards

* Total Revenue
* Total Orders
* Average Order Value
* Total Quantity Sold
* Total Customers

---

### 🔹 Charts & Visualizations

* 📈 **Monthly Sales Trend (Line Chart)**
  Shows sales performance over time

* 🍩 **Order Status Distribution (Donut Chart)**
  Displays distribution of order statuses

* 📊 **Sales by Payment Method (Bar Chart)**
  Shows percentage of orders by payment type

* 📊 **Revenue by Product (Column Chart)**
  Displays revenue contribution by each product

---

### 🔹 Filters (Slicers)

* Year filter
* Referral Source filter

---

## 🧮 DAX Measures Used

```DAX
Total Revenue = SUM(cleaned_dataset[TotalPrice])

Total Orders = COUNT(cleaned_dataset[OrderID])

Average Order Value = AVERAGE(cleaned_dataset[TotalPrice])

Total Quantity = SUM(cleaned_dataset[Quantity])

Total Customers = DISTINCTCOUNT(cleaned_dataset[CustomerID])

Payment % = 
DIVIDE(
    COUNT(cleaned_dataset[OrderID]),
    CALCULATE(COUNT(cleaned_dataset[OrderID]), ALL(cleaned_dataset[PaymentMethod]))
)

Revenue % = 
DIVIDE(
    SUM(cleaned_dataset[TotalPrice]),
    CALCULATE(SUM(cleaned_dataset[TotalPrice]), ALL(cleaned_dataset[Product]))
)
```

---

## 📈 Key Insights

* Laptop generated the highest revenue
* Online payment method is most preferred
* High number of cancelled and returned orders
* Instagram is the top referral source
* Sales trends vary across months

---

## 💡 Learning Outcomes

* Learned how to build **interactive dashboards in Power BI**
* Gained experience in writing **DAX measures**
* Improved skills in **data visualization and storytelling**
* Understood how to track **business KPIs**

---

## 🧠 Conclusion

This project helped me understand how to:

* Turn raw data into visual insights
* Design dashboards for decision-making
* Combine data cleaning, analysis, and visualization

---

## 📌 Future Improvements

* Add more advanced DAX calculations
* Improve dashboard UI/UX design
* Create real-time dashboards

---

## 🔗 Connect With Me

Feel free to explore my work and connect!

---

⭐ If you found this project helpful, consider giving it a star!
