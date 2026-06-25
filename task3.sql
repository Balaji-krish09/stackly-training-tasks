-- 1. Database & Architecture Initialization
USE college_db;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 4), -- High precision setup to demo math functions cleanly
    quantity INT
);


-- 2. Data Insertion Core (10 Target Records)
INSERT INTO products (product_name, price, quantity) VALUES
('Quantum Gaming Mouse', 1575.8945, 12),
('Apex Mechanical Keyboard', 4500.2500, 7),
('UltraWide Monitor 4K', 28999.9900, 3),
(' Ergonomic Office Chair ', 8500.5000, 15), -- Embedded spacing intentionally for TRIM checks
('Studio Condenser Mic', 3200.7550, 8),
('USB-C Hub Multiport', 1850.4000, 22),
('Wireless Charging Pad', 999.1500, 10),
('   Portable SSD 1TB', 6200.0000, 5),     -- Embedded leading spacing for LTRIM checks
('Bluetooth Gaming Headset', 2450.6070, 14),
('HD Streaming Webcam   ', 3800.8500, 9);     -- Embedded trailing spacing for RTRIM checks


-- 3. MySQL Numeric Functions Queries
-- ROUND(): Formats numeric targets to 2 distinct trailing decimal places
SELECT product_name, price, ROUND(price, 2) AS rounded_price FROM products;

-- FLOOR(): Forces value evaluation downward to base whole integer
SELECT product_name, price, FLOOR(price) AS floor_price FROM products;

-- CEIL(): Forces value evaluation upward to next higher tracking integer
SELECT product_name, price, CEIL(price) AS ceil_price FROM products;

-- ABS(): Computes structural distance from vector origin for baseline -250
SELECT ABS(-250) AS absolute_value_proof;

-- MOD(): Captures algebraic division remainders against base 4 block
SELECT product_name, quantity, MOD(quantity, 4) AS remainder_qty FROM products;

-- POWER(): Evaluates target structures exponentially (3 raised to power of 4)
SELECT POWER(3, 4) AS exponential_power_proof;


-- 4. MySQL String Functions Queries
-- CONCAT(): Blends textual records with distinct system metadata indicators
SELECT CONCAT(product_name, ' (Qty: ', quantity, ')') AS product_stock_profile FROM products;

-- LENGTH(): Measures total character footprint data counts including spaces
SELECT product_name, LENGTH(product_name) AS title_length FROM products;

-- UPPER(): Normalizes records to complete capital characters
SELECT product_name, UPPER(product_name) AS uppercase_title FROM products;

-- LOWER(): Normalizes records to complete lowercase structures
SELECT product_name, LOWER(product_name) AS lowercase_title FROM products;

-- TRIM(): Strips complete trailing and leading spaces from explicit string
SELECT TRIM('   Sample Text Clearance Check   ') AS clean_trimmed_string;

-- LTRIM(): Eliminates leading left side gap artifacts
SELECT product_name, LTRIM(product_name) AS left_trimmed_title FROM products;

-- RTRIM(): Eliminates trailing right side gap artifacts
SELECT product_name, RTRIM(product_name) AS right_trimmed_title FROM products;

-- SUBSTRING(): Truncates element text to extract first 5 structural characters
SELECT product_name, SUBSTRING(product_name, 1, 5) AS short_code FROM products;

-- REPLACE(): Searches and swaps matching word sets dynamically
SELECT REPLACE('Stackly Training Platform', 'Platform', 'Engineers') AS updated_text_proof;


-- 5. MySQL Date & Time Functions Queries
-- CURDATE(): Displays structural system server year-month-day calendar state
SELECT CURDATE() AS current_system_date;

-- CURTIME(): Displays active real-time hours-minutes-seconds values
SELECT CURTIME() AS current_system_time;

-- NOW(): Merges unified server runtime timeline timestamps
SELECT NOW() AS comprehensive_timestamp;

-- DATEDIFF(): Computes interval values between target endpoints
SELECT DATEDIFF('2026-06-26', '2026-06-18') AS training_span_days;