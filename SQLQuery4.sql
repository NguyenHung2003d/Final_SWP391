CREATE DATABASE [giadinhthoxinh]
USE [giadinhthoxinh]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[PK_iCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[FK_iSupplierID] [int] NOT NULL,
	[sCategoryName] [nvarchar](60) NULL,
 CONSTRAINT [PK__tblCateg__1CEB1EFB7725771C] PRIMARY KEY CLUSTERED 
(
	[PK_iCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCheckinDetail]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCheckinDetail](
	[PK_iCheckinDetailID] [int] IDENTITY(1,1) NOT NULL,
	[FK_iImportOrderID] [int] NOT NULL,
	[FK_iProductID] [int] NULL,
	[iQuatity] [int] NULL,
	[fPrice] [float] NULL,
 CONSTRAINT [PK__tblCheck__74ECEDDEF3DEC773] PRIMARY KEY CLUSTERED 
(
	[PK_iCheckinDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCheckoutDetail]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCheckoutDetail](
	[PK_iCheckoutDetailID] [int] IDENTITY(1,1) NOT NULL,
	[FK_iOrderID] [int] NOT NULL,
	[FK_iProductID] [int] NULL,
	[iQuantity] [int] NULL,
	[fPrice] [float] NULL,
 CONSTRAINT [PK__tblCheck__AA0F9D73CFC6D13F] PRIMARY KEY CLUSTERED 
(
	[PK_iCheckoutDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComplaint]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComplaint](
	[PK_iComplaintsID] [int] IDENTITY(1,1) NOT NULL,
	[FK_iSupplierID] [int] NOT NULL,
	[sUserName] [nvarchar](50) NULL,
	[sReason] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblComplaint] PRIMARY KEY CLUSTERED 
(
	[PK_iComplaintsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblImage]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImage](
	[PK_iImageID] [int] IDENTITY(1,1) NOT NULL,
	[sImage] [nvarchar](250) NULL,
 CONSTRAINT [PK__tblImage__2309338E88158E3D] PRIMARY KEY CLUSTERED 
(
	[PK_iImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblImportOrder]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImportOrder](
	[PK_iImportOrderID] [int] IDENTITY(1,1) NOT NULL,
	[FK_iAccountID] [int] NOT NULL,
	[FK_iSupplierID] [int] NOT NULL,
	[dtDateAdded] [datetime] NULL,
	[sDeliver] [nvarchar](80) NULL,
	[iState] [int] NULL,
 CONSTRAINT [PK__tblImpor__804C7A8B512FB969] PRIMARY KEY CLUSTERED 
(
	[PK_iImportOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[PK_iOrderID] [int] IDENTITY(1,1) NOT NULL,
	[FK_iAccountID] [int] NOT NULL,
	[sCustomerName] [nvarchar](50) NULL,
	[sCustomerPhone] [varchar](15) NULL,
	[sDeliveryAddress] [nvarchar](150) NULL,
	[dInvoidDate] [datetime] NOT NULL,
	[sBiller] [nvarchar](50) NULL,
	[iDeliveryMethod] [int] NULL,
	[fSurcharge] [float] NULL,
	[iPaid] [int] NULL,
	[sState] [nvarchar](50) NULL,
	[iTotal] [int] NULL,
 CONSTRAINT [PK__tblOrder__3261310A653333D7] PRIMARY KEY CLUSTERED 
(
	[PK_iOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermission]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermission](
	[PK_iPermissionID] [int] IDENTITY(1,1) NOT NULL,
	[sPermissionName] [nvarchar](50) NULL,
	[iState] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_iPermissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[PK_iProductID] [int] IDENTITY(1,1) NOT NULL,
	[FK_iSupplierID] [int] NOT NULL,
	[FK_iCategoryID] [int] NOT NULL,
	[sProductName] [nvarchar](200) NULL,
	[sDescribe] [nvarchar](1000) NULL,
	[fPrice] [float] NULL,
	[sColor] [nvarchar](40) NULL,
	[sSize] [nvarchar](20) NULL,
	[sImage] [nvarchar](250) NULL,
	[sUnit] [nvarchar](20) NULL,
	[iQuantity] [int] NULL,
	[iState] [int] NULL,
 CONSTRAINT [PK__tblProdu__2980F3B84306DD52] PRIMARY KEY CLUSTERED 
(
	[PK_iProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductColor]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductColor](
	[PK_iProductColorID] [int] IDENTITY(1,1) NOT NULL,
	[sProductColor] [nvarchar](40) NULL,
 CONSTRAINT [PK_tblProductColor] PRIMARY KEY CLUSTERED 
(
	[PK_iProductColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductPrice]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductPrice](
	[PK_iProductPriceID] [int] IDENTITY(1,1) NOT NULL,
	[fPrice] [float] NULL,
	[dtStartDay] [datetime] NULL,
	[dtEndDay] [datetime] NULL,
 CONSTRAINT [PK_tblProductPrice] PRIMARY KEY CLUSTERED 
(
	[PK_iProductPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductSize]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductSize](
	[PK_iProductSizeID] [int] IDENTITY(1,1) NOT NULL,
	[sSizeName] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblProductSize] PRIMARY KEY CLUSTERED 
(
	[PK_iProductSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPromote]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPromote](
	[PK_iPromoteID] [int] IDENTITY(1,1) NOT NULL,
	[FK_iSupplierID] [int] NOT NULL,
	[sPromoteName] [nvarchar](200) NULL,
	[sPromoteRate] [float] NULL,
	[dtStartDay] [datetime] NULL,
	[dtEndDay] [datetime] NULL,
 CONSTRAINT [PK__tblPromo__498845A71A5830E3] PRIMARY KEY CLUSTERED 
(
	[PK_iPromoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReview]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReview](
	[PK_iReviewID] [int] IDENTITY(1,1) NOT NULL,
	[FK_iProductID] [int] NOT NULL,
	[FK_iAccountID] [int] NOT NULL,
	[iStarRating] [int] NULL,
	[dtReviewTime] [datetime] NULL,
	[sComment] [nvarchar](250) NULL,
 CONSTRAINT [PK__tblRevie__7180705F11601E83] PRIMARY KEY CLUSTERED 
(
	[PK_iReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSupplier]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSupplier](
	[PK_iSupplierID] [int] IDENTITY(1,1) NOT NULL,
	[FK_iAccountID] [int] NOT NULL,
	[sSupplierName] [nvarchar](200) NULL,
	[sPhone] [varchar](15) NULL,
	[sEmail] [varchar](50) NULL,
	[sAddress] [nvarchar](250) NULL,
	[iState] [int] NULL,
	[sVerificationImagePath] [nvarchar](250) NULL,
 CONSTRAINT [PK__tblSuppl__C051541594A08A37] PRIMARY KEY CLUSTERED 
(
	[PK_iSupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 7/17/2024 10:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[PK_iAccountID] [int] IDENTITY(1,1) NOT NULL,
	[FK_iPermissionID] [int] NOT NULL,
	[sEmail] [varchar](50) NULL,
	[sPass] [nvarchar](50) NULL,
	[sUserName] [nvarchar](50) NULL,
	[sPhone] [varchar](15) NULL,
	[sAddress] [nvarchar](150) NULL,
	[iState] [int] NULL,
 CONSTRAINT [PK__tblUser__A8653C89B0130405] PRIMARY KEY CLUSTERED 
(
	[PK_iAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([PK_iCategoryID], [FK_iSupplierID], [sCategoryName]) VALUES (12, 9, N'Hoa len')
INSERT [dbo].[tblCategory] ([PK_iCategoryID], [FK_iSupplierID], [sCategoryName]) VALUES (13, 10, N'Thú bông')
INSERT [dbo].[tblCategory] ([PK_iCategoryID], [FK_iSupplierID], [sCategoryName]) VALUES (14, 11, N'Mũ len')
INSERT [dbo].[tblCategory] ([PK_iCategoryID], [FK_iSupplierID], [sCategoryName]) VALUES (15, 12, N'Khăn len')
INSERT [dbo].[tblCategory] ([PK_iCategoryID], [FK_iSupplierID], [sCategoryName]) VALUES (16, 13, N'Túi Xách')
INSERT [dbo].[tblCategory] ([PK_iCategoryID], [FK_iSupplierID], [sCategoryName]) VALUES (17, 8, N'Váy len')
INSERT [dbo].[tblCategory] ([PK_iCategoryID], [FK_iSupplierID], [sCategoryName]) VALUES (18, 14, N'Chậu len')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCheckinDetail] ON 

INSERT [dbo].[tblCheckinDetail] ([PK_iCheckinDetailID], [FK_iImportOrderID], [FK_iProductID], [iQuatity], [fPrice]) VALUES (5, 6, 80, 5, 160000)
INSERT [dbo].[tblCheckinDetail] ([PK_iCheckinDetailID], [FK_iImportOrderID], [FK_iProductID], [iQuatity], [fPrice]) VALUES (6, 6, 89, 6, 140000)
INSERT [dbo].[tblCheckinDetail] ([PK_iCheckinDetailID], [FK_iImportOrderID], [FK_iProductID], [iQuatity], [fPrice]) VALUES (7, 6, 90, 17, 150000)
INSERT [dbo].[tblCheckinDetail] ([PK_iCheckinDetailID], [FK_iImportOrderID], [FK_iProductID], [iQuatity], [fPrice]) VALUES (8, 9, 100, 15, 160000)
INSERT [dbo].[tblCheckinDetail] ([PK_iCheckinDetailID], [FK_iImportOrderID], [FK_iProductID], [iQuatity], [fPrice]) VALUES (9, 10, 103, 9, 140000)
INSERT [dbo].[tblCheckinDetail] ([PK_iCheckinDetailID], [FK_iImportOrderID], [FK_iProductID], [iQuatity], [fPrice]) VALUES (10, 11, 104, 5, 300000)
SET IDENTITY_INSERT [dbo].[tblCheckinDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCheckoutDetail] ON 

INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (10, 8, 80, 4, 200000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (11, 8, 89, 3, 190000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (12, 9, 90, 3, 220000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (13, 9, 91, 5, 210000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (14, 10, 92, 2, 350000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (15, 10, 93, 1, 190000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (16, 11, 94, 2, 200000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (17, 11, 95, 1, 70000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (18, 12, 96, 1, 200000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (19, 12, 97, 1, 300000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (20, 13, 98, 1, 70000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (21, 13, 99, 1, 200000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (22, 14, 100, 1, 160000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (23, 14, 100, 1, 160000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (24, 15, 103, 1, 300000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (25, 15, 107, 1, 200000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (26, 21, 124, 1, 1500000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (27, 22, 124, 1, 1500000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (28, 23, 125, 1, 600000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (29, 25, 125, 1, 600000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (30, 26, 124, 1, 1500000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (31, 27, 124, 1, 1500000)
INSERT [dbo].[tblCheckoutDetail] ([PK_iCheckoutDetailID], [FK_iOrderID], [FK_iProductID], [iQuantity], [fPrice]) VALUES (32, 30, 126, 2, 200000)
SET IDENTITY_INSERT [dbo].[tblCheckoutDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblImage] ON 

INSERT [dbo].[tblImage] ([PK_iImageID], [sImage]) VALUES (5, N'/Data/563282be3254f50aac45.jpg')
INSERT [dbo].[tblImage] ([PK_iImageID], [sImage]) VALUES (6, N'/Data/309011360_2481749058626201_926817814432895443_n.jpg')
INSERT [dbo].[tblImage] ([PK_iImageID], [sImage]) VALUES (7, N'/Data/311454669_2506007806200326_1742919981966582397_n.jpg')
INSERT [dbo].[tblImage] ([PK_iImageID], [sImage]) VALUES (8, N'/Data/311266970_2506007776200329_8672871418517302720_n.jpg')
INSERT [dbo].[tblImage] ([PK_iImageID], [sImage]) VALUES (9, N'/Data/307937840_2476132112521229_6930776927136825750_n.jpg')
SET IDENTITY_INSERT [dbo].[tblImage] OFF
GO
SET IDENTITY_INSERT [dbo].[tblImportOrder] ON 

INSERT [dbo].[tblImportOrder] ([PK_iImportOrderID], [FK_iAccountID], [FK_iSupplierID], [dtDateAdded], [sDeliver], [iState]) VALUES (6, 18, 9, CAST(N'2023-02-24T02:30:00.000' AS DateTime), N'Tú Anh', NULL)
INSERT [dbo].[tblImportOrder] ([PK_iImportOrderID], [FK_iAccountID], [FK_iSupplierID], [dtDateAdded], [sDeliver], [iState]) VALUES (7, 18, 8, CAST(N'2023-02-24T12:30:00.000' AS DateTime), N'Mỹ Hoa', NULL)
INSERT [dbo].[tblImportOrder] ([PK_iImportOrderID], [FK_iAccountID], [FK_iSupplierID], [dtDateAdded], [sDeliver], [iState]) VALUES (8, 19, 7, CAST(N'2023-02-20T14:30:00.000' AS DateTime), N'Ý Lan', NULL)
INSERT [dbo].[tblImportOrder] ([PK_iImportOrderID], [FK_iAccountID], [FK_iSupplierID], [dtDateAdded], [sDeliver], [iState]) VALUES (9, 19, 10, CAST(N'2023-02-24T02:30:00.000' AS DateTime), N'Tuấn Anh', NULL)
INSERT [dbo].[tblImportOrder] ([PK_iImportOrderID], [FK_iAccountID], [FK_iSupplierID], [dtDateAdded], [sDeliver], [iState]) VALUES (10, 20, 11, CAST(N'2023-02-24T02:30:00.000' AS DateTime), N'Trung Kiên', NULL)
INSERT [dbo].[tblImportOrder] ([PK_iImportOrderID], [FK_iAccountID], [FK_iSupplierID], [dtDateAdded], [sDeliver], [iState]) VALUES (11, 20, 12, CAST(N'2023-04-21T06:51:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[tblImportOrder] ([PK_iImportOrderID], [FK_iAccountID], [FK_iSupplierID], [dtDateAdded], [sDeliver], [iState]) VALUES (12, 20, 13, CAST(N'2023-04-21T06:52:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[tblImportOrder] ([PK_iImportOrderID], [FK_iAccountID], [FK_iSupplierID], [dtDateAdded], [sDeliver], [iState]) VALUES (14, 29, 14, CAST(N'2024-06-12T10:02:00.000' AS DateTime), N'DM', NULL)
SET IDENTITY_INSERT [dbo].[tblImportOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrder] ON 

INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (8, 14, N'Nguyễn Lan', N'0943854535', N'Hà Nội', CAST(N'2020-04-01T00:00:00.000' AS DateTime), N'Tuấn Anh', 1, 20000, 1, NULL, 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (9, 14, N'Thu Phương', N'0343253248', N'Hải Dương', CAST(N'2023-04-04T00:00:00.000' AS DateTime), N'Ngọc', 1, 25000, 1, NULL, 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (10, 14, N'Đức Dương', N'0346364645', N'Bắc Ninh', CAST(N'2023-04-06T20:11:00.000' AS DateTime), N'Ngọc', 1, 16000, 1, NULL, 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (11, 15, N'Thùy Anh', N'0346364645', N'Hà Nội', CAST(N'2023-04-07T00:00:00.000' AS DateTime), N'Ngọc', 0, 16000, 1, NULL, 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (12, 15, N'Lan Phương', N'0987656765', N'Hà Nội', CAST(N'2023-04-21T07:28:00.000' AS DateTime), N'Nam', 1, 0, 0, NULL, 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (13, 15, N'Khánh', N'0987656765', N'Hà Giang', CAST(N'2023-04-21T07:28:00.000' AS DateTime), N'Nam', 1, 0, 0, NULL, 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (14, 15, N'Khánh', N'0987656765', N'Hà Nội', CAST(N'2023-04-21T07:28:00.000' AS DateTime), N'Nam', 1, 0, 1, NULL, 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (15, 16, N'Khánh ', N'0987656765', N'Hà Giang', CAST(N'2023-04-21T07:24:00.000' AS DateTime), N'Hùng', 1, 0, 1, NULL, 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (16, 16, N'12', N'3333', N'44444444412121', CAST(N'2023-04-21T16:01:30.997' AS DateTime), N'Linh', 0, 0, 0, N'0', 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (17, 16, N'adasd', N'12131201', N'âbbs', CAST(N'2023-04-21T16:06:16.867' AS DateTime), N'Linh', 1, 0, 0, N'0', 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (18, 17, N'Dat Amazon', N'0985846590', N'123121a', CAST(N'2023-04-21T16:06:42.863' AS DateTime), N'Linh', 0, 0, 0, N'0', 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (19, 17, N'duc tesst', N'121212141', N'duc_test', CAST(N'2023-04-21T16:28:52.457' AS DateTime), N'Linh', 1, 0, 0, N'0', 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (20, 17, N'test 2 ', N'21212121', N'test 2', CAST(N'2023-04-21T16:31:46.063' AS DateTime), N'Linh', 0, 0, 0, N'0', 10000000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (21, 28, NULL, NULL, NULL, CAST(N'2024-06-11T09:47:09.760' AS DateTime), NULL, 0, 1500000, 1, N'Đã thanh toán', NULL)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (22, 28, NULL, NULL, NULL, CAST(N'2024-06-11T09:57:16.010' AS DateTime), NULL, 0, 1500000, 1, N'Đã thanh toán', NULL)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (23, 28, N'033', N'033', N'033', CAST(N'2024-06-11T10:29:19.827' AS DateTime), NULL, 1, 600000, 1, N'Đã thanh toán', NULL)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (24, 17, N'duc', N'033', N'hue', CAST(N'2024-06-11T10:30:00.000' AS DateTime), N'hue', 1, 0, 0, NULL, NULL)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (25, 28, N'NguyenDuc', N'', N'hue', CAST(N'2024-06-11T10:48:23.117' AS DateTime), NULL, 1, 600000, 0, N'Chờ xác nhận', NULL)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (26, 28, N'NguyenDuc', N'033', N'hue', CAST(N'2024-06-11T11:05:56.830' AS DateTime), NULL, 1, 1500000, 0, N'Chờ xác nhận', NULL)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (27, 28, N'NguyenDuc', N'033', N'hue', CAST(N'2024-06-11T11:07:27.700' AS DateTime), NULL, 0, 1500000, 1, N'Đã thanh toán', NULL)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (28, 28, N'NguyenDuc', N'033', N'hue', CAST(N'2024-06-11T21:26:00.137' AS DateTime), NULL, 1, 40000, 0, N'Chờ xác nhận', 40000)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (29, 28, N'NguyenDuc', N'033', N'Thành phố Hà Nội', CAST(N'2024-07-15T18:12:46.840' AS DateTime), NULL, 1, 60000, 0, N'Chờ xác nhận', 69200)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (30, 28, N'NguyenDuc', N'033', N'Thành phố Đà Nẵng', CAST(N'2024-07-16T08:31:38.527' AS DateTime), NULL, 1, 400000, 0, N'Chờ xác nhận', 439650)
INSERT [dbo].[tblOrder] ([PK_iOrderID], [FK_iAccountID], [sCustomerName], [sCustomerPhone], [sDeliveryAddress], [dInvoidDate], [sBiller], [iDeliveryMethod], [fSurcharge], [iPaid], [sState], [iTotal]) VALUES (31, 28, N'NguyenDuc', N'033', N'Thành phố Hà Nội', CAST(N'2024-07-16T08:48:24.857' AS DateTime), NULL, 1, 60000, 0, N'Chờ xác nhận', 92900)
SET IDENTITY_INSERT [dbo].[tblOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPermission] ON 

INSERT [dbo].[tblPermission] ([PK_iPermissionID], [sPermissionName], [iState]) VALUES (1, N'User', 1)
INSERT [dbo].[tblPermission] ([PK_iPermissionID], [sPermissionName], [iState]) VALUES (2, N'Seller', 1)
INSERT [dbo].[tblPermission] ([PK_iPermissionID], [sPermissionName], [iState]) VALUES (3, N'Admin', 1)
SET IDENTITY_INSERT [dbo].[tblPermission] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (80, 9, 12, N'Bó hoa tulip ', N'Hoa tu lip cầm tay ngày cưới, tặng bạn bè dịp lễ tết, sinh nhật', 350000, NULL, NULL, N'~/Content/assets/images/hoa_len/hoa_tulip1.jpg', N'bó', 99, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (90, 9, 12, N'Túi hoa hướng dương 1 bông', N'Túi hoa hướng dương cầm tay ngày cưới, tặng bạn bè dịp lễ tết, sinh nhật', 70000, NULL, NULL, N'~/Content/assets/images/hoa_len/huong_duong3.jpg', N'túi', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (91, 9, 12, N'Bó hoa tử linh lan', N'Hoa tử linh đan cầm tay ngày cưới, tặng bạn bè dịp lễ tết, sinh nhật', 300000, NULL, NULL, N'~/Content/assets/images/hoa_len/tu_linh_lan.jpg', N'bó', 99, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (92, 9, 12, N'Bó hoa cúc họa mi', N'Hoa tu lip cầm tay ngày cưới, tặng bạn bè dịp lễ tết, sinh nhật', 200000, NULL, NULL, N'~/Content/assets/images/hoa_len/cuc.jpg', N'bó', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (93, 10, 13, N'Chuột xinh', N'Chuột len làm từ chất liệu len milk cotton 125gr bền đẹp phù hợp với tặng quà, decord, trang trí', 190000, NULL, NULL, N'~/Content/assets/images/thu_bong/chuot_1_2.jpg', N'con', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (99, 10, 13, N'Mèo mew', N'Bé mèo mew len xinh xắn làm từ chất liệu len milk cotton 125gr bền đẹp phù hợp với tặng quà, decord, trang trí', 220000, NULL, NULL, N'~/Content/assets/images/thu_bong/meo_1_5.jpg', N'con', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (100, 10, 13, N'Thỏ đeo cà rốt', N'Thỏ đeo cà rốt xinh xắn làm từ chất liệu len milk cotton 125gr bền đẹp phù hợp với tặng quà, decord, trang trí', 200000, NULL, NULL, N'~/Content/assets/images/thu_bong/tho_ca_rot_4.jpg', N'con', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (101, 12, 14, N'Mũ len hoa văn ', N'Mũ len chứa các đường nét hoa văn ngôi sao trong ô vuông độc đáo, được móc từ len yarn cho mùa đông ấm áp', 240000, NULL, NULL, N'~/Content/assets/images/mu_len/mua_dong/mu_2_2.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (102, 12, 14, N'Mũ bé yêu', N'Mũ len cho bé được móc từ len milk nhẹ nhàng, mềm mại, ấm áp, có thêu tên cho bé', 160000, NULL, NULL, N'~/Content/assets/images/mu_len/mua_he/mu_3_3.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (103, 12, 15, N'Khăn màu chuyển', N'Khăn chuyển màu từ xanh sang tìm sang trọng, duy nhất, bền đẹp', 500000, NULL, NULL, N'~/Content/assets/images/khan_len/khan_7_4.png', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (104, 12, 15, N'Khăn caro', N'Khăn caro màu cà rốt, móc các ô hoa văn liền kề với len Ý nội địa, cao cấp, bền đẹp', 500000, NULL, NULL, N'~/Content/assets/images/khan_len/khan_5_2.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (105, 12, 15, N'Khăn cổ điển', N'Khăn mang phong cách dài, có dây tua ở 2 đầu, mang đạm tính cổ điển, sang trọng, phù hợp mọi lứa tuổi', 500000, NULL, NULL, N'~/Content/assets/images/khan_len/khan1.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (106, 13, 16, N'Túi vàng Christian Dior', N'Túi vàng Christian Dior được móc từ sợi dệt, chắc chắn, sang trọng', 1500000, NULL, NULL, N'~/Content/assets/images/tui_xach/tui_2_3.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (107, 13, 16, N'Túi Christian Dior chéo cánh', N'Túi Christian Dior chéo cánh được móc từ sợi dệt, chắc chắn, sang trọng', 1500000, NULL, NULL, N'~/Content/assets/images/tui_xach/tui_3_2.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (108, 13, 16, N'Túi & mũ', N'Bộ đôi kết hợp túi và mũ sang trọng', 2500000, NULL, NULL, N'~/Content/assets/images/tui_xach/tui_9_2.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (124, 8, 17, N'Bộ váy & áo vàng', N'Bộ đôi kết hợp giữ váy và áo vàng  đẹp đẽ, nhẹ nhàng, sang trọng', 1500000, NULL, NULL, N'~/Content/assets/images/vay_len/vay_1_0.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (125, 8, 17, N'Váy trắng cho trẻ sơ sinh', N'Váy trắng cho trẻ sơ sinh mềm mại, mịn màng, sang trọng', 600000, NULL, NULL, N'~/Content/assets/images/vay_len/vay_2_4.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (126, 8, 17, N'Đầm dự tiệc', N'Đầm sang trọng, mềm mại, uyển chuyển, cuốn hút cho người mặc', 200000, NULL, NULL, N'~/Content/assets/images/vay_len/vay_3_1.jpg', N'chiếc', 98, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (127, 14, 18, N'Chậu hoa đào nổi bật', N'Chậu Hoa Đào Cao 1m75 Trang Trí Tết', 200000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_dao1.jpg', N'chiếc', 98, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (128, 14, 18, N'Chậu hoa đào Gen Z', N'Chậu đào hồng trang trí nội thất đẹp', 400000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_dao2.jpg', N'chiếc', 98, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (111, 14, 18, N'Chậu hoa đào cá tính', N'CÂY ĐÀO - CHẬU CÂY ĐÀO PHAI TRANG TRÍ TẾT ĐÓN XUÂN', 500000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_dao3.jpg', N'chiếc', 98, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (112, 14, 18, N'Chậu hoa đào mùa tết', N'BÌNH HOA MỘC LAN TRANG TRÍ KHÔNG GIAN SANG TRỌNG', 700000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_dao4.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (113, 14, 18, N'Chậu hoa đào giấy', N'CHẬU CÂY HOA GIẤY NHIỀU MÀU TRANG TRÍ ĐẸP NỔI BẬT', 800000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_dao5.jpg', N'chiếc', 101, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (114, 14, 18, N'Chậu hoa đào', N'BÌNH ĐÀO ĐỎ ĐÓN TẾT TÀI LỘC', 800000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_hong1.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (115, 14, 18, N'Chậu hoa lan', N'BÌNH HOA MỘC LAN TRANG TRÍ NHÀ', 900000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_hong2.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (116, 14, 18, N'Chậu hoa', N'Chậu hoa len nhiều bông', 900000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_len1.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (117, 14, 18, N'Chậu hoa len cúc', N'Chậu hoa len', 900000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_len2.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (118, 14, 18, N'Chậu hoa len nhiều bông', N'Chậu hoa len mini trang trí bàn làm việc handmade', 900000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_len3.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (119, 14, 18, N'Chậu Hoa Len Tulip Móc Thủ Công', N'Chậu Hoa Len Tulip Móc Thủ Công Trí Nhà Cửa Hoặc Làm Quà Tặng Bạn Bè Người Yêu', 100000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_tulip1.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (110, 14, 18, N'Chậu Hoa Tulip Vàng', N'Chậu hoa tulip vàng được yêu thích và chọn lựa để trang trí cho ngôi nhà', 200000, NULL, NULL, N'~/Content/assets/images/chau_len/chau_tulip2.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (120, 12, 15, N'Khăn len', N'KHĂN QUÀNG CHOÀNG CỔ LEN CASHMERE GIỮ ẤM MÀU HỒNG', 500000, NULL, NULL, N'~/Content/assets/images/khan_len/khan3.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (121, 12, 15, N'Khăn len vàng', N'KHĂN QUÀNG CHOÀNG CỔ LEN CASHMERE GIỮ ẤM MÀU VÀNG NGHỆ CAO CẤP ĐẸP SANG TRỌNG', 500000, NULL, NULL, N'~/Content/assets/images/khan_len/khan2.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (122, 12, 14, N'Mũ len màu xanh', N'Mũ len VIGER LOGO màu xanh neon', 500000, NULL, NULL, N'~/Content/assets/images/mu_len/mua_dong/mu_1_1.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (123, 12, 14, N'Mũ len màu đen', N'Mũ Len Cap Màu Đen', 500000, NULL, NULL, N'~/Content/assets/images/mu_len/mua_dong/mu_1_2.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (130, 12, 14, N'Mũ len màu nâu', N'MŨ LEN DỆT KIM', 500000, NULL, NULL, N'~/Content/assets/images/mu_len/mua_dong/mu_1_4.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (131, 12, 14, N'Mũ len màu hồng', N'Nón len màu hồng cho bé gái', 500000, NULL, NULL, N'~/Content/assets/images/mu_len/mua_dong/mu_1_5.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (132, 12, 14, N'Mũ len cho bé gái', N'Mũ Len Họa Tiết Hoa Đáng Yêu Cho Các Bé', 500000, NULL, NULL, N'~/Content/assets/images/mu_len/mua_dong/mu_2_1.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (133, 12, 14, N'Mũ len xinh đẹp', N'Mũ Len Dệt Kim Thiết Kế Tinh Tế Thời Trang Thu Đông Cao Cấp Cho Nữ', 500000, NULL, NULL, N'~/Content/assets/images/mu_len/mua_dong/mu_2_2.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (134, 12, 14, N'Mũ len cho cô gái', N'MŨ LEN TRÒN VÀNH GÂN SỌC ADICOLOR', 500000, NULL, NULL, N'~/Content/assets/images/mu_len/mua_dong/mu_2_3.jpg', N'chiếc', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (135, 10, 13, N'Cún bụng bự', N'Chó Bông Mặt Xệ Nằm Bụng Chó', 190000, NULL, NULL, N'~/Content/assets/images/thu_bong/cun bung bu (2).jpg', N'con', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (136, 10, 13, N'Mèo bông vàng', N'Thú Bông Mèo Vàng, Mèo Bông Vàng Siêu Dễ Thương Mềm Êm Mịn', 190000, NULL, NULL, N'~/Content/assets/images/thu_bong/meo_1_2.jpg', N'con', 100, NULL)
INSERT [dbo].[tblProduct] ([PK_iProductID], [FK_iSupplierID], [FK_iCategoryID], [sProductName], [sDescribe], [fPrice], [sColor], [sSize], [sImage], [sUnit], [iQuantity], [iState]) VALUES (137, 13, 16, N'Phụ kiện móc túi xách Hoa Cúc', N'Túi vàng Christian Dior được móc từ sợi dệt, chắc chắn, sang trọng', 1500000, NULL, NULL, N'~/Content/assets/images/tui_xach/tui_7_3.jpg', N'chiếc', 100, NULL)
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProductColor] ON 

INSERT [dbo].[tblProductColor] ([PK_iProductColorID], [sProductColor]) VALUES (6, N'Đỏ')
INSERT [dbo].[tblProductColor] ([PK_iProductColorID], [sProductColor]) VALUES (7, N'Xanh')
INSERT [dbo].[tblProductColor] ([PK_iProductColorID], [sProductColor]) VALUES (8, N'Vàng')
INSERT [dbo].[tblProductColor] ([PK_iProductColorID], [sProductColor]) VALUES (9, N'Đỏ')
INSERT [dbo].[tblProductColor] ([PK_iProductColorID], [sProductColor]) VALUES (10, N'Xanh')
INSERT [dbo].[tblProductColor] ([PK_iProductColorID], [sProductColor]) VALUES (11, N'Vàng')
INSERT [dbo].[tblProductColor] ([PK_iProductColorID], [sProductColor]) VALUES (12, N'Đỏ')
INSERT [dbo].[tblProductColor] ([PK_iProductColorID], [sProductColor]) VALUES (13, N'Xanh')
INSERT [dbo].[tblProductColor] ([PK_iProductColorID], [sProductColor]) VALUES (14, N'Vàng')
INSERT [dbo].[tblProductColor] ([PK_iProductColorID], [sProductColor]) VALUES (15, N'Đỏ')
SET IDENTITY_INSERT [dbo].[tblProductColor] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProductPrice] ON 

INSERT [dbo].[tblProductPrice] ([PK_iProductPriceID], [fPrice], [dtStartDay], [dtEndDay]) VALUES (7, 200000, NULL, NULL)
INSERT [dbo].[tblProductPrice] ([PK_iProductPriceID], [fPrice], [dtStartDay], [dtEndDay]) VALUES (8, 300000, NULL, NULL)
INSERT [dbo].[tblProductPrice] ([PK_iProductPriceID], [fPrice], [dtStartDay], [dtEndDay]) VALUES (9, 400000, NULL, NULL)
INSERT [dbo].[tblProductPrice] ([PK_iProductPriceID], [fPrice], [dtStartDay], [dtEndDay]) VALUES (10, 250000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblProductPrice] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProductSize] ON 

INSERT [dbo].[tblProductSize] ([PK_iProductSizeID], [sSizeName]) VALUES (5, N'Nhỏ')
INSERT [dbo].[tblProductSize] ([PK_iProductSizeID], [sSizeName]) VALUES (6, N'Vừa')
INSERT [dbo].[tblProductSize] ([PK_iProductSizeID], [sSizeName]) VALUES (7, N'To')
INSERT [dbo].[tblProductSize] ([PK_iProductSizeID], [sSizeName]) VALUES (8, N'Nhỏ')
INSERT [dbo].[tblProductSize] ([PK_iProductSizeID], [sSizeName]) VALUES (9, N'Vừa')
INSERT [dbo].[tblProductSize] ([PK_iProductSizeID], [sSizeName]) VALUES (10, N'To')
SET IDENTITY_INSERT [dbo].[tblProductSize] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPromote] ON 

INSERT [dbo].[tblPromote] ([PK_iPromoteID], [FK_iSupplierID], [sPromoteName], [sPromoteRate], [dtStartDay], [dtEndDay]) VALUES (7, 9, N'Không', 0, CAST(N'2023-02-24T21:30:00.000' AS DateTime), CAST(N'2023-02-24T21:30:00.000' AS DateTime))
INSERT [dbo].[tblPromote] ([PK_iPromoteID], [FK_iSupplierID], [sPromoteName], [sPromoteRate], [dtStartDay], [dtEndDay]) VALUES (8, 10, N'Ngày 08/03', 20, CAST(N'2023-04-21T08:44:00.000' AS DateTime), CAST(N'2023-04-21T08:44:00.000' AS DateTime))
INSERT [dbo].[tblPromote] ([PK_iPromoteID], [FK_iSupplierID], [sPromoteName], [sPromoteRate], [dtStartDay], [dtEndDay]) VALUES (9, 11, N'Chào tháng 4', 10, CAST(N'2023-04-01T00:00:00.000' AS DateTime), CAST(N'2023-04-10T00:00:00.000' AS DateTime))
INSERT [dbo].[tblPromote] ([PK_iPromoteID], [FK_iSupplierID], [sPromoteName], [sPromoteRate], [dtStartDay], [dtEndDay]) VALUES (10, 12, N'Ngày giáng sinh', 10, CAST(N'2023-12-20T00:00:00.000' AS DateTime), CAST(N'2023-12-29T00:00:00.000' AS DateTime))
INSERT [dbo].[tblPromote] ([PK_iPromoteID], [FK_iSupplierID], [sPromoteName], [sPromoteRate], [dtStartDay], [dtEndDay]) VALUES (11, 14, N'Ngày 8/3', 13, CAST(N'2024-06-12T09:05:00.000' AS DateTime), CAST(N'2024-06-12T09:05:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblPromote] OFF
GO
SET IDENTITY_INSERT [dbo].[tblReview] ON 

INSERT [dbo].[tblReview] ([PK_iReviewID], [FK_iProductID], [FK_iAccountID], [iStarRating], [dtReviewTime], [sComment]) VALUES (9, 80, 14, 5, CAST(N'2023-04-20T20:43:00.000' AS DateTime), NULL)
INSERT [dbo].[tblReview] ([PK_iReviewID], [FK_iProductID], [FK_iAccountID], [iStarRating], [dtReviewTime], [sComment]) VALUES (10, 80, 14, 5, CAST(N'2023-04-20T20:44:00.000' AS DateTime), NULL)
INSERT [dbo].[tblReview] ([PK_iReviewID], [FK_iProductID], [FK_iAccountID], [iStarRating], [dtReviewTime], [sComment]) VALUES (11, 80, 15, 4, CAST(N'2023-04-20T20:44:00.000' AS DateTime), NULL)
INSERT [dbo].[tblReview] ([PK_iReviewID], [FK_iProductID], [FK_iAccountID], [iStarRating], [dtReviewTime], [sComment]) VALUES (12, 89, 15, 4, CAST(N'2023-04-20T20:44:00.000' AS DateTime), NULL)
INSERT [dbo].[tblReview] ([PK_iReviewID], [FK_iProductID], [FK_iAccountID], [iStarRating], [dtReviewTime], [sComment]) VALUES (13, 89, 16, 5, CAST(N'2023-04-20T20:44:00.000' AS DateTime), NULL)
INSERT [dbo].[tblReview] ([PK_iReviewID], [FK_iProductID], [FK_iAccountID], [iStarRating], [dtReviewTime], [sComment]) VALUES (14, 89, 16, 5, CAST(N'2023-04-20T20:44:00.000' AS DateTime), NULL)
INSERT [dbo].[tblReview] ([PK_iReviewID], [FK_iProductID], [FK_iAccountID], [iStarRating], [dtReviewTime], [sComment]) VALUES (15, 90, 17, 4, CAST(N'2023-04-20T20:44:00.000' AS DateTime), NULL)
INSERT [dbo].[tblReview] ([PK_iReviewID], [FK_iProductID], [FK_iAccountID], [iStarRating], [dtReviewTime], [sComment]) VALUES (16, 90, 17, 5, CAST(N'2023-04-20T20:44:00.000' AS DateTime), NULL)
INSERT [dbo].[tblReview] ([PK_iReviewID], [FK_iProductID], [FK_iAccountID], [iStarRating], [dtReviewTime], [sComment]) VALUES (17, 90, 17, 5, CAST(N'2023-04-20T20:44:00.000' AS DateTime), NULL)
INSERT [dbo].[tblReview] ([PK_iReviewID], [FK_iProductID], [FK_iAccountID], [iStarRating], [dtReviewTime], [sComment]) VALUES (18, 126, 28, 2, CAST(N'2024-07-16T08:31:48.643' AS DateTime), N'tệ')
SET IDENTITY_INSERT [dbo].[tblReview] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSupplier] ON 

INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (7, 19, N'Tiệm nhỏ Xíu', N'0984534534', N'thuy@gmail.com', N'Đà Nẵng', 0, NULL)
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (8, 18, N'Nhật Linh Handmade', N'0985433453', N'linh@gmail.com', N'Hà Nội', 0, NULL)
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (9, 18, N'Nana Handmade', N'0453954383', N'na@gmail.com', N'Bắc Ninh', 0, NULL)
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (10, 19, N'Pitachan', N'0845345435', N'pitachan@gmail.com', N'Bắc Giang', 0, NULL)
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (11, 20, N'Haichen crochet', N'0945353534', N'chan@gmail.com', N'Hà Nam', 0, NULL)
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (12, 20, N'Rabit crochet', N'0945435345', N'rbt@gmail.com', N'Hà Giang', 0, NULL)
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (13, 20, N'Hoàng Hà handmade', N'0978567569', N'hoangha@gmail.com', N'Hà Nam', 0, NULL)
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (14, 29, N'DatG', N'033', N'duc@gmail.com', N'hue', 1, NULL)
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (15, 31, N'Ducdeptrai', N'033', N'ducpd82@gmail.com', N'Thành phố Đà Nẵng', 0, NULL)
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (16, 32, N'Ducdeptrai', N'033', N'ducpd82@gmail.com', N'Tỉnh Bắc Kạn', 0, NULL)
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (18, 33, N'Default', N'033', N'ducpd82@gmail.com', N'Thành phố Đà Nẵng', 0, N'/Data/System.Web.HttpPostedFileWrapper')
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (19, 34, N'Default', N'033', N'ducpd82@gmail.com', N'Tỉnh Cao Bằng', 0, N'/Data/System.Web.HttpPostedFileWrapper')
INSERT [dbo].[tblSupplier] ([PK_iSupplierID], [FK_iAccountID], [sSupplierName], [sPhone], [sEmail], [sAddress], [iState], [sVerificationImagePath]) VALUES (20, 35, N'Default', N'033', N'ducpd82@gmail.com', N'Tỉnh Bắc Ninh', 0, N'/Data/007QvzfIly1hextt7jwjij31hk0u07e8.jpg')
SET IDENTITY_INSERT [dbo].[tblSupplier] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (14, 1, N'kh1@gmail.com', NULL, N'Hoa', N'0985679546', N'Hà Nội', 0)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (15, 1, N'kh2@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Lan', N'0983245678', N'Thái Bình', 0)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (16, 1, N'kh3@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Hương', N'0169544534', N'Bắc Ninh', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (17, 1, N'kh4@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Tuấn', N'0756834535', N'Hà Nội', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (18, 2, N'nv@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Ngọc', N'0914567543', N'Hà Nam', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (19, 2, N'nv1@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Thương', N'0965456321', N'Nam Định', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (20, 2, N'dat@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Đạt', N'0988567468', N'Hà Nội', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (22, 3, N'admin@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Dat', N'0978567569', N'Hà Nội', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (23, 1, N'18a10010175@students.hou.edu.vn', N'c4ca4238a0b923820dcc509a6f75849b', N'Dat', N'0978567569', N'Bến Tre', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (24, 1, N'thu@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Dat', N'0978567569', N'Bến Tre', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (25, 1, N'lamnhi@gmail.com', N'c81e728d9d4c2f636f067f89cc14862c', N'Nguyễn Tùng Lâm', N'0392228502', N'Hà Nội', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (26, 2, N'nguyentunglam@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Nguyễn Tùng Lâm', N'0392228502', N'Hà Nội', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (27, 1, N'hai@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'Chử Thành Hai', N'0294965333', N'Hà Nội', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (28, 1, N'ducpd82@gmail.com', N'81dc9bdb52d04dc20036dbd8313ed055', N'NguyenDuc', NULL, NULL, NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (29, 2, N'duc@gmail.com', N'202cb962ac59075b964b07152d234b70', N'duc', N'033', N'hue', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (30, 3, N'admin@example.com', N'202cb962ac59075b964b07152d234b70', N'duc', N'033', N'hue', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (31, 2, N'ducpd72@gmail.com', N'202cb962ac59075b964b07152d234b70', N'duc', N'033', N'hue', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (32, 2, N'ducpd62@gmail.com', N'202cb962ac59075b964b07152d234b70', N'duc', N'033', N'hue', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (33, 2, N'k1@gmail.com', N'202cb962ac59075b964b07152d234b70', N'duc', N'033', N'hue', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (34, 2, N'k2@gmail.com', N'202cb962ac59075b964b07152d234b70', N'duc', N'033', N'hue', NULL)
INSERT [dbo].[tblUser] ([PK_iAccountID], [FK_iPermissionID], [sEmail], [sPass], [sUserName], [sPhone], [sAddress], [iState]) VALUES (35, 2, N'k3@gmail.com', N'202cb962ac59075b964b07152d234b70', N'duc', N'033', N'hue', NULL)
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO
ALTER TABLE [dbo].[tblCategory]  WITH CHECK ADD  CONSTRAINT [fk_category_supplier] FOREIGN KEY([FK_iSupplierID])
REFERENCES [dbo].[tblSupplier] ([PK_iSupplierID])
GO
ALTER TABLE [dbo].[tblCategory] CHECK CONSTRAINT [fk_category_supplier]
GO
ALTER TABLE [dbo].[tblCheckinDetail]  WITH CHECK ADD  CONSTRAINT [fk_checkinDetail_importOrder] FOREIGN KEY([FK_iImportOrderID])
REFERENCES [dbo].[tblImportOrder] ([PK_iImportOrderID])
GO
ALTER TABLE [dbo].[tblCheckinDetail] CHECK CONSTRAINT [fk_checkinDetail_importOrder]
GO
ALTER TABLE [dbo].[tblCheckinDetail]  WITH CHECK ADD  CONSTRAINT [fk_checkinDetail_product] FOREIGN KEY([FK_iProductID])
REFERENCES [dbo].[tblProduct] ([PK_iProductID])
GO
ALTER TABLE [dbo].[tblCheckinDetail] CHECK CONSTRAINT [fk_checkinDetail_product]
GO
ALTER TABLE [dbo].[tblCheckoutDetail]  WITH CHECK ADD  CONSTRAINT [fk_checkoutDetail_order] FOREIGN KEY([FK_iOrderID])
REFERENCES [dbo].[tblOrder] ([PK_iOrderID])
GO
ALTER TABLE [dbo].[tblCheckoutDetail] CHECK CONSTRAINT [fk_checkoutDetail_order]
GO
ALTER TABLE [dbo].[tblCheckoutDetail]  WITH CHECK ADD  CONSTRAINT [fk_checkoutDetail_product] FOREIGN KEY([FK_iProductID])
REFERENCES [dbo].[tblProduct] ([PK_iProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblCheckoutDetail] CHECK CONSTRAINT [fk_checkoutDetail_product]
GO
ALTER TABLE [dbo].[tblComplaint]  WITH CHECK ADD  CONSTRAINT [FK_tblComplaint_tblSupplier] FOREIGN KEY([FK_iSupplierID])
REFERENCES [dbo].[tblSupplier] ([PK_iSupplierID])
GO
ALTER TABLE [dbo].[tblComplaint] CHECK CONSTRAINT [FK_tblComplaint_tblSupplier]
GO
ALTER TABLE [dbo].[tblImportOrder]  WITH CHECK ADD  CONSTRAINT [fk_importOrder_account] FOREIGN KEY([FK_iAccountID])
REFERENCES [dbo].[tblUser] ([PK_iAccountID])
GO
ALTER TABLE [dbo].[tblImportOrder] CHECK CONSTRAINT [fk_importOrder_account]
GO
ALTER TABLE [dbo].[tblImportOrder]  WITH CHECK ADD  CONSTRAINT [fk_importOrder_supplier] FOREIGN KEY([FK_iSupplierID])
REFERENCES [dbo].[tblSupplier] ([PK_iSupplierID])
GO
ALTER TABLE [dbo].[tblImportOrder] CHECK CONSTRAINT [fk_importOrder_supplier]
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [fk_order_account] FOREIGN KEY([FK_iAccountID])
REFERENCES [dbo].[tblUser] ([PK_iAccountID])
GO
ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [fk_order_account]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [fk_product_category] FOREIGN KEY([FK_iCategoryID])
REFERENCES [dbo].[tblCategory] ([PK_iCategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [fk_product_category]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [fk_product_supplier] FOREIGN KEY([FK_iSupplierID])
REFERENCES [dbo].[tblSupplier] ([PK_iSupplierID])
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [fk_product_supplier]
GO
ALTER TABLE [dbo].[tblPromote]  WITH CHECK ADD  CONSTRAINT [fk_promote_supplier] FOREIGN KEY([FK_iSupplierID])
REFERENCES [dbo].[tblSupplier] ([PK_iSupplierID])
GO
ALTER TABLE [dbo].[tblPromote] CHECK CONSTRAINT [fk_promote_supplier]
GO
ALTER TABLE [dbo].[tblReview]  WITH CHECK ADD  CONSTRAINT [fk_review_account] FOREIGN KEY([FK_iAccountID])
REFERENCES [dbo].[tblUser] ([PK_iAccountID])
GO
ALTER TABLE [dbo].[tblReview] CHECK CONSTRAINT [fk_review_account]
GO
ALTER TABLE [dbo].[tblReview]  WITH CHECK ADD  CONSTRAINT [fk_review_product] FOREIGN KEY([FK_iProductID])
REFERENCES [dbo].[tblProduct] ([PK_iProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblReview] CHECK CONSTRAINT [fk_review_product]
GO
ALTER TABLE [dbo].[tblSupplier]  WITH CHECK ADD  CONSTRAINT [fk_supplier_account] FOREIGN KEY([FK_iAccountID])
REFERENCES [dbo].[tblUser] ([PK_iAccountID])
GO
ALTER TABLE [dbo].[tblSupplier] CHECK CONSTRAINT [fk_supplier_account]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [fk_user_permission] FOREIGN KEY([FK_iPermissionID])
REFERENCES [dbo].[tblPermission] ([PK_iPermissionID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [fk_user_permission]
GO
