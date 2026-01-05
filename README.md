<!-- =============================== -->
<!-- 🍕 DOMINO'S MYSQL SQL PROJECT -->
<!-- =============================== -->

<div align="center">

<h1>🍕 Domino’s Pizza Store Analysis</h1>
<h3>📊 MySQL Data Analysis Project</h3>

<p>
<b>Beginner → Intermediate</b> • <b>Business-Focused SQL</b> • <b>Portfolio Project</b>
</p>

<img src="https://img.shields.io/badge/Database-MySQL-blue?style=for-the-badge">
<img src="https://img.shields.io/badge/Domain-Food%20%26%20Beverage-orange?style=for-the-badge">
<img src="https://img.shields.io/badge/Level-Beginner%20to%20Intermediate-success?style=for-the-badge">

</div>

<hr>

<h2>📌 Project Overview</h2>

<p>
This project analyzes Domino’s pizza sales and customer data using <b>MySQL</b> to uncover 
<b>revenue trends, customer behavior, order patterns, and menu performance</b>.
The goal is to support <b>data-driven business decisions</b> using structured query analysis.
</p>

<hr>

<h2>🎯 Project Objectives</h2>

<ul>
  <li>Design and populate a Domino’s Pizza relational database</li>
  <li>Perform data cleaning and validation using SQL</li>
  <li>Conduct exploratory data analysis (EDA)</li>
  <li>Answer real-world business questions using MySQL</li>
  <li>Generate actionable insights for business growth</li>
</ul>

<hr>

<h2>🗄️ Database Details</h2>

<p>
<b>Database Name:</b> <code>Dominos_Pizza_db</code><br>
<b>Database Type:</b> MySQL
</p>

<hr>

<h2>🗂️ Database Schema</h2>

<table border="1" cellpadding="8" cellspacing="0">
  <tr>
    <th>Table Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><b>customers</b></td>
    <td>Stores customer details (custId, first_name, last_name)</td>
  </tr>
  <tr>
    <td><b>orders</b></td>
    <td>Stores order-level information (order_id, custId, order_date, order_time)</td>
  </tr>
  <tr>
    <td><b>order_details</b></td>
    <td>Stores line-item details for each order (order_detail_id, order_id, pizza_id, quantity)</td>
  </tr>
  <tr>
    <td><b>pizzas</b></td>
    <td>Stores pizza size and pricing details (pizza_id, pizza_type_id, size, price)</td>
  </tr>
  <tr>
    <td><b>pizza_types</b></td>
    <td>Stores pizza name and category information (pizza_type_id, name, category)</td>
  </tr>
</table>

<hr>

<h2>🧹 Data Cleaning & Validation</h2>

<ul>
  <li>Checked for NULL or missing values in critical columns</li>
  <li>Removed incomplete or inconsistent records</li>
  <li>Verified referential integrity between tables</li>
  <li>Validated total record counts</li>
</ul>

<hr>

<h2>📊 Analysis Performed</h2>

<h3>🛒 Orders & Demand Analysis</h3>
<ul>
  <li>Total unique orders</li>
  <li>Orders by month and weekday</li>
  <li>Repeat vs one-time customers</li>
  <li>Average orders per customer</li>
  <li>Cumulative order trends</li>
</ul>

<h3>💰 Revenue Analysis</h3>
<ul>
  <li>Total revenue from pizza sales</li>
  <li>Monthly and cumulative revenue trends</li>
  <li>Revenue contribution by pizza, size, and category</li>
</ul>

<h3>🍕 Menu Performance Analysis</h3>
<ul>
  <li>Highest priced pizza</li>
  <li>Most frequently ordered pizza size</li>
  <li>Top 5 pizzas by quantity sold</li>
  <li>Top 3 pizzas by revenue (overall & category-wise)</li>
</ul>

<h3>⏰ Time-Based Analysis</h3>
<ul>
  <li>Orders by hour of the day</li>
  <li>Peak ordering hours</li>
  <li>Busiest weekdays</li>
  <li>Seasonal sales patterns</li>
</ul>

<h3>👥 Customer Analysis</h3>
<ul>
  <li>Top 10 customers by total spending</li>
  <li>Customer segmentation (High-Value vs Regular)</li>
  <li>Repeat customer rate</li>
  <li>Average order size</li>
</ul>

<hr>

<h2>📈 Key Insights</h2>

<ul>
  <li>Evenings and weekends show peak order volumes</li>
  <li>Medium and Large pizzas dominate sales</li>
  <li>A small number of pizzas generate the majority of revenue</li>
  <li>High-value customers contribute significantly to repeat sales</li>
  <li>Seasonal demand indicates promotional opportunities</li>
</ul>

<hr>

<h2>💡 Business Recommendations</h2>

<ul>
  <li>Focus marketing efforts on high-revenue pizzas</li>
  <li>Introduce loyalty programs for repeat customers</li>
  <li>Optimize staffing during peak ordering hours</li>
  <li>Run targeted promotions during low-demand periods</li>
</ul>

<hr>

<h2>🛠️ MySQL Concepts Used</h2>

<ul>
  <li>JOINS & Subqueries</li>
  <li>GROUP BY, HAVING</li>
  <li>Aggregate Functions</li>
  <li>Window Functions</li>
  <li>Date & Time Functions</li>
  <li>Common Table Expressions (CTEs)</li>
</ul>

<hr>

<h2>🚀 How to Run This Project</h2>

<ol>
  <li>Clone the repository</li>
  <li>Create MySQL database <code>Dominos_Pizza_db</code></li>
  <li>Import SQL schema and data files</li>
  <li>Execute analysis queries</li>
  <li>Explore insights</li>
</ol>

<hr>

<h2>👨‍💻 Author</h2>

<p>
<b>Sahil Murti</b><br>
Aspiring Data Analyst<br>
📧 Email: sahilmurti18@gmail.com<br>
🔗 GitHub: <a href="https://github.com/sahilmurti07">github.com/sahilmurti07</a>
</p>

<hr>

<div align="center">

<h3>⭐ If you find this project useful, please consider giving it a star!</h3>

</div>
