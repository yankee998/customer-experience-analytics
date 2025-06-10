#  🎆 Customer Experience Analytics Repository 🎆
  
Welcome to the Customer Experience Analytics project! 🌍 This repository, hosted at https://github.com/yankee998, is a comprehensive solution for analyzing customer reviews of Ethiopian banks—Commercial Bank of Ethiopia (CBE), Bank of Abyssinia (BOA), and Dashen Bank. Built with Python 3.11.9, Oracle Database 21c, and advanced visualization tools, this project offers actionable insights. Dive into this interactive guide to explore every detail! 🚀

# 🌟 Project Overview

This repository chronicles a step-by-step journey to transform raw review data into strategic insights. Each task is committed to a dedicated branch, ensuring a clear development trail. Click below to explore! 📋

Task 1: Data Collection and Cleaning ✅  
Gathered and processed 300 reviews.


Task 2: Database Setup ✅  
Configured Oracle schema for storage.


Task 3: Store Cleaned Data ✅  
Exported data to bank_reviews_dump.sql.


Task 4: Insights and Recommendations ✅  
Analyzed sentiments, compared banks, and suggested improvements.




# 🔍 Click to Unfold Task Details!

- **Task 1**: Used pandas to clean CSV data, removing duplicates and noise.
- **Task 2**: Set up Oracle XE with `Banks`, `Reviews`, and `Sentiment_Analysis` tables on `DESKTOP-LPK1BP5:1521`.
- **Task 3**: Generated SQL dump for data persistence.
- **Task 4**: Performed sentiment analysis with `TextBlob`, created 5 visualizations, and derived insights for CBE, BOA, and Dashen Bank.



# 📂 Repository Structure

Navigate the codebase with this interactive tour! 🗺️ Each file plays a critical role in the analytics pipeline.

insert_reviews.py: 📝 Inserts cleaned review data into Oracle.
sentiment_analysis.py: 🤖 Analyzes sentiments and stores results.
insights_visuals.py: 📊 Generates visualizations and data for insights.
bank_reviews_dump.sql: 💾 SQL dump of Banks and Reviews tables.
requirements.txt: 📋 Lists dependencies for reproducibility.
README.md: 📖 You’re here! Your interactive project hub.


# 🛠️ Click to Explore Files in Depth!

- **Run `insert_reviews.py`:** Populate the database with cleaned data.
  - Command: `python insert_reviews.py`
- **Execute `sentiment_analysis.py`:** Analyze sentiments and save to `Sentiment_Analysis`.
  - Command: `python sentiment_analysis.py`
- **Use `insights_visuals.py`:** Generate plots and CSV data.
  - Command: `python insights_visuals.py`
- **Review `bank_reviews_dump.sql`:** Restore database schema and data.
  - Command: `sqlplus sys as sysdba @bank_reviews_dump.sql`
- **Install Dependencies:** Ensure all libraries are ready.
  - Command: `pip install -r requirements.txt`



🚀 Getting Started
Ready to dive in? Follow this step-by-step guide to set up and run the project! 🛠️
## 🎯 Prerequisites
Ensure these tools are installed and configured! 🔧

Python 3.11.9: Verify with python --version in PowerShell.
Download


Oracle Database 21c XE: Running locally on DESKTOP-LPK1BP5:1521 with listener active.
Download
Check status: lsnrctl status


Git: For version control. Verify with git --version.
Download



# 🖥️ Installation and Setup

Clone the Repository:git clone https://github.com/yankee998/Customer-Experience-Analytics.git
cd Customer-Experience-Analytics


Install Dependencies:pip install -r requirements.txt


Configure Oracle:
Ensure the listener is running.
Update dsn in scripts (e.g., DESKTOP-LPK1BP5:1521/XEPDB1) with your host if different.
Set SYS password in scripts.



# 🎮 Running the Project

Execute Scripts:
python insert_reviews.py to load data.
python sentiment_analysis.py to analyze sentiments.
python insights_visuals.py to generate visuals.


Verify Results:
Connect to Oracle: sqlplus sys as sysdba
Switch container: ALTER SESSION SET CONTAINER = XEPDB1;
Query: SELECT * FROM br_analysis.Sentiment_Analysis;




# 📋 Click for Troubleshooting Tips!

- **Error: ORA-01017**: Recreate `br_analysis` user with `CREATE USER br_analysis IDENTIFIED BY newpassword123;`.
- **CI/CD Failure**: Check logs, fix locally, and retry the pull request.
- **Missing Visuals**: Ensure `insights_visuals.py` runs successfully.



## 🌈 Features
Discover the power of this project! ✨

Sentiment Analysis: Classifies 300 reviews as positive, neutral, or negative using TextBlob.
Bank Comparison: Analyzes CBE, BOA, and Dashen Bank performance.
Visualizations: 5 plots (bar, histogram, word cloud, line, boxplot) for insights.
Recommendations: Practical improvements like budgeting tools and crash reporting.


## 📈 Click for Future Roadmap!

- **Enhanced Visuals:** Add interactive dashboards with Plotly.
- **Expanded Data:** Include more banks and review sources.
- **Machine Learning:** Predict sentiment trends with ML models.
- **User Feedback Loop:** Integrate real-time feedback.



## 📊 Key Insights

Drivers: Fast customer service and user-friendly interfaces.
Pain Points: App crashes and slow transactions.
Bank Performance: CBE (60% positive), Dashen (50%), BOA (40%).
Recommendations: Budgeting tool and crash reporting system.


## 🔎 Click to See Evidence!

- **Driver Example:** Review 2 (polarity 0.256) praises quick support.
- **Pain Point Example:** Review 150 (polarity -1.0) reports crashes.
- **Comparison Data:** Based on `bank_sentiment.csv` counts.



🤝 Contributing
Join the journey! 🌱 Contribute to this open-source project.

Fork the repository.
Create a feature branch: git checkout -b feature-branch.
Commit changes: git commit -m "Add new feature".
Push and submit a pull request.


Note: Test CI/CD locally to avoid failures!


##  Click for Contribution Guidelines!

- Follow PEP 8 for Python code.
- Add unit tests for new features.
- Update `README.md` and `requirements.txt` as needed.



## ❓ Frequently Asked Questions

Q: Why Oracle?A: Chosen for its robust data management capabilities.
Q: How to Update Bank Data?A: Edit insert_reviews.py and rerun.
Q: Visuals Not Showing?A: Ensure insights_visuals.py generates PNG files.


## 💡 Click for More FAQs!

- **Q: CI/CD Issues?** Contact me with logs.
- **Q: Missing Dashen Bank?** Ensure `Banks` table includes it.



🎨 Visual Guide



Task
Status
Description



Task 1: Data Prep
✅ Done
Cleaned 300 reviews.


Task 2: DB Setup
✅ Done
Configured Oracle schema.


Task 3: Data Store
✅ Done
Exported to SQL dump.


Task 4: Insights
✅ Done
Analyzed sentiments, visualized data.



# 📬 Contact
Have questions or suggestions? Reach out!  

GitHub: yankee998  
Email: yaredgenanaw99@gmail.com

Happy exploring and contributing! 🌟
