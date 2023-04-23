USE [master]
GO
/****** Object:  Database [CNPM_NC_eShopSolution]    Script Date: 4/19/2023 11:19:36 AM ******/
CREATE DATABASE [CNPM_NC_eShopSolution]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CNPM_NC_eShopSolution', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CNPM_NC_eShopSolution.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CNPM_NC_eShopSolution_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CNPM_NC_eShopSolution_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CNPM_NC_eShopSolution].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET ARITHABORT OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET RECOVERY FULL 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET  MULTI_USER 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CNPM_NC_eShopSolution', N'ON'
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET QUERY_STORE = OFF
GO
USE [CNPM_NC_eShopSolution]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppConfigs]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppConfigs](
	[Key] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AppConfigs] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoleClaims]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoles]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserClaims]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserLogins]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserRoles]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserTokens]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](5) NOT NULL,
	[Count] [int] NOT NULL,
	[Promotion] [int] NOT NULL,
	[Describe] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [varchar](5) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[ShipAddress] [nvarchar](max) NULL,
	[ShipName] [nvarchar](max) NULL,
	[ShipPhoneNumber] [nvarchar](max) NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[CouponId] [int] NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[Details] [nvarchar](max) NULL,
	[Thumbnail] [nvarchar](300) NULL,
	[ProductImage] [nvarchar](300) NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 4/19/2023 11:19:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[ProductId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Comments] [nvarchar](500) NOT NULL,
	[PublishedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230326190352_Initial', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230328082904_DateCreated_Product', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230329182730_AddColumnAddress_AppUserTable', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230403174646_AddRoleColumnInToAppUser', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230408222846_Order_Ship_Information_Column', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230408225122_Remove_Ship_Address_Column', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230412123309_Add_PaymentMethod_Column_To_Order_Table', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230412154309_StarRating', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230413070436_Coupon', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230415145114_Total_Column_Order', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230415152225_Change_PaymentMethod_Type_To_String_Order_Table', N'5.0.4')
GO
INSERT [dbo].[AppRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8d04dce2-969a-435d-bba4-df3f325983dc', N'Administrator role', N'admin', N'admin', N'45c68a23-cc5e-48ca-99d0-a42c4d863a21')
GO
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'69bd714f-9576-45ba-b5b7-f00649be00de', N'8d04dce2-969a-435d-bba4-df3f325983dc')
GO
INSERT [dbo].[AppUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'957f29e0-0746-4b56-3bea-08db400e9723', N'Nguyễn Văn Đức Tính', N'ngtinhs', N'NGTINHS', N'nguyenvanductinh777@gmail.com', N'NGUYENVANDUCTINH77@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDOJisRfeoNrnn70gCSgnVw32Xe+ISyuPzcjOg2Z59BUXKWD6p9jKY+5QY27oHmsCg==', N'JHMZEB2AKK7R43K4PIRTNZS56XFH4WIM', N'1de0ec88-b614-4ca1-ba85-67c9c079bb99', N'0983743359', 0, 0, NULL, 1, 0, N'16 Chử Đồng Tử, Phường 7, Quận Tân Bình, TP HCM')
INSERT [dbo].[AppUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'bf0c1bd3-ceb2-45f1-3beb-08db400e9723', N'Nguyễn Văn Đức Tính', N'tinhhhhh', N'TINHHHHH', N'nguyenvanductinh77222@gmail.com', N'NGUYENVANDUCTINH77222@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDkBXloCJ6dftFBa+lYSjbAS51YvwntL0K+Z+UOgBe1LeXU5STYvMWbLyQdIbKwxow==', N'KBO5WL6ZY7SSFA2IWUGAAHQJGYWGJZJT', N'9f8a47f3-23d9-4562-9765-5c4a4bfb43d0', N'0983743358', 0, 0, NULL, 1, 0, N'16 Chử Đồng Tử, Phường 7, Quận Tân Bình, TP HCM')
INSERT [dbo].[AppUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'9015811f-c845-4a9a-657e-08db4012f733', N'Nguyễn Văn Đức Tính', N'ngtinh', N'NGTINH', N'nguyenvanductinh772@gmail.com', N'NGUYENVANDUCTINH772@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEILz0vo+yD+gBV1QU/nBo0H0nNmqKoGbvvFTHrfQQr/DEJvSd6l5R2XVtYysRQ5wKw==', N'NRVYXLEZ3DQSAQVVOVF7DKDM54IX5WFI', N'11400627-de0d-4e55-bac0-ed2425b163ff', N'09837433592', 0, 0, NULL, 1, 0, N'16 Chử Đồng Tử, Phường 7, Quận Tân Bình, TP HCM')
INSERT [dbo].[AppUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address]) VALUES (N'69bd714f-9576-45ba-b5b7-f00649be00de', N'Luan Hy', N'admin', N'ADMIN', N'suppport.phonehub@gmail.com', N'suppport.phonehub@gmail.com', 1, N'AQAAAAEAACcQAAAAEKVBBlMrmMlMt0Yg0uyii07dHL4bgLL66e6yft/OspKL2nUOiOMCJSf9nGCh3Op5PQ==', N'', N'c3bcf8b1-e264-4485-adf0-363f21f1b31c', N'0765006381', 0, 0, NULL, 0, 0, N'123 An Dương Vương P.8 Q.5')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'iPhone')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Samsung')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Oppo')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Vivo')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Xiaomi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Nokia')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[Languages] ([Id], [Name], [IsDefault]) VALUES (N'en', N'English', 0)
INSERT [dbo].[Languages] ([Id], [Name], [IsDefault]) VALUES (N'vi', N'Tiếng Việt', 1)
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (1, N'iPhone 12 Pro', 1, CAST(28890000.00 AS Decimal(18, 2)), 5, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.1 inch, OLED, Super Retina XDR, 2532 x 1170 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP</td></tr><tr><td>Camera Selfie</td><td>12.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>64 GB</td></tr><tr><td>CPU</td><td>Apple A14 Bionic</td></tr><tr><td>Dung lượng pin</td><td>2815 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 1 eSIM, 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>iOS 14</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>10/2020</td></tr></tbody></table></figure>', N'iPhone 12 ra mắt với vai trò mở ra một kỷ nguyên hoàn toàn mới. Tốc độ mạng 5G siêu tốc, bộ vi xử lý A14 Bionic nhanh nhất thế giới smartphone, màn hình OLED tràn cạnh tuyệt đẹp và camera siêu chụp đêm, tất cả đều có mặt trên iPhone 12.', N'/user-content/49860a01-16ba-40d0-91a1-c87292f32ed4.jpg', N'/user-content/9c02bfa6-c53d-43a7-8fe8-0a1c3f21da8d.jpg', CAST(N'2021-06-15T22:22:25.3365100' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (2, N'Samsung Galaxy S21+', 2, CAST(20990000.00 AS Decimal(18, 2)), 5, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.4 inch, Dynamic AMOLED 2X, FHD+, 1080 x 2340 Pixels</td></tr><tr><td>Camera sau</td><td>12.0 MP + 12.0 MP + 8.0 MP</td></tr><tr><td>Camera Selfie</td><td>32.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Exynos 2100</td></tr><tr><td>Dung lượng pin</td><td>4500 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 12</td></tr><tr><td>Xuất xứ</td><td>Việt Nam / Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>01/2022</td></tr></tbody></table></figure>', N'Tuyệt phẩm dành cho các fan của Galaxy Phone đã xuất hiện, Samsung Galaxy S21 FE 5G dồn nén hàng loạt công nghệ ấn tượng chiều lòng người dùng như màn hình 120Hz siêu mượt, hệ thống camera chụp ảnh chuẩn studio, kết nối 5G tốc độ cao cùng cấu hình đặc biệt ấn tượng. Tất cả gói gọn trong một thân máy nhẹ nhàng với màu sắc đẳng cấp và trẻ trung.', N'/user-content/71061c7b-291e-4d78-b1dc-9ef71cf6b18c.jpg', N'/user-content/66411385-ebbe-4f77-8769-1607ba555932.jpg', CAST(N'2021-06-15T22:22:25.3372261' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (3, N'Oppo Reno 5', 3, CAST(8290000.00 AS Decimal(18, 2)), 5, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>Chính: 6.43 inch, Chính: AMOLED, FHD+, 1080 x 2400 Pixels</td></tr><tr><td>Camera sau</td><td>64.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>16.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 695 5G</td></tr><tr><td>GPU</td><td>Adreno 619</td></tr><tr><td>Dung lượng pin</td><td>4500 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 11 (ColorOS 12)</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>03/2022</td></tr></tbody></table></figure>', NULL, N'/user-content/04a0bdb7-c061-47ea-b083-1e9fc533f5f3.jpg', N'/user-content/88e0dd03-8634-4bf5-8215-d827a7a599bb.jpg', CAST(N'2021-06-15T22:22:25.3372288' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (4, N'Vivo V21 5G', 4, CAST(9990000.00 AS Decimal(18, 2)), 5, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.44 inch, AMOLED, FHD+, 2408 x 1080 Pixels</td></tr><tr><td>Camera sau</td><td>64.0 MP + 8.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>44.0 MP</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>MediaTek Dimensity 800U</td></tr><tr><td>GPU</td><td>Mali-G57 MC3</td></tr><tr><td>Dung lượng pin</td><td>4000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 11</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>05/2021</td></tr></tbody></table></figure>', NULL, N'/user-content/94858c6d-cdb2-46fb-99db-c1e2fce95fe7.jpg', N'/user-content/89be6e67-d6f7-45ae-bd88-d5121dd2550f.jpg', CAST(N'2021-06-15T22:22:25.3372291' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (5, N'Xiaomi Redmi Note 10', 5, CAST(5090000.00 AS Decimal(18, 2)), 5, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.5 inch, IPS LCD, FHD+, 1080 x 2400 Pixels</td></tr><tr><td>Camera sau</td><td>48.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>8.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>MediaTek Dimensity 700</td></tr><tr><td>GPU</td><td>Mali-G52 MC2</td></tr><tr><td>Dung lượng pin</td><td>5000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 1 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 11</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>05/2021</td></tr></tbody></table></figure>', NULL, N'/user-content/f25f8b76-8b90-446b-b67b-1fd79ba60b27.jpg', N'/user-content/88047b04-acd3-4105-94ef-2e52c77cf503.jpg', CAST(N'2021-06-15T22:22:25.3372293' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Price], [Stock], [Description], [Details], [Thumbnail], [ProductImage], [DateCreated]) VALUES (6, N'Nokia 5.4', 6, CAST(3290000.00 AS Decimal(18, 2)), 5, N'<figure class="table"><table><tbody><tr><td>Màn hình</td><td>6.39 inch, IPS LCD, HD+, 720 x 1560 Pixels</td></tr><tr><td>Camera sau</td><td>48.0 MP + 5.0 MP + 2.0 MP + 2.0 MP</td></tr><tr><td>Camera Selfie</td><td>16.0 MP</td></tr><tr><td>RAM</td><td>4 GB</td></tr><tr><td>Bộ nhớ trong</td><td>128 GB</td></tr><tr><td>CPU</td><td>Snapdragon 662</td></tr><tr><td>GPU</td><td>Adreno 616</td></tr><tr><td>Dung lượng pin</td><td>4000 mAh</td></tr><tr><td>Thẻ sim</td><td>2 - 2 Nano SIM</td></tr><tr><td>Hệ điều hành</td><td>Android 10</td></tr><tr><td>Xuất xứ</td><td>Trung Quốc</td></tr><tr><td>Thời gian ra mắt</td><td>01/2021</td></tr></tbody></table></figure>', NULL, N'/user-content/cbbb1ac5-8683-474f-84d2-4be37976cfea.jpg', N'/user-content/90ba39b6-03ba-4688-b735-46d25cc14fc4.jpg', CAST(N'2021-06-15T22:22:25.3372295' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 4/19/2023 11:19:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_CouponId]    Script Date: 4/19/2023 11:19:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CouponId] ON [dbo].[Orders]
(
	[CouponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 4/19/2023 11:19:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 4/19/2023 11:19:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_ProductId]    Script Date: 4/19/2023 11:19:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_ProductId] ON [dbo].[Reviews]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_UserId]    Script Date: 4/19/2023 11:19:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_UserId] ON [dbo].[Reviews]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0.0)) FOR [Total]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DateCreated]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Coupons_CouponId] FOREIGN KEY([CouponId])
REFERENCES [dbo].[Coupons] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Coupons_CouponId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Products_ProductId]
GO
USE [master]
GO
ALTER DATABASE [CNPM_NC_eShopSolution] SET  READ_WRITE 
GO
