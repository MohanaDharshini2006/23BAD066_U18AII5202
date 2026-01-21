# Student Performance Analysis using R (Internal Tests)

##  Project Overview:
This project analyzes student internal test performance and visualizes subject-wise average marks and test trends using R.

---

##  Objective:
- Compute average internal marks for each student
- Find subject-wise average internal marks
- Compare Internal Test 1 and Internal Test 2 performance trends

---

##  Dataset:
**File Name:** `1.student_performance.csv`  
**Example Path:** `D:/Downloads/1.student_performance.csv`

### Required Columns:
The dataset must contain:
- `Subject`
- `Internal_Test1`
- `Internal_Test2`

---

##  Libraries Used:
- `ggplot2` → Visualization
- `dplyr` → Data manipulation
- `tidyr` → Data reshaping

---

##  Process / Workflow

###  Step 1: Load Libraries
Required packages are loaded for analysis and plotting.

###  Step 2: Import Dataset
The dataset is loaded using `read.csv()` into `student_data`.

###  Step 3: Data Understanding
- `str(student_data)` shows dataset structure
- `summary(student_data)` shows statistical summary

###  Step 4: Calculate Average Internal Marks
A new column `Avg_Internal` is created using the average of:
- `Internal_Test1`
- `Internal_Test2`

###  Step 5: Subject-wise Average Calculation
The dataset is grouped by `Subject` and the mean of `Avg_Internal` is calculated.

###  Step 6: Visualization 1 – Bar Chart
A bar chart displays:
- Subject-wise average internal marks

###  Step 7: Trend Data Preparation
Subject-wise mean marks for:
- `Internal_Test1`
- `Internal_Test2`
are computed and reshaped using `pivot_longer()`.

###  Step 8: Visualization 2 – Trend Line Chart
A line chart compares:
- Internal Test 1 vs Internal Test 2 performance across subjects

---

## Outputs
This program generates:
1. **Bar Chart** – Subject-wise Average Internal Marks  
2. **Line Chart** – Internal Test Performance Trend  

---

##  How to Run
1. Open RStudio
2. Copy and paste the code into a new R script
3. Ensure the dataset path is correct
4. Run the script
5. View plots in the **Plots** panel

---

##  Conclusion:
This analysis helps to understand student performance by:
- comparing subject-wise internal marks
- identifying trends between Internal Test 1 and Internal Test 2
---

