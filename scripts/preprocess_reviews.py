import pandas as pd

# Load the scraped reviews
input_file = 'reviews.csv'
output_file = 'cleaned_reviews.csv'

try:
    df = pd.read_csv(input_file)

    # Remove duplicates based on 'review' content
    df = df.drop_duplicates(subset=['review'], keep='first')

    # Handle missing values
    df = df.dropna()

    # Normalize dates to ensure consistent format
    df['date'] = pd.to_datetime(df['date'], errors='coerce').dt.strftime('%Y-%m-%d')

    # Ensure ratings are within valid range (1-5)
    df = df[df['rating'].between(1, 5)]

    # Reset index after cleaning
    df = df.reset_index(drop=True)

    # Save the cleaned data
    df.to_csv(output_file, index=False)
    print(f"Cleaned data saved to {output_file} with {len(df)} reviews.")

except FileNotFoundError:
    print(f"Error: {input_file} not found. Please run the scraper first.")
except Exception as e:
    print(f"Error during preprocessing: {e}")