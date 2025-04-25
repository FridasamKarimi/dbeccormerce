# 🛍️ E-Commerce Database System - Enhanced Documentation

## 🌟 Project Overview

A comprehensive database solution for online retailers, enabling efficient management of:

- 🏷️ Multi-brand product catalogs with hierarchical categories
- 🎛️ Advanced product variations (colors, sizes, etc.)
- 📦 Real-time inventory tracking at SKU level
- 🖼️ Product image galleries with primary image designation
- 📋 Flexible attribute system for technical specifications

## 🗄️ Database Schema

### Core Tables Structure

| Table | Description | Key Fields |
|-------|-------------|------------|
| `brand` | Product manufacturers | brand_id, brand_name, logo_url |
| `product_category` | Hierarchical product taxonomy | category_id, parent_id, category_name |
| `product` | Base product information | product_id, name, description, base_price |
| `product_variation` | Color/size combinations | variation_id, product_id, color, size |
| `product_item` | Inventory stock units | item_id, variation_id, SKU, stock_quantity |

### Intricate Features
![extended features](https://github.com/user-attachments/assets/36c1b34b-a8d6-465c-8290-960cdc7378e2)


## ✨ Key Features

- **Complete Product Hierarchy**: From brands → products → variations → inventory items
- **Flexible Variations**: Support for multiple option types (color + size combinations)
- **Extended Attributes**: Key-value pairs for technical specifications
- **Image Management**: Multiple images per variation with primary image flag
- **Real-time Inventory**: Stock tracking at individual SKU level
- **Search Optimization**: Designed for fast product filtering and queries

## 🛠️ Installation Guide

### Database Setup

1. Create database:
   ```sql
   CREATE DATABASE ecommerce_db 
     CHARACTER SET utf8mb4 
     COLLATE utf8mb4_unicode_ci;
   ```

2. Import schema:
   ```bash
   mysql -u [username] -p ecommerce_db < sql/schema.sql
   ```

3. Load sample data:
   ```bash
   mysql -u [username] -p ecommerce_db < sql/sample_data.sql
   ```

# 📊 ERD Diagram
![erd](https://github.com/user-attachments/assets/549034ac-3691-4f76-aaa8-514967182a85)
<img width="955" alt="erd2" src="https://github.com/user-attachments/assets/1f9290bc-a4d6-4e29-96ab-89c8dbedbfbd" />



*Complete visualization of table relationships*

## 🔍 Sample Queries

### 1. Available Products with Variations
```sql
SELECT 
    b.brand_name,
    p.product_name,
    pv.color,
    pv.size,
    pi.SKU,
    pi.stock_quantity,
    pi.price
FROM product p
JOIN brand b ON p.brand_id = b.brand_id
JOIN product_variation pv ON p.product_id = pv.product_id
JOIN product_item pi ON pv.variation_id = pi.variation_id
WHERE pi.stock_quantity > 0
ORDER BY b.brand_name, p.product_name;
```

### 2. Product Specifications
```sql
SELECT 
    p.product_name,
    pa.attribute_name,
    pa.attribute_value,
    pa.attribute_unit
FROM product_attribute pa
JOIN product p ON pa.product_id = p.product_id
WHERE p.product_id = 123
ORDER BY pa.attribute_priority;
```

### 3. Product Image Gallery
```sql
SELECT 
    p.product_name,
    pv.color,
    pi.image_url,
    pi.is_primary,
    pi.image_order
FROM product_image pi
JOIN product_variation pv ON pi.variation_id = pv.variation_id
JOIN product p ON pv.product_id = p.product_id
WHERE p.product_id = 456
ORDER BY pv.color, pi.is_primary DESC, pi.image_order;
```

## 👥 Team Collaboration

### Workflow
- **Agile Methodology**: sprints with daily standups
- **Code Reviews**: Mandatory PR reviews before merging


### Tools Stack
| Purpose | Tool |
|---------|------|
| Version Control | GitHub |
| Database Design | dbdiagram.io |
| Visualization | Lucidchart |
| Implementation | MySQL 8.0+ |

 [@Bryan Mwalwala](https://github.com/bryan1028)
[@Zipporah Rehema](https://github.com/zippyrehema123)
 [@Frida Karimi](https://github.com/Fridasamkarimi) 
