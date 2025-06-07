import pandas as pd
from transformers import pipeline
import spacy
from sklearn.feature_extraction.text import TfidfVectorizer
import numpy as np
from collections import defaultdict

# Load preprocessed reviews
input_file = 'cleaned_reviews.csv'  # Adjusted for structure
output_file = 'analyzed_reviews.csv'  # Adjusted for structure

# Initialize models
sentiment_analyzer = pipeline("sentiment-analysis", model="distilbert-base-uncased-finetuned-sst-2-english")
nlp = spacy.load("en_core_web_sm")

# Load data
df = pd.read_csv(input_file)

# Sentiment Analysis
def analyze_sentiment(text):
    result = sentiment_analyzer(text)[0]
    return result['label'], result['score']

df['sentiment_label'], df['sentiment_score'] = zip(*df['review'].apply(analyze_sentiment))

# Aggregate sentiment by bank and rating
sentiment_agg = df.groupby(['bank', 'rating']).agg({'sentiment_score': 'mean'}).reset_index()
print("Sentiment aggregation by bank and rating:\n", sentiment_agg)

# Thematic Analysis: Keyword Extraction with TF-IDF
def extract_keywords(texts, top_n=10):
    tfidf = TfidfVectorizer(stop_words='english', max_features=1000)
    tfidf_matrix = tfidf.fit_transform(texts)
    feature_names = tfidf.get_feature_names_out()
    tfidf_scores = tfidf_matrix.toarray().sum(axis=0)
    keyword_scores = dict(zip(feature_names, tfidf_scores))
    return sorted(keyword_scores.items(), key=lambda x: x[1], reverse=True)[:top_n]

# Group by bank for thematic analysis
themes = defaultdict(list)
for bank in df['bank'].unique():
    bank_reviews = df[df['bank'] == bank]['review'].tolist()
    keywords = extract_keywords(bank_reviews)
    themes[bank] = [kw[0] for kw in keywords]

# Manual/Rule-Based Clustering into 3-5 Themes per Bank
theme_mapping = {
    'Commercial Bank of Ethiopia': {
        'Account Access Issues': ['login', 'error', 'access'],
        'Transaction Performance': ['slow', 'transfer', 'load'],
        'User Interface': ['ui', 'design', 'interface'],
        'Customer Support': ['support', 'help', 'service'],
        'Feature Requests': ['update', 'new', 'feature']
    },
    'Bank of Abyssinia': {
        'Account Access Issues': ['login', 'error', 'access'],
        'Transaction Performance': ['slow', 'transfer', 'load'],
        'User Interface': ['ui', 'design', 'interface'],
        'Customer Support': ['support', 'help', 'service'],
        'Reliability': ['crash', 'bug', 'fail']
    },
    'Dashen Bank': {
        'Transaction Performance': ['slow', 'transfer', 'load'],
        'User Interface': ['ui', 'design', 'interface'],
        'Customer Support': ['support', 'help', 'service'],
        'Feature Requests': ['update', 'new', 'feature'],
        'Security': ['secure', 'safety', 'password']
    }
}

# Assign themes to reviews
def assign_themes(review, bank):
    review_doc = nlp(review.lower())
    assigned_themes = []
    for theme, keywords in theme_mapping[bank].items():
        if any(token.text in keywords for token in review_doc):
            assigned_themes.append(theme)
    return ', '.join(assigned_themes) if assigned_themes else 'Other'

df['themes'] = df.apply(lambda row: assign_themes(row['review'], row['bank']), axis=1)

# Preprocessing Pipeline (tokenization, stop-word removal done in TF-IDF)
# Lemmatization optional - included for better theme matching
def lemmatize_text(text):
    doc = nlp(text)
    return ' '.join([token.lemma_ for token in doc if not token.is_stop])

df['lemmatized_review'] = df['review'].apply(lemmatize_text)

# Save results
df.to_csv(output_file, index=False)
print(f"Analyzed data saved to {output_file} with {len(df)} reviews.")

# Print sample themes per bank
for bank, theme_list in themes.items():
    print(f"Top keywords for {bank}: {theme_list[:5]}")