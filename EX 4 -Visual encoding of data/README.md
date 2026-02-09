
# Traffic Accident Data Visualization using R

##  Project Overview:
This project visualizes traffic accident data using **R**.  
It focuses on representing multiple accident attributes such as **severity, vehicles involved, casualties, accident type, and location** in a single scatter plot using effective visual encoding.

---

##  Objectives:
- Load and inspect the traffic accidents dataset  
- Convert accident severity into an ordered categorical variable  
- Create a multi-variable scatter plot using `ggplot2`  
- Encode different accident features using:
  - Color → Severity  
  - Size → Casualties  
  - Shape → Accident Type  
  - X-axis → Location  
  - Y-axis → Vehicles Involved  

---

##  Dataset Information:
**Dataset File:** `4.traffic_accidents.csv`  
**File Path Used:** `C:/Users/student/Downloads/4.traffic_accidents.csv`

### Required Columns:
The dataset should contain these columns:
- `Location`
- `Vehicles_Involved`
- `Severity`
- `Casualties`
- `Accident_Type`

---

##  Libraries Used:
- **ggplot2** → Used for plotting and visualization  
- **dplyr** → Used for data manipulation and transformation  

---

##  Process / Steps Performed:

###  Step 1: Print Student Details
The program prints the student name and roll number for identification.

###  Step 2: Load Required Libraries
The required libraries `ggplot2` and `dplyr` are loaded.

###  Step 3: Load the Dataset
The dataset is imported using `read.csv()` and stored in a dataframe named `traffic`.

###  Step 4: Inspect the Dataset
- `str(traffic)` displays the structure and data types  
- `head(traffic)` shows the first few rows  

###  Step 5: Convert Severity into an Ordered Factor
The `Severity` column is converted into an ordered categorical variable using `factor()` with levels:
1. Minor  
2. Major  
3. Fatal  

This ensures the severity levels follow a meaningful order.

###  Step 6: Create Scatter Plot with Visual Encoding
A scatter plot is created where:
- **X-axis:** Accident Location  
- **Y-axis:** Vehicles Involved  
- **Color:** Severity  
- **Size:** Casualties  
- **Shape:** Accident Type  

###  Step 7: Customize Colors and Improve Readability
Custom colors are assigned:
- Minor → Green  
- Major → Orange  
- Fatal → Red  

Additional improvements:
- `theme_minimal()` is used for clean layout  
- X-axis labels are rotated 45° to avoid overlapping  

---

##  Output Generated:
This program generates:
✅ **Scatter plot showing traffic accident patterns** with multiple visual encodings.

---

##  How to Run the Program:
1. Open **RStudio**
2. Copy and paste the code into a new R script file
3. Ensure the dataset path is correct
4. Run the script
5. View the plot in the **Plots** panel

---

##  Conclusion:
This visualization helps in understanding traffic accident data by combining multiple attributes into a single plot.  
It provides insights into how accident severity, location, number of vehicles involved, casualties, and accident type are related.

---
