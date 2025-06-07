from google_play_scraper import reviews
import pandas as pd

# Define apps with updated IDs
apps = {
    'com.combanketh.mobilebanking': 'Commercial Bank of Ethiopia',
    'com.boa.boaMobileBanking': 'Bank of Abyssinia',
    'com.dashen.dashensuperapp': 'Dashen Bank'
}

# Scrape reviews
all_reviews = []
for app_id, bank_name in apps.items():
    try:
        result = reviews(
            app_id,
            lang='en',
            country='et',
            sort='newest',
            count=100
        )
        if isinstance(result, tuple) and len(result) >= 1:
            reviews_data, continuation_token = result
            if isinstance(reviews_data, list):
                for review in reviews_data:
                    all_reviews.append({
                        'review': review.get('content', 'No content'),
                        'rating': review.get('score', 0),
                        'date': review.get('at', pd.Timestamp.now()).strftime('%Y-%m-%d'),
                        'bank': bank_name,
                        'source': 'Google Play'
                    })
            else:
                print(f"Unexpected data for {bank_name}: {type(reviews_data)} - {str(reviews_data)[:200]}...")
        
            while continuation_token and len(all_reviews) < 1000:
                result = reviews(
                    app_id,
                    lang='en',
                    country='et',
                    sort='newest',
                    count=100
                )
                reviews_data, continuation_token = result
                if isinstance(reviews_data, list):
                    for review in reviews_data:
                        all_reviews.append({
                            'review': review.get('content', 'No content'),
                            'rating': review.get('score', 0),
                            'date': review.get('at', pd.Timestamp.now()).strftime('%Y-%m-%d'),
                            'bank': bank_name,
                            'source': 'Google Play'
                        })
                else:
                    print(f"Paginated unexpected data for {bank_name}: {type(reviews_data)} - {str(reviews_data)[:200]}...")
                    break
    except Exception as e:
        print(f"Error scraping {bank_name}: {e}")
        continue

# Save to CSV
if all_reviews:
    df = pd.DataFrame(all_reviews)
    df.to_csv('reviews.csv', index=False)
else:
    print("No reviews scraped. Check app IDs and network.")