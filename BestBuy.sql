  -- Using the bestbuy database:
 -- Copy the following and paste into MySql Workbench

-- find all products 
 Select * From products;
-- find all products that cost $1400
 Select * From products
 Where products.Price = 1400;
-- find all products that cost $11.99 or $13.99
 Select * From products 
 Where products.Price = 11.99 or products.Price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
 Select * From products 
 Where not products.Price = 11.99;
-- find  all products and sort them by price from greatest to least
 Select * From products 
 order by products.Price DESC;
 
-- find all employees who don't have a middle initial
 Select * From employees
 Where Middleinitial IS NULL;
-- find distinct product prices
 Select distinct products.Price 
 From products;
-- find all employees whose first name starts with the letter ‘j’
 Select * From employees 
 Where FirstName  LIKE 'j%';
-- find all Macbooks 
 Select * From products
 Where Name = "Macbook";
-- find all products that are on sale
 Select * From products 
 Where OnSale = 1;
-- find the average price of all products 
 Select AVG (products.Price) From products;
 
 
-- find all Geek Squad employees who don't have a middle initial 
 Select * From employees
 Where title = 'Geek Squad' AND MiddleInitial IS NULL;
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Use the between keyword** 
Select * From products 
Where StockLevel between 500 and 1200
order by Price;