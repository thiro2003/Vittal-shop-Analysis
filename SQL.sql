-- SQL Questions
-- How can you retrieve all columns from the dataset?
select * from data;
-- Write a query to get all unique product categories from the dataset.
select distinct Product_Category from data;
-- How would you count the total number of orders placed?
select count(Orders) from data;
-- Write a query to find the average order amount.
select avg(Orders) from data;
-- How can you filter the dataset to show only male customers?
select * from data where Gender="M";
-- Write a query to get the total number of customers in each state.
select State,count(Cust_name) from data group by State;
-- How would you find the highest order amount in the dataset?
select max(Orders) from data;
-- Write a query to list all customers aged 30-40.
alter table data change column `Age Group` `Age_Group` varchar(22);
select Age from data where Age>=30 and Age<=40; 
-- How can you find the number of orders placed by each customer?
select Cust_name ,count(Orders) from data group by Cust_name;
-- Write a query to get the total sales amount per product category.
select Product_Category,sum(Amount) from data group by Product_Category;
-- How would you retrieve customer names and their respective states?
select Cust_name,State from data;
-- Write a query to find the average age of customers who are married.
select avg(Age) from data where Marital_Status=1;
-- How can you group the data by gender and count the number of customers in each group?
select Gender,count(Cust_name) from data group by Gender;
-- Write a query to find the total order amount for customers in the "West" zone.
select sum(Amount) from data where Zone="Western";
-- How would you get the details of customers who have placed more than 5 orders?
select * from data where Orders>5;
-- Write a query to find the minimum and maximum ages of customers.
select min(Age) as min ,max(Age) as max from data;
-- How can you retrieve the names of customers who have purchased a specific product ID?
select Cust_name,Product_ID from data;
-- Write a query to get the total number of customers in each age group.
select Age_Group ,count(Cust_name) from data group by Age_Group;
-- How would you find the total sales amount for each occupation?
select Occupation,sum(Amount) from data group by Occupation;
-- Write a query to list customers whose age is greater than 50 and are single.
select * from data where Age>50 and Marital_Status=0;
-- How can you retrieve the details of customers who belong to the "Electronics" product category?
select * from data where Product_Category="Electronics & Gadgets"; 
-- Write a query to find the number of orders placed in each state.
select State,count(Orders) from data group by State;
-- How would you find the average order amount per customer?
select Cust_name,round(avg(Amount),0) from data group by Cust_name;
-- Write a query to list all customers who live in a specific state (e.g., California).
select Cust_name,State from data;
-- How can you retrieve the names and order amounts for customers over 40 years old?
select Cust_name ,Amount from data where Age=40;
-- Write a query to find customers with the same name.
select Cust_name,count(*) from data group by Cust_name having count(*)>1;
-- How would you get the total number of orders and total sales amount for each product?
select Product_Category ,count(Orders),sum(Amount) from data group by Product_Category;
-- Write a query to find the age of the oldest customer.
select Age,Cust_name from data where Age=(select max(Age),max(Cust_name));
-- How can you filter the dataset to show only customers from the "South" zone?
select * from data where Zone="Southern";
-- Write a query to find the total number of orders for each marital status.
select Marital_Status, count(Orders) from data group by Marital_Status;
-- How would you retrieve the customer name and age for customers who placed orders above 3?
select Cust_name,Age from data where Orders>3;
-- Write a query to find customers who are not married and are under 30 years old.
select * from data where Marital_Status=0 and Age>30;
-- How can you retrieve the average order amount by age group?
select avg(Amount),Age_Group from data group by Age_Group;
-- Write a query to find the total amount spent by female customers.
select sum(Amount) from data where Gender="F";
-- How would you get the total number of unique products purchased?
select distinct count(Product_Category) from data;
-- Write a query to find the details of customers who ordered the maximum number of products.
select * from data where Product_Category=(select max(Product_Category) from data);
-- How can you filter the dataset to show only customers with a specific occupation?
select distinct Occupation from data;
-- Write a query to find the average number of orders per customer.
select Cust_name,round(avg(Orders),1) from data group by Cust_name;
-- How would you retrieve the total sales amount for each gender?
select Gender,sum(Amount) from data group by Gender;
-- Write a query to find customers with the highest number of orders.
select * from data where Orders=(select max(Orders) from data);
-- How can you retrieve the names and ages of customers who have ordered more than once?
select Cust_name,Age from data where Orders>1;
-- Write a query to find the product category with the highest sales amount.
select Product_Category,max(Amount) from data group by Product_Category;
-- How would you get a list of customers aged 20-30 who are married?
select * from data where Age>=20 and Age<=30 and Marital_Status=1;
-- Write a query to find the total sales amount for each state and sort it in descending order.
select State,sum(Amount) as total from data group by State order by total desc;
-- Write a query to retrieve the customer name and product category for customers over 60 years old.
select Cust_name ,Product_Category from data where Age>60;
-- How would you find the total number of orders placed by customers in a specific occupation?
select Occupation,count(Orders) from data group by Occupation;
-- Write a query to get the details of the customer who placed the lowest order amount.
select * from data where Amount=(select min(Amount) from data);
-- How can you retrieve the average age of customers who ordered more than a certain amount?
select avg(Age) from data where Orders>3;

