--1 
--Get the names and the quantities in stock for each product.
SELECT product_name , units_in_stock
FROM products;

SELECT product_name,sum(units_in_stock) as units_in_stock
from products
group by product_name ;
--2
--Get a list of current products (Product ID and name).
select product_id, product_name
from products
where units_on_order != 0;

SELECT product_id, product_name
FROM Products
WHERE discontinued = 'FALSE'
ORDER BY product_name;

--3
--Get a list of the most and least expensive products (name and unit price).
SELECT product_name, Unit_Price 
FROM Products 
ORDER BY Unit_Price DESC;
--4
--Get products that cost less than $20.
SELECT product_name,product_id, unit_price
FROM Products
WHERE (((Unit_Price)<20) AND ((discontinued)=False))
ORDER BY Unit_Price DESC;
--5
--Get products that cost between $15 and $25.
SELECT product_name,product_id, unit_price
FROM Products
WHERE (((unit_price)>=15 And (unit_price)<=25) 
AND ((discontinued)=False))
ORDER BY unit_price DESC;
--6
--Get products above average price.
SELECT DISTINCT product_name,product_id, unit_price
FROM Products
WHERE unit_price > (SELECT avg(unit_price) FROM Products)
ORDER BY unit_price;
--7
--Find the ten most expensive products.

SELECT DISTINCT product_name as ten_Most_Expensive_Products, unit_price
FROM Products 
                    
ORDER BY unit_price desc
limit 10 ;

SELECT DISTINCT product_name as ten_Most_Expensive_Products, unit_price
FROM Products AS a
WHERE 10 >= (SELECT COUNT(DISTINCT unit_price)
                    FROM Products AS b
                    WHERE b.unit_price >= a.unit_price)
ORDER BY unit_price desc;
--8
--Get a list of discontinued products (Product ID and name).
SELECT product_id, product_name
FROM Products
WHERE discontinued =('t') 
ORDER BY product_name;
--9
SELECT Count(product_name)
FROM Products
GROUP BY discontinued;
--10
SELECT product_name,  units_in_stock , units_on_order
FROM Products
WHERE (units_in_stock)<(units_on_order);
--11
--Find the customer who had the highest order amount

SELECT c.customer_id , MAX(od.unit_Price*od.quantity) AS HighestPurchase
FROM order_details od JOIN orders o ON od.Order_id = o.Order_id
JOIN customers c ON c.customer_id = o.customer_id 
GROUP BY c.customer_id 
ORDER BY HighestPurchase DESC

--13
--Find the hiring age of each employee
SELECT last_name,  (DATE_PART('year', Hire_Date) - DATE_PART('year', Birth_Date))AS HireAge
FROM Employees
ORDER BY HireAge

--


SELECT od.order_id, c.contact_name,od.unit_price,od.quantity,od.dicount
FROM order_details od JOIN orders o ON od.Order_id = o.Order_id
JOIN customers c ON c.customer_id = o.customer_id WHERE od.dicount != '0';  

-- displays "On Time" if the order was shipped on time and "Late" if the order was shipped late
SELECT c.customer_id, c.company_name,e.employee_id, e.first_name, e.last_name, 
Order_ID,(CASE 
WHEN shipped_date < required_date 
THEN 'On Time'
ELSE 'Late'
END) AS Shipped FROM Orders as o 
JOIN Employees as e ON(e.employee_id = o.Employee_id)
JOIN Customers as c ON(c.customer_id = o.customer_id)
ORDER BY Shipped;
