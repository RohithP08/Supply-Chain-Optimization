---------#CREATING DATABASE----------

create database supplychain;

use supplychain;

-- Creating Suppliers table--------------------
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(255),
    contact_person VARCHAR(255),
    phone_number VARCHAR(15),
    email VARCHAR(255)
);

-- Insert data into Suppliers table
INSERT INTO Suppliers (supplier_id, supplier_name, contact_person, phone_number, email) VALUES
(1, 'Supplier A', 'John Smith', '123-456-7890', 'john@example.com'),
(2, 'Supplier B', 'Alice Johnson', '987-654-3210', 'alice@example.com'),
(3, 'Supplier C', 'Mark Brown', '456-789-0123', 'mark@example.com'),
(4, 'Supplier D', 'Sarah Lee', '789-123-4560', 'sarah@example.com'),
(5, 'Supplier E', 'Michael Green', '321-654-0987', 'michael@example.com'),
(6, 'Supplier F', 'Emily White', '654-098-3210', 'emily@example.com'),
(7, 'Supplier G', 'David Black', '987-321-6540', 'david@example.com'),
(8, 'Supplier H', 'Jessica Brown', '456-098-1237', 'jessica@example.com'),
(9, 'Supplier I', 'Daniel Smith', '012-345-6789', 'daniel@example.com'),
(10, 'Supplier J', 'Lisa Johnson', '789-456-1230', 'lisa@example.com'),
(11, 'Supplier K', 'Ryan Green', '234-567-8901', 'ryan@example.com'),
(12, 'Supplier L', 'Samantha White', '567-890-1234', 'samantha@example.com'),
(13, 'Supplier M', 'Chris Brown', '890-123-4567', 'chris@example.com'),
(14, 'Supplier N', 'Amanda Black', '123-456-7890', 'amanda@example.com'),
(15, 'Supplier O', 'Kevin Green', '345-678-9012', 'kevin@example.com'),
(16, 'Supplier P', 'Jennifer White', '678-901-2345', 'jennifer@example.com'),
(17, 'Supplier Q', 'Eric Brown', '901-234-5678', 'eric@example.com'),
(18, 'Supplier R', 'Michelle Black', '234-567-8901', 'michelle@example.com'),
(19, 'Supplier S', 'Brian Green', '456-789-0123', 'brian@example.com'),
(20, 'Supplier T', 'Ashley White', '789-012-3456', 'ashley@example.com');

-----#Creating Productstable--------------------------------
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    description TEXT,
    unit_price DECIMAL(10, 2),
    quantity_in_stock INT
);

-- Insert data into Products table
INSERT INTO Products (product_id, product_name, description, unit_price, quantity_in_stock) VALUES
(101, 'Widget X', 'Widget X description', 10.99, 100),
(102, 'Widget Y', 'Widget Y description', 15.99, 150),
(103, 'Widget Z', 'Widget Z description', 20.99, 200),
(104, 'Widget A', 'Widget A description', 8.99, 80),
(105, 'Widget B', 'Widget B description', 12.99, 120),
(106, 'Widget C', 'Widget C description', 18.99, 180),
(107, 'Widget D', 'Widget D description', 9.99, 90),
(108, 'Widget E', 'Widget E description', 14.99, 140),
(109, 'Widget F', 'Widget F description', 22.99, 220),
(110, 'Widget G', 'Widget G description', 11.99, 110),
(111, 'Widget H', 'Widget H description', 16.99, 160),
(112, 'Widget I', 'Widget I description', 21.99, 210),
(113, 'Widget J', 'Widget J description', 7.99, 70),
(114, 'Widget K', 'Widget K description', 13.99, 130),
(115, 'Widget L', 'Widget L description', 19.99, 190),
(116, 'Widget M', 'Widget M description', 10.49, 105),
(117, 'Widget N', 'Widget N description', 15.49, 155),
(118, 'Widget O', 'Widget O description', 23.49, 235),
(119, 'Widget P', 'Widget P description', 12.49, 124),
(120, 'Widget Q', 'Widget Q description', 17.49, 174);

