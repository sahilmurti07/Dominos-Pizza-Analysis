-- Here I connect my databse of Domino_Pizza 
-- To fetch my data to do analyse 
-- ---------------------------------------------------------------
   create database Domino_Pizza;
   use Domino_Pizza;
   
-- From Here we start the analysis of such questions which required in the growth
-- of Domino Pizza

-- 1. Orders Volume Analysis
-- Total unique orders, orders by month, day-of-week analysis, 
-- repeat customers, average orders per customer, cumulative order trend.

    select count(distinct(order_id)) from order_details;
 -- 21350 total unique order placed
 
 
-- Total Orders by Days name
select count(distinct(order_id)) as orders,dayname(order_date) as day from orders group by
day order by orders desc;


-- Average number of orders pr customer?
select round(count(distinct(order_id))* 1.0/
 count(distinct(custid))) as avg_order_per_cust from orders ;
 
 
 -- Total orders by Customer 
 select custid,count(order_id) as orders from orders
 group by custid 
 order by orders desc;
 
-- Monthly order pct 
with monthly_order as(
select count(order_id) as Orders ,
month(order_date) as month_name from orders 
group by month_name order by month_name 
 )
select month_name,Orders ,lag(Orders) 
over(order by month_name) as prev_month,
round(100.0 * (Orders - lag(Orders) over(order by month_name)) / nullif(lag(Orders) 
over(order by month_name),0),2) as month_growth_pct
from monthly_order;

-- cumulative order trend
select
order_date,
count(order_id) as daily_order ,
sum(count(order_id)) over(order by order_date)as cumulative_order
from orders
group by order_date
order by order_date;

-- Total Revenue From Pizza Sales
select round(sum(od.quantity*p.price),2) as 
Revenue from order_details od join pizzas p 
on od.pizza_id = p.pizza_id;

-- Highest Price Pizza
select * from pizzas order by price desc limit 1;

-- Most common pizza size ordered
select count(od.order_id) as orders,p.size
from order_details od join pizzas p on od.pizza_id = p.pizza_id
group by p.size order by orders;

-- Top 5 Most Ordered Pizza types
select count(od.order_id) as orders,p.pizza_type_id
from order_details od join pizzas p on od.pizza_id = p.pizza_id
group by p.pizza_type_id order by orders desc limit 5;

-- Total Quantity by Pizza Category
select count(od.quantity) as Quantity,pt.category from
pizza_types pt join pizzas p on pt.pizza_type_id = p.pizza_type_id 
join order_details od on od.pizza_id = p.pizza_id group by pt.category;

-- Orders by Hour of the Day 12, 1, 6, 5, 7
select count(distinct(order_id)) as Orders, 
hour(order_time) as hours from orders group by hours order by Orders ;

-- Category-Wise Pizza Distribution
SELECT 
    pt.category, 
    ROUND(SUM(p.price * od.quantity), 2) AS Sales,
    ROUND(
        (SUM(p.price * od.quantity) / SUM(SUM(p.price * od.quantity)) OVER()) * 100, 
    2) AS pct_share
FROM 
    pizza_types pt 
JOIN 
    pizzas p ON pt.pizza_type_id = p.pizza_type_id 
JOIN 
    order_details od ON od.pizza_id = p.pizza_id 
GROUP BY 
    pt.category
ORDER BY 
    pct_share DESC;
    
-- Average Pizzas Ordered per Day
select round(avg(daily_orders)) as Avg_Pizzas_per_per_day from
(select o.order_date , sum(od.quantity) as daily_orders from orders o join order_details od 
on o.order_id = od.order_id group by o.order_date ) t;

-- Top 3 Pizzas by Revenue
select sum(od.quantity * p.price) as revenue, pt.name from order_details od join pizzas p
on od.pizza_id = p.pizza_id 
join pizza_types pt on pt.pizza_type_id = p.pizza_type_id
group by pt.name order by revenue desc limit 3;

-- Revenue contribution by pizza
SELECT 
    pt.name, 
    ROUND(SUM(p.price * od.quantity), 2) AS Sales,
    ROUND(
        (SUM(p.price * od.quantity) / SUM(SUM(p.price * od.quantity)) OVER()) * 100, 
    2) AS pct_contribution
FROM 
    pizza_types pt 
JOIN 
    pizzas p ON pt.pizza_type_id = p.pizza_type_id 
JOIN 
    order_details od ON od.pizza_id = p.pizza_id 
GROUP BY 
    pt.name
ORDER BY 
    pct_contribution DESC;
    
-- Cumulative Revenue Over Time

select order_date,revenue,sum(revenue)over(order by order_date) as cumulative_revenue
from
(select  o.order_date, round(sum(od.quantity*p.price)) as revenue 
  from orders o 
join order_details od on o.order_id = od.order_id
join  pizzas p on od.pizza_id = p.pizza_id group by o.order_date order by o.order_date) t;

-- Top 3 Pizzas by Category (Revenue-Based)
with cte_rnk as (select sum(od.quantity * p.price) as revenue, pt.category,pt.name, rank() 
over(partition by pt.category
order by sum(od.quantity * p.price) desc) as rnk
from order_details od join pizzas p
on od.pizza_id = p.pizza_id 
join pizza_types pt on pt.pizza_type_id = p.pizza_type_id
group by pt.category ,pt.name) 
select category,name,revenue
from cte_rnk 
where rnk<= 3;

--  Top 10 Customers by Spending
select round(sum(od.quantity*p.price)) as spending,c.custid,c.first_name from customers c join orders o on c.custid = o.custid
join order_details od on od.order_id = o.order_id
join pizzas p on p.pizza_id = od.pizza_id
group by c.custid,c.first_name order by spending;

-- Average Order Size
select avg(orders)as avg_order from
(select order_id ,sum(quantity) as orders from order_details group by order_id) t;

-- Seasonal Trends
select count(order_id) as sales, month(order_date) as months from orders 
group by months order by sales;

-- Customer Segmentation (Classify customers as High Value or Regular based on spend)
with cust_spend as(select o.custid,round(sum(od.quantity*p.price)) as spend
 from order_details od 
join pizzas p on od.pizza_id = p.pizza_id
join orders o on o.order_id = od.order_id
group by o.custid)

select case 
when spend >115900 then 'High Value'
else 'Regular'end as segment
from cust_spend;

--  Repeat Customer Rate
with cust_orders as (select custid, 
count(distinct(order_id)) as orders from orders group by custid)
select round(100 * sum(case when orders > 2100 then 1 else 0 end)/ count(*),2) as
repeat_rate from cust_orders















