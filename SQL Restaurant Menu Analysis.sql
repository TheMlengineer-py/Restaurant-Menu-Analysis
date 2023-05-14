#show all columns order by Category
Select * from menufinal order by Category;

#show all columns order by Item
Select * from menufinal order by Item;

#Remove duplicates entries from churn table
 SELECT DISTINCT * FROM menufinal;

#show Category, Item, Calories columns order by Category
Select Category, Item, Calories from  menufinal order by Category;

#show all columns where Calories is 500
SELECT * from menufinal WHERE Calories = 500;

#show all columns where Cholesterol is 80
SELECT * from menufinal WHERE Calories = 80;

# Category count
SELECT Category, COUNT(*) AS count
FROM menufinal
GROUP BY Category
ORDER BY count DESC;

#Most popular menu categories
SELECT Category, COUNT(*) as count
FROM menufinal
GROUP BY Category
ORDER BY count DESC
LIMIT 1;

#least popular menu categories
SELECT Category, COUNT(*) as count
FROM menufinal
GROUP BY Category
ORDER BY count ASC
LIMIT 1;

#Most Popular Item on the menu
SELECT Item, COUNT(*) as count
FROM menufinal
GROUP BY Item
ORDER BY count DESC
LIMIT 1;

# Item count
SELECT Item, COUNT(*) AS count
FROM menufinal
GROUP BY Item
ORDER BY count DESC;

# total number of items on the menu
SELECT COUNT(*) AS Item FROM menufinal;

# total number of items in each category
SELECT Category, COUNT(*) AS total_items FROM menufinal GROUP BY Category;

#filter menu  by Cholesterol
SELECT Item
FROM menufinal
WHERE Cholesterol = 0;

#filter menu  by Cholesterol
SELECT Category
FROM menufinal
WHERE Cholesterol = 0;

#filter menu  by protein
SELECT Item
FROM menufinal
WHERE Protein > 20;

#filter menu  by protein
SELECT Item
FROM menufinal
WHERE Protein < 5;










