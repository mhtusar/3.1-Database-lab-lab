/*

 Project Name:MH's Computer Shop Management System
 Platform:Neatbeans 8.2 
Language:Java(Java swing)
Database Language:Sql
Team Member:1.Md Mahamudul Hasan
              Id:180204131
             2.Tasmia Tahmida
			 Id:180204140
*/

CREATE DATABASE MH_COMPUTER

----Here we are create CasIher Table----

CREATE TABLE CASIHER
(
	Casiher_Id int IDENTITY(1,1)  PRIMARY KEY,
	Casiher_Name varchar(50) NOT NULL,
	Casiher_Contract_Number varchar(11) NOT NULL,
	Cashier_Email varchar(40) NOT NULL,
	UserName varchar(20) NOT NULL,
	Password varchar (20) NOT NULL,
	
)

INSERT INTO CASIHER VALUES('Md Tusher','01863841578','thehasan120725@gmail.com','tusher','180204131')
INSERT INTO CASIHER VALUES('Md Munna','01863841579','themunna120725@gmail.com','munna','180204100')
INSERT INTO CASIHER VALUES('Noushin','01863841570','thenoushin120725@gmail.com','noushin','180204120')
INSERT INTO CASIHER VALUES('Md Safin','01863841571','thesafin120725@gmail.com','safin','180204119')
INSERT INTO CASIHER VALUES('Tasmia','01863841572','thetasmia120725@gmail.com','tasmia','180204140')


SELECT* FROM CASIHER

----Here we are create Login Table----

CREATE TABLE USERLOGIN
(
	Login_Id int IDENTITY(1,1) FOREIGN KEY REFERENCES CASIHER (Cashier_Id),
	UserName varchar(20) NOT NULL,
	Password varchar (20) NOT NULL
)

INSERT INTO USERLOGIN VALUES ('tusher','180204131')
INSERT INTO USERLOGIN VALUES ('munna','180204100')
INSERT INTO USERLOGIN VALUES ('noushin','180204120')
INSERT INTO USERLOGIN VALUES ('safin','180204119')
INSERT INTO USERLOGIN VALUES ('tasmia','180204140')

SELECT* FROM USERLOGIN 

----Here we are create Customer Table----

CREATE TABLE CUSTOMER
(
	Customer_Id int IDENTITY(1,1)  PRIMARY KEY,
	Customer_Name varchar(50) NOT NULL,
	Customer_Contract_Number varchar(11) NOT NULL,
	Customer_Email varchar(40) NOT NULL,
	Customer_Gender varchar(10) NOT NUll,
	Customer_Address varchar(300) NOT NULL,

)


INSERT INTO CUSTOMER VALUES('Md Tusher','01863841578','thehasan120725@gmail.com','Male','Dhanmondi')
INSERT INTO CUSTOMER VALUES('Md Munna','01863841579','themunna120725@gmail.com','Male','Badda')
INSERT INTO CUSTOMER VALUES('Noushin','01863841570','thenoushin120725@gmail.com','Female','Gulsan')
INSERT INTO CUSTOMER VALUES('Md Safin','01863841571','thesafin120725@gmail.com','Male','Bonani')
INSERT INTO CUSTOMER VALUES('Tasmia','01863841572','thetasmia20725@gmail.com','Female','Dhanmondi')



SELECT* FROM CUSTOMER

----Here we are create Point of Sale (POS) Table----

CREATE TABLE POS 
(
	Pos_Id  int IDENTITY(1,1)  PRIMARY KEY,
    Customer_Id varchar (20) NOT NULL FOREIGN KEY REFERENCES CUSTOMER (Customer_Id),
	Product_ID varchar (20) NOT NULL FOREIGN KEY REFERENCES PRODUCT (Product_Id),
	Product_Code varchar (20) NOT NULL,
	Product_Name varchar (50) NOT NULL,
	Product_Price varchar (20)  NOT NULL,
    Quantity  varchar (20)  NOT NULL,
	Total  varchar (20)  NOT NULL ,
	
)

SELECT* FROM POS

----Here we are create Point of Sale (POS) Table----

CREATE TABLE PRODUCT
(
	Product_Id  int IDENTITY(1,1)  PRIMARY KEY,
	Product_Name varchar (50) NOT NULL,
	Product_Description varchar(50) NOT NULL,
	Product_Category varchar (50) NOT NULL,FOREIGN KEY REFERENCES CATEGORY (Category_Id),
	Product_Brand varchar (50) NOT NULL,FOREIGN KEY REFERENCES Brand (Brand_Id),
	Product_Cost_Price varchar (20)  NOT NULL,
	Product_Retail_Price varchar (20)  NOT NULL,
	Product_Code varchar (20) NOT NULL,
    Quantity  varchar (20)  NOT NULL,
    Product_Status  varchar (20)  NOT NULL ,
	
)

SELECT* FROM PRODUCT


----Here we are create  Category Table----

CREATE TABLE CATEGORY
(
	Category_Id  int IDENTITY(1,1)  PRIMARY KEY,
	Category_Name varchar (50) NOT NULL,
    Category_Status  varchar (20)  NOT NULL ,
	
)

SELECT* FROM CATEGORY


----Here we are create  Category Table----

CREATE TABLE BRAND
(
	BRAND_Id  int IDENTITY(1,1)  PRIMARY KEY,
	BRAND_Name varchar (50) NOT NULL,
    BRAND_Status  varchar (20)  NOT NULL ,
	
)

SELECT* FROM BRAND
	 
