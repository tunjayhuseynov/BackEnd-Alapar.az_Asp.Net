USE [master]
GO
/****** Object:  Database [AlApar]    Script Date: 8/20/2018 05:34:18 AM ******/
CREATE DATABASE [AlApar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AlApar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AlApar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AlApar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AlApar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AlApar] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AlApar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AlApar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AlApar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AlApar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AlApar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AlApar] SET ARITHABORT OFF 
GO
ALTER DATABASE [AlApar] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AlApar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AlApar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AlApar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AlApar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AlApar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AlApar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AlApar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AlApar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AlApar] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AlApar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AlApar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AlApar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AlApar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AlApar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AlApar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AlApar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AlApar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AlApar] SET  MULTI_USER 
GO
ALTER DATABASE [AlApar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AlApar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AlApar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AlApar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AlApar] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AlApar] SET QUERY_STORE = OFF
GO
USE [AlApar]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [AlApar]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 8/20/2018 05:34:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](300) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ads]    Script Date: 8/20/2018 05:34:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Price] [money] NULL,
	[OwnerName] [nvarchar](50) NOT NULL,
	[OwnerType] [bit] NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[PinCode] [nvarchar](50) NOT NULL,
	[CityId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[RegionId] [int] NULL,
	[VillageId] [int] NULL,
	[Text] [text] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[XLocation] [nvarchar](100) NULL,
	[YLocation] [nvarchar](100) NULL,
	[AgentId] [int] NULL,
	[ProfileId] [int] NULL,
	[VIP] [bit] NOT NULL,
	[Kupca] [bit] NOT NULL,
	[RoomId] [int] NULL,
	[BuildingTypeId] [int] NULL,
	[Mertebe] [nvarchar](50) NULL,
	[BinaMertebesi] [nvarchar](50) NULL,
	[Sahe] [nvarchar](50) NOT NULL,
	[TorpaqSahesi] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Adress] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 8/20/2018 05:34:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](300) NULL,
	[Name] [nvarchar](50) NULL,
	[ProImage] [nvarchar](300) NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BuildingTypes]    Script Date: 8/20/2018 05:34:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuildingTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_BuildingTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/20/2018 05:34:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 8/20/2018 05:34:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[complains]    Script Date: 8/20/2018 05:34:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[complains](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[ElanId] [int] NULL,
 CONSTRAINT [PK_complains] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElanProfileFavours]    Script Date: 8/20/2018 05:34:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElanProfileFavours](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ElanId] [int] NULL,
	[ProfileId] [int] NULL,
 CONSTRAINT [PK_ElanProfileFavours] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 8/20/2018 05:34:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[ElanId] [int] NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 8/20/2018 05:34:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](300) NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 8/20/2018 05:34:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomCounts]    Script Date: 8/20/2018 05:34:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomCounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_RoomCounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Villages]    Script Date: 8/20/2018 05:34:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Villages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Villages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([Id], [Username], [Password]) VALUES (1, N'tuncay@gmail.com', N'5591980')
SET IDENTITY_INSERT [dbo].[Admins] OFF
SET IDENTITY_INSERT [dbo].[Ads] ON 

INSERT [dbo].[Ads] ([Id], [Title], [Price], [OwnerName], [OwnerType], [StartDate], [EndDate], [PinCode], [CityId], [CategoryId], [RegionId], [VillageId], [Text], [Phone], [XLocation], [YLocation], [AgentId], [ProfileId], [VIP], [Kupca], [RoomId], [BuildingTypeId], [Mertebe], [BinaMertebesi], [Sahe], [TorpaqSahesi], [Email], [Adress]) VALUES (1021, N'Agstafada Ev satilit', 50000.0000, N'Tuncay Huseynov', 0, CAST(N'2018-08-20' AS Date), CAST(N'2018-09-20' AS Date), N'20180820045051Tu', 18, 7, NULL, NULL, N'dafdafdafadf', N'5591980', N'40.40308868026928', N'49.84075093022466', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, N'50', NULL, N'webtalented@gmail.com', N'Bakida Ev SAtilir')
SET IDENTITY_INSERT [dbo].[Ads] OFF
SET IDENTITY_INSERT [dbo].[Agents] ON 

INSERT [dbo].[Agents] ([Id], [Username], [Password], [Name], [ProImage]) VALUES (1, N'TuncayAgent', N'5591980', N'Yeni Melak', N'Yeni.jpeg')
INSERT [dbo].[Agents] ([Id], [Username], [Password], [Name], [ProImage]) VALUES (4, N'Yacnut', N'5591980', N'Yep', N'YepYeni.jpeg')
SET IDENTITY_INSERT [dbo].[Agents] OFF
SET IDENTITY_INSERT [dbo].[BuildingTypes] ON 

