
-- create table companies

CREATE TABLE companies (
  company_id INT PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  industry TEXT NOT NULL,
  country TEXT NOT NULL
);

-- create table sutainability_techniques

CREATE TABLE sutainability_techniques (
  company_id INT,
  technique_name TEXT NOT NULL,
  implementation_year INT NOT NULL,
  effctiveness_level TEXT NOT NULL,
  FOREIGN KEY (company_id) REFERENCES companies (company_id)
);

/* 
create table financial_data
Revenue in thousands of EUR (e.g. 3500 = €3,500,000)
*/

CREATE TABLE financial_data (
  company_id INT,
  year INT NOT NULL,
  revenue DECIMAL (6,3),
  FOREIGN KEY (company_id) REFERENCES companies (company_id)
);

-- insert data into companies

INSERT INTO companies
VALUES (company_id, 'EcoTrans Logistics', 'Transport', 'Germany');
INSERT INTO companies
VALUES (company_id, 'GreenByte Tech', 'IT', 'Sweden');
INSERT INTO companies
VALUES (company_id, 'FreshFarm Foods', 'Food', 'Poland');
INSERT INTO companies
VALUES (company_id, 'SunBuild Housing', 'Construction', 'Germany');
INSERT INTO companies
VALUES (company_id, 'CleanWave Energy', 'Energy', 'Denmark');
INSERT INTO companies
VALUES (company_id, 'Safe Chemicals', 'Chemical Industry', 'Poland');
INSERT INTO companies
VALUES (company_id, 'ReWear Apparel', 'Fashion & Retail', 'Denmark');
INSERT INTO companies
VALUES (company_id, 'PureAir Systems', 'Technology', 'Germany');
INSERT INTO companies
VALUES (company_id, 'UranGrow', 'Urban Agriculture', 'Spain');
INSERT INTO companies
VALUES (company_id, 'Book Cycle', 'Education', 'Sweden');

-- insert data into sutainability_techniques

-- EcoTrans Logistics

INSERT INTO sutainability_techniques
VALUES (1, 'Electric delivery vans', 2022, 'High');
INSERT INTO sutainability_techniques
VALUES (1, 'Paperless office sytem', 2021, 'Medium');

-- GreenByte Tech

INSERT INTO sutainability_techniques
VALUES (2, 'Remote work policy', 2022, 'High');
INSERT INTO sutainability_techniques
VALUES (2, 'Office recycling program', 2021, 'Low');

-- FreshFarm Foods

INSERT INTO sutainability_techniques
VALUES (3, 'Compostable packaging', 2022, 'Medium');
INSERT INTO sutainability_techniques
VALUES (3, 'Local farming partnerships', 2021, 'High');

-- SunBuild Housing

INSERT INTO sutainability_techniques
VALUES (4, 'Solar panel installations', 2023, 'High');
INSERT INTO sutainability_techniques
VALUES (4, 'Water-saving toilets', 2022, 'Medium');

-- CleanWave Energy
INSERT INTO sutainability_techniques
VALUES (5, 'Wind energy optimization', 2022, 'High');
INSERT INTO sutainability_techniques
VALUES (5, 'Battery recycling program', 2021, 'Medium');

-- Safe Chemical

INSERT INTO sutainability_techniques
VALUES (6, 'Emission filters upgrade', 2022, 'Low');
INSERT INTO sutainability_techniques
VALUES (6, 'Eco-friendy packaging', 2021, 'Medium');

-- ReWear Apparel

INSERT INTO sutainability_techniques
VALUES (7, 'Organic materials usage', 2021, 'Medium');
INSERT INTO sutainability_techniques
VALUES (7, 'Take-back clothing program', 2021, 'High');

-- PureAir Systems

INSERT INTO sutainability_techniques
VALUES (8, 'Energy-efficient systems', 2022, 'High');
INSERT INTO sutainability_techniques
VALUES (8, 'Recycled metal components', 2021, 'Medium');

-- UrbanGrow

INSERT INTO sutainability_techniques
VALUES (9, 'Rooftop gardens', 2022, 'Medium');
INSERT INTO sutainability_techniques
VALUES (9, 'Rainwater harvesting', 2021, 'High');

-- Book Cycle

INSERT INTO sutainability_techniques
VALUES (10, 'E-book lending systems', 2023, 'Medium');
INSERT INTO sutainability_techniques
VALUES (10, 'Recycled paper publishing', 2022, 'Medium');

-- insert data into financial_data

-- EcoTrans Logistics

INSERT INTO financial_data
VALUES (1, 2019, 3.500);
INSERT INTO financial_data
VALUES (1, 2020, 3.600);
INSERT INTO financial_data
VALUES (1, 2021, 3.550);
INSERT INTO financial_data
VALUES (1, 2022, 3.900);
INSERT INTO financial_data
VALUES (1, 2023, 4.100);

-- GreenByte Tech

INSERT INTO financial_data
VALUES (2, 2019, 1.100);
INSERT INTO financial_data
VALUES (2, 2020, 1.150);
INSERT INTO financial_data
VALUES (2, 2021, 1.160);
INSERT INTO financial_data
VALUES (2, 2022, 1.250);
INSERT INTO financial_data
VALUES (2, 2023, 1.290);

-- FreshFarm Food

INSERT INTO financial_data
VALUES (3, 2019, 2.200);
INSERT INTO financial_data
VALUES (3, 2020, 2.100);
INSERT INTO financial_data
VALUES (3, 2021, 2.300);
INSERT INTO financial_data
VALUES (3, 2022, 2.450);
INSERT INTO financial_data
VALUES (3, 2023, 2.550);

