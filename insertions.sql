-- 🔖 Brands - brands with founding years and their respective websites
INSERT INTO brand (brand_name, description, logo_url, website_url, founded_year) VALUES
('ThreadCraft', 'Premium quality clothing with artisanal craftsmanship', 'https://example.com/logos/threadcraft.png', 'https://threadcraft.com', 1995),
('TechNova', 'Innovative electronics for the modern lifestyle', 'https://example.com/logos/technova.png', 'https://technova.com', 2010),
('GreenLiving', 'Eco-friendly home products for sustainable living', 'https://example.com/logos/greenliving.png', 'https://greenliving.com', 2008),
('FreshHarvest', 'Organic farm produce delivered to your doorstep', 'https://example.com/logos/freshharvest.png', 'https://freshharvest.com', 2012),
('KitchenMaster', 'Professional-grade kitchen appliances for home chefs', 'https://example.com/logos/kitchenmaster.png', 'https://kitchenmaster.com', 1987),
('UrbanRider', 'Urban fashion for the modern commuter', 'https://example.com/logos/urbanrider.png', 'https://urbanrider.com', 2015),
('SoundScape', 'Premium audio equipment for audiophiles', 'https://example.com/logos/soundscape.png', 'https://soundscape.com', 2003);

-- 🗂️ Product Categories - Hierarchical categories
INSERT INTO product_category (category_name, description, parent_category_id) VALUES
('Clothing', 'Apparel for all occasions', NULL),
('Men''s Clothing', 'Fashion for men', 1),
('Women''s Clothing', 'Fashion for women', 1),
('Electronics', 'Devices and gadgets', NULL),
('Audio', 'Sound equipment', 4),
('Home & Kitchen', 'Products for your home', NULL),
('Groceries', 'Food and beverages', NULL),
('Fresh Produce', 'Fruits and vegetables', 7),
('Appliances', 'Home appliances', NULL),
('Kitchen Appliances', 'Appliances for cooking', 9);

-- 🎨 Colors - A diverse set of colors
INSERT INTO color (color_name, hex_code) VALUES
('Midnight Black', '#000000'),
('Arctic White', '#FFFFFF'),
('Crimson Red', '#DC143C'),
('Royal Blue', '#4169E1'),
('Emerald Green', '#50C878'),
('Sunflower Yellow', '#FFD700'),
('Rose Gold', '#B76E79'),
('Charcoal Grey', '#36454F'),
('Denim Blue', '#1560BD'),
('Coral Pink', '#F88379'),
('Olive Green', '#808000'),
('Lavender', '#E6E6FA');

-- 📏 Size Categories - specific categories based on sizes
INSERT INTO size_category (category_name, description) VALUES
('Men''s Clothing', 'Standard sizes for men''s apparel'),
('Women''s Clothing', 'Standard sizes for women''s apparel'),
('Shoes (US)', 'US shoe sizing'),
('Shoes (EU)', 'European shoe sizing'),
('Volume (ml)', 'Liquid volume measurements'),
('Weight (g)', 'Product weight measurements'),
('One Size', 'Products that come in one size only');

-- 📐 Size Options - size options so that no one is left out
INSERT INTO size_option (size_category_id, size_label, size_order) VALUES
(1, 'XS', 1), (1, 'S', 2), (1, 'M', 3), (1, 'L', 4), (1, 'XL', 5), (1, 'XXL', 6),
(2, 'XS', 1), (2, 'S', 2), (2, 'M', 3), (2, 'L', 4), (2, 'XL', 5), (2, 'XXL', 6),
(3, '6', 1), (3, '7', 2), (3, '8', 3), (3, '9', 4), (3, '10', 5), (3, '11', 6), (3, '12', 7),
(4, '39', 1), (4, '40', 2), (4, '41', 3), (4, '42', 4), (4, '43', 5), (4, '44', 6), (4, '45', 7),
(5, '250ml', 1), (5, '500ml', 2), (5, '750ml', 3), (5, '1000ml', 4),
(6, '100g', 1), (6, '250g', 2), (6, '500g', 3), (6, '1kg', 4),
(7, 'One Size', 1);

