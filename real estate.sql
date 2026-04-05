drop table if exists real_estate;

CREATE TABLE real_estate (
    ListingID INT,
    City VARCHAR(50),
    PropertyType VARCHAR(50),
    Bedrooms INT,
    Bathrooms INT,
    Area_sqft INT,
    YearBuilt INT,
    ListingPrice BIGINT,
    SalePrice BIGINT,
    Status VARCHAR(20)
);

SELECT * FROM real_estate;

--  View Data

SELECT * FROM real_estate LIMIT 10;

-- Total Properties Sold

SELECT COUNT(*) AS total_properties
FROM real_estate;

-- Average Sale Price (Overall)

SELECT AVG(SalePrice) AS avg_price
FROM real_estate;

-- City-wise Average Price 
SELECT City, AVG(SalePrice) AS avg_price
FROM real_estate
GROUP BY City
ORDER BY avg_price DESC;

--  ✅ 5. Profit per Property 
SELECT ListingID, City,
       (SalePrice - ListingPrice) AS Profit
FROM real_estate;

-- ✅ 6. Top 5 Most Expensive Properties
SELECT *
FROM real_estate
ORDER BY SalePrice DESC
LIMIT 5;

-- ✅ 7. Property Type Analysis
SELECT PropertyType, COUNT(*) AS total
FROM real_estate
GROUP BY PropertyType;

-- ✅ 8. Bedrooms vs Price Analysis
SELECT Bedrooms, AVG(SalePrice) AS avg_price
FROM real_estate
GROUP BY Bedrooms
ORDER BY Bedrooms;

-- ✅ 9. Highest Price in Each City
SELECT City, MAX(SalePrice) AS max_price
FROM real_estate
GROUP BY City;

-- ✅ 10. Properties Above Average Price
SELECT *
FROM real_estate
WHERE SalePrice > (
    SELECT AVG(SalePrice) FROM real_estate
);