INSERT [dbo].[BuildingTypes] ([Id], [Name]) VALUES (1, N'Biznes Mərkəzi')
INSERT [dbo].[BuildingTypes] ([Id], [Name]) VALUES (2, N'Ev/Mənzil')
INSERT [dbo].[BuildingTypes] ([Id], [Name]) VALUES (3, N'Villa')
SET IDENTITY_INSERT [dbo].[BuildingTypes] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Yeni Tikili')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Köhnə Tikili')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Həyət Evi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Ofis')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Qaraj')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Torpaq')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Obyekt')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [Name]) VALUES (1, N'Ağcabədi')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (2, N'Ağdam')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (3, N'Ağdaş')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (4, N'Ağstafa')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (5, N'Ağsu')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (6, N'Astara')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (7, N'Bakı')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (8, N'Balakən')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (9, N'Beyləqan')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (10, N'Bərdə')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (11, N'Biləsuvar')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (12, N'Cəlilabad')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (13, N'Füzuli')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (14, N'Gədəbəy')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (15, N'Gəncə')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (16, N'Goranboy')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (17, N'Göyçay')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (18, N'Göygöl')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (19, N'Göytəpə')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (20, N'Hacıqabul')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (21, N'İmişli')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (22, N'İsmayıllı')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (23, N'Kürdəmir')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (24, N'Lerik')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (25, N'Lənkəran')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (26, N'Masallı')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (27, N'Mingəçevir')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (28, N'Naftalan')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (29, N'Naxçıvan')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (30, N'Neftçala')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (31, N'Oğuz')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (32, N'Qax')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (33, N'Qazax')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (34, N'Qəbələ')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (35, N'Quba')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (36, N'Qusar')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (37, N'Saatlı')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (38, N'Sabirabad')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (39, N'Şabran')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (40, N'Salyan')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (41, N'Şamaxı')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (42, N'Şəki')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (43, N'Şəmkir')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (44, N'Şirvan')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (45, N'Siyəzən')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (46, N'Sumqayıt')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (47, N'Tovuz')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (48, N'Ucar')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (49, N'Xaçmaz')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (50, N'Xırdalan')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (51, N'Xızı')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (52, N'Xudat')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (53, N'Yevlax')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (54, N'Zaqatala')
INSERT [dbo].[Cities] ([Id], [Name]) VALUES (55, N'Zərdab ')
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [Name], [ElanId]) VALUES (1049, N'20180820045052bg-masthead.jpg', 1021)
INSERT [dbo].[Images] ([Id], [Name], [ElanId]) VALUES (1050, N'20180820045052bg-showcase-1.jpg', 1021)
INSERT [dbo].[Images] ([Id], [Name], [ElanId]) VALUES (1051, N'20180820045052bg-showcase-2.jpg', 1021)
SET IDENTITY_INSERT [dbo].[Images] OFF
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([Id], [Email], [Username], [Password]) VALUES (1, N'tuncayhuseynov@gmail.com', N'Tuncay', N'AHqqt66GthEb5j/NWSorgetV/sYkEIWfpai+QRkLVxRIk2luY4ms1Hj3f0qf3Lhf9A==')
INSERT [dbo].[Profiles] ([Id], [Email], [Username], [Password]) VALUES (2, N'huseynovtuncay@gmail.com', N'Tun', N'APDmd7zu+IE4hVAJg56aMuhLERu9YDvitXwuICtD5kM0m1hEsZO1GMTtxrggzJCYew==')
SET IDENTITY_INSERT [dbo].[Profiles] OFF
SET IDENTITY_INSERT [dbo].[Regions] ON 

INSERT [dbo].[Regions] ([Id], [Name]) VALUES (1, N'Abşeron')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (2, N'Binəqədi')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (3, N'Nərimanov')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (4, N'Nəsimi')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (5, N'Nizami')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (6, N'Qaradağ')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (7, N'Sabunçu')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (8, N'Səbail')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (9, N'Suraxanı')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (10, N'Xətai')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (11, N'Xəzər')
INSERT [dbo].[Regions] ([Id], [Name]) VALUES (12, N'Yasamal')
SET IDENTITY_INSERT [dbo].[Regions] OFF
SET IDENTITY_INSERT [dbo].[RoomCounts] ON 

INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (1, N'1')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (2, N'2')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (3, N'3')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (4, N'4')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (5, N'5')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (6, N'6')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (7, N'7')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (8, N'8')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (9, N'9')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (10, N'10')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (11, N'11')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (12, N'12')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (13, N'13')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (14, N'14')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (15, N'15')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (16, N'16')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (17, N'17')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (18, N'18')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (19, N'19')
INSERT [dbo].[RoomCounts] ([Id], [Name]) VALUES (20, N'20')
SET IDENTITY_INSERT [dbo].[RoomCounts] OFF
SET IDENTITY_INSERT [dbo].[Villages] ON 

