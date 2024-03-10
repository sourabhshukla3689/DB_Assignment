CREATE TABLE Product_Category (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL UNIQUE,
  desc TEXT,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

CREATE TABLE Product (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  desc TEXT,
  SKU VARCHAR(255) UNIQUE,  
  category_id INT NOT NULL,
  discount_id INT,  
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP,
  inventory_id INT UNIQUE,  
  price DECIMAL,
  FOREIGN KEY (category_id) REFERENCES Product_Category(id),
  FOREIGN KEY (discount_id) REFERENCES Discount(id)  
);

CREATE TABLE Product_Inventory (  
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  quantity INT,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

CREATE TABLE Discount (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  desc TEXT,
  discount_percent DECIMAL,
  active BOOLEAN,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);
