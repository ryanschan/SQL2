USE [UsedCar-P2]
GO
ALTER TABLE [dbo].[SoldVehicles] DROP CONSTRAINT [FK_SoldVehicles_Inventory]
GO
ALTER TABLE [dbo].[SoldVehicles] DROP CONSTRAINT [FK_SoldVehicles_Employees]
GO
ALTER TABLE [dbo].[SoldVehicles] DROP CONSTRAINT [FK_SoldVehicles_Customers]
GO
ALTER TABLE [dbo].[PurchaseTransactions] DROP CONSTRAINT [FK_PurchaseTransactions_Suppliers]
GO
ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [FK_Inventory_PurchaseTransactions]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Employees]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 5/27/2016 7:23:39 PM ******/
DROP TABLE [dbo].[Suppliers]
GO
/****** Object:  Table [dbo].[SoldVehicles]    Script Date: 5/27/2016 7:23:39 PM ******/
DROP TABLE [dbo].[SoldVehicles]
GO
/****** Object:  Table [dbo].[PurchaseTransactions]    Script Date: 5/27/2016 7:23:39 PM ******/
DROP TABLE [dbo].[PurchaseTransactions]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 5/27/2016 7:23:39 PM ******/
DROP TABLE [dbo].[Inventory]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/27/2016 7:23:39 PM ******/
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 5/27/2016 7:23:39 PM ******/
DROP TABLE [dbo].[Customers]
GO
USE [master]
GO
/****** Object:  Database [UsedCar-P2]    Script Date: 5/27/2016 7:23:39 PM ******/
DROP DATABASE [UsedCar-P2]
GO
/****** Object:  Database [UsedCar-P2]    Script Date: 5/27/2016 7:23:39 PM ******/
CREATE DATABASE [UsedCar-P2] ON  PRIMARY 
( NAME = N'UsedCar-V2', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\Data\UsedCar-P2.mdf' , SIZE = 13312KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UsedCar-V2_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\Data\UsedCar-P2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UsedCar-P2] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UsedCar-P2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UsedCar-P2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UsedCar-P2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UsedCar-P2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UsedCar-P2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UsedCar-P2] SET ARITHABORT OFF 
GO
ALTER DATABASE [UsedCar-P2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [UsedCar-P2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [UsedCar-P2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UsedCar-P2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UsedCar-P2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UsedCar-P2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UsedCar-P2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UsedCar-P2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UsedCar-P2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UsedCar-P2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UsedCar-P2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UsedCar-P2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UsedCar-P2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UsedCar-P2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UsedCar-P2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UsedCar-P2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UsedCar-P2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UsedCar-P2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UsedCar-P2] SET  MULTI_USER 
GO
ALTER DATABASE [UsedCar-P2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UsedCar-P2] SET DB_CHAINING OFF 
GO
USE [UsedCar-P2]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 5/27/2016 7:23:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [float] NOT NULL,
	[CustomerName] [nvarchar](255) NULL,
	[CustomerAddress] [nvarchar](255) NULL,
	[CustomerCity] [nvarchar](255) NULL,
	[CustomerZIp] [float] NULL,
	[CustomerState] [nvarchar](255) NULL,
	[CustomerPhoneNumber] [nvarchar](255) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/27/2016 7:23:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [float] NOT NULL,
	[EmployeeName] [nvarchar](255) NULL,
	[ManagerID] [float] NULL,
	[EmployeeAddress] [nvarchar](255) NULL,
	[EmployeeCity] [nvarchar](255) NULL,
	[EmployeeZip] [float] NULL,
	[EmployeeState] [nvarchar](255) NULL,
	[EmployeePhoneNumber] [nvarchar](255) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 5/27/2016 7:23:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[InventoryID] [float] NOT NULL,
	[VehicleMake] [nvarchar](255) NULL,
	[Vehiclemodel] [nvarchar](255) NULL,
	[vehicleyear] [float] NULL,
	[VehicleMillage] [float] NULL,
	[VehicleColor] [nvarchar](255) NULL,
	[Vehiclelistprice] [money] NULL,
	[PurchaseID] [float] NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PurchaseTransactions]    Script Date: 5/27/2016 7:23:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseTransactions](
	[PurchaseID] [float] NOT NULL,
	[SupplierID] [float] NULL,
	[DatePurchased] [datetime] NULL,
	[PurchasePrice] [money] NULL,
 CONSTRAINT [PK_PurchaseTransactions] PRIMARY KEY CLUSTERED 
(
	[PurchaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SoldVehicles]    Script Date: 5/27/2016 7:23:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoldVehicles](
	[SoldID] [float] NOT NULL,
	[EmployeeID] [float] NULL,
	[CustomerID] [float] NULL,
	[SoldPrice] [float] NULL,
	[SoldDate] [datetime] NULL,
	[InventoryID] [float] NULL,
 CONSTRAINT [PK_SoldVehicles] PRIMARY KEY CLUSTERED 
(
	[SoldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 5/27/2016 7:23:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [float] NOT NULL,
	[SupplierName] [nvarchar](255) NULL,
	[SupplierAddress] [nvarchar](255) NULL,
	[SupplierCity] [nvarchar](255) NULL,
	[SupplierZip] [float] NULL,
	[SupplierPhone] [nvarchar](255) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerAddress], [CustomerCity], [CustomerZIp], [CustomerState], [CustomerPhoneNumber]) VALUES (1001, N'Lance Morton', N'2736 Harrison Street', N'Pomona', 91766, N'Califorina', N'415-542-0400')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerAddress], [CustomerCity], [CustomerZIp], [CustomerState], [CustomerPhoneNumber]) VALUES (1002, N'James Cooper', N'1581 Mc Vaney Road', N'Chino', 91710, N'Califorina', N'828-282-7700')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerAddress], [CustomerCity], [CustomerZIp], [CustomerState], [CustomerPhoneNumber]) VALUES (1003, N'Edgar Bowen', N'249 Lee Avenue', N'Ontario', 91720, N'Califorina', N'856-286-8474')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerAddress], [CustomerCity], [CustomerZIp], [CustomerState], [CustomerPhoneNumber]) VALUES (1004, N'Carroll Cote', N'2568 Pursglove Court', N'Pomona', 91766, N'Califorina', N'937-344-3965')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerAddress], [CustomerCity], [CustomerZIp], [CustomerState], [CustomerPhoneNumber]) VALUES (1005, N'Eric Wright', N'2797 Filbert Street', N'Chino', 91710, N'Califorina', N'610-796-4774')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerAddress], [CustomerCity], [CustomerZIp], [CustomerState], [CustomerPhoneNumber]) VALUES (1006, N'Sharon Thibeault', N'2698 Oakmound Drive', N'Ontario', 91720, N'Califorina', N'773-407-1310')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerAddress], [CustomerCity], [CustomerZIp], [CustomerState], [CustomerPhoneNumber]) VALUES (1007, N'Edward Pugh', N'729 McKinley Avenue', N'Pomona', 91766, N'Califorina', N'303-806-1008')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerAddress], [CustomerCity], [CustomerZIp], [CustomerState], [CustomerPhoneNumber]) VALUES (1008, N'Savanna Glines', N'307 Terra Cotta Street', N'Chino', 91766, N'Califorina', N'218-586-5525')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerAddress], [CustomerCity], [CustomerZIp], [CustomerState], [CustomerPhoneNumber]) VALUES (1009, N'Teresa Cline', N'909 Daylene Drive', N'Ontario', 91720, N'Califorina', N'744-655-6986')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerAddress], [CustomerCity], [CustomerZIp], [CustomerState], [CustomerPhoneNumber]) VALUES (1010, N'Greg Everson', N'1357 Farnum Road', N'Pomona', 91766, N'Califorina', N'212-325-3679')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerAddress], [CustomerCity], [CustomerZIp], [CustomerState], [CustomerPhoneNumber]) VALUES (1011, N'Poly Sanders', N'1819 Werninger Street', N'Chino', 91710, N'Califorina', N'832-767-0075')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID], [EmployeeAddress], [EmployeeCity], [EmployeeZip], [EmployeeState], [EmployeePhoneNumber]) VALUES (101, N'Melvin Downing', NULL, N'4871 Dogwood Lane', N'Ontario', 91720, N'CA', N'520-749-5988')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID], [EmployeeAddress], [EmployeeCity], [EmployeeZip], [EmployeeState], [EmployeePhoneNumber]) VALUES (102, N'David Matthews', 101, N'4819 Weatherwood Lane', N'Chino', 91710, N'CA', N'602-748-6228')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID], [EmployeeAddress], [EmployeeCity], [EmployeeZip], [EmployeeState], [EmployeePhoneNumber]) VALUES (103, N'Linda Holt', 101, N'1800 Cross Street', N'Ontario', 91720, N'CA', N'989-977-3765')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID], [EmployeeAddress], [EmployeeCity], [EmployeeZip], [EmployeeState], [EmployeePhoneNumber]) VALUES (104, N'Lawerence Lee', 101, N'1801 Rollins Road', N'Pomona', 91766, N'CA', N'308-749-862')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID], [EmployeeAddress], [EmployeeCity], [EmployeeZip], [EmployeeState], [EmployeePhoneNumber]) VALUES (105, N'Beth Thomas', 101, N'3047 Hamilton Drive', N'Pomona', 91766, N'CA', N'409-965-6074')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID], [EmployeeAddress], [EmployeeCity], [EmployeeZip], [EmployeeState], [EmployeePhoneNumber]) VALUES (106, N'Joseph South', 101, N'2846 Musgrave Street', N'Chino', 91710, N'CA', N'405-246-4720')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID], [EmployeeAddress], [EmployeeCity], [EmployeeZip], [EmployeeState], [EmployeePhoneNumber]) VALUES (107, N'Jade Lalonde', 101, N'1119 Terry Lane', N'Chino', 91710, N'CA', N'321-224-0453')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID], [EmployeeAddress], [EmployeeCity], [EmployeeZip], [EmployeeState], [EmployeePhoneNumber]) VALUES (108, N'Parish Connell', 101, N'31333 Broaddus Drive', N'Ontario', 91720, N'CA', N'207-217-4270')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID], [EmployeeAddress], [EmployeeCity], [EmployeeZip], [EmployeeState], [EmployeePhoneNumber]) VALUES (109, N'Vince Hernandez', 101, N'676 Caldwell Raod', N'Pomona', 91766, N'CA', N'585-258-9193')
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID], [EmployeeAddress], [EmployeeCity], [EmployeeZip], [EmployeeState], [EmployeePhoneNumber]) VALUES (110, N'Cylde Lopez', 101, N'4414 Rainbow Road', N'Ontario', 91720, N'CA', N'330-475-9740')
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (1, N'Honda', N'Civic', 2012, 42432, N'Silver', 12950.0000, 10001)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (2, N'Hyundai', N'Sonata', 2010, 65234, N'Gold', 13500.0000, 10002)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (3, N'Honda', N'Accord', 2011, 55232, N'White', 15000.0000, 10003)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (4, N'Ford', N'Focus', 2009, 38432, N'Blue', 7500.0000, 10004)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (5, N'Toyota', N'Camry', 2014, 15324, N'White', 23500.0000, 10005)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (6, N'VolksWagen', N'Jetta', 2013, 22434, N'Red', 11250.0000, 10006)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (7, N'VolksWagen', N'Passat', 2011, 41214, N'silver', 12250.0000, 10007)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (8, N'Toyota', N'Corola', 2008, 52324, N'black', 13250.0000, 10008)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (9, N'Infiniti', N'Q50', 2009, 46324, N'white', 17500.0000, 10009)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (10, N'BMW', N'i3', 2006, 35432, N'red', 24500.0000, 10010)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (11, N'Kia', N'Optima', 2012, 45432, N'black', 13500.0000, 10011)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (12, N'Lincoln', N'Navigator', 2004, 74538, N'black', 27500.0000, 10012)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (13, N'Nissan', N'Maxima', 2010, 44342, N'red', 15000.0000, 10013)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (14, N'Lexus', N'IS 250', 2006, 47532, N'white', 17500.0000, 10014)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (15, N'Ford ', N'Escape', 2012, 26784, N'blue', 16000.0000, 10015)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (16, N'Hyundai', N'Elantra', 2012, 36543, N'white', 13500.0000, 10016)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (17, N'Hyundai', N'Genesis', 2006, 41436, N'silver', 26250.0000, 10017)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (18, N'Jeep', N'Cherokee', 2002, 67548, N'white', 11250.0000, 10018)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (19, N'Dodge', N'Charger', 2013, 22432, N'black', 19500.0000, 10019)
INSERT [dbo].[Inventory] ([InventoryID], [VehicleMake], [Vehiclemodel], [vehicleyear], [VehicleMillage], [VehicleColor], [Vehiclelistprice], [PurchaseID]) VALUES (20, N'Dodge', N'Chalenger', 2009, 37547, N'white', 17250.0000, 10020)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10001, 2002, CAST(N'2016-02-01 00:00:00.000' AS DateTime), 11342.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10002, 2002, CAST(N'2016-02-05 00:00:00.000' AS DateTime), 12321.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10003, 2003, CAST(N'2016-02-08 00:00:00.000' AS DateTime), 13542.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10004, 2005, CAST(N'2016-02-10 00:00:00.000' AS DateTime), 6324.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10005, 2007, CAST(N'2016-02-10 00:00:00.000' AS DateTime), 19432.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10006, 2007, CAST(N'2016-02-10 00:00:00.000' AS DateTime), 10345.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10007, 2006, CAST(N'2016-02-15 00:00:00.000' AS DateTime), 11450.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10008, 2006, CAST(N'2016-02-15 00:00:00.000' AS DateTime), 12250.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10009, 2006, CAST(N'2016-02-18 00:00:00.000' AS DateTime), 15430.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10010, 2001, CAST(N'2016-02-15 00:00:00.000' AS DateTime), 21540.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10011, 2002, CAST(N'2016-02-15 00:00:00.000' AS DateTime), 12989.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10012, 2003, CAST(N'2016-02-18 00:00:00.000' AS DateTime), 25230.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10013, 2003, CAST(N'2016-02-20 00:00:00.000' AS DateTime), 13750.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10014, 2005, CAST(N'2016-02-20 00:00:00.000' AS DateTime), 14125.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10015, 2006, CAST(N'2016-02-21 00:00:00.000' AS DateTime), 14500.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10016, 2007, CAST(N'2016-02-22 00:00:00.000' AS DateTime), 12250.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10017, 2008, CAST(N'2016-02-22 00:00:00.000' AS DateTime), 23450.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10018, 2009, CAST(N'2016-02-23 00:00:00.000' AS DateTime), 9300.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10019, 2002, CAST(N'2016-02-23 00:00:00.000' AS DateTime), 17750.0000)
INSERT [dbo].[PurchaseTransactions] ([PurchaseID], [SupplierID], [DatePurchased], [PurchasePrice]) VALUES (10020, 2002, CAST(N'2016-02-24 00:00:00.000' AS DateTime), 15300.0000)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (301, 102, 1001, 12900, CAST(N'2016-02-28 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (302, 103, 1002, 14500, CAST(N'2016-03-01 00:00:00.000' AS DateTime), 3)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (303, 105, 1003, 13500, CAST(N'2016-03-02 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (304, 106, 1003, 22150, CAST(N'2016-03-15 00:00:00.000' AS DateTime), 5)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (305, 109, 1004, 7499, CAST(N'2016-03-16 00:00:00.000' AS DateTime), 4)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (306, 106, 1005, 13000, CAST(N'2016-03-17 00:00:00.000' AS DateTime), 8)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (307, 106, 1006, 12999, CAST(N'2016-03-19 00:00:00.000' AS DateTime), 11)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (308, 110, 1007, 14999, CAST(N'2016-03-24 00:00:00.000' AS DateTime), 13)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (309, 101, 1008, 15249, CAST(N'2016-03-29 00:00:00.000' AS DateTime), 15)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (310, 104, 1009, 27000, CAST(N'2016-04-01 00:00:00.000' AS DateTime), 12)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (311, 107, 1010, 16000, CAST(N'2016-04-01 00:00:00.000' AS DateTime), 9)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (312, 108, 1011, 13420, CAST(N'2016-04-03 00:00:00.000' AS DateTime), 16)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (313, 104, 1002, 10000, CAST(N'2016-04-05 00:00:00.000' AS DateTime), 6)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (314, 102, 1003, 10100, CAST(N'2016-04-07 00:00:00.000' AS DateTime), 7)
INSERT [dbo].[SoldVehicles] ([SoldID], [EmployeeID], [CustomerID], [SoldPrice], [SoldDate], [InventoryID]) VALUES (315, 108, 1007, 22000, CAST(N'2016-04-19 00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAddress], [SupplierCity], [SupplierZip], [SupplierPhone]) VALUES (2001, N'Diamond Bar Auction House', N'1231 Bridgegate Dr', N' Diamond Bar', 91765, N'(314)456-7894')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAddress], [SupplierCity], [SupplierZip], [SupplierPhone]) VALUES (2002, N'Chino Auction House', N'3621 Grand Ave', N'Chino', 91708, N'(820)365-6732')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAddress], [SupplierCity], [SupplierZip], [SupplierPhone]) VALUES (2003, N'Pomona Auction House', N'512  Phillips Dr', N'Pomona', 91766, N'(587)245-7658')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAddress], [SupplierCity], [SupplierZip], [SupplierPhone]) VALUES (2004, N'Chino Hills Auction House', N'3567 Fullercreek Rd', N'Chino Hills', 91709, N'(345)145-7987')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAddress], [SupplierCity], [SupplierZip], [SupplierPhone]) VALUES (2005, N'Orange County Auction House', N'9122 Walnut Ave', N'Orange County', 92868, N'(473)835-4587')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAddress], [SupplierCity], [SupplierZip], [SupplierPhone]) VALUES (2006, N'Fontana Auction House', N'12451 Fairview Rd', N'Fontana ', 92336, N'(384)809-5624')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAddress], [SupplierCity], [SupplierZip], [SupplierPhone]) VALUES (2007, N'Irvine Auction House', N'5633 Monroe ', N'Irvine', 92620, N'(563)243-5980')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAddress], [SupplierCity], [SupplierZip], [SupplierPhone]) VALUES (2008, N'Ontario Auction House', N'7891 Moose Creek Ln', N'Ontario', 91761, N'(628)938-0248')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [SupplierAddress], [SupplierCity], [SupplierZip], [SupplierPhone]) VALUES (2009, N'Claremont Auction House', N'1241 1st Street', N'Claremont', 91711, N'(759)628-0284')
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_PurchaseTransactions] FOREIGN KEY([PurchaseID])
REFERENCES [dbo].[PurchaseTransactions] ([PurchaseID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_PurchaseTransactions]
GO
ALTER TABLE [dbo].[PurchaseTransactions]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseTransactions_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[PurchaseTransactions] CHECK CONSTRAINT [FK_PurchaseTransactions_Suppliers]
GO
ALTER TABLE [dbo].[SoldVehicles]  WITH CHECK ADD  CONSTRAINT [FK_SoldVehicles_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[SoldVehicles] CHECK CONSTRAINT [FK_SoldVehicles_Customers]
GO
ALTER TABLE [dbo].[SoldVehicles]  WITH CHECK ADD  CONSTRAINT [FK_SoldVehicles_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[SoldVehicles] CHECK CONSTRAINT [FK_SoldVehicles_Employees]
GO
ALTER TABLE [dbo].[SoldVehicles]  WITH CHECK ADD  CONSTRAINT [FK_SoldVehicles_Inventory] FOREIGN KEY([InventoryID])
REFERENCES [dbo].[Inventory] ([InventoryID])
GO
ALTER TABLE [dbo].[SoldVehicles] CHECK CONSTRAINT [FK_SoldVehicles_Inventory]
GO
USE [master]
GO
ALTER DATABASE [UsedCar-P2] SET  READ_WRITE 
GO
