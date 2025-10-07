CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
    `MigrationId` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
    `ProductVersion` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK___EFMigrationsHistory` PRIMARY KEY (`MigrationId`)
) CHARACTER SET=utf8mb4;

START TRANSACTION;

ALTER DATABASE CHARACTER SET utf8mb4;

CREATE TABLE `BookReviews` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `BookId` int NOT NULL,
    `UserId` int NOT NULL,
    `UserName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Rating` int NOT NULL,
    `Comment` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Status` int NOT NULL,
    `CreatedDate` datetime(6) NOT NULL,
    `UpdatedDate` datetime(6) NOT NULL,
    CONSTRAINT `PK_BookReviews` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Books` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `BookCode` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
    `BookName` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
    `CategoryId` int NOT NULL,
    `CategoryName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Author` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Publisher` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PublishTime` longtext CHARACTER SET utf8mb4 NULL,
    `BookWeight` double NULL,
    `BookSize` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BookPage` int NULL,
    `Quantity` int NOT NULL,
    `SoldQuantity` int NOT NULL,
    `Price` int NOT NULL,
    `PriceDiscount` int NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BookImage` longtext CHARACTER SET utf8mb4 NOT NULL,
    `InfoImage` longtext CHARACTER SET utf8mb4 NOT NULL,
    `IsActive` tinyint(1) NOT NULL,
    `CreatedDate` datetime(6) NOT NULL,
    `UpdatedDate` datetime(6) NOT NULL,
    CONSTRAINT `PK_Books` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Carts` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `UserId` int NOT NULL,
    `BookId` int NOT NULL,
    `Quantity` int NOT NULL,
    `CreatedDate` datetime(6) NOT NULL,
    `UpdatedDate` datetime(6) NOT NULL,
    CONSTRAINT `PK_Carts` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Categories` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `CategoryCode` longtext CHARACTER SET utf8mb4 NOT NULL,
    `CategoryName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NOT NULL,
    `IsActive` tinyint(1) NOT NULL,
    `CreatedDate` datetime(6) NOT NULL,
    `UpdatedDate` datetime(6) NOT NULL,
    CONSTRAINT `PK_Categories` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Deliveries` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `DeliveryCode` longtext CHARACTER SET utf8mb4 NOT NULL,
    `DeliveryName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Cost` int NOT NULL,
    `IsActive` tinyint(1) NOT NULL,
    `CreatedDate` datetime(6) NOT NULL,
    `UpdatedDate` datetime(6) NOT NULL,
    CONSTRAINT `PK_Deliveries` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `News` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `NewsImage` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Summary` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Content` longtext CHARACTER SET utf8mb4 NOT NULL,
    `CreatedDate` datetime(6) NOT NULL,
    `UpdatedDate` datetime(6) NOT NULL,
    CONSTRAINT `PK_News` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `OrderDetails` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `UserId` int NOT NULL,
    `OrderId` int NOT NULL,
    `BookId` int NOT NULL,
    `BookName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Quantity` int NOT NULL,
    `PriceBuy` int NOT NULL,
    `BookImage` longtext CHARACTER SET utf8mb4 NOT NULL,
    `CreatedDate` datetime(6) NOT NULL,
    `UpdatedDate` datetime(6) NOT NULL,
    CONSTRAINT `PK_OrderDetails` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Orders` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `UserId` int NOT NULL,
    `OrderCode` longtext CHARACTER SET utf8mb4 NOT NULL,
    `DeliveryId` int NOT NULL,
    `ShipCost` int NOT NULL,
    `VoucherId` int NULL,
    `Discount` int NOT NULL,
    `TotalMoney` int NOT NULL,
    `Status` int NOT NULL,
    `CustomerName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `PhoneNumber` longtext CHARACTER SET utf8mb4 NOT NULL,
    `CustomerAddress` longtext CHARACTER SET utf8mb4 NOT NULL,
    `OrderNote` longtext CHARACTER SET utf8mb4 NULL,
    `PaymentType` int NOT NULL,
    `PaymentName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `CancelReason` longtext CHARACTER SET utf8mb4 NULL,
    `CreatedDate` datetime(6) NOT NULL,
    `UpdatedDate` datetime(6) NOT NULL,
    CONSTRAINT `PK_Orders` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Users` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `UserName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `FirstName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `LastName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Email` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Password` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Address` longtext CHARACTER SET utf8mb4 NULL,
    `BirthDay` datetime(6) NULL,
    `PhoneNumber` longtext CHARACTER SET utf8mb4 NULL,
    `Gender` int NULL,
    `Infomation` longtext CHARACTER SET utf8mb4 NULL,
    `IsDelete` tinyint(1) NOT NULL,
    `IsActive` tinyint(1) NOT NULL,
    `RoleType` int NOT NULL,
    `RoleName` longtext CHARACTER SET utf8mb4 NULL,
    `CreatedDate` datetime(6) NOT NULL,
    `UpdatedDate` datetime(6) NOT NULL,
    CONSTRAINT `PK_Users` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Vouchers` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `VoucherCode` longtext CHARACTER SET utf8mb4 NOT NULL,
    `VoucherName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Quantity` int NOT NULL,
    `UsedNumber` int NOT NULL,
    `Discount` int NOT NULL,
    `MinAmount` int NOT NULL,
    `IsActive` tinyint(1) NOT NULL,
    `CreatedDate` datetime(6) NOT NULL,
    `UpdatedDate` datetime(6) NOT NULL,
    CONSTRAINT `PK_Vouchers` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20250923065407_InitialCreate', '7.0.11');

COMMIT;

