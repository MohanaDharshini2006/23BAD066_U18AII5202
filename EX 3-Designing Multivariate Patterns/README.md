# Healthcare Data Analysis using R

##  Project Overview:
This project analyzes a healthcare dataset using **R** to study relationships between important health indicators such as **Age, Blood Pressure, Cholesterol, and Glucose Level**.  
It creates age groups, generates a scatter plot matrix, and computes a correlation matrix to understand how variables are related.

---

##  Objective:
- Load and inspect healthcare dataset
- Categorize patients into age groups (Young, Middle, Senior)
- Visualize relationships between health indicators using a scatter plot matrix
- Compute correlation values between numerical health variables

---

##  Dataset Used:
**File Name:** `3.healthcare_data.csv`  
**Example Path:** `C:/Users/student/Downloads/3.healthcare_data.csv`

### Required Columns
The dataset must contain the following columns:
- `Age`
- `Blood_Pressure`
- `Cholesterol`
- `Glucose_Level`

---

##  Libraries Used:
This project uses the following R libraries:
- `GGally` → Used for scatter plot matrix (`ggpairs`)
- `dplyr` → Used for data manipulation (mutate, select)

---

##  Process / Workflow:

###  Step 1: Install and Load Packages
The required packages are installed and loaded:
- `GGally`
- `dplyr`

###  Step 2: Load the Dataset
The dataset is imported using:
- `read.csv()`

The data is stored in a dataframe named `health`.

###  Step 3: Inspect the Dataset
To understand the dataset:
- `str(health)` displays structure and data types
- `head(health)` displays the first few rows

###  Step 4: Create Age Groups
A new column `Age_Group` is created using `cut()`:
- **Young** → Age 0 to 30  
- **Middle** → Age 31 to 50  
- **Senior** → Age 51 to 100  

This helps in grouping patients based on age category.

###  Step 5: Scatter Plot Matrix (ggpairs)
A scatter plot matrix is generated for:
- Age
- Blood Pressure
- Cholesterol
- Glucose Level

The plot is color-coded using `Age_Group` to visually compare patterns across age categories.

###  Step 6: Correlation Matrix
Only numeric columns are selected and correlation is calculated using:
- `cor(..., use = "complete.obs")`

This provides correlation values between health indicators.

---

##  Outputs Generated:
This program produces:
1. **Scatter Plot Matrix** showing relationships between health indicators
2. **Correlation Matrix** displaying correlation coefficients between variables

---

##  How to Run the Program:
1. Open **RStudio**
2. Copy and paste the code into a new R script file
3. Ensure the dataset file path is correct
4. Run the script
5. View the scatter plot matrix in the **Plots** panel
6. View the correlation matrix in the **Console**

---

##  Conclusion:
This analysis helps to understand relationships between key healthcare variables by:
- Visualizing patterns using scatter plot matrix
- Measuring correlation strength between health indicators
- Comparing trends across different age groups

---