-- SunBuild Housing

INSERT INTO financial_data
VALUES (4, 2019, 4.800);
INSERT INTO financial_data
VALUES (4, 2020, 4.850);
INSERT INTO financial_data
VALUES (4, 2021, 5.000);
INSERT INTO financial_data
VALUES (1, 2022, 5.200);
INSERT INTO financial_data
VALUES (1, 2023, 5.250);

-- CleanWave Energy

INSERT INTO financial_data
VALUES (5, 2019, 6.000);
INSERT INTO financial_data
VALUES (5, 2020, 6.200);
INSERT INTO financial_data
VALUES (5, 2021, 6.500);
INSERT INTO financial_data
VALUES (5, 2022, 6.900);
INSERT INTO financial_data
VALUES (5, 2023, 7.200);

-- Safe Chemicals

INSERT INTO financial_data
VALUES (6, 2019, 7.000);
INSERT INTO financial_data
VALUES (6, 2020, 6.900);
INSERT INTO financial_data
VALUES (6, 2021, 6.950);
INSERT INTO financial_data
VALUES (6, 2022, 6.980);
INSERT INTO financial_data
VALUES (6, 2023, 6.990);

-- ReWear Apparel

INSERT INTO financial_data
VALUES (7, 2019, 1.700);
INSERT INTO financial_data
VALUES (7, 2020, 1.650);
INSERT INTO financial_data
VALUES (7, 2021, 1.800);
INSERT INTO financial_data
VALUES (7, 2022, 1.850);
INSERT INTO financial_data
VALUES (7, 2023, 2.000);

-- PureAir Systems

INSERT INTO financial_data
VALUES (8, 2019, 2.400);
INSERT INTO financial_data
VALUES (8, 2020, 2.500);
INSERT INTO financial_data
VALUES (8, 2021, 2.600);
INSERT INTO financial_data
VALUES (8, 2022, 2.900);
INSERT INTO financial_data
VALUES (8, 2023, 3.100);

-- UrabnGrow

INSERT INTO financial_data
VALUES (9, 2019, 950);
INSERT INTO financial_data
VALUES (9, 2020, 1.000);
INSERT INTO financial_data
VALUES (9, 2021, 1.050);
INSERT INTO financial_data
VALUES (9, 2022, 1.200);
INSERT INTO financial_data
VALUES (9, 2023, 1.250);

-- BookCycle

INSERT INTO financial_data
VALUES (10, 2019, 550);
INSERT INTO financial_data
VALUES (10, 2020, 580);
INSERT INTO financial_data
VALUES (10, 2021, 610);
INSERT INTO financial_data
VALUES (10, 2022, 640);
INSERT INTO financial_data
VALUES (10, 2023, 670);

-- SELECT

-- companies names

SELECT company_id, name AS company_name
FROM companies;

-- The most important changes

SELECT name, technique_name, implementation_year
FROM companies
INNER JOIN sutainability_techniques
ON companies.company_id = sutainability_techniques.company_id
WHERE effctiveness_level = 'High';

-- Comparison of financial results before and after the changes

SELECT 
  f2019.company_id,
  f2019.revenue AS revenue_2019,
  f2023.revenue AS revenue_2023,
  f2023.revenue - f2019.revenue AS revenue_change,
  ROUND ((( f2023.revenue - f2019.revenue)/ f2019.revenue) * 100, 2) AS revenue_change_pct 
FROM financial_data AS f2019
JOIN financial_data AS f2023
  ON f2019.company_id = f2023.company_id
WHERE f2019.year = 2019 AND f2023.year = 2023;

-- companies where revenues decreased
SELECT 
  f2019.company_id,
  ROUND((( f2023.revenue - f2019.revenue)/ f2019.revenue) * 100, 2) AS revenue_change_pct
FROM financial_data AS f2019
JOIN financial_data AS f2023
  ON f2019.company_id = f2023.company_id
WHERE f2019.year = 2019 AND f2023.year = 2023 and  ROUND((( f2023.revenue - f2019.revenue)/ f2019.revenue) * 100, 2) < 0;

-- 3 companies where revenues grew the most 

SELECT 
  f2019.company_id,
   ROUND((( f2023.revenue - f2019.revenue)/ f2019.revenue) * 100, 2) AS revenue_change_pct
FROM financial_data AS f2019
JOIN financial_data AS f2023
  ON f2019.company_id = f2023.company_id
WHERE f2019.year = 2019 AND f2023.year = 2023
ORDER BY  ROUND((( f2023.revenue - f2019.revenue)/ f2019.revenue) * 100, 2) DESC
LIMIT 3;

-- KPI 

SELECT 
   MAX( ROUND((( f2023.revenue - f2019.revenue)/ f2019.revenue) * 100, 2)) AS MAX_revenue_change_pct,
   MIN( ROUND((( f2023.revenue - f2019.revenue)/ f2019.revenue) * 100, 2)) AS MIN_revenue_change_pct ,
   ROUND(AVG((( f2023.revenue - f2019.revenue)/ f2019.revenue) * 100), 2) AS AVG_revenue_change_pct
FROM financial_data AS f2019
JOIN financial_data AS f2023
  ON f2019.company_id = f2023.company_id
WHERE f2019.year = 2019 AND f2023.year = 2023;










