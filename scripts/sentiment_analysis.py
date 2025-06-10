from textblob import TextBlob
import oracledb
import pandas as pd

# Connection as SYS
connection = oracledb.connect(user="sys", password="egkkaoa73a", dsn="DESKTOP-LPK1BP5:1521/XEPDB1", mode=oracledb.SYSDBA)
cursor = connection.cursor()

# Fetch reviews from br_analysis schema
cursor.execute("SELECT review_id, review_text FROM br_analysis.Reviews")
rows = cursor.fetchall()
reviews = [(row[0], row[1]) for row in rows]

# Perform sentiment analysis
sentiment_results = []
for review_id, review_text in reviews:
    blob = TextBlob(review_text)
    polarity = blob.sentiment.polarity  # Range: -1 (negative) to 1 (positive)
    subjectivity = blob.sentiment.subjectivity  # Range: 0 (objective) to 1 (subjective)
    sentiment = "positive" if polarity > 0 else "negative" if polarity < 0 else "neutral"
    sentiment_results.append((review_id, polarity, subjectivity, sentiment))

# Create Sentiment_Analysis table in br_analysis schema
cursor.execute("""
    CREATE TABLE br_analysis.Sentiment_Analysis (
        review_id NUMBER PRIMARY KEY,
        polarity NUMBER,
        subjectivity NUMBER,
        sentiment VARCHAR2(10),
        FOREIGN KEY (review_id) REFERENCES br_analysis.Reviews(review_id)
    )
""")

# Insert sentiment results
cursor.executemany("""
    INSERT INTO br_analysis.Sentiment_Analysis (review_id, polarity, subjectivity, sentiment)
    VALUES (:1, :2, :3, :4)
""", sentiment_results)

connection.commit()
cursor.close()
connection.close()

print("Sentiment analysis completed and stored successfully.")