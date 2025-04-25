# 🛍️ E-Commerce Database System

## 📝 Table of Contents
- [Project Overview](#-project-overview)
- [Database Schema](#-database-schema)
- [Key Features](#-key-features)
- [Installation](#-installation)
- [Team Collaboration](#-team-collaboration)
- [ER Diagram](#-er-diagram)
- [Sample Queries](#-sample-queries)

## 🌟 Project Overview
A complete e-commerce database system designed for online retail operations, featuring:
- 🏷️ Product catalog with brands and categories
- 🎛️ Variation management (colors, sizes)
- 📦 Inventory tracking
- 🖼️ Product images
- 📋 Extended attributes system

## 🗄️ Database Schema

### Core Tables
| Table | Description |
|-------|-------------|
| `brand` | Product manufacturers |
| `product_category` | Hierarchical categories |
| `product` | Base product information |
| `product_variation` | Color/size combinations |
| `product_item` | Inventory items |

### Extended Features
```mermaid
flowchart LR
    A[Brand] --> B[Product]
    B --> C[Variations]
    C --> D[Inventory]
    B --> E[Attributes]
    C --> F[Images]

    ✨ Key Features
Complete product hierarchy from brands to SKUs

Multiple variation options (colors + sizes)

Attribute system for technical specifications

Image management with primary image flag

Stock tracking at item level

🛠️ Installation
Create database:

sql
CREATE DATABASE ecommerce_db;
USE ecommerce_db;
Execute schema:

bash
mysql -u [username] -p ecommerce_db < schema.sql
Load sample data :

bash
mysql -u [username] -p ecommerce_db < sample_data.sql
👥 Team Collaboration
Our Approach
🔄 Regular sync meetings

📚 GitHub for version control

🔍 Peer code reviews

📝 Shared documentation

Tools Used
dbdiagram.io for ERD design

MySQL for implementation

Lucidchart for flow diagrams

GitHub for collaboration

📊 ER Diagram
ER Diagram
Complete entity-relationship diagram

🔍 Sample Queries
Find products in stock:

sql
SELECT p.product_name, pi.stock_quantity 
FROM product p
JOIN product_variation pv ON p.product_id = pv.product_id
JOIN product_item pi ON pv.variation_id = pi.variation_id
WHERE pi.stock_quantity > 0;
Get product attributes:

sql
SELECT pa.attribute_name, pa.attribute_value
FROM product_attribute pa
WHERE pa.product_id = 101;

📂 Repository Structure
/ecommerce_db
├── /docs
│   ├── erd.png                 # Visual diagram
│   └── data_flow.md            # Process documentation
├── /sql
│   ├── schema.sql              # Complete DB schema
│   └── sample_data.sql         # Example data
└── README.md                   # This file