import matplotlib.pyplot as plt
import seaborn as sns
import oracledb
import pandas as pd
from wordcloud import WordCloud

# Connection as SYS
connection = oracledb.connect(user="sys", password="egkkaoa73a", dsn="DESKTOP-LPK1BP5:1521/XEPDB1", mode=oracledb.SYSDBA)
cursor = connection.cursor()

# Fetch data with bank names
cursor.execute("SELECT r.review_id, r.review_text, r.rating, s.sentiment, b.bank_name FROM br_analysis.Reviews r JOIN br_analysis.Sentiment_Analysis s ON r.review_id = s.review_id JOIN br_analysis.Banks b ON r.bank_id = b.bank_id")
data = cursor.fetchall()
df = pd.DataFrame(data, columns=['review_id', 'review_text', 'rating', 'sentiment', 'bank_name'])

# Fill missing bank names with placeholder or map to CBE, BOA, Dashen (update with actual mapping)
df['bank_name'] = df['bank_name'].fillna('Unknown').replace({'Unknown': ['CBE', 'BOA', 'Dashen Bank'][hash(str(df.index)) % 3]})
df['rating'] = df['rating'].fillna(0).astype(float)

# Visualization 1: Sentiment Distribution by Bank
plt.figure(figsize=(10, 6))
sns.countplot(data=df, x='sentiment', hue='bank_name', palette='viridis')
plt.title('Sentiment Distribution Across Banks')
plt.xlabel('Sentiment')
plt.ylabel('Count')
plt.legend(title='Bank')
plt.savefig('visuals/sentiment_distribution.png')
plt.close()

# Visualization 2: Rating Distribution by Bank
plt.figure(figsize=(10, 6))
sns.histplot(data=df, x='rating', hue='bank_name', multiple='stack', palette='magma', binwidth=1)
plt.title('Rating Distribution Across Banks')
plt.xlabel('Rating')
plt.ylabel('Frequency')
plt.savefig('visuals/rating_distribution.png')
plt.close()

# Visualization 3: Word Cloud for Reviews
text = ' '.join(df['review_text'].dropna().astype(str))
wordcloud = WordCloud(width=800, height=400, background_color='white', min_font_size=10).generate(text)
plt.figure(figsize=(12, 6))
plt.imshow(wordcloud, interpolation='bilinear')
plt.title('Keyword Cloud from Bank Reviews')
plt.axis('off')
plt.savefig('visuals/keyword_cloud.png')
plt.close()

# Visualization 4: Sentiment Trend Over Review IDs
plt.figure(figsize=(10, 6))
df_sorted = df.sort_values('review_id')
sns.lineplot(data=df_sorted, x='review_id', y=df_sorted['sentiment'].map({'positive': 1, 'neutral': 0, 'negative': -1}), hue='bank_name', palette='cool')
plt.title('Sentiment Trend Over Reviews')
plt.xlabel('Review ID')
plt.ylabel('Sentiment (1: Positive, 0: Neutral, -1: Negative)')
plt.savefig('visuals/polarity_boxplot.png')
plt.savefig('visuals/sentiment_trend.png')
plt.close()

# Visualization 5: Box Plot of Polarity by Bank
plt.figure(figsize=(10, 6))
sns.boxplot(data=df, x='bank_name', y=df_sorted['sentiment'].map({'positive': 1, 'neutral': 0, 'negative': -1}), palette='pastel')
plt.title('Polarity Distribution by Bank')
plt.xlabel('Bank')
plt.ylabel('Sentiment Score')
plt.xticks(rotation=45)
plt.savefig('visuals/polarity_boxplot.png')
plt.close()

# Save data for tables
sentiment_counts = df['sentiment'].value_counts().reset_index()
sentiment_counts.columns = ['Sentiment', 'Count']
sentiment_counts.to_csv('sentiment_counts.csv', index=False)

bank_sentiment = df.groupby('bank_name')['sentiment'].value_counts().unstack(fill_value=0).reset_index()
bank_sentiment.to_csv('bank_sentiment.csv', index=False)

cursor.close()
connection.close()

print("Visualizations and data saved successfully.")