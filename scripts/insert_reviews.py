import oracledb
import pandas as pd

# Connection
connection = oracledb.connect(user="br_analysis", password="analysispass123", dsn="DESKTOP-LPK1BP5:1521/XEPDB1")
cursor = connection.cursor()

# Load CSV
df = pd.read_csv("cleaned_reviews.csv")

# Map bank names to bank_id
bank_map = {"Commercial Bank of Ethiopia": 1, "Bank of Abyssinia": 2, "Dashen Bank": 3}

# Insert data
for index, row in df.iterrows():
    cursor.execute("""
        INSERT INTO Reviews (review_id, bank_id, review_text, rating, review_date, source)
        VALUES (:1, :2, :3, :4, TO_DATE(:5, 'YYYY-MM-DD'), :6)
    """, (index+1, bank_map[row['bank']], row['review'], row['rating'], row['date'], row['source']))

connection.commit()
cursor.close()
connection.close()