-- 📦 Products - products with ultra specific descriptions
INSERT INTO product (product_name, brand_id, category_id, base_price, description) VALUES
('Premium Oxford Shirt', 1, 2, 59.99, '100% cotton button-down shirt with reinforced stitching'),
('Noise-Canceling Headphones', 2, 5, 299.99, 'Wireless headphones with 30-hour battery life and active noise cancellation'),
('Organic Cotton Throw Blanket', 3, 6, 89.95, 'Handwoven blanket made from 100% organic cotton'),
('Organic Strawberries 500g', 4, 8, 6.99, 'Sweet, juicy strawberries grown without pesticides'),
('Professional Stand Mixer', 5, 10, 449.99, '600-watt mixer with 10-speed control and stainless steel bowl'),
('Slim Fit Chino Pants', 6, 2, 49.99, 'Versatile pants with stretch fabric for all-day comfort'),
('Wireless Earbuds Pro', 7, 5, 179.99, 'True wireless earbuds with 24-bit audio and 8-hour battery'),
('Organic Avocados 4-pack', 4, 8, 5.49, 'Creamy Hass avocados, perfect for guacamole or toast'),
('Cast Iron Skillet', 3, 6, 39.99, 'Pre-seasoned cast iron skillet for even heat distribution'),
('Canvas Backpack', 6, 1, 79.99, 'Durable water-resistant backpack with laptop compartment');

-- 🔄 Product Variations - we have something for everybody
INSERT INTO product_variation (product_id, color_id, size_option_id, sku) VALUES
-- Oxford Shirt - multiple sizes and colors
(1, 1, 3, 'TC-OX-BLK-M'), (1, 1, 4, 'TC-OX-BLK-L'), 
(1, 4, 3, 'TC-OX-BLU-M'), (1, 4, 4, 'TC-OX-BLU-L'),
-- Headphones - color variations only
(2, 1, 17, 'TN-HP-BLK'), (2, 2, 17, 'TN-HP-WHT'), (2, 7, 17, 'TN-HP-RGD'),
-- Throw Blanket - color variations
(3, 4, 17, 'GL-TH-BLU'), (3, 5, 17, 'GL-TH-GRN'), (3, 9, 17, 'GL-TH-DNM'),
-- Strawberries - one variation
(4, NULL, 17, 'FH-STRAW-500G'),
-- Stand Mixer - color variations
(5, 1, 17, 'KM-MX-BLK'), (5, 2, 17, 'KM-MX-WHT'), (5, 10, 17, 'KM-MX-PNK'),
-- Chino Pants - sizes and colors
(6, 1, 3, 'UR-CH-BLK-32'), (6, 1, 4, 'UR-CH-BLK-34'), (6, 8, 3, 'UR-CH-GRY-32'), (6, 8, 4, 'UR-CH-GRY-34'),
-- Wireless Earbuds - colors
(7, 1, 17, 'SS-EB-BLK'), (7, 2, 17, 'SS-EB-WHT'),
-- Avocados - one variation
(8, NULL, 17, 'FH-AVOC-4PK'),
-- Cast Iron Skillet - one variation
(9, NULL, 17, 'GL-CIS-10IN'),
-- Backpack - colors
(10, 1, 17, 'UR-BP-BLK'), (10, 8, 17, 'UR-BP-GRY'), (10, 4, 17, 'UR-BP-BLU');

