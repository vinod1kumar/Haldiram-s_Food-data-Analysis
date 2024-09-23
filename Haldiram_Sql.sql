Show databases;
use haldiram_food;


 -- 1. Given_Data  --
 select * from food_data;
 
 
-- 2. Total distinct Products--
select count(distinct ï»¿Products_Name) as Total_Products from food_data;


-- 3. Distinct Products and Sales over the period
 select distinct ï»¿Products_Name from food_data;
 
 
 
 -- 4. Sales by each month and find maximum sales
SELECT 
    '23-Apr' AS Month, SUM(`23-Apr`) AS Total_Sales FROM food_data
UNION ALL
SELECT 
    '23-May', SUM(`23-May`) FROM food_data
UNION ALL
SELECT 
    '23-Jun', SUM(`23-Jun`) FROM food_data
UNION ALL
SELECT 
    '23-Jul', SUM(`23-Jul`) FROM food_data
UNION ALL
SELECT 
    '23-Aug', SUM(`23-Aug`) FROM food_data
UNION ALL
SELECT 
    '23-Sep', SUM(`23-Sep`) FROM food_data
UNION ALL
SELECT 
    '23-Oct', SUM(`23-Oct`) FROM food_data
UNION ALL
SELECT 
    '23-Nov', SUM(`23-Nov`) FROM food_data
UNION ALL
SELECT 
    '23-Dec', SUM(`23-Dec`) FROM food_data
UNION ALL
SELECT 
    '24-Jan', SUM(`24-Jan`) FROM food_data
UNION ALL
SELECT 
    '24-Feb', SUM(`24-Feb`) FROM food_data
UNION ALL
SELECT 
    '24-Mar', SUM(`24-Mar`) FROM food_data
UNION ALL
SELECT 
    '24-Apr', SUM(`24-Apr`) FROM food_data
UNION ALL
SELECT 
    '24-May', SUM(`24-May`) FROM food_data
UNION ALL
SELECT 
    '24-Jun', SUM(`24-Jun`) FROM food_data
UNION ALL
SELECT 
    '24-Jul', SUM(`24-Jul`) FROM food_data
UNION ALL
SELECT 
    '24-Aug', SUM(`24-Aug`) FROM food_data
ORDER BY Total_Sales desc
limit 10;

-- 5. Top Sales product over Period of time

SELECT 
   ï»¿Products_Name as Products_Name,
    SUM(`23-Apr`) + SUM(`23-May`) + SUM(`23-Jun`) + SUM(`23-Jul`) + 
    SUM(`23-Aug`) + SUM(`23-Sep`) + SUM(`23-Oct`) + SUM(`23-Nov`) + 
    SUM(`23-Dec`) + SUM(`24-Jan`) + SUM(`24-Feb`) + SUM(`24-Mar`) + 
    SUM(`24-Apr`) + SUM(`24-May`) + SUM(`24-Jun`) + SUM(`24-Jul`) + 
    SUM(`24-Aug`) AS Total_Sales
FROM food_data
GROUP BY Products_Name
ORDER BY Total_Sales DESC
LIMIT 5;



-- 6. maximum sales of  product at each Month

SELECT 
    '23-Apr' AS Month, ï»¿Products_Name, `23-Apr` AS Sales
FROM food_data
WHERE `23-Apr` = (
    SELECT MAX(`23-Apr`) FROM food_data
)
UNION ALL
SELECT 
    '23-May', ï»¿Products_Name, `23-May`
FROM food_data
WHERE `23-May` = (
    SELECT MAX(`23-May`) FROM food_data
)
UNION ALL
SELECT 
    '23-Jun', ï»¿Products_Name, `23-Jun`
FROM food_data
WHERE `23-Jun` = (
    SELECT MAX(`23-Jun`) FROM food_data
)
UNION ALL
SELECT 
    '23-Jul', ï»¿Products_Name, `23-Jul`
FROM food_data
WHERE `23-Jul` = (
    SELECT MAX(`23-Jul`) FROM food_data
)
UNION ALL
SELECT 
    '23-Aug', ï»¿Products_Name, `23-Aug`
FROM food_data
WHERE `23-Aug` = (
    SELECT MAX(`23-Aug`) FROM food_data
)
UNION ALL
SELECT 
    '23-Sep', ï»¿Products_Name, `23-Sep`
FROM food_data
WHERE `23-Sep` = (
    SELECT MAX(`23-Sep`) FROM food_data
)
UNION ALL
SELECT 
    '23-Oct', ï»¿Products_Name, `23-Oct`
FROM food_data
WHERE `23-Oct` = (
    SELECT MAX(`23-Oct`) FROM food_data
)
UNION ALL
SELECT 
    '23-Nov', ï»¿Products_Name, `23-Nov`
FROM food_data
WHERE `23-Nov` = (
    SELECT MAX(`23-Nov`) FROM food_data
)
UNION ALL
SELECT 
    '23-Dec', ï»¿Products_Name, `23-Dec`
FROM food_data
WHERE `23-Dec` = (
    SELECT MAX(`23-Dec`) FROM food_data
)
UNION ALL
SELECT 
    '24-Jan', ï»¿Products_Name, `24-Jan`
FROM food_data
WHERE `24-Jan` = (
    SELECT MAX(`24-Jan`) FROM food_data
)
UNION ALL
SELECT 
    '24-Feb', ï»¿Products_Name, `24-Feb`
FROM food_data
WHERE `24-Feb` = (
    SELECT MAX(`24-Feb`) FROM food_data
)
UNION ALL
SELECT 
    '24-Mar', ï»¿Products_Name, `24-Mar`
FROM food_data
WHERE `24-Mar` = (
    SELECT MAX(`24-Mar`) FROM food_data
)
UNION ALL
SELECT 
    '24-Apr', ï»¿Products_Name, `24-Apr`
FROM food_data
WHERE `24-Apr` = (
    SELECT MAX(`24-Apr`) FROM food_data
)
UNION ALL
SELECT 
    '24-May', ï»¿Products_Name, `24-May`
FROM food_data
WHERE `24-May` = (
    SELECT MAX(`24-May`) FROM food_data
)
UNION ALL
SELECT 
    '24-Jun', ï»¿Products_Name, `24-Jun`
FROM food_data
WHERE `24-Jun` = (
    SELECT MAX(`24-Jun`) FROM food_data
)
UNION ALL
SELECT 
    '24-Jul', ï»¿Products_Name, `24-Jul`
FROM food_data
WHERE `24-Jul` = (
    SELECT MAX(`24-Jul`) FROM food_data
)
UNION ALL
SELECT 
    '24-Aug', ï»¿Products_Name, `24-Aug`
FROM food_data
WHERE `24-Aug` = (
    SELECT MAX(`24-Aug`) FROM food_data
);


-- 7. Product_size
SELECT 
    ï»¿Products_Name,
    REGEXP_SUBSTR(ï»¿Products_Name, '[0-9]+[ ]?(kg|grams?|gms?|gm|Gm|G)') AS Size
FROM food_data;

-- 8 Sales of product sales over the timw period
SELECT 
    REGEXP_SUBSTR(ï»¿Products_Name, '[0-9]+[ ]?(kg|grams?|gms?|gm|Gm|G)') AS Size,
    SUM(`23-Apr`) AS April_Sales,
    SUM(`23-May`) AS May_Sales,
    SUM(`23-Jun`) AS June_Sales,
    SUM(`23-Jul`) AS July_Sales,
    SUM(`23-Aug`) AS August_Sales,
    SUM(`23-Sep`) AS September_Sales,
    SUM(`23-Oct`) AS October_Sales,
    SUM(`23-Nov`) AS November_Sales,
    SUM(`23-Dec`) AS December_Sales,
    SUM(`24-Jan`) AS January_Sales,
    SUM(`24-Feb`) AS February_Sales,
    SUM(`24-Mar`) AS March_Sales,
    SUM(`24-Apr`) AS April_2024_Sales,
    SUM(`24-May`) AS May_2024_Sales,
    SUM(`24-Jun`) AS June_2024_Sales,
    SUM(`24-Jul`) AS July_2024_Sales,
    SUM(`24-Aug`) AS August_2024_Sales
FROM food_data
GROUP BY Size;


-- 9. Total Sales by size of product and max Sales by size
SELECT
    REGEXP_SUBSTR(ï»¿Products_Name, '[0-9]+[ ]?(kg|grams?|gms?|gm|Gm|G)') AS Product_Size,
    SUM(
        `23-Apr` + `23-May` + `23-Jun` + `23-Jul` + `23-Aug` + 
        `23-Sep` + `23-Oct` + `23-Nov` + `23-Dec` + 
        `24-Jan` + `24-Feb` + `24-Mar` + `24-Apr` + 
        `24-May` + `24-Jun` + `24-Jul` + `24-Aug`
    ) AS Total_Sales
FROM food_data
GROUP BY Product_Size
order by Total_Sales desc;

-- 10. Product Sales by Categories 

SELECT 
    CASE 
        WHEN ï»¿Products_Name LIKE '%Naan%' THEN 'Naan'
        WHEN ï»¿Products_Name LIKE '%Samosa%' THEN 'Samosa'
        WHEN ï»¿Products_Name LIKE '%Pakora%' THEN 'Pakora'
        WHEN ï»¿Products_Name LIKE '%Chutney%' THEN 'Chutney'
        WHEN ï»¿Products_Name LIKE '%Paratha%' THEN 'Paratha'
        WHEN ï»¿Products_Name LIKE '%Bites%' THEN 'Bites'
        -- Add more categories as needed
        ELSE 'Other'
    END AS Product_Category,
    SUM(
        `23-Apr` + `23-May` + `23-Jun` + `23-Jul` + `23-Aug` + 
        `23-Sep` + `23-Oct` + `23-Nov` + `23-Dec` + 
        `24-Jan` + `24-Feb` + `24-Mar` + `24-Apr` + 
        `24-May` + `24-Jun` + `24-Jul` + `24-Aug`
    ) AS Total_Sales
FROM food_data
GROUP BY Product_Category
ORDER BY Total_Sales DESC;


