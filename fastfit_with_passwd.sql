-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2019 at 04:54 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastfit`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Category_ID` char(5) NOT NULL,
  `Category_Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_ID`, `Category_Description`) VALUES
('1', 'Tools and sporting equipment'),
('2', 'Clothing items'),
('3', 'Food');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` char(10) NOT NULL,
  `Customer_FirstName` varchar(15) NOT NULL,
  `Customer_LastName` varchar(25) NOT NULL,
  `Customer_Address1` varchar(30) NOT NULL,
  `Customer_City` varchar(25) NOT NULL,
  `Customer_Zip` char(5) NOT NULL,
  `Customer_State` varchar(20) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Customer_Email` varchar(50) NOT NULL,
  `Customer_Phone` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customershipping`
--

CREATE TABLE `customershipping` (
  `Shipping_ID` char(5) NOT NULL,
  `WarehouseID` char(5) NOT NULL,
  `OrderID` char(7) NOT NULL,
  `Shipper_ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentCode` char(3) NOT NULL,
  `Department_Description` varchar(50) NOT NULL,
  `Permission_Level` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentCode`, `Department_Description`, `Permission_Level`) VALUES
('777', 'The Goat...He stand in the face of all adversity ', '9');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` char(10) NOT NULL,
  `DepartmentCode` char(3) NOT NULL,
  `Employee_Address` varchar(30) NOT NULL,
  `Employee_Zip_Code` char(5) NOT NULL,
  `Employee_City` varchar(25) NOT NULL,
  `Employee_State` varchar(20) NOT NULL,
  `Employee_Phone` char(10) NOT NULL,
  `Employee_EmailAddress` varchar(50) NOT NULL,
  `Employee_FirstName` varchar(15) NOT NULL,
  `Employee_LastName` varchar(25) NOT NULL,
  `Employee_Role` varchar(20) NOT NULL,
  `Employee_Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `DepartmentCode`, `Employee_Address`, `Employee_Zip_Code`, `Employee_City`, `Employee_State`, `Employee_Phone`, `Employee_EmailAddress`, `Employee_FirstName`, `Employee_LastName`, `Employee_Role`, `Employee_Password`) VALUES
('1', '777', '2345 Maplestory Drive', '28989', 'Boston', 'NC', '8387273894', 'benwagzz@hotmail.com', 'Ben', 'Wagrez', 'Mastermind', 'myHashedPass1');

-- --------------------------------------------------------

--
-- Table structure for table `employeestore`
--

CREATE TABLE `employeestore` (
  `EmployeeID` char(10) NOT NULL,
  `StoreID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemID` char(10) NOT NULL,
  `Category_ID` char(5) NOT NULL,
  `Item_Description` varchar(50) NOT NULL,
  `Price` double NOT NULL,
  `Item_Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemID`, `Category_ID`, `Item_Description`, `Price`, `Item_Status`) VALUES
('1', '1', 'A high end snowboard.', 110, 'new'),
('2', '2', 'A high quality black sweater.', 35, 'new'),
('3', '2', 'Bright blue snow pants', 15, 'new'),
('4', '3', 'Chocolate granola bar', 2.5, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `itemordered`
--

CREATE TABLE `itemordered` (
  `OrderID` char(7) NOT NULL,
  `ItemID` char(10) NOT NULL,
  `Quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `OrderID` char(7) NOT NULL,
  `CustomerID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `Shipper_ID` char(10) NOT NULL,
  `Shipper_Address` varchar(30) NOT NULL,
  `Shipper_City` varchar(25) NOT NULL,
  `Shipper_State` varchar(20) NOT NULL,
  `Shipper_Zip` char(5) NOT NULL,
  `Shipper_Phone` char(10) NOT NULL,
  `Shipper_Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `StoreID` char(10) NOT NULL,
  `Store_Address` varchar(30) NOT NULL,
  `Store_Zip_Code` char(5) NOT NULL,
  `Store_City` varchar(25) NOT NULL,
  `Store_State` varchar(20) NOT NULL,
  `Store_PhoneNumber` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`StoreID`, `Store_Address`, `Store_Zip_Code`, `Store_City`, `Store_State`, `Store_PhoneNumber`) VALUES
('1', '1342 North Street', '77888', 'Charleston', 'SC', '70499912'),
('2', '4401 Manicott Dr', '28105', 'Mathhews', 'NC', '70498982');

-- --------------------------------------------------------

--
-- Table structure for table `storeinventory`
--

CREATE TABLE `storeinventory` (
  `StoreID` char(10) NOT NULL,
  `ItemID` char(10) NOT NULL,
  `StoreInventory_Quantity` int(3) NOT NULL,
  `Reorder_Limit` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storeinventory`
--

INSERT INTO `storeinventory` (`StoreID`, `ItemID`, `StoreInventory_Quantity`, `Reorder_Limit`) VALUES
('1', '1', 12, 15),
('1', '3', 50, 40);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` char(5) NOT NULL,
  `Supplier_Address` varchar(30) NOT NULL,
  `Supplier_City` varchar(25) NOT NULL,
  `Supplier_State` varchar(20) NOT NULL,
  `Supplier_Zip_Code` char(5) NOT NULL,
  `Supplier_Email` varchar(50) NOT NULL,
  `Supplier_Phone` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplierorder`
--

CREATE TABLE `supplierorder` (
  `SupplierOrderID` char(10) NOT NULL,
  `SupplierID` char(5) NOT NULL,
  `ItemID` char(10) NOT NULL,
  `WarehouseID` char(5) NOT NULL,
  `SupplierOrder_TotalPrice` double NOT NULL,
  `SupplierOrder_Quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `WarehouseID` char(5) NOT NULL,
  `Warehouse_Address` varchar(30) NOT NULL,
  `Warehouse_City` varchar(25) NOT NULL,
  `Warehouse_State` varchar(20) NOT NULL,
  `Warehouse_Zip_Code` char(5) NOT NULL,
  `Warehouse_Phone` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`WarehouseID`, `Warehouse_Address`, `Warehouse_City`, `Warehouse_State`, `Warehouse_Zip_Code`, `Warehouse_Phone`) VALUES
('1', '8787 Grant Street', 'Greenston', 'IL', '72289', '6529981425'),
('2', '3294 Monday Street', 'Tylerston', 'IL', '38749', '8839939824');

-- --------------------------------------------------------

--
-- Table structure for table `warehouseinventory`
--

CREATE TABLE `warehouseinventory` (
  `WarehouseID` char(5) NOT NULL,
  `ProductID` char(10) NOT NULL,
  `Quantity` int(3) NOT NULL,
  `Reorder_Limit` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouseinventory`
--

INSERT INTO `warehouseinventory` (`WarehouseID`, `ProductID`, `Quantity`, `Reorder_Limit`) VALUES
('1', '1', 54, 30),
('2', '2', 58, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `customershipping`
--
ALTER TABLE `customershipping`
  ADD PRIMARY KEY (`Shipping_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentCode`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `employeestore`
--
ALTER TABLE `employeestore`
  ADD PRIMARY KEY (`StoreID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `itemordered`
--
ALTER TABLE `itemordered`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`Shipper_ID`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`StoreID`);

--
-- Indexes for table `storeinventory`
--
ALTER TABLE `storeinventory`
  ADD PRIMARY KEY (`StoreID`,`ItemID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `supplierorder`
--
ALTER TABLE `supplierorder`
  ADD PRIMARY KEY (`SupplierOrderID`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`WarehouseID`);

--
-- Indexes for table `warehouseinventory`
--
ALTER TABLE `warehouseinventory`
  ADD PRIMARY KEY (`WarehouseID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;