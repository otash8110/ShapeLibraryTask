DROP TABLE ProductCategory
DROP TABLE Product
DROP TABLE Category

CREATE TABLE Product (
Id INT PRIMARY KEY,
Name nvarchar(255)
)

CREATE TABLE Category (
Id INT PRIMARY KEY,
Name nvarchar(255)
)

CREATE TABLE ProductCategory (
	ProductId INT,
	CategoryId INT
	CONSTRAINT PK_ProductCategory PRIMARY KEY (ProductId, CategoryID),
	CONSTRAINT FK_ProductCategory_ProductID FOREIGN KEY (ProductId) REFERENCES Product (Id),
	CONSTRAINT FK_ProductCategory_CategoryID FOREIGN KEY (CategoryId) REFERENCES Category (Id),
)

INSERT INTO Product VALUES
(1, 'Mercedes-benz S Class'),
(2, 'BMW 5 series'),
(3, 'Chevrolet Onix'),
(4, 'Hyundia Accent')


INSERT INTO Category VALUES
(1, 'Luxury'),
(2, 'Executive'),
(3, 'Subcompact')

INSERT INTO ProductCategory VALUES
(1, 1),
(2, 2),
(4, 3)



SELECT P.Name as 'Product Name', C.Name as 'Category Name'
FROM Product P
LEFT JOIN ProductCategory PC
	ON P.Id = PC.ProductId
LEFT JOIN Category C
	ON PC.CategoryId = C.Id;