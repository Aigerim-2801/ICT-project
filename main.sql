CREATE TABLE product_category (
id DECIMAL(12),
category_name VARCHAR(255),
PRIMARY KEY(id)
);

Insert into product_category
values (12,'hobby, comfort and sport');
Insert into product_category
values (15,'job');
Insert into product_category
values (17, 'fashion and style');
Insert into product_category
values (39,'electronics');
Insert into product_category
values (95,'transport');
Insert into product_category
values (21,'realty');
Insert into product_category
values (51,'house and garden');
Insert into product_category
values (71, 'childrens world');
Insert into product_category
values (93,'animals');
Insert into product_category
values (59,'services');

CREATE TABLE product_photo (
id INT,
url VARCHAR,
PRIMARY KEY(id)
);

Insert into product_photo
values (1513,'https://frankfurt.apollo.olxcdn.com/v1/files/w9fdkbpsr22w1-KZ/image;s=644x461');
Insert into product_photo
values (1538,'https://frankfurt.apollo.olxcdn.com/v1/files/h7hap9mz80s93-KZ/image;s=644x461');
Insert into product_photo
values (1546, 'https://www.olx.kz/obyavlenie/kia-optima-IDjnnUH.html#ad6be85722');
Insert into product_photo
values (1564,'https://www.olx.kz/obyavlenie/garri-potter-vsya-seriya-diskov-IDivcnk.html#ff94ffe88b');
Insert into product_photo
values (1568,'https://www.olx.kz/obyavlenie/persi-dzhekson-i-more-chudovisch-IDjxG5g.html#27c84136f0');
Insert into product_photo
values (1315,'https://frankfurt.apollo.olxcdn.com/v1/files/jao0jsg1yujq2-KZ/image;s=1000x700');
Insert into product_photo
values (1835,'https://www.olx.kz/obyavlenie/alabay-schenki-prodam-IDjpW4r.html#2e4bf9e71f');
Insert into product_photo
values (1645, 'https://www.olx.kz/obyavlenie/sandyk-IDj1HmQ.html#fd8f62a69e;promoted');
Insert into product_photo
values (1465,'https://www.olx.kz/obyavlenie/rezinovye-i-gelivye-osliki-hit-prodazh-IDa1ShM.html#514d653c48;promoted');
Insert into product_photo
values (1865,'https://frankfurt.apollo.olxcdn.com/v1/files/opc115b6925l2-KZ/image;s=1000x700');

CREATE TABLE products(
id INT,
product_name VARCHAR,
price INT,
color_of_product VARCHAR,
product_location VARCHAR,
photo_id INT,
category_id DECIMAL(12),
Primary key (id), 
FOREIGN KEY(photo_id)
REFERENCES product_photo(id),
FOREIGN KEY(category_id)
REFERENCES product_category(id)
);

Insert into products 
values (1,'PlayStation 4 slim', 140000, 'black', 'Almaty', 1513, 39);
Insert into products 
values (2,'SALOMON Speedcross 4', 30000, 'blue', 'Almaty', 1835, 12);
Insert into products 
values (3, 'Percy Jackson: Sea of monsters', 2000, 'multicolor', 'Kaskelen', 1568, 12);
Insert into products 
values (4,'Harry Potter: all episodes' , 7000, 'black', 'Karaganda', 1564, 12);
Insert into products
values (5,'Kia Optima', 4500000, 'gray', 'Petropavlosk', 1546, 95);

Insert into products 
values (61,'Photographer', 22500, 'no color', 'Nur-sultan', 1315, 59);
Insert into products 
values (62,'Alabai', 35000, 'white', 'Taldykorgan', 1538, 93);
Insert into products 
values (63, 'chest', 90000, 'white', 'Aktau', 1645, 51);
Insert into products 
values (64,'gel donkeys' , 4000, 'multicolor', 'Alma-Ata', 1465, 71);
Insert into products
values (65,'flat: 2 rooms', 10500000, 'no color', 'Aktau', 1865, 21);

