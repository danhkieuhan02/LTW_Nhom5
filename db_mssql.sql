CREATE Database CarShowroom
GO;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Categories (
  Id int primary key IDENTITY(1,1),
  catName nvarchar(200) DEFAULT NULL
) ;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Contacts (
Id int primary key IDENTITY(1,1),
  Name nvarchar(255) NOT NULL,
  Email nvarchar(255) NOT NULL,
  Message nvarchar(1000) NOT NULL
) ;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
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

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Users (
  Id int primary key IDENTITY(1,1),
  Name nvarchar(255) NOT NULL,
  Email nvarchar(255) NOT NULL,
  Password nvarchar(255) NOT NULL
) ;
