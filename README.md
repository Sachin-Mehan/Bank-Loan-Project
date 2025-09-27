# 🏦 Bank Loan Data Analysis Project

This project involves a comprehensive data analysis of bank loan application data. The analysis covers key performance indicators (KPIs), trend analysis, geographical distribution, and a breakdown of loan status (Good vs. Bad Loans), with visualizations created across multiple popular tools and the underlying data verified using SQL.

The entire analysis and reporting pipeline has been implemented using **PowerBI**, **Excel**, and **Python (Jupyter Notebooks)**, with the data centrally managed and verified using **MySQL** and SQL queries.

## 📁 Project Structure

The project is structured to demonstrate the analysis using different tools and contains the documentation used throughout the process:

```
Bank Loan Project/
├── Excel/
│   ├── Domain Knowledge Doc.docx
│   ├── Excel_Dashboard.xlsx              # Excel Dashboard file (All Dashboards/Pivot Tables)
│   ├── financial_loan.csv                # Raw dataset
│   ├── Problem Statement.docx
│   ├── Query Doc.docx
│   ├── SQL Queries (For verifications of dahsboa... ).txt  # SQL Queries for Dashboard verification
│   └── Terminologies in Data.docx
├── PowerBI + MySQL/
│   ├── Domain Knowledge Doc.docx
│   ├── financial_loan.csv                # Raw dataset
│   ├── PowerBI Project Bank Loan.pbix    # PowerBI Dashboard file
│   ├── Problem Statement.docx
│   ├── Query Doc.docx
│   ├── SQL Queries (For verifications of dahsboa... ).txt  # SQL Queries for Dashboard verification
│   └── Terminologies in Data.docx
└── Python + MySQL/
    ├── .ipynb_checkpoints/
    ├── Bank Loan Analysis.ipynb          # Jupyter Notebook with Python/SQL analysis
    ├── Domain Knowledge Doc.docx
    ├── financial_loan.csv                # Raw dataset
    ├── Problem Statement.docx
    ├── Query Doc.docx
    └── Terminologies in Data.docx
```

## 🛠️ Tools & Technologies Used

*   **Database:** MySQL (Used for data storage and SQL verification)
*   **Data Analysis:** Python (Pandas, Matplotlib/Seaborn), Jupyter Notebooks
*   **Business Intelligence & Visualization:** PowerBI, Microsoft Excel
*   **Documentation:** Microsoft Word
*   **Version Control:** Git & GitHub

## 📊 Key Findings & Business Insights (from Dashboards)

The analysis focused on three main areas: **Summary**, **Overview**, and **Details**.

*   **Total Loan Applications:** 38.6K
*   **Total Funded Amount:** **$435.8 Million**
*   **Good Loans:** **86.2%** of total applications ($370.2M Funded) vs. **Bad Loans:** **13.8%** ($65.5M Funded)
*   **Top Purpose:** **Debt Consolidation** (18.2K applications).
*   **Top State:** **California (CA)** leads in applications, funded amount, and received amount.
*   **Loan Term:** **73.2%** of loans are for the shorter **36-month term**.
*   **Time Trend:** Applications and Funded Amount show a consistent **upward trend** throughout the year.

---

## 🖼️ Visualizations and Screenshots

The following visualizations are included in the project to illustrate the analysis across different tools. They can be found in the **GitHub repository's root folder** or a dedicated **`visualizations`** folder for better readability.

| Tool/Format | Screenshot Description | Files to Upload |
| :--- | :--- | :--- |
| **PowerBI** | Bank Loan Report - Summary Dashboard | The screenshot with **"BANK LOAN REPORT | SUMMARY"** selected. |
| **PowerBI** | Bank Loan Report - Overview Dashboard | The screenshot with **"BANK LOAN REPORT | OVERVIEW"** selected. |
| **PowerBI** | Bank Loan Report - Details Table | The screenshot with **"BANK LOAN REPORT | DETAILS"** selected. |
| **Excel** | Excel Dashboard - Overview | The screenshot showing the **PowerBI-style Overview** with dark background (The one with grade/purpose slicers). |
| **Excel** | Excel Dashboard - Summary | The screenshot showing the **PowerBI-style Summary** with dark background (The one with loan applications/funded/received amount breakdown). |
| **Python** | Loan Applications by Term (Donut) | The donut chart titled **"Total loan applications by term..."** |
| **Python** | Loan Applications by Employee Length | The horizontal bar chart titled **"Total Loan Applications by Employee Length"**. |
| **Python** | Loan Applications by Purpose | The horizontal bar chart titled **"Total Loan Applications by Loan Purpose"**. |
| **Python** | Loan Applications by Home Ownership | The Treemap titled **"Total Loan Applications by Home Ownership"**. |
| **Python** | Total Applications by Month Trend | The area chart titled **"Total Applicatons by Month"**. |
| **Python** | Total Received/Funded Amount by Month Trend | The area charts titled **"Total Received Amount by Month"** and **"Total Funded Amount by Month"**. |
| **Python** | Total Applications/Amount by State | The horizontal bar charts titled **"Total Received Amount by State,"** **"Total Funded Amount by State,"** and **"Total Loan Applications by State"**. |

---

## 🚀 How to Run the Project

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/your-username/Bank-Loan-Project.git
    ```
2.  **Database Setup (Optional but Recommended):**
    *   Load the `financial_loan.csv` data into a MySQL database.
    *   The SQL verification queries can be found in the **SQL Queries** file inside the `Excel` and `PowerBI + MySQL` folders.
3.  **Explore the Analysis:**
    *   **PowerBI:** Open the `.pbix` file.
    *   **Excel:** Open the `Excel_Dashboard.xlsx` file.
    *   **Python:** Open the `Bank Loan Analysis.ipynb` in a Jupyter environment.