CREATE TABLE customers(
Id INT,
first_name VARCHAR,
last_name VARCHAR,
country VARCHAR,
city VARCHAR,
products_id INT,
Primary key (id), 
FOREIGN KEY(products_id)
REFERENCES products (id)
);

Insert into customers
values (6,' Zhanna', 'Dark', 'Kazakhstan', 'Almaty', 2);
Insert into customers
values (7,'Jackie', 'Chan', 'China', 'Hong Kong',3);
Insert into customers
values (8, 'Vin', 'Diesel', 'USA', 'California', 5);
Insert into customers
values (9,'Angelina' , 'Jolie', 'USA', 'Los-Angeles', 4);
Insert into customers
values (10,'Robert', 'Downey Jr', 'USA', 'New-York', 1);
Insert into customers
values (6,'Aigerim', 'Mukanova', 'Kazakhstan', 'Almaty', 62);
Insert into customers
values (7,'Ayana', 'Nurzhanova', 'Kazahstan', 'Hong Kong',63);
Insert into customers
values (8, 'Abzal', 'Kairken', 'Kazakhstan', 'California', 65);
Insert into customers
values (9,'Kathrin' , 'Peers', 'Russia', 'Los-Angeles', 64);
Insert into customers
values (10,'Alaija', 'Gath', 'USA', 'New-York', 61);

CREATE TABLE olx_location(
Id INT,
country VARCHAR,
city VARCHAR,
Primary key (id)
);

Insert into olx_location
values (318, 'Romania', 'Bucharest');
Insert into olx_location
values (324,'Kazakhstan', 'Alma-Ata');
Insert into olx_location
values (346, 'India', 'Mumbai');
Insert into olx_location
values (364,'Bulgaria', 'Sofia');
Insert into olx_location
values (368,'Ukraina', 'Kiev');
Insert into olx_location
values (325, 'Uzbekistan', 'Tashkent');
Insert into olx_location
values (328,'Italy', 'Rome');
Insert into olx_location
values (316, 'Turkey', 'Istanbul');
Insert into olx_location
values (344,'Germany', 'Berlin');
Insert into olx_location
values (378,'Spain', 'Madrid');

CREATE TABLE employees(
Id INT,
first_name VARCHAR,
last_name VARCHAR,
hire_date DATE,
customer_id INT,
products_id INT,
location_id INT,
Primary key (id), 
FOREIGN KEY(customer_id)
REFERENCES customers(Id),
FOREIGN KEY(products_id)
REFERENCES products (id),
FOREIGN KEY(location_id)
REFERENCES olx_location (id)
);

Insert into employees
values (6,'Murdoch', 'Ashford', '2020-01-15', 6, 2, 324);
Insert into employees
values (7,'Britt', 'Sponton', '2018-06-05', 7, 3, 318);
Insert into employees
values (8, 'Urban', 'Artrick', '2019-08-26', 8, 5, 368);
Insert into employees
values (9,'Adolph' , 'Del Checolo', '2015-08-30', 9, 4, 364);
Insert into employees
values (10,'Katrine', 'Winkworth', '2017-10-07', 10, 1, 346);
Insert into employees
values (36,'Haly', 'Fakor', '2020-11-15', 6, 2, 324);
Insert into employees
values (37,'Giply', 'Ton', '2018-02-05', 7, 3, 318);
Insert into employees
values (38, 'Jeily', 'Port', '2019-10-26', 8, 5, 368);
Insert into employees
values (39,'Darla' , 'Harfey', '2015-12-30', 9, 4, 364);
Insert into employees
values (30,'Nadia', 'Loca', '2017-03-07', 10, 1, 346);

CREATE TABLE company_products(
id DECIMAL(12),
company_products_name VARCHAR(255),
company_products_color text,
company_products_manufacturer text,
category_id DECIMAL(12),
photo_id INT,
Primary key (id),
FOREIGN KEY(photo_id)
REFERENCES product_photo(id),
FOREIGN KEY(category_id)
REFERENCES product_category(id)
);

