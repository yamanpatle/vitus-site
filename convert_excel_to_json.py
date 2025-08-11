
import pandas as pd

# Read Excel file
df = pd.read_excel("data/vitus_products_full.xlsx")

# Convert to JSON
df.to_json("data/products.json", orient="records", indent=4, force_ascii=False)

print("✅ products.json updated successfully!")
