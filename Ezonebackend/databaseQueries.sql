CREATE TABLE category (

	id IDENTITY,

	name VARCHAR(50),

	description VARCHAR(255),

	image_url VARCHAR(50),

	is_active BOOLEAN,

	CONSTRAINT pk_category_id PRIMARY KEY (id) 



);


CREATE TABLE user_detail (

	id IDENTITY,

	first_name VARCHAR(50),

	last_name VARCHAR(50),

	role VARCHAR(50),

	enabled BOOLEAN,

	password VARCHAR(60),

	email VARCHAR(100),

	contact_number VARCHAR(15),	

	CONSTRAINT pk_user_id PRIMARY KEY(id)

);


CREATE TABLE product (

	id IDENTITY,

	code VARCHAR(20),

	name VARCHAR(50),

	brand VARCHAR(50),

	description VARCHAR(255),

	unit_price DECIMAL(10,2),

	quantity INT,

	is_active BOOLEAN,

	category_id INT,

	supplier_id INT,

	purchases INT DEFAULT 0,

	views INT DEFAULT 0,

	CONSTRAINT pk_product_id PRIMARY KEY (id),

 	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),

	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),	

);	
-- adding three categories

INSERT INTO category (name, description,image_url,is_active) VALUES ('Laptop', 'This is description for Laptop category!', 'CAT_1.png', true);

INSERT INTO category (name, description,image_url,is_active) VALUES ('Television', 'This is description for Television category!', 'CAT_2.png', true);

INSERT INTO category (name, description,image_url,is_active) VALUES ('Mobile', 'This is description for Mobile category!', 'CAT_3.png', true);

-- adding three users 

INSERT INTO user_detail 

(first_name, last_name, role, enabled, password, email, contact_number) 

VALUES ('Amit', 'Kumar', 'ADMIN', true, 'amit123@', 'vk@gmail.com', '8888888888');

INSERT INTO user_detail 

(first_name, last_name, role, enabled, password, email, contact_number) 

VALUES ('Sumit', 'Kumar', 'SUPPLIER', true, 'sumit123@', 'rj@gmail.com', '9999999999');

INSERT INTO user_detail 

(first_name, last_name, role, enabled, password, email, contact_number) 

VALUES ('Mukund', 'Chaurasia', 'SUPPLIER', true, 'mukund123@', 'ra@gmail.com', '7777777777');

INSERT INTO user_detail 

(first_name, last_name, role, enabled, password, email, contact_number) 

VALUES ('Aakash', 'tyagi', 'USER', true, 'tyagi123@', 'tyagi@gmail.com', '7777777777');



-- adding five products

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)

VALUES ('PRDABC123DEFX', 'iPhone 5s', 'apple', 'Phone having lots of features!', 18000, 5, true, 3, 2, 0, 0 );

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)

VALUES ('PRDDEF123DEFX', 'Samsung note8', 'samsung', 'A smart phone by samsung!', 32000, 2, true, 3, 3, 0, 0 );

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)

VALUES ('PRDPQR123WGTX', 'Google Pixel', 'google', 'Have lots of feature!', 57000, 5, true, 3, 2, 0, 0 );

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)

VALUES ('PRDMNO123PQRX', ' Macbook Pro', 'apple', 'Sasta he le lo ni to jane do!', 54000, 3, true, 1, 2, 0, 0 );

INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)

VALUES ('PRDABCXYZDEFX', 'Dell Latitude E6510', 'dell', 'Liked by many of our customer!', 48000, 5, true, 1, 3, 0, 0 );