Insert into company_products 
values (42,'cars','grey','Toyota', 1513, 1);
Insert into users_products 
values (43,'iron','white','Tefal', 1538, 15);
Insert into users_products 
values (44,'drill','blue','Metabo', 1568, 17);
Insert into users_products 
values (45,'Wireless headphone','black','Verbatim', 1564, 51);
Insert into users_products
values (46,'chair','orange','Boston', 1546, 39);
Insert into company_products 
values (42,'fen','brown','Rowenta', 1315, 12);
Insert into users_products 
values (43,'Printer','black','Canon', 1835, 15);
Insert into users_products 
values (44,'drill','blue','Metabo', 1865, 17);
Insert into users_products 
values (45,'mixer','yellow','Phililps', 1465, 95);
Insert into users_products
values (46,'oven','red','Moyo', 1645, 39);

CREATE TABLE companies (
id DECIMAL(12),
company_name VARCHAR(255),
company_city text,
products_id DECIMAL(12),
Primary key (id), 
FOREIGN KEY(products_id)
REFERENCES company_products(id)
);

Insert into companies 
values (7,'Hilli Home Textile', 'Nur-Sultan','Toyota', 42);
Insert into companies 
values (19,'7Tex','Karaganda','Tefal',43);
Insert into companies
values (28,'Texvibe','Almaty','Metabo', 44);
Insert into companies
values (36,'A-Group', 'Karaganda','Verbatim', 45);
Insert into companies
values (54,'AM Imports', 'Almaty', 'Boston', 46);
Insert into companies 
values (7,'Hilli Home Textile', 'Nur-Sultan','Toyota', 42);
Insert into companies 
values (19,'Assel','Karaganda','Tefal',43);
Insert into companies
values (28,'Medina','Almaty','Metabo', 44);
Insert into companies
values (36,'Unitex', 'Karaganda','Verbatim', 45);
Insert into companies
values (54,'Global Safety line', 'Almaty', 'Boston', 46);

CREATE TABLE users_products(
id DECIMAL(12),
users_products_name VARCHAR(255),
users_products_color text,
users_products_condition text,
category_id DECIMAL(12),
photo_id INT,
Primary key (id), 
FOREIGN KEY(photo_id)
REFERENCES product_photo(id),
FOREIGN KEY(category_id)
REFERENCES product_category(id)
);

Insert into users_products 
values (106,'guitar','red','new', 12, 1513);
Insert into users_products 
values (107,'stroller','black','second-hand', 15, 1538);
Insert into users_products 
values (108,'phone','gold','new', 17, 1568);
Insert into users_products 
values (109,'headphone','white','new', 95, 1564);
Insert into users_products
values (110,'motorcycle','orange','second-hand', 39, 1546);
Insert into users_products 
values (106,'guitar','red','new', 12, 1513);
Insert into users_products 
values (107,'stroller','black','second-hand', 15, 1538);
Insert into users_products 
values (108,'phone','gold','new', 17, 1568);
Insert into users_products 
values (109,'headphone','white','new', 95, 1564);
Insert into users_products
values (110,'motorcycle','orange','second-hand', 39, 1546);

Create table application_users (
id DECIMAL(12),
users_name VARCHAR(255),
users_city text,
users_products_id DECIMAL(12),
PRIMARY KEY (id),
FOREIGN KEY(users_products_id)
REFERENCES users_products(id)
);

INSERT INTO application_users 
VALUES (101,'Aiym','Almaty', 106);
INSERT INTO application_users 
VALUES (102,'Gulbanu','Alyrau', 107);
INSERT INTO application_users 
VALUES (103,'Aida','Shymkent', 108);
INSERT INTO application_users 
VALUES (104,'Gulsim','Aktobe', 109);
INSERT INTO application_users 
VALUES (105,'Alima','Nur-Sultan', 110);
INSERT INTO application_users 
VALUES (101,'Aiym','Almaty', 106);
INSERT INTO application_users 
VALUES (102,'Gulbanu','Alyrau', 107);
INSERT INTO application_users 
VALUES (103,'Aida','Shymkent', 108);
INSERT INTO application_users 
VALUES (104,'Gulsim','Aktobe', 109);
INSERT INTO application_users 
VALUES (105,'Alima','Nur-Sultan', 110);
