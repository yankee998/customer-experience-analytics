import matplotlib.pyplot as plt
import seaborn as sns
import oracledb
import pandas as pd
from wordcloud import WordCloud

# Connection as SYS
connection = oracledb.connect(user="sys", password="egkkaoa73a", dsn="DESKTOP-LPK1BP5:1521/XEPDB1", mode=oracledb.SYSDBA)
cursor = connection.cursor()

# Fetch data
cursor.execute("SELECT r.review_text, r.rating, s.sentiment, b.bank_name FROM br_analysis.Reviews r JOIN br_analysis.Sentiment_Analysis s ON r.review_id = s.review_id JOIN br_analysis.Banks b ON r.bank_id = b.bank_id")
data = cursor.fetchall()
df = pd.DataFrame(data, columns=['review_text', 'rating', 'sentiment', 'bank_name'])

# Visualization 1: Sentiment Distribution Bar Chart
plt.figure(figsize=(8, 6))
sns.countplot(data=df, x='sentiment', hue='bank_name', palette='viridis')
plt.title('Sentiment Distribution by Bank')
plt.xlabel('Sentiment')
plt.ylabel('Count')
plt.savefig('visuals/sentiment_distribution.png')
plt.close()

# Visualization 2: Rating Distribution
plt.figure(figsize=(8, 6))
sns.histplot(data=df, x='rating', hue='bank_name', multiple='stack', palette='magma')
plt.title('Rating Distribution by Bank')
plt.xlabel('Rating')
plt.ylabel('Frequency')
plt.savefig('visuals/rating_distribution.png')
plt.close()

# Visualization 3: Word Cloud for Reviews
text = ' '.join(df['review_text'].dropna())
wordcloud = WordCloud(width=800, height=400, background_color='white').generate(text)
plt.figure(figsize=(10, 5))
plt.imshow(wordcloud, interpolation='bilinear')
plt.title('Keyword Cloud from Reviews')
plt.axis('off')
plt.savefig('visuals/keyword_cloud.png')
plt.close()

# Save data for table
sentiment_counts = df['sentiment'].value_counts().reset_index()
sentiment_counts.columns = ['Sentiment', 'Count']
sentiment_counts.to_csv('sentiment_counts.csv', index=False)

cursor.close()
connection.close()

print("Visualizations and data saved successfully.")