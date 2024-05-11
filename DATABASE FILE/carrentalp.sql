SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS  cars (
 car_id  int(20) NOT NULL,
   car_name  varchar(50) NOT NULL,
   car_nameplate  varchar(50) NOT NULL,
   car_img  varchar(50) DEFAULT  'NA' ,
   ac_price  float NOT NULL,
   non_ac_price  float NOT NULL,
   ac_price_per_day  float NOT NULL,
   non_ac_price_per_day  float NOT NULL,
   car_availability  varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


INSERT INTO cars (car_id, car_name, car_nameplate, car_img, ac_price, non_ac_price, ac_price_per_day, non_ac_price_per_day, car_availability) VALUES
(1, 'Audi A4', 'GA3KA6969', 'assets/img/cars/audi-a4.jpg', 36, 26, 5200, 2600, 'yes'),
(2, 'Hyundai Creta', 'BA2CH2020', 'assets/img/cars/creta.jpg', 22, 12, 2900, 1400, 'yes'),
(3, 'BMW 6-Series', 'BA10PA5555', 'assets/img/cars/bmw6.jpg', 39, 30, 6950, 5999, 'yes'),
(4, 'Mercedes-Benz E-Class', 'BA10CH6009', 'assets/img/cars/mcec.jpg', 45, 30, 7200, 5200, 'yes'),
(6, 'Ford EcoSport', 'GA4PA2587', 'assets/img/cars/ecosport.png', 21, 13, 3890, 2600, 'yes'),
(7, 'Honda Amaze', 'PJ16YX8820', 'assets/img/cars/amaze.png', 14, 12, 2800, 2400, 'no'),
(8, 'Land Rover Range Sport', 'GA5KH9669', 'assets/img/cars/rangero.jpg', 36, 26, 6000, 4600, 'yes'),
(9, 'MG Hector', 'GA6PA6666', 'assets/img/cars/mghector.jpg', 20, 12, 2900, 1400, 'yes'),
(10, 'Honda CR-V', 'TN17MS1997', 'assets/img/cars/hondacr.jpg', 22, 15, 2850, 1400, 'yes'),
(11, 'Mahindra XUV 500', 'KA12EX1883', 'assets/img/cars/Mahindra XUV.jpg', 15, 13, 3000, 2600, 'yes'),
(12, 'Toyota Fortuner', 'GA08MX1997', 'assets/img/cars/Fortuner.png', 16, 14, 3200, 2800, 'yes'),
(13, 'Hyundai Veloster', 'BA20PA5685', 'assets/img/cars/hyundai0.png', 23, 15, 4500, 3500, 'yes'),
(14, 'Jaguar XF', 'GA8KH8866', 'assets/img/cars/jaguarxf.jpg', 39, 29, 6100, 4380, 'yes');


CREATE TABLE IF NOT EXISTS  clientcars  (
   car_id  int(20) NOT NULL,
   client_username  varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO clientcars (car_id, client_username) VALUES
(1, 'harry'),
(3, 'harry'),
(7, 'harry'),
(8, 'harry'),
(9, 'harry'),
(11, 'harry'),
(12, 'harry'),
(2, 'jenny'),
(4, 'jenny'),
(6, 'jenny'),
(10, 'jenny'),
(13, 'jenny'),
(14, 'jenny');


CREATE TABLE IF NOT EXISTS  clients  (
   client_username  varchar(50) NOT NULL,
   client_name  varchar(50) NOT NULL,
   client_phone  varchar(15) NOT NULL,
   client_email  varchar(25) NOT NULL,
   client_address  varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
   client_password  varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO clients (client_username, client_name, client_phone, client_email, client_address, client_password) VALUES
('harry', 'Harry Den', '9876543210', 'harryden@gmail.com', '2477 Harley Vincent Drive', 'password'),
('jenny', 'Jeniffer Washington', '7850000069', 'washjeni@gmail.com', '4139 Mesa Drive', 'password'),
('tom', 'Tommy Doee', '900696969', 'tom@gmail.com', '4645 Dawson Drive', 'password');


CREATE TABLE IF NOT EXISTS  customers  (
   customer_username  varchar(50) NOT NULL,
   customer_name  varchar(50) NOT NULL,
   customer_phone  varchar(15) NOT NULL,
   customer_email  varchar(25) NOT NULL,
   customer_address  varchar(50) NOT NULL,
   customer_password  varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO customers (customer_username, customer_name, customer_phone, customer_email, customer_address, customer_password) VALUES
('antonio', 'Antonio M', '0785556580', 'antony@gmail.com', '2677 Burton Avenue', 'password'),
('christine', 'Christine', '8544444444', 'chr@gmail.com', '3701 Fairway Drive', 'password'),
('ethan', 'Ethan Hawk', '69741111110', 'thisisethan@gmail.com', '4554 Rowes Lane', 'password'),
('james', 'James Washington', '0258786969', 'james@gmail.com', '2316 Mayo Street', 'password'),
('lucas', 'Lucas Rhoades', '7003658500', 'lucas@gmail.com', '2737 Fowler Avenue', 'password');

CREATE TABLE IF NOT EXISTS  driver  (
 driver_id  int(20) NOT NULL,
   driver_name  varchar(50) NOT NULL,
   dl_number  varchar(50) NOT NULL,
   driver_phone  varchar(15) NOT NULL,
   driver_address  varchar(50) NOT NULL,
   driver_gender  varchar(10) NOT NULL,
   client_username  varchar(50) NOT NULL,
   driver_availability  varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO driver (driver_id, driver_name, dl_number, driver_phone, driver_address, driver_gender, client_username, driver_availability) VALUES
(1, 'Bruno Den', '27840218658', '9547863157', '1782 Vineyard Drive', 'Male', 'harry', 'yes'),
(2, 'Will Williams', '03191563155', '9147523684', '4354 Hillcrest Drive', 'Male', 'harry', 'yes'),
(3, 'Steeve Rogers', '32346288078', '9147523682', '1506 Skinner Hollow Road', 'Male', 'harry', 'yes'),
(4, 'Ivy', '04316015965', '9187563240', '4680 Wayside Lane', 'Female', 'jenny', 'no'),
(5, 'Pamela C Benson', '68799466631', '7584960123', 'Urkey Pen Road', 'Female', 'jenny', 'yes'),
(6, 'Billy Williams', '36740186040', '8421025476', '2898 Oxford Court', 'Male', 'tom', 'yes'),
(7, 'Nicolas', '44919316260', '7541023695', 'Breezewood Court', 'Male', 'harry', 'yes'),
(8, 'Stephen Strange', '94592817723', '5215557850', 'Fairview Street12', 'Male', 'jenny', 'yes');


CREATE TABLE IF NOT EXISTS  rentedcars  (
 id  int(100) NOT NULL,
   customer_username  varchar(50) NOT NULL,
   car_id  int(20) NOT NULL,
   driver_id  int(20) NOT NULL,
   booking_date  date NOT NULL,
   rent_start_date  date NOT NULL,
   rent_end_date  date NOT NULL,
   car_return_date  date DEFAULT NULL,
   fare  double NOT NULL,
   charge_type  varchar(25) NOT NULL DEFAULT  'days' ,
   distance  double DEFAULT NULL,
   no_of_days  int(50) DEFAULT NULL,
   total_amount  double DEFAULT NULL,
   return_status  varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=574681260 DEFAULT CHARSET=utf8;


ALTER TABLE cars
ADD PRIMARY KEY (car_id),
ADD UNIQUE KEY car_nameplate (car_nameplate);

ALTER TABLE clientcars
ADD PRIMARY KEY (car_id),
ADD KEY client_username (client_username);

ALTER TABLE clients
ADD PRIMARY KEY (client_username);

ALTER TABLE customers
ADD PRIMARY KEY (customer_username);

ALTER TABLE driver
ADD PRIMARY KEY (driver_id),
ADD UNIQUE KEY dl_number (dl_number),
ADD KEY client_username (client_username);

ALTER TABLE rentedcars
ADD PRIMARY KEY (id),
ADD KEY customer_username (customer_username),
ADD KEY car_id (car_id),
ADD KEY driver_id (driver_id);

ALTER TABLE cars
MODIFY car_id int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE driver
MODIFY driver_id int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE rentedcars
MODIFY id int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681260;

ALTER TABLE clientcars
ADD CONSTRAINT clientcars_ibfk_1 FOREIGN KEY (client_username) REFERENCES clients (client_username),
ADD CONSTRAINT clientcars_ibfk_2 FOREIGN KEY (car_id) REFERENCES cars (car_id);

ALTER TABLE driver
ADD CONSTRAINT driver_ibfk_1 FOREIGN KEY (client_username) REFERENCES clients (client_username);

ALTER TABLE rentedcars
ADD CONSTRAINT rentedcars_ibfk_1 FOREIGN KEY (customer_username) REFERENCES customers (customer_username),
ADD CONSTRAINT rentedcars_ibfk_2 FOREIGN KEY (car_id) REFERENCES cars (car_id),
ADD CONSTRAINT rentedcars_ibfk_3 FOREIGN KEY (driver_id) REFERENCES driver (driver_id);
