sequenceDiagram
    Merchant->>+Database: Create Brand
    Merchant->>+Database: Create Category
    Merchant->>Database: Add Product (links to Brand/Category)
    Database->>Product: Stores base_price, description
    Merchant->>Database: Add Variations (Color/Size combos)
    Database->>Product_Variation: Stores possible configurations
    Merchant->>Database: Create Product Items
    Database->>Product_Item: Sets stock_quantity + price_override
