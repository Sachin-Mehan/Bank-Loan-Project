<img width="1404" height="710" alt="Screenshot 2025-09-27 123426" src="https://github.com/user-attachments/assets/17794de7-5328-468d-87dc-b903fc0e8095" /># 🏦 Bank Loan Data Analysis Project

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
| **PowerBI** | Bank Loan Report - Summary Dashboard | <img width="1280" height="718" alt="Screenshot 2025-09-27 123647" src="https://github.com/user-attachments/assets/10b7c39d-3385-434c-9906-4a321f8426df" /> |
| **PowerBI** | Bank Loan Report - Overview Dashboard | <img width="1277" height="719" alt="Screenshot 2025-09-27 123657" src="https://github.com/user-attachments/assets/002bbdc6-6952-47f0-91be-abff75d59cc1" /> |
| **PowerBI** | Bank Loan Report - Details Table | <img width="1281" height="719" alt="Screenshot 2025-09-27 123718" src="https://github.com/user-attachments/assets/2b137cb4-86c4-4dc1-9922-ffe07e37f675" /> |
| **Excel** | Excel Dashboard - Overview | <img width="1403" height="720" alt="Screenshot 2025-09-27 123438" src="https://github.com/user-attachments/assets/5eb5f0ae-2e37-43cd-b360-df0548a23653" /> |
| **Excel** | Excel Dashboard - Summary | <img width="1404" height="710" alt="Screenshot 2025-09-27 123426" src="https://github.com/user-attachments/assets/21a62c57-d8f6-4aed-9a58-f4e180bbf765" /> |
| **Python** | Loan Applications by Term (Donut) | <img width="534" height="530" alt="Screenshot 2025-09-27 124032" src="https://github.com/user-attachments/assets/002514e3-6761-4481-a68e-715f1fa3c38b" /> |
| **Python** | Loan Applications by Employee Length | <img width="857" height="683" alt="Screenshot 2025-09-27 124051" src="https://github.com/user-attachments/assets/6ac56e38-d5f2-4ae4-a5ae-a3a108c12cf5" /> |
| **Python** | Loan Applications by Purpose | <img width="857" height="686" alt="Screenshot 2025-09-27 124058" src="https://github.com/user-attachments/assets/eed67079-3bfe-4e91-b39c-1f68edd3b1df" /> |
| **Python** | Loan Applications by Home Ownership | <img width="1205" height="385" alt="Screenshot 2025-09-27 124113" src="https://github.com/user-attachments/assets/75502202-51ed-4dff-9e41-46a20c98cc6f" /> |
| **Python** | Total Applications by Month Trend | <img width="1237" height="609" alt="Screenshot 2025-09-27 123955" src="https://github.com/user-attachments/assets/25eb3c02-2ccd-4e97-8f95-4d2432ce4b37" /> |
| **Python** | Total Received/Funded Amount by Month Trend | <img width="1233" height="609" alt="Screenshot 2025-09-27 123946" src="https://github.com/user-attachments/assets/8f22dc40-ca9b-42d9-8551-d2e9eb0b8347" /> <img width="1236" height="611" alt="Screenshot 2025-09-27 123937" src="https://github.com/user-attachments/assets/ab97b3fb-18c6-41c9-9f39-838f3cd1aaca" /> |
| **Python** | Total Applications by State | <img width="1058" height="831" alt="Screenshot 2025-09-27 124003" src="https://github.com/user-attachments/assets/a0461d06-67c9-4dfe-9dea-b3695e9246aa" /> |

---