-- 🧾 Product Items - Stock quantities and occasional price overrides to improve margins
INSERT INTO product_item (variation_id, stock_quantity, price_override, weight_grams) VALUES
-- Oxford Shirts
(1, 45, NULL, 350), (2, 32, NULL, 350), (3, 28, NULL, 350), (4, 36, NULL, 350),
-- Headphones
(5, 15, NULL, 280), (6, 22, 279.99, 280), (7, 18, NULL, 280),
-- Throw Blankets
(8, 12, NULL, 1200), (9, 8, 84.95, 1200), (10, 10, NULL, 1200),
-- Strawberries
(11, 150, NULL, 500),
-- Stand Mixers
(12, 7, NULL, 5800), (13, 5, 429.99, 5800), (14, 3, NULL, 5800),
-- Chino Pants
(15, 28, NULL, 450), (16, 24, NULL, 450), (17, 19, NULL, 450), (18, 21, NULL, 450),
-- Wireless Earbuds
(19, 35, NULL, 60), (20, 42, NULL, 60),
-- Avocados
(21, 200, NULL, 600),
-- Cast Iron Skillet
(22, 25, 34.99, 2500),
-- Backpacks
(23, 18, NULL, 900), (24, 14, NULL, 900), (25, 16, 74.99, 900);

-- 🖼️ Product Images - Images that improve buyer trust
INSERT INTO product_image (product_item_id, image_url, is_primary, alt_text) VALUES
-- Oxford Shirt
(1, 'https://example.com/products/oxford-black-1.jpg', TRUE, 'Black Oxford Shirt front view'),
(1, 'https://example.com/products/oxford-black-2.jpg', FALSE, 'Black Oxford Shirt detail'),
(2, 'https://example.com/products/oxford-black-3.jpg', TRUE, 'Black Oxford Shirt front view'),
(3, 'https://example.com/products/oxford-blue-1.jpg', TRUE, 'Blue Oxford Shirt front view'),
(4, 'https://example.com/products/oxford-blue-2.jpg', TRUE, 'Blue Oxford Shirt front view'),
-- Headphones
(5, 'https://example.com/products/headphones-black.jpg', TRUE, 'Black Noise-Canceling Headphones'),
(6, 'https://example.com/products/headphones-white.jpg', TRUE, 'White Noise-Canceling Headphones'),
(7, 'https://example.com/products/headphones-rosegold.jpg', TRUE, 'Rose Gold Noise-Canceling Headphones'),
-- Throw Blankets
(8, 'https://example.com/products/blanket-blue.jpg', TRUE, 'Blue Organic Cotton Throw Blanket'),
(9, 'https://example.com/products/blanket-green.jpg', TRUE, 'Green Organic Cotton Throw Blanket'),
(10, 'https://example.com/products/blanket-denim.jpg', TRUE, 'Denim Organic Cotton Throw Blanket'),
-- Strawberries
(11, 'https://example.com/products/strawberries.jpg', TRUE, 'Fresh Organic Strawberries'),
-- Stand Mixers
(12, 'https://example.com/products/mixer-black.jpg', TRUE, 'Black Stand Mixer'),
(13, 'https://example.com/products/mixer-white.jpg', TRUE, 'White Stand Mixer'),
(14, 'https://example.com/products/mixer-pink.jpg', TRUE, 'Pink Stand Mixer'),
-- Chino Pants
(15, 'https://example.com/products/chino-black-32.jpg', TRUE, 'Black Slim Fit Chino Pants'),
(16, 'https://example.com/products/chino-black-34.jpg', TRUE, 'Black Slim Fit Chino Pants'),
(17, 'https://example.com/products/chino-gray-32.jpg', TRUE, 'Gray Slim Fit Chino Pants'),
(18, 'https://example.com/products/chino-gray-34.jpg', TRUE, 'Gray Slim Fit Chino Pants'),
-- Wireless Earbuds
(19, 'https://example.com/products/earbuds-black.jpg', TRUE, 'Black Wireless Earbuds'),
(20, 'https://example.com/products/earbuds-white.jpg', TRUE, 'White Wireless Earbuds'),
-- Avocados
(21, 'https://example.com/products/avocados.jpg', TRUE, 'Organic Hass Avocados'),
-- Cast Iron Skillet
(22, 'https://example.com/products/skillet.jpg', TRUE, 'Cast Iron Skillet'),
-- Backpacks
(23, 'https://example.com/products/backpack-black.jpg', TRUE, 'Black Canvas Backpack'),
(24, 'https://example.com/products/backpack-gray.jpg', TRUE, 'Gray Canvas Backpack'),
(25, 'https://example.com/products/backpack-blue.jpg', TRUE, 'Blue Canvas Backpack');

