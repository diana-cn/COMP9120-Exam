DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS PurchaseOrder;
DROP TABLE IF EXISTS PurchaseItem;

CREATE TABLE Customer (
	CustomerID CHAR(8) PRIMARY KEY,
	Name CHAR,
	PhoneNumber INTEGER
);

CREATE TABLE PurchaseOrder (
	OrderID CHAR(8) PRIMARY KEY,
	EmployeeID CHAR(8),
	CustomerID CHAR(8),
	Date DATE
);

CREATE TABLE PurchaseItem (
	ItemID CHAR(8),
	OrderID CHAR(8),
	ItemName CHAR,
	ItemCost NUMERIC,
	CONSTRAINT PRIMARY KEY (ItemID, OrderID)
);
