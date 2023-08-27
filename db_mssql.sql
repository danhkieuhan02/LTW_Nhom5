CREATE Database CarShowroom;

use CarShowroom;

CREATE TABLE Categories (
  Id int primary key IDENTITY(1,1),
  catName nvarchar(200) DEFAULT NULL
) ;


CREATE TABLE Contacts (
Id int primary key IDENTITY(1,1),
  Name nvarchar(255) NOT NULL,
  Email nvarchar(255) NOT NULL,
  Message nvarchar(1000) NOT NULL
) ;


CREATE TABLE Users (
  Id int primary key IDENTITY(1,1),
  Name nvarchar(255) NOT NULL,
  Email nvarchar(255) NOT NULL,
  Password nvarchar(255) NOT NULL
) ;


CREATE TABLE Products (
  Id int primary key IDENTITY(1,1),
  ProductName nvarchar(200) DEFAULT NULL,
  Price decimal(20,0) DEFAULT NULL,
  Content nvarchar(max) DEFAULT NULL,
  CoverImg nvarchar(500) DEFAULT NULL,
  CreateBy int,
  CategoryId int,
  CONSTRAINT FK_CATE_PRODUCT FOREIGN KEY (CategoryId) REFERENCES Categories(Id),
  CONSTRAINT FK_USER_PRODUCT FOREIGN KEY (CreateBy) REFERENCES Users(Id),

) ;