-- Creating Orders table----------------------------
CREATE TABLE Orders (
    order_id VARCHAR(10) PRIMARY KEY,
    product_id INT,
    supplier_id INT,
    order_date DATE,
    quantity_ordered INT,
    order_status VARCHAR(20),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

-- Insert data into Orders table
INSERT INTO Orders (order_id, product_id, supplier_id, order_date, quantity_ordered, order_status) VALUES
('ORD-0001', 101, 1, '2023-11-02', 25, 'Completed'),
('ORD-0002', 102, 2, '2023-10-25', 30, 'In Progress'),
('ORD-0003', 103, 3, '2023-10-30', 20, 'Completed'),
('ORD-0004', 104, 4, '2023-11-05', 35, 'In Progress'),
('ORD-0005', 105, 5, '2023-11-08', 40, 'Completed'),
('ORD-0006', 106, 6, '2023-11-10', 45, 'In Progress'),
('ORD-0007', 107, 7, '2023-11-12', 50, 'Completed'),
('ORD-0008', 108, 8, '2023-11-15', 55, 'In Progress'),
('ORD-0009', 109, 9, '2023-11-18', 60, 'Completed'),
('ORD-0010', 110, 10, '2023-11-20', 65, 'In Progress'),
('ORD-0011', 111, 11, '2023-11-22', 70, 'Completed'),
('ORD-0012', 112, 12, '2023-11-25', 75, 'In Progress'),
('ORD-0013', 113, 13, '2023-11-28', 80, 'Completed'),
('ORD-0014', 114, 14, '2023-12-01', 85, 'In Progress'),
('ORD-0015', 115, 15, '2023-12-04', 90, 'Completed'),
('ORD-0016', 116, 16, '2023-12-07', 95, 'In Progress'),
('ORD-0017', 117, 17, '2023-12-10', 100, 'Completed'),
('ORD-0018', 118, 18, '2023-12-13', 105, 'In Progress'),
('ORD-0019', 119, 19, '2023-12-16', 110, 'Completed'),
('ORD-0020', 120, 20, '2023-12-19', 115, 'In Progress');

-- Create Shipments table
CREATE TABLE Shipments (
    shipment_id VARCHAR(10) PRIMARY KEY,
    order_id VARCHAR(10),
    shipment_date DATE,
    delivery_date DATE,
    shipping_company VARCHAR(50),
    tracking_number VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Insert data into Shipments table
INSERT INTO Shipments (shipment_id, order_id, shipment_date, delivery_date, shipping_company, tracking_number) VALUES
('SH-0001', 'ORD-0001', '2023-11-03', '2023-11-05', 'UPS', 'UPS123456'),
('SH-0002', 'ORD-0002', '2023-10-28', '2023-10-30', 'FedEx', 'FDX789012'),
('SH-0003', 'ORD-0003', '2023-11-01', '2023-11-03', 'DHL', 'DHL456789'),
('SH-0004', 'ORD-0004', '2023-11-06', '2023-11-08', 'UPS', 'UPS987654'),
('SH-0005', 'ORD-0005', '2023-11-09', '2023-11-12', 'FedEx', 'FDX654321'),
('SH-0006', 'ORD-0006', '2023-11-11', '2023-11-14', 'DHL', 'DHL987654'),
('SH-0007', 'ORD-0007', '2023-11-13', '2023-11-16', 'UPS', 'UPS456789'),
('SH-0008', 'ORD-0008', '2023-11-16', '2023-11-19', 'FedEx', 'FDX123456'),
('SH-0009', 'ORD-0009', '2023-11-19', '2023-11-22', 'DHL', 'DHL789012'),
('SH-0010', 'ORD-0010', '2023-11-21', '2023-11-24', 'UPS', 'UPS987123'),
('SH-0011', 'ORD-0011', '2023-11-23', '2023-11-26', 'FedEx', 'FDX456789'),
('SH-0012', 'ORD-0012', '2023-11-26', '2023-11-29', 'DHL', 'DHL654321'),
('SH-0013', 'ORD-0013', '2023-11-29', '2023-12-02', 'UPS', 'UPS789456'),
('SH-0014', 'ORD-0014', '2023-12-02', '2023-12-05', 'FedEx', 'FDX987654'),
('SH-0015', 'ORD-0015', '2023-12-05', '2023-12-08', 'DHL', 'DHL321098'),
('SH-0016', 'ORD-0016', '2023-12-08', '2023-12-11', 'UPS', 'UPS654987'),
('SH-0017', 'ORD-0017', '2023-12-11', '2023-12-14', 'FedEx', 'FDX321654'),
('SH-0018', 'ORD-0018', '2023-12-14', '2023-12-17', 'DHL', 'DHL987321'),
('SH-0019', 'ORD-0019', '2023-12-17', '2023-12-20', 'UPS', 'UPS654321'),
('SH-0020', 'ORD-0020', '2023-12-20', '2023-12-23', 'FedEx', 'FDX987654');

---#SQL Analysis------------
#1) Select all records from the Suppliers table.
select * from suppliers;

#2) Select product name and unit price from the Products table
select product_name, unit_price from products;

#3) Select order IDs and order dates from the Orders table
select order_id,order_date from orders;

#4) Select shipment IDs and shipment dates from the Shipments table
select shipment_id,shipment_date from shipments;

#5) Count the total number of products in stock
select sum(quantity_in_stock) as total_products from products;

#6) Calculate the average unit price of products
select avg(unit_price) from products;

#7) Find the maximum quantity ordered
select max(quantity_ordered) from orders;

#8) List suppliers along with their contact persons
select supplier_id, supplier_name, contact_person from suppliers;

#9) List products with their descriptions
select product_name,description from products;

#10) Display shipment details including the tracking number
select shipment_id, shipping_company, tracking_number from shipments;

#11) List orders along with the associated supplier information
select o.order_id,o.order_date,su.supplier_name from orders o 
join suppliers su on o.supplier_id=su.supplier_id;

#12) Display products that have a unit price greater than $15
select * from products where unit_price > 15
group by product_id;

#13) Count the number of orders per supplier
select supplier_id,count(order_id) from orders group by supplier_id;

#14) Calculate the total quantity ordered for each product
select product_id,sum(quantity_ordered) from orders group by product_id;

#15) List shipments along with the associated order information
select sh.*,o.order_id,o.order_date from shipments sh join orders o on o.order_id=sh.order_id;

#16) Find suppliers with more than 2 contacts
select supplier_id,count(contact_person) as contact_count from suppliers 
group by supplier_id
having count(contact_person) > 2;

SELECT * FROM Suppliers;

-- As we are getting zero data so insert some data
INSERT INTO Suppliers (supplier_id, supplier_name, contact_person, phone_number, email) VALUES
(21, 'Supplier A', 'John Smith', '123-456-7890', 'john@example.com'),
(22, 'Supplier A', 'Jane Doe', '456-789-0123', 'jane@example.com'),
(23, 'Supplier A', 'Michael Johnson', '789-123-4560', 'michael@example.com'),
(24, 'Supplier B', 'Alice Johnson', '987-654-3210', 'alice@example.com'),
(25, 'Supplier B', 'Bob Brown', '654-321-0987', 'bob@example.com'),
(26, 'Supplier C', 'Mark Brown', '456-789-0123', 'mark@example.com');

INSERT INTO Suppliers (supplier_id, supplier_name, contact_person, phone_number, email) VALUES
(27, 'Supplier A', 'Jane Doe', '456-789-0123', 'jane@example.com'),
(28, 'Supplier A', 'Michael Johnson', '789-123-4560', 'michael@example.com'),
(29, 'Supplier B', 'Bob Brown', '654-321-0987', 'bob@example.com'),
(30, 'Supplier C', 'Mark Brown', '456-789-0123', 'mark@example.com');
INSERT INTO Suppliers (supplier_id, supplier_name, contact_person, phone_number, email) VALUES
(31, 'Supplier C', 'Mark Brown', '456-789-0123', 'mark@example.com'),
(32, 'Supplier C', 'Mark Brown', '456-789-0123', 'mark@example.com');

#17) Calculate the average quantity ordered per order
select order_id, avg(quantity_ordered) as avg_q_per_order from orders
group by order_id;

#18) List products along with the total number of orders they are associated with.
select p.product_id, p.product_name, count(o.order_id) as total_orders from products p
join orders o on o.product_id=p.product_id
group by p.product_id;

#19) Display orders that are in progress (order_status = 'In Progress')
select * from orders where order_status="In Progress";

#20) Find the earliest and latest order dates
select min(order_date) as earliest, max(order_date) as latest from orders;

#21) Calculate the total revenue generated from orders
select sum(p.unit_price * o.quantity_ordered) as total_revenue from orders o 
inner join products p on p.product_id=o.product_id;

#22) List suppliers along with the total quantity ordered from them
select su.supplier_id,su.supplier_name, sum(o.quantity_ordered) as total_quan_ordered from suppliers su
join orders o on o.supplier_id=su.supplier_id
group by su.supplier_id;

#23) Find products with the highest unit price
select * from products where unit_price=(select max(unit_price) from products);

#24) List orders along with the associated supplier and product information
select o.order_id, o.order_date, su.supplier_name, p.product_name from orders o 
inner join suppliers su on su.supplier_id=o.supplier_id
inner join products p on p.product_id=o.product_id;

#25) Display the top 3 products with names and with the highest quantity ordered
select o.order_id,o.quantity_ordered, p.product_name from orders o
inner join products p on p.product_id=o.product_id
group by o.order_id
order by o.quantity_ordered desc limit 3;

#26) Find the percentage of completed orders out of total orders
select (count(case when order_status='completed' then 1 end)/count(*)) * 100 as completion_rate from orders;

#27) Calculate the total number of shipments per shipping company
select shipping_company, count(shipment_id) as total from shipments
group by shipping_company;

#28) List suppliers who have not yet made any orders
select su.* from suppliers su 
left join orders o on o.supplier_id=su.supplier_id
where su.supplier_id is null; 

#29) Display orders along with the corresponding shipment details, if available.
select o.order_id,o.order_date,sh.shipment_date,sh.delivery_date from orders o join shipments sh on
sh.order_id=o.order_id;

#30) Find the top 5 suppliers with the highest total quantity ordered.
select su.supplier_id,su.supplier_name, sum(o.quantity_ordered) as highest_quan_ordered from orders o
join suppliers su on su.supplier_id=o.supplier_id
group by su.supplier_id
order by highest_quan_ordered desc limit 5;

#31) Find the total revenue generated by each supplier
select su.supplier_id,su.supplier_name, sum(p.unit_price * o.quantity_ordered) as total_revenue from orders o
inner join suppliers su on su.supplier_id=o.supplier_id
inner join products p on p.product_id=o.product_id
group by su.supplier_id;

#32) Calculate the average delivery time for each shipping company.
select shipping_company, round(avg(datediff(delivery_date,shipment_date)),1) as avg_deli_time from shipments
group by shipping_company;

#33) Identify products that have never been ordered
SELECT p.product_id, p.product_name
FROM Products p
LEFT JOIN Orders o ON p.product_id = o.product_id
WHERE o.product_id IS NULL;

#34) Find the top 3 shipping companies with the most shipments
select shipping_company,count(shipment_id) as most_shipments from shipments
group by shipping_company
order by most_shipments desc limit 3;

#35) Calculate the percentage of orders that were completed for each supplier.
select su.supplier_id,su.supplier_name,
sum(case when o.order_status = 'completed' then 1 else 0 end)/COUNT(*) *100 as pct_completed_orders from suppliers su
join orders o on o.supplier_id=su.supplier_id
group by su.supplier_id;

#36) Identify products with low inventory levels (less than 50 in stock) that need restocking.
select * from products
where quantity_in_stock <50;

#37) Find the top 5 suppliers with the highest total revenue.
select su.supplier_id,su.supplier_name, sum(p.unit_price * o.quantity_ordered) as total_revenue from orders o
join suppliers su on su.supplier_id=o.supplier_id
join products p on p.product_id=o.product_id
group by su.supplier_id
order by total_revenue desc limit 5;

#38) Calculate the total number of orders made each month.
select date_format(order_Date, '%Y-%m') as month,count(*) as total_orders from orders
group by date_format(order_Date, '%Y-%m');

#39) Identify suppliers with declining order trends over the past three months.
select su.supplier_id,su.supplier_name from suppliers su
join orders o on o.supplier_id=su.supplier_id
where order_date >= date_sub(current_date, interval 3 month)
group by su.supplier_id,su.supplier_name
having count(distinct date_format(order_date, '%Y-%m')) < 3;

#40) Calculate the average shipment duration for each supplier.
select su.supplier_id,su.supplier_name, avg(datediff(sh.delivery_date,sh.shipment_date)) as avg_duration from suppliers su
join orders o on o.supplier_id=su.supplier_id
join shipments sh on sh.order_id=o.order_id
group by su.supplier_id,su.supplier_name;

#41) Identify Seasonal Demand Patterns.
select date_format(order_date, '%Y-%m') as month,  
sum(quantity_ordered) as total_qnt_ordered
from orders
group by date_format(order_date, '%Y-%m')
order by total_qnt_ordered;

#42) Product Popularity Trends.
select p.product_id,p.product_name,count(*) as total_orders from products p
join orders o on o.product_id=p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_orders DESC;
