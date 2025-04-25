# E-Commerce Database Data Flow
# 1. Product Creation flow. 👨🏽‍💻
![productcreationflow](https://github.com/user-attachments/assets/bf71da68-abc9-42e0-8b7b-c8742e2b1e8a)
our ecommerce database enables a merchant to create a brand, the respective category the brand falls under and to add products. Variations in color and size, create variety for the diverse pool of customers we serve. Creating Product items enables us to see in real time how much product is available, we can then use this as an incentive to buyers, hurry while stocks last! 
# 2. Price Calculation flow. 🟰
   ![priceoverride](https://github.com/user-attachments/assets/aa4632c5-4cd0-44d3-9398-ae3fefd36ec3)
Our ecommerce database enables the merchants to adjust their prices whenever they choose ie clearance sale, addition of a limited edition item that is so special and so rare to get your hands on. Oh and bundle deals 3 for $10, what a steal!...you get the gist. Price override clearly identifies which items have special pricing and which items are available at the base_price.
# 3. Inventory management. 🚛
![inventory management](https://github.com/user-attachments/assets/1fea7bb9-d3c5-4d88-9649-db01581e4b1a)
Our database enables real time inventory management. The world has changed and a just-in-time inventory system exhibits that. If inventory supply is dwindling, reorders are added to keep giving the customers what they want!
# 📊 Sample data journey
Scenario: Adding "Nike Air Max" shoes and maybe just maybe we can be like Jordan 🏀
1. Brand
   INSERT INTO brand VALUES (1, 'Nike', 'Athletic footwear');
2. Category
   INSERT INTO product_category VALUES (5, 'Footwear', 'Shoes', NULL);
3. Product
   INSERT INTO product VALUES (101, 'Air Max', 1, 5, 120.00);
4. Variation
   /* Colors */
   INSERT INTO color VALUES (10, 'Infrared', '#FF4D00');

   /* Sizes */
   INSERT INTO size_option VALUES (21, 2, 'US 10');

   /* Variation */
   INSERT INTO product_variation VALUES (501, 101, 10, 21);
5. Inventory
   /* Special pricing for limited edition */
   INSERT INTO product_item VALUES (1001, 501, 50, 150.00);

# 🔗 Critical Relationships

Relationship	         Flow Direction	      Example
Brand → Product	        1:N	               Nike → (Air Max, Air Force)
Product → Variation	     1:N	               Air Max → (Red/Size 10, Blue/Size 9)
Variation → Item	        1:1	               Red/Size 10 → Stock #1001
Category → Subcategory	 Self-Reference	   Footwear → Running Shoes

TL;DR; One brand can have multiple products (one to many) Nike has a lot of shoes!brand is the parent with a lot of children. One product can also have multiple variations, we all have different sizes of feet & different tastes too, Red isn't my colour. Each variation points to exactly one inventory item - available in our warehouse just for you. Category - subcategory (self-reference) This is the everything store, that provides navigation ie think of Amazon. 
       

