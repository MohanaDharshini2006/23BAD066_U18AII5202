# E-Commerce Transactions Analysis using R

##  Project Overview:
This project analyzes an e-commerce transactions dataset using **R**.  
It focuses on understanding transaction amount distribution, identifying outliers, and visualizing monthly sales patterns across product categories.

---

##  Objective:
The main objectives of this project are:
- Analyze the distribution of transaction amounts
- Detect outliers in transaction values
- Summarize monthly total sales by product category
- Visualize sales intensity using a heatmap

---

##  Dataset Used:
**File Name:** `2.ecommerce_transactions.csv`  
**Example Path:** `D:/Downloads/2.ecommerce_transactions.csv`

### Required Columns in Dataset:
The dataset should contain the following columns:
- `Transaction_Date` → Date of the transaction  
- `Transaction_Amount` → Amount of the transaction  
- `Product_Category` → Category of the product purchased  

---

##  Libraries Used:
This project uses the following R libraries:

- `ggplot2` → Used for plotting graphs and visualizations  
- `dplyr` → Used for data cleaning, grouping, and summarizing  
- `lubridate` → Used for extracting month information from date values  

---

##  Process / Workflow:

###  Step 1: Load Required Libraries
The required packages are loaded to support data processing and visualization.

###  Step 2: Import Dataset
The CSV dataset is imported using:
- `read.csv()`

The dataset is stored in a dataframe named `df`.

###  Step 3: Convert Transaction Date Format
The `Transaction_Date` column is converted into proper Date format using:
- `as.Date()`

This ensures date-based operations work correctly.

---

##  Visualizations Performed:

###  1) Histogram of Transaction Amounts
A histogram is created to show the frequency distribution of transaction values.

**Purpose:**
- Understand how transaction amounts are spread
- Identify common transaction ranges

---

###  2) Boxplot of Transaction Amounts:
A boxplot is created to visualize the transaction amount distribution and outliers.

**Purpose:**
- Detect outliers (very high or very low transactions)
- View median and spread of transaction values

---

###  3) Heatmap of Monthly Sales Intensity:
A heatmap is created after summarizing total sales month-wise for each product category.

**Steps:**
- Extract month from transaction date
- Group by `Product_Category` and `Month`
- Calculate `Total_Sales` using sum of transaction amounts

**Purpose:**
- Identify which categories perform well in specific months
- Understand seasonal trends in sales

---

##  Outputs Generated:
This program generates the following plots:
1. **Histogram** – Distribution of transaction amounts  
2. **Boxplot** – Outlier detection and transaction spread  
3. **Heatmap** – Monthly sales intensity by product category  

---

##  How to Run the Program:
1. Open **RStudio**
2. Copy and paste the R code into a new script file
3. Ensure the dataset path is correct
4. Run the script
5. View outputs in the **Plots** panel

---

##  Conclusion:
This project provides insights into e-commerce transaction patterns by:
- Visualizing transaction amount distribution
- Identifying outliers using boxplots
- Highlighting monthly sales trends across product categories using a heatmap

---

