# 📊 Financial Risk Loan Analytics

An end-to-end Data Analytics and Machine Learning project that analyzes loan applicant data to identify financial risk, understand borrower behavior, predict loan defaults, and build interactive business dashboards using Python, SQL, Machine Learning, and Power BI.

---

## 📌 Project Overview

Financial institutions receive thousands of loan applications every day. Assessing the risk associated with each applicant is critical to reducing loan defaults and improving lending decisions.

This project performs complete loan risk analysis by:

- Cleaning and preprocessing raw loan data
- Performing Exploratory Data Analysis (EDA)
- Answering business questions using SQL
- Training a Random Forest Machine Learning model to predict loan defaults
- Building interactive Power BI dashboards for executive reporting and risk analysis

---

## 🎯 Objectives

- Analyze borrower demographics and loan characteristics
- Identify factors influencing loan defaults
- Build an interactive business dashboard
- Predict loan default risk using Machine Learning
- Generate actionable business insights

---

## 📂 Dataset Information

| Attribute | Value |
|-----------|-------|
| Source | Kaggle Credit Risk Dataset |
| Records | 32,581 |
| Features | 12 |
| Domain | Banking & Finance |

### Features

- Person Age
- Annual Income
- Home Ownership
- Employment Length
- Loan Intent
- Loan Grade
- Loan Amount
- Interest Rate
- Loan Status
- Loan Percent Income
- Previous Default History
- Credit History Length

---

# 🛠️ Technology Stack

| Category | Tools |
|----------|-------|
| Programming | Python |
| Data Analysis | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Database | MySQL |
| Dashboard | Power BI |
| Machine Learning | Scikit-learn |
| Notebook | Jupyter Notebook |

---

# 📁 Project Structure

```text
Financial-Risk-Loan-Analytics
│
├── data/
│   ├── credit_risk_dataset.csv
│   └── cleaned_credit_risk_dataset.csv
│
├── notebooks/
│   └── loan_risk_analysis.ipynb
│
├── sql/
│   └── loan_risk_queries.sql
│
├── dashboard/
│   └── Financial_Risk_Loan_Analytics_Dashboard.pbix
│
├── models/
│   └── random_forest_model.pkl
│
├── images/
│   ├── executive_dashboard.png
│   └── risk_analysis_dashboard.png
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

# 🔄 Project Workflow

```
Raw Dataset
      │
      ▼
Data Cleaning
      │
      ▼
Exploratory Data Analysis
      │
      ▼
SQL Business Analysis
      │
      ▼
Machine Learning Model
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights
```

---

# 🧹 Data Cleaning

The following preprocessing steps were performed:

- Removed duplicate records
- Handled missing values
- Verified data types
- Checked data consistency
- Performed outlier analysis
- Exported cleaned dataset

---

# 📊 Exploratory Data Analysis

EDA was performed to understand borrower behaviour and loan characteristics.

Analysis included:

- Loan Status Distribution
- Loan Grade Distribution
- Home Ownership Analysis
- Income Distribution
- Loan Amount Distribution
- Interest Rate Distribution
- Loan Intent Analysis
- Employment Length Analysis
- Credit History Analysis
- Correlation Heatmap

---

# 🗄 SQL Business Analysis

SQL was used to answer business-oriented questions such as:

- Total Loan Amount
- Average Loan Amount
- Average Interest Rate
- Default Rate
- Loan Grade Analysis
- Home Ownership Analysis
- Income Analysis
- Loan Purpose Analysis
- Credit History Analysis
- High Risk Borrowers

---

# 🤖 Machine Learning

A **Random Forest Classifier** was trained to predict whether an applicant is likely to default on a loan.

### Steps Performed

- Data preprocessing
- Feature encoding
- Train-test split
- Model training
- Model evaluation
- Model serialization using Pickle

### Model Used

- Random Forest Classifier

---

# 📈 Power BI Dashboard

Two interactive dashboards were created.

---

## Executive Dashboard

![Executive Dashboard](images/executive_dashboard.png)

### KPIs

- Total Applicants
- Total Loan Amount
- Average Loan Amount
- Average Interest Rate
- Default Rate

### Visualizations

- Loan Status Distribution
- Loan Grade Distribution
- Home Ownership Distribution
- Loan Purpose Distribution
- Income Distribution
- Loan Amount Distribution

---

## Risk Analysis Dashboard

![Risk Analysis Dashboard](images/risk_analysis_dashboard.png)

### Visualizations

- Default Rate by Loan Grade
- Default Rate by Home Ownership
- Default Rate by Loan Purpose
- Average Interest Rate by Loan Grade
- Income vs Loan Amount
- Age Distribution of Defaulters

---

# 💡 Key Insights

- Borrowers with lower loan grades have significantly higher default rates.
- Interest rates increase as loan grades become riskier.
- Home ownership has a noticeable impact on repayment behaviour.
- Most applicants belong to the Rent category.
- Higher income borrowers generally receive larger loan amounts.
- Younger borrowers account for a higher proportion of defaults.
- Previous defaults are a strong indicator of future loan risk.

---

# 📌 Business Recommendations

- Apply stricter approval criteria for high-risk loan grades.
- Include employment length in risk evaluation.
- Monitor applicants with previous defaults more closely.
- Use Machine Learning models during loan approval.
- Review interest rate policies for high-risk applicants.

---

# 🚀 Future Improvements

- Compare multiple Machine Learning algorithms.
- Deploy the prediction model using Streamlit.
- Integrate live financial datasets.
- Add predictive analytics to Power BI.
- Perform hyperparameter tuning for better model performance.

---

# 👨‍💻 Author

**Gaurav kumar**

B.Tech Electrical Engineering  
Delhi Technological University (DTU)

---

⭐ If you found this project useful, consider giving the repository a star.
