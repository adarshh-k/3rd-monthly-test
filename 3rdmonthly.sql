use Newdb1;

-- display all records drom sales table --
select * from [dbo].[Sheet1$]

-- all from south --
select * from [dbo].[Sheet1$] where Region='South' and Sales>5000;

-- total sales and total profit --
select sum(Sales) as total_sales,sum(Profit) as total_profit from [dbo].[Sheet1$];

-- total sales for each category --
select Category, sum(Sales) as totalcat_sales from [dbo].[Sheet1$] group by Category;

-- display top 5 orders with highests amount --
select top 5* from [dbo].[Sheet1$] order by  sales desc;

-- total quantity sold in each region --
select Region ,sum(Quantity) as total_quantity from [dbo].[Sheet1$] group by Region;

-- category that generate highest total profit --
select top 1 Category,sum(Profit) as total_profit from [dbo].[Sheet1$] group by Category order by total_profit desc;