INSERT [dbo].[Villages] ([Id], [Name]) VALUES (1, N'1-ci mikrorayon')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (2, N'2-ci Alatava')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (3, N'2-ci mikrorayon')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (4, N'20-ci sahə')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (5, N'28 May')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (6, N'3-cü mikrorayon')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (7, N'4-cü mikrorayon')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (8, N'5-ci mikrorayon')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (9, N'6-cı mikrorayon')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (10, N'7-ci mikrorayon')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (11, N'8-ci kilometr')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (12, N'8-ci mikrorayon')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (13, N'9-cu mikrorayon')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (14, N'Badamdar')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (15, N'Bahar')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (16, N'Bakıxanov')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (17, N'Balaxanı')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (18, N'Bayıl')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (19, N'Bibi Heybət')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (20, N'Biləcəri')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (21, N'Bilgəh')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (22, N'Binə')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (23, N'Binəqədi')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (24, N'Böyükşor')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (25, N'Bülbülə')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (26, N'Buzovna')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (27, N'Ceyranbatan')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (28, N'Çiçək')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (29, N'Dədə Qorqud')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (30, N'Digah')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (31, N'Dübəndi')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (32, N'Əhmədli')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (33, N'Ələt')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (34, N'Əmircan')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (35, N'Fatmayı')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (36, N'Görədil')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (37, N'Günəşli')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (38, N'Gürgən')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (39, N'Həzi Aslanov')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (40, N'Hökməli')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (41, N'Hövsan')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (42, N'Keşlə')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (43, N'Köhnə Corat')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (44, N'Köhnə Günəşli')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (45, N'Kubinka')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (46, N'Kürdəxanı')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (47, N'Lökbatan')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (48, N'M.Ə.Rəsulzadə')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (49, N'Masazır')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (50, N'Massiv A')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (51, N'Massiv B')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (52, N'Massiv D')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (53, N'Massiv G')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (54, N'Massiv V')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (55, N'Maştağa')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (56, N'Mehdiabad')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (57, N'Məmmədli')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (58, N'Mərdəkan')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (59, N'Müşviqabad')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (60, N'Nardaran')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (61, N'Novxanı')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (62, N'NZS')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (63, N'Pirallahı')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (64, N'Pirəkəşkül')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (65, N'Pirşağı')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (66, N'Puta')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (67, N'Qala')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (68, N'Qaraçuxur')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (69, N'Qızıldaş')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (70, N'Qobu')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (71, N'Qobustan')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (72, N'Ramana')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (73, N'Rəsulzadə (Kirov)')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (74, N'Sabunçu')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (75, N'Şağan')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (76, N'Sahil')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (77, N'Saray')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (78, N'Savalan')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (79, N'Səngəçal')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (80, N'Şərq')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (81, N'Şimal DRES')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (82, N'Şıxov')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (83, N'Şubani')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (84, N'Sulutəpə')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (85, N'Suraxanı')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (86, N'Şüvəlan')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (87, N'Türkan')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (88, N'Xocəsən')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (89, N'Xutor')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (90, N'Yasamal')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (91, N'Yeni Balaxanı')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (92, N'Yeni Corat')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (93, N'Yeni Günəşli')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (94, N'Yeni Ramana')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (95, N'Yeni Suraxanı')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (96, N'Yeni Yasamal')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (97, N'Zabrat')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (98, N'Zağulba')
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (99, N'Zirə')
GO
INSERT [dbo].[Villages] ([Id], [Name]) VALUES (100, N'Zığ')
SET IDENTITY_INSERT [dbo].[Villages] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Agents_Username]    Script Date: 8/20/2018 05:34:20 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Agents_Username] ON [dbo].[Agents]
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Profiles]    Script Date: 8/20/2018 05:34:20 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Profiles] ON [dbo].[Profiles]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Profiles_Username]    Script Date: 8/20/2018 05:34:20 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Profiles_Username] ON [dbo].[Profiles]
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [AgentAds] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([Id])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [AgentAds]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [BuildingTypeAds] FOREIGN KEY([BuildingTypeId])
REFERENCES [dbo].[BuildingTypes] ([Id])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [BuildingTypeAds]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [CategoryAds] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [CategoryAds]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [CityAds] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [CityAds]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [ProfileAds] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [ProfileAds]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [RegionAds] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([Id])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [RegionAds]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [RoomAds] FOREIGN KEY([RoomId])
REFERENCES [dbo].[RoomCounts] ([Id])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [RoomAds]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD  CONSTRAINT [VillageAds] FOREIGN KEY([VillageId])
REFERENCES [dbo].[Villages] ([Id])
GO
ALTER TABLE [dbo].[Ads] CHECK CONSTRAINT [VillageAds]
GO
ALTER TABLE [dbo].[ElanProfileFavours]  WITH CHECK ADD  CONSTRAINT [ElanProfileFavours_Ads] FOREIGN KEY([ElanId])
REFERENCES [dbo].[Ads] ([Id])
GO
ALTER TABLE [dbo].[ElanProfileFavours] CHECK CONSTRAINT [ElanProfileFavours_Ads]
GO
ALTER TABLE [dbo].[ElanProfileFavours]  WITH CHECK ADD  CONSTRAINT [ElanProfileFavours_Profile] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[ElanProfileFavours] CHECK CONSTRAINT [ElanProfileFavours_Profile]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [Elan_Images] FOREIGN KEY([ElanId])
REFERENCES [dbo].[Ads] ([Id])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [Elan_Images]
GO
USE [master]
GO
ALTER DATABASE [AlApar] SET  READ_WRITE 
GO