-- 📚 Attribute Categories
INSERT INTO attribute_category (name, description) VALUES
('Physical Attributes', 'Physical characteristics of the product'),
('Technical Specifications', 'Technical details and specifications'),
('Nutritional Information', 'Nutrition facts for food products'),
('Care Instructions', 'How to care for and maintain the product'),
('Dimensions', 'Product measurements and size'),
('Materials', 'What the product is made from');

-- 🧪 Attribute Types
INSERT INTO attribute_type (type_name) VALUES
('Text'),
('Number'),
('Boolean'),
('Decimal'),
('Date');

-- 🧵 Product Attributes - More detailed attributes
INSERT INTO product_attribute (product_id, attribute_category_id, attribute_type_id, attribute_name, attribute_value) VALUES
-- Oxford Shirt
(1, 6, 1, 'Material', '100% Egyptian Cotton'),
(1, 4, 1, 'Care Instructions', 'Machine wash cold, tumble dry low'),
(1, 5, 1, 'Fit', 'Regular Fit'),
(1, 5, 1, 'Collar Type', 'Button-Down'),
-- Headphones
(2, 2, 2, 'Battery Life (hours)', '30'),
(2, 2, 1, 'Connectivity', 'Bluetooth 5.0'),
(2, 2, 1, 'Noise Cancellation', 'Active Noise Cancellation'),
(2, 2, 3, 'Wireless Charging', '1'),
(2, 2, 1, 'Microphone', 'Built-in with noise reduction'),
-- Throw Blanket
(3, 6, 1, 'Material', '100% Organic Cotton'),
(3, 5, 1, 'Dimensions', '150cm x 200cm'),
(3, 4, 1, 'Care Instructions', 'Machine wash gentle cycle, line dry'),
-- Strawberries
(4, 3, 1, 'Origin', 'California, USA'),
(4, 3, 2, 'Calories per 100g', '32'),
(4, 3, 2, 'Sugar Content (g)', '4.9'),
(4, 3, 1, 'Certifications', 'USDA Organic, Non-GMO'),
-- Stand Mixer
(5, 2, 2, 'Wattage', '600'),
(5, 2, 1, 'Speed Settings', '10'),
(5, 2, 1, 'Bowl Material', 'Stainless Steel'),
(5, 2, 2, 'Bowl Capacity (qt)', '5.5'),
(5, 2, 3, 'Tilt-Head Design', '1'),
-- Chino Pants
(6, 6, 1, 'Material', '98% Cotton, 2% Spandex'),
(6, 5, 1, 'Fit', 'Slim Fit'),
(6, 5, 1, 'Closure', 'Zipper and Button'),
(6, 4, 1, 'Care Instructions', 'Machine wash cold, hang dry'),
-- Wireless Earbuds
(7, 2, 2, 'Battery Life (hours)', '8'),
(7, 2, 1, 'Water Resistance', 'IPX4'),
(7, 2, 1, 'Driver Size', '10mm'),
(7, 2, 3, 'Touch Controls', '1'),
-- Avocados
(8, 3, 1, 'Variety', 'Hass'),
(8, 3, 1, 'Origin', 'Mexico'),
(8, 3, 1, 'Ripeness', 'Ready to eat'),
-- Cast Iron Skillet
(9, 6, 1, 'Material', 'Cast Iron'),
(9, 5, 1, 'Diameter', '10 inches'),
(9, 5, 1, 'Depth', '2 inches'),
(9, 4, 1, 'Seasoning', 'Pre-seasoned with vegetable oil'),
-- Backpack
(10, 6, 1, 'Material', 'Water-resistant Canvas'),
(10, 5, 1, 'Dimensions', '30cm x 45cm x 15cm'),
(10, 2, 2, 'Laptop Sleeve Size', '15'),
(10, 2, 3, 'Water Bottle Pocket', '1');
