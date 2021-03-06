USE [master]
GO
/****** Object:  Database [SportingFoodShop.Models.SportingFoodContext]    Script Date: 28.06.2021 12:43:04 ******/
CREATE DATABASE [SportingFoodShop.Models.SportingFoodContext]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SportingFoodShop.Models.SportingFoodContext', FILENAME = N'C:\Microsoft_SQL_Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SportingFoodShop.Models.SportingFoodContext.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 25000KB )
 LOG ON 
( NAME = N'SportingFoodShop.Models.SportingFoodContext_log', FILENAME = N'C:\Microsoft_SQL_Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SportingFoodShop.Models.SportingFoodContext_log.ldf' , SIZE = 8192KB , MAXSIZE = UNLIMITED , FILEGROWTH = 25000KB )
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SportingFoodShop.Models.SportingFoodContext].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET ARITHABORT OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET  MULTI_USER 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET QUERY_STORE = OFF
GO
USE [SportingFoodShop.Models.SportingFoodContext]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 28.06.2021 12:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateTypes]    Script Date: 28.06.2021 12:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Postfix] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AggregateTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 28.06.2021 12:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 28.06.2021 12:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[ImageType] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Places]    Script Date: 28.06.2021 12:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Places](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShopName] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[House] [int] NOT NULL,
	[HouseAdditionalLetter] [nvarchar](2) NULL,
 CONSTRAINT [PK_dbo.Places] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 28.06.2021 12:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Weight] [int] NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[TotalBoughtItems] [int] NOT NULL,
	[ImageId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 28.06.2021 12:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Stars] [int] NOT NULL,
	[ReviewDate] [datetime] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Pluses] [nvarchar](max) NULL,
	[Minuses] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 28.06.2021 12:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 28.06.2021 12:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Weight] [nvarchar](max) NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderTime] [datetime] NOT NULL,
	[ReadyOrderPrediction] [nvarchar](max) NULL,
	[State] [bit] NOT NULL,
	[PersonalOrderId] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[PlaceId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28.06.2021 12:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nickname] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[TotalSpentMoney] [decimal](18, 2) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202106191627334_InitialCreate', N'SportingFoodShop.Models.SportingFoodContext', 0x1F8B0800000000000400ED5D5B6FDCB8157E2FD0FF20E8A92DB21EDB79D91A33BB70C6716B6C1CBB9E64DBB78096E8B1B0BA4C25CA6BA3E82FEBC3FEA4FD0BA5444AE255A2EEE364B040E021C5C3C3C38FE439BC7CFBFBFF7E5BFEF81CF8D6138C132F0A57F6C9D1B16DC1D0895C2FDCAEEC143D7CF7BDFDE30F7FFCC3F2BD1B3C5B3F17DFBDCDBEC325C364653F22B43B5B2C12E7110620390A3C278E92E8011D3951B0006EB4383D3EFEEBE2E46401B1081BCBB2ACE55D1A222F80F90FFC731D850EDCA114F8D7910BFD84A6E39C4D2ED5FA080298EC800357F66617C5086B771945EEE631DA1D9122B675EE7B00ABB381FE836D81308C104058D9B3CF09DCA0380AB79B1D4E00FEA7971DC4DF3D003F81B41167D5E7A6ED393ECDDAB3A80A16A29C344151D052E0C95B6AA08558BC9399EDD280D884EFB1A9D14BD6EADC8C2BFB7CBB8DE1162098A5D99658E3D9DA8FB31CADA98F38016F2CF1B337254E309CB2FFDE58EBD447690C57214C510CFC37D66D7AEF7BCE4FF0E553F40B0C5761EAFBACD2586D9CC725E0A4DB38DAC118BDDCC107DA942BD7B6167CB98558B02CC69421EDBB0AD1DB53DBFA882B07F73E2C31C1D86283A218FE0D8630C6CD756F0142300E331930B7AA54BB5057F66F511B062136926D5D83E70F30DCA2C7958DFFB4AD4BEF19BA450AD5E073E8E131880BA138854D95DC46097AF09E87AFE72378F2B6B91DC41AE3C84D1D8407DD1DF4F30F92476F47C6DE11CDFC22C0EC328E82BBC8AF4AF31F7CF904E22D44B81151DD579B288D1D41D3E5A282782DF0A9C82E90A7450F609F1BECD8E631BA8089137B3B323F8E5CE12536D894F5FD137ADB47D4D46BF532D6784628245C40C70B806F5BB731FE8B2EF3DFDBD6C60199BCF6C23F61B8F8EFA2146B79856090F453F52A005BD88CD2069570D9BE32D618F3DB287E692D473B4B0A13E07053653109D64F95C5846AAA2E358007EBA775F63359D12A57AB25F3495B1573B0D46A47BF9015CB33B43A915C953AC68B4B819F2EAB4B51F6B0BC4CBEBCF4F3718C0783CEBB518C974EE8A3B86F0FBDBCE001774D2B142EF538FAD29FD7449680296ADAC701D5307FEB86113FBB770B0E7CE0741A4179C1C308AAF7D977D304072886108D5ECDDFA33481FDBCCD5CC4B9EB7A997D81FF016626AD51FCB4B5DAC6C0BF834F1EFCB50BF249C903F46B1109E29E1112B1F205AEBE0CE93217DFCBC653DB38C943FEF8A3701D85085B67FC7D2F1F8FA164F46AAEBD70927A3E2730EE1BC4D2F570B818B6DC3253ACD904985FCA4FAA459BCF91A22E21BB6D149819AA4E21922F699325EB54C9F37A857FA4D2F6736856EE3083D6857D9EF34B3885F3F03E009E3FFEA40592E4D7287647AF28DFA6DBECB091AFA310BE8CB61D988DA3E1E69B9BD885B13A44C8C6C50EDB6A0D62248D7129530A15E42F54E1429D6E991CA566B934925B6954264A734E95D36BC6611BD465E661CB1F66A0C3B9C6A4E71A233A9F231E7DFC230514317D9CB47C8E23FE7B4F7FFE0E02F72517875BE87ACE241D89439A2A147917E1790C84ED1D553CB964816FAEFCD5F8ABE120CE75B6D133A06B4D369C9A563AFA9966A9CB73A51546F1C9604E76CB65B856B5FE6E3759753B6C5DE07287456F7F4E5B3224A8DDBE06E74A74F364B7CB0457E74912395E5E351FF80A47B37C6BDE87AE65744E4BACC8EC73635B625C793B8C24ACCDCAFE8B64A926D965BB2BD9C229325FC3892D62F226BC803E44D03A77C83DB535481CE0CA9D866DE6F22918C630CE7004FC35EE2C3C30BC10C998F742C7DB01DFA41D4261C3219329575623E65C401CFC646837E92393FA8B5B06B20E655582E19AECB45C30C033C32373E2D80418D559FC2048549D6B5682AB83F07D45A0ACFF84F0937BC5A472F676CAACF82307744D08116E5B0C823AE104B09249CF0CF7156D9CDE13028DEB03A37A8BAB58B3004CD84DD6A141B7B55CC1A138CF324798663FBA19B6F3834CADFA042853F78349C5CC19C52C405344573A60D4855A1538F88D3873D8D544692CF448FCB76FC0D32B3F01F8F4FD6204C0228E9F1F7E79FC6C840F3E981E187CFC8679259C84F77B0D3D56F5A991C7F68949DDC526D42CB8ABE2681D24142716F550A8C39722426796E83C9CDF375C492A4F8027C9E6267516476E73FA69B53397F2C47D000FED75CD530AA5A773CCF6786E225B70D92D215C02C6C5BAC8ECC5E637889E55A79A584DBAB79BD02D46113299EC0D44AA3718896D55DB7FEA4D330981BCB8EA0EAB24A80C111A44B057C62521D5DE4983943C565349A0C170533B321748D90AE26D3614271853952F86768300BADD2B152703B9A130BB06AB84F02E515353F0A05136245FA284C20CA0254C888F78986F6B5FFB88E3CD7453B96C088B4A69F49A6E2333D2C421234E8EBC115A188845BEDE3ABA0D4ED32DCEAE76516C6A32A258DD0733081DAB7A5B2836DB0CB6DBBA5A80DF6063A414934DEF868B3706E596D7ED0299EC03315A9793544DD3353B3F0616ECD07AD5B1AE6C81A6ED09D30D0AA60DC28459638F9A2D09D62674F518D62264EE6F3088EC761A86CCFDCDC1399F8C38BA96F5360673D0291B4113BD35C46F4D5A36446CEC6022CBE4503380AEAFB5C1456378D16DE00FD5A7C5B972E9D49679CB05A130A109CB8586EB64790D72A831DC2734C5DA10E293F5779BF664200191B170B8D55474C1CB9A5014E3A95EC8CD2E55B9F0D28B13740110B807D939FFDA0DA4CF542EBCC6FB2A6A547AE972B715CE59512CFB5B0E1BB41C258A08884ABAC4ED0DB2E029BF2EA1F382E4F256464D037C102BAE68AC233F0D427D30A72F4D2E5DB0E5498AB984920B84155226CA72960BC11052F827195F8A95F92E35EAF072551DA2AB35CE8241276B4BEE6BF7CAB744596972AEB964E93A282B58CA34975B5CFB64C51569E652C8AD4E560649319720B356B0D2E45C73C9E5B129070CDD596A8D86F47A09A797E6CA498DA5988B029CBD6A2E10CC360DD4C67AED278272F7A4FD4CA02F3AF7543053D7D0986F886E5146B1067DA229374E8730AFFCA5714C925BCA22BB40922CD53663A32C192D4CF2DE40868685832CE9AAB8D7644157971B0732D5B3766111DEB55ED6E9BB754E0E4D3397429FA5B34268524B19F2BB7449A6FCC9DEC0B008FF86C021DDCE6E0F445DC19190485E99F3F001AA785F2F837D66CE0A62D35B3833E4A539E7CB90A4364E1F7D47CEFB7D34B1454C44DF897321114D3397523E0367C59489E6728A8336568CEEF0ADA64DD5252AAE59FABB55B38D47B29732C468546D0B198C4575B191FCBAF2B532E7DB95A9E692E87364560C4D6A8192F2B131079232B565F8C4BE2696A22736B3C5AC43AF3270338EE67AC36C08E6378C8740327744D91ED1F5C5E78E580E9B17436F5E54EF4E592955AAB924E6ED292B8A496EE331A85E9FF2BE83EA8B567E8DE88ED0A41673A0F8D2949B0AC5CCC9D7F1E22E2AEF9C682EA8CEE753E7C73F8378D48A332C137F5A596CEE996ED4DE90CE94C44FCADACBB325E10C6949CF739A49F5A5031EF249F6723E7AF2DCFC70E725413038CA3E38DAFCDB5FFB5EEE86171F5C83D07B800922AF62EDD3E3935381927F7FE8F11749E2FA8AF330E65D71DDB3CF09DEF77A99691B5FF0B67CBF4E504C2A089F40EC3C82F84F0178FE332BA903E17C0B59ADA9DA0F96376209E92554C304D24B26CFF6911BB50787B93B15877917450506F35C84746FF52A74E1F3CAFE4F5EE6CCBAFAD7175AEC8D95FB1E67D6B1F5DF9EBCE7A6359352BD2A96C9D24D2BAF4AB650A03D09F7373D6FB4648DFE3A6C25D134F79ABF242AE6FED2C6EE4CD553C6D7DA99226370BF45936305EE258A63FEEDB258D4F2FE16AA89CCBF83C0437522F17AF1C1D2EA76E9079954D7C57FA3DEA4BABDD02510E7F6F3D13972DC5EA20402DC5EB2781E2E53A78194EAE5B1302723EDEA2E0B8EE1AF285ED1BDD62129F2B4F68209C7C5DA6F1C087CABBD84693855070F4F784E5553A4925263C0547FDEF07AE1FA8D87E43D17AA1163739164B3CBF22E516C765EDDEB28367B7AA58CF371EFB56FA37476F1AA97679E5BD3787126C5C698F3145409DFD85C371659A2F05056FF187BC407FDD2EBC76E2C659D78019A9EA69860CAEAC008F655911C562FE5997E9B847A704EE8D4DC709F1535AF849E903EB866BA6B7CEEC039E1A2BB793F2B565E05CD608BBE1A092D059306CB4961C89BD387AE723A8A9AAF8D2C90BEE86701333A759FFAA97A0F82B86ED0D1BCD6181C380DD72615F07925547FE43D3CD36BA3335AED07723437BAE707CE9E53F5119A087669189B51AF255607C287E6B6E0E0F830C6E1DE53EFCD39934CEDB24C357BB4F05766A7D193A93AC4DEAA21C86BE6C723F74257B67B1FE17E263B470D8461628DA51B2DD555E6A86AB9D5113189F2AB4D00A9822A4B55430DC79758070D1BA50A68BA4ABA86444BB20EF11965DB9074A565D4744CA2E462284AA28B0C956C0D978E92D04FCBE7A712AC66D811C5F22E88249ECF565553CBF5A42403D472012ACDA3A4459A9626503982151C36F29CA40877D9B7D41A42CBBD20001407394FE2307F537B53FB71330C4387305FD30624EF6BA1A8D2C1901F5AF76FDE08EC7CDC5CCEF013D4355135E3C96FFE066EEE10D47BEC0A503DBBDD87A6F626D6639785EA35525DD38C8C31177D5EFB9E1A62DCB5A0C8939F2D6137390DB3F37BF2EB0226DEB612B1C43243E8700E72F9CD55F810157EBAA051F18978DF0D22E062EFF93C46DE037010CEC6FE5592FF2FF07E067E0AB3FB49F7D0BD0A6F52B44B116E320CEE7D6ED9C9FCFDBAFA731E405EE7E54D7ED72319A209584D2FBBF27013BE4B3DDF2DF5BE541C886B446481043D83CEFA126567D1DB9752D2C728341444CD57C63F9F60B0F3B1B0E426DC8027D845370CD80FD8B1715E6EE9EB33BD90E68EE0CDBEBCF0C0360641426554E5F14F8C613778FEE1FFAF32D75638970000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[AggregateTypes] ON 

INSERT [dbo].[AggregateTypes] ([Id], [Name], [Postfix]) VALUES (1, N'Порошок', N'гр.')
INSERT [dbo].[AggregateTypes] ([Id], [Name], [Postfix]) VALUES (2, N'Капсулы', N'капс.')
INSERT [dbo].[AggregateTypes] ([Id], [Name], [Postfix]) VALUES (3, N'Таблетки', N'табл.')
SET IDENTITY_INSERT [dbo].[AggregateTypes] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Витамины/Минералы')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Протеин')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Для суставов/связок')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'BCAA')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Гейнеры')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Креатин')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (1, N'~/Images/ProductImages/1_100pr-whey-gold-900gr.webp', N'image', N'1_100pr-whey-gold-900gr.webp')
INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (2, N'~/Images/ProductImages/2-opti-women-60t.webp', N'image', N'2-opti-women-60t.webp')
INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (3, N'~/Images/ProductImages/3_100pr-plant-protein-900gr.webp', N'image', N'3_100pr-plant-protein-900gr.webp')
INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (4, N'~/Images/ProductImages/4-opti-men-150t.webp', N'image', N'4-opti-men-150t.webp')
INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (5, N'~/Images/ProductImages/5_animal-flex-44caps.webp', N'image', N'5_animal-flex-44caps.webp')
INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (6, N'~/Images/ProductImages/6_100pr-casein-900gr.webp', N'image', N'6_100pr-casein-900gr.webp')
INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (7, N'~/Images/ProductImages/7_amino-x-435gr.webp', N'image', N'7_amino-x-435gr.webp')
INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (8, N'~/Images/ProductImages/8_super-omega3-120caps.webp', N'image', N'8_super-omega3-120caps.webp')
INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (9, N'~/Images/ProductImages/9_gold-standart-gainer-2250gr.webp', N'image', N'9_gold-standart-gainer-2250gr.webp')
INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (10, N'~/Images/ProductImages/10_biotech-hyper-mass5000-4000gr.webp', N'image', N'10_biotech-hyper-mass5000-4000gr.webp')
INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (11, N'~/Images/ProductImages/11-pure_creatine_monohydrate-250gr.webp', N'image', N'11-pure_creatine_monohydrate-250gr.webp')
INSERT [dbo].[Images] ([Id], [ImagePath], [ImageType], [ImageName]) VALUES (12, N'~/Images/ProductImages/12-creatine_creatine-rule-one-375gr.webp', N'image', N'12-creatine_creatine-rule-one-375gr.webp')
SET IDENTITY_INSERT [dbo].[Images] OFF
SET IDENTITY_INSERT [dbo].[Places] ON 

INSERT [dbo].[Places] ([Id], [ShopName], [Street], [House], [HouseAdditionalLetter]) VALUES (1, N'FitFood', N'Колесникова', 3, N'Б')
INSERT [dbo].[Places] ([Id], [ShopName], [Street], [House], [HouseAdditionalLetter]) VALUES (2, N'FitFood', N'Дунина-Мартинкевича', 18, N'/4')
INSERT [dbo].[Places] ([Id], [ShopName], [Street], [House], [HouseAdditionalLetter]) VALUES (3, N'FitFood', N'Игнатовского', 33, N'')
SET IDENTITY_INSERT [dbo].[Places] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (1, N'100% WHEY Gold Standart', N'100% WHEY GOLD STANDARD от Optimum Nutrition С самого начала компания Optimum Nutrition подняла стандарты протеиновых добавок на небывалую высоту. Сейчас мы опять поднимаем планку вместе с 3-им поколением ON 100% Whey Protein – ON 100% Whey Gold Standart. Также как и его ...', N'Миллионы покупателей довольны Optimum Nutrition 100% WHEY GOLD STANDARD, и они  не могут быть неправы! Еще на заре производства протеинов Optimum Nutrition установил стандарт, в соответствии с которым стали производиться все последующие ингредиенты сывороточного протеина.Теперь мы устанавливаем новый стандарт, с третьим поколением Optimum Nutrition 100 % WHEY GOLD STANDARD. Подобно предшественникам, ON 100 % WHEY GOLD STANDARD содержит в себе первоклассные оптимальные пищевые добавки.', 907, CAST(79.90 AS Decimal(18, 2)), 1, 1, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (2, N'OPTI - WOMEN', N'Opti-Women от Optimum Nutrition сочетает в себе витамины и незаменимые минералы, включая Osivone и соевые изофлавоны и многое другое для создания нашей ''все включено'' формулы для женщин. Основное: - Состав подобран специально для женщин', N'Opti-Women от Optimum Nutrition — это превосходный витаминно-минеральный комплекс, созданный специально для женщин. В нем максимально сбалансировано количество витаминов, минералов, антиоксидантов и травяных экстрактов. При употреблении Opti-Women улучшается мозговая активность, появляется больше энергии, повышается общий тонус. Витамины, минералы и другие необходимые питательные вещества являются основными строительными блоками нашего тела.Среди прочего, они повышают энергичность, иммунитет, производительность и общее состояние здоровья.Opti - Women был разработан как всеобъемлющая, оптимизированная система питательных веществ, дополненная антиоксидантами и растительными компонентами специально для женщин.В одной капсуле объединены более 40 активных ингредиентов.', 60, CAST(42.00 AS Decimal(18, 2)), 0, 2, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (3, N'100% PLANT PROTEIN', N'Гороховый изолят без лактозы и глютена. 100% Plant Protein - основан на одном из лучших, высоко чистом сырье: бельгийском Pisane® изоляте горохового белка, произведённом из локально выращенного желтого гороха. Это абсолютно естественный процесс и ...', N'Гороховый белок, по скорости усвоения быстрее казеина, но медленнее сыворотки и изолята. Один самых богатых по составу, среди аналогов растительного белка. Имеет большое количество заменимых и незаменимых аминокислот, дополнительно ко всему, в гороховом протеин лидер по количеству аргинину на порцию. В составе присутствует гранатовый протеин, дело в том что составляющая белка в гранатах очень мала, около 1 грамм на 100 грам фруктов, но в гранатовом соке 15 аминокислот, что делает его просто необходимым продуктом для вегетарианцев. Белок на уровне с воздухом и водой, один из самых необходимых элементов для функционирования человека.Является незаменимым строительным материалом, участвует во всех процессах человеческого организма(участвует в гормональных процессах, обмене веществ, защитных и рецепторных реакциях – создавая новые здоровые молодые клетки)', 900, CAST(62.50 AS Decimal(18, 2)), 0, 3, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (4, N'OPTI - MEN', N'Opti-Men от Optimum Nutrition Opti-Men от Optimum Nutrition это удивительный комплекс, специально для мужчин, содержащий в составе витамины, минералы, антиоксиданты, ферменты. Эффективен как общеукрепляющее средство. Повышает иммунитет, а так же активизирует обмен веществ, ...', N'Opti-Men от Optimum Nutrition это удивительный комплекс, специально для мужчин, содержащий в составе витамины, минералы, антиоксиданты, ферменты. Эффективен как общеукрепляющее средство. Повышает иммунитет, а так же активизирует обмен веществ, стимулирует физические, умственные, и сексуальные возможности мужчины. Отличный выбор мужчин. Фундаментальными строительными блоками человеческого тела являются витамины, минералы и другие незаменимые питательные вещества.Они обеспечивают прочную основу и отвечают за энергетический уровень в организме, нашу производительность и жизнеспособность.Opti - Men является торговой маркой мирового производителя Optimum Nutrition, представляющая собой полный комплекс питательных веществ, скомпонованный из 75 ключевых ингредиентов, объединенный в оптимально сбалансированную питательную систему.', 150, CAST(99.00 AS Decimal(18, 2)), 0, 4, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (5, N'ANIMAL FLEX', N'Animal Flex разработан, чтобы сделать Ваши суставы и связки более крепкими и чтобы защитить их от перегрузок во время тренировок. Каждый пакетик Animal Flex состоит из нескольких ключевых комплексов веществ, защищающих Ваши суставы: (1) мощный комплекс, помогающий восстановить ...', N'Animal Flex разработан, чтобы сделать Ваши суставы и связки более крепкими и чтобы защитить их от перегрузок во время тренировок. Каждый пакетик Animal Flex состоит из нескольких ключевых комплексов веществ, защищающих Ваши суставы: (1) мощный комплекс, помогающий восстановить соединительную ткань; (2) комплекс веществ, улучшающих смазку суставов и смягчающих тем самым стресс от поднятия тяжестей на тренировке; (3) комплекс, способствующий восстановлению связок и снимающий воспаление; (4) витаминно-минеральная смесь, которая еще более способствует сохранению и поддержанию здоровья суставов и связок. Animal Flex — это полная и эффективная формула для достижения серьезного результата. Это Ваше надежное оружие в «железной» борьбе.', 44, CAST(115.00 AS Decimal(18, 2)), 0, 5, 2, 3)
INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (6, N'100% CASEIN ОТ LEVEL UP', N'Чистый мицеллярный казеин с минимум добавок.', N'Чистый мицеллярный казеин с минимум добавок. Казеин усваивается медленнее большинства белков, что дает более продолжительную подпитку мышц аминокислотами. Такой белок отлично подходит для приема перед сном. Применение: Для получения готового продукта смешайте 2 мерные ложки без горки(35 г) продукта с 300 - 500 мл воды, молока или любого напитка на ваш выбор.', 900, CAST(65.00 AS Decimal(18, 2)), 0, 6, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (7, N'AMINO - X', N'AMINO X - первые шипучие BCAA, которые дают Вам выносливость и максимально быстрое восстановление.  AMINO X способствует: усилению синтеза белков (анаболизму)  улучшению ресинтеза гликогена  увеличению чувствительности к инсулину  анти-катаболизму...', N'На протяжении многих лет компания BSN поставляет миру спортивного питания множество новых продуктов для строительства мышц. В стремлении принести результативные, интересные и инновационные продукты на рынок мы разработали новейшую добавку - прорыв в разделе аминокислот с разветвленной цепочкой. AMINO X - первые шипучие BCAA, которые дают Вам выносливость и максимально быстрое восстановление.', 435, CAST(65.00 AS Decimal(18, 2)), 0, 7, 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (8, N'SUPER OMEGA-3', N'Высококачественное концентрированное масло океанской рыбы, которая является богатым источником жирных кислот группы Omega-3 (EPA и DHA). Жирные кислоты Super Omega - 3 имеют основополагающее значение для надлежащего функционирования организма человека, особенно сердца и кровеносных сосудов.', N'SUPER OMEGA-3 – это пищевая добавка, которая содержит в своем составе высококачественное концентрированное масло океанской рыбы (рыбий жир), которая является богатым источником жирных кислот группы Omega-3 (ЭПК и ДГК). Эти кислоты имеют основополагающее значение для надлежащего функционирования нашего организма, особенно сердца и кровеносных сосудов. К сожалению, человеческий организм не способен их сам синтезировать, а наше питание из - за ограничений на потребление рыбы не пополняет его в этих компонентах.Недостаток их часто проявляется в виде проблем: метаболических(снижение обмена веществ, снижение выработки энергии из жира), иммунных(снижение сопротивляемости инфекциям, склонность к воспалениям и частым аллергиям), эмоциональных(депрессия, гиперактивность), умственных(проблемы с концентрацией и памятью).Использование витаминов SUPER OMEGA оказывает существенное влияние на стимулирование умственного и физического потенциала нашего организма.', 120, CAST(30.00 AS Decimal(18, 2)), 0, 8, 2, 1)
INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (9, N'GOLD STANDART GAINER', N'Gold Standard Gainer от Optimum Nutrition – новый сбалансированный гейнер с оптимальным соотношением белков и углеводов – 1 к 2. Его база составлена из лучших смесей, где каждый ингредиент работает на результат', N'В состав гейнера входят медленно усвояемые углеводы высокого качества из овсяной муки, горохового и картофельного крахмала, несколько видов белка (основной ингредиент этого гейнера – сывороточный изолят) и только полезные жиры – из льяного масла, семян чиа и среднецепочных триглицеридов. Углеводная матрица этого гейнера обеспечит вам длительный заряд энергии и поможет восстановить запасы гликогена, белковая матрица(изолят сыворотки, концентрат сыворотки, изолят молочного протеина, гидролизованный изолят сыворотки) снабдит организм необходимыми для мышечного роста и восстановления аминокислоты, при этом не нагружая ЖКТ.Полезные для организма жиры, входящие в состав этого гейнера, быстро усваиваются и сразу же начинают работать на пользу организма: помогают усвоению многих витаминов и транспорту гормонов, участвуют в процессе формирования клеточных мембран, терморегуляции и других.', 2250, CAST(149.00 AS Decimal(18, 2)), 0, 9, 1, 5)
INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (10, N'HYPER MASS 5000', N'Hyper Mass — это превосходное решение для интенсивно тренирующихся атлетов, которым нужны быстро усваивающиеся протеины и достаточное количество углеводов для проведения успешных тренировок. Hyper Mass богат незаменимыми аминокислотами с разветвленными боковыми ...', N'Для набора мышечной массы необходимо огромное количество калорий. И не просто калорий, а качественных углеводов и белков. В составе гейнера Hyper Mass от BioTech - три вида углеводов с разными гликемическими индексами, а также комплекс из трех видов белка с различным временем усвоения: сывороточного, казеината кальция и изолята сывороточного белка. В составе только молочный белок, давно зарекомендовавший себя как отличный источник строительного материала для мышц. Благодаря высокой биологической ценности молочные белки обеспечивают тело аминокислотами для быстрого и эффективного набора мышечной массы. Вишенкой на торте будет микронизированный моногидрат креатин – целых 3 грамма на порцию! Теперь вы без труда можете пополнить рацион необходимым количеством калорий,необходимым для роста мышц.', 4000, CAST(148.50 AS Decimal(18, 2)), 0, 10, 1, 5)
INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (11, N'CREATINE MONOHYDRATE', N'Креатин моногидрат – это одна из ключевых добавок в силовых видах спорта, которая применяется для мощного повышения физической работоспособности.', N'Креатин моногидрат – это одна из ключевых добавок в силовых видах спорта, которая применяется для мощного повышения физической работоспособности. Креатин значительно повышает силовые показатели, выносливость, увеличивает мышечные объемы за счет повышенной гидратации клеток. Также добавка способна выступать буфером молочной кислоты, что позволяет мышцам дольше находится под нагрузкой до наступления отказа.', 250, CAST(20.00 AS Decimal(18, 2)), 0, 11, 1, 6)
INSERT [dbo].[Products] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [TotalBoughtItems], [ImageId], [TypeId], [CategoryId]) VALUES (12, N'CREATINE RULE ONE', N'Креатин является очень важной добавкой в рационе спортсмена. Он является природным метаболитом и даже производится организмом самостоятельно, также он находится в еде. Преимущественно в мясных продуктах. Но чтобы получить хотя бы 2 грамма креатина из еды, необходимо съесть килограмм чистого красного мяса.', N'Креатин Creatine Rule One R1 представленный в своей классической форме креатина моногидрата. Креатин является очень важной добавкой в рационе спортсмена.Он является природным метаболитом и даже производится организмом самостоятельно, также он находится в еде.Преимущественно в мясных продуктах.Но чтобы получить хотя бы 2 грамма креатина из еды, необходимо съесть килограмм чистого красного мяса. Креатин участвует в построении АТФ - основного топливного компонента мышц.Также креатин задерживает воду в клетках, что создает благоприятную анаболическую среду для роста и восстановления мышцы.', 375, CAST(32.00 AS Decimal(18, 2)), 0, 12, 1, 6)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [Stars], [ReviewDate], [Title], [Content], [Pluses], [Minuses], [UserId], [ProductId]) VALUES (1, 3, CAST(N'2021-06-19T19:27:35.067' AS DateTime), N'Отличный товар', N'Хорошо себя зарекомендовал', N'Приятный вкус', N'Высокая цена', 1, 1)
INSERT [dbo].[Reviews] ([Id], [Stars], [ReviewDate], [Title], [Content], [Pluses], [Minuses], [UserId], [ProductId]) VALUES (2, 4, CAST(N'2021-06-19T19:27:35.067' AS DateTime), N'Хорошо', N'Мне понравилось', N'Хватает на месяца 3', N'Дорого', 2, 2)
SET IDENTITY_INSERT [dbo].[Reviews] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [Name], [ShortDescription], [FullDescription], [Weight], [Cost], [Quantity], [OrderTime], [ReadyOrderPrediction], [State], [PersonalOrderId], [UserId], [PlaceId]) VALUES (1, N'100% WHEY Gold Standart', N'100% WHEY GOLD STANDARD от Optimum Nutrition С самого начала компания Optimum Nutrition подняла стандарты протеиновых добавок на небывалую высоту. Сейчас мы опять поднимаем планку вместе с 3-им поколением ON 100% Whey Protein – ON 100% Whey Gold Standart. Также как и его ...', N'Миллионы покупателей довольны Optimum Nutrition 100% WHEY GOLD STANDARD, и они  не могут быть неправы! Еще на заре производства протеинов Optimum Nutrition установил стандарт, в соответствии с которым стали производиться все последующие ингредиенты сывороточного протеина.Теперь мы устанавливаем новый стандарт, с третьим поколением Optimum Nutrition 100 % WHEY GOLD STANDARD. Подобно предшественникам, ON 100 % WHEY GOLD STANDARD содержит в себе первоклассные оптимальные пищевые добавки.', N'907 гр.', CAST(79.90 AS Decimal(18, 2)), 1, CAST(N'2021-06-19T19:38:59.147' AS DateTime), N'23.06.2021', 1, N'J13D28J1', 2, 1)
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Nickname], [Email], [Password], [TotalSpentMoney], [RoleId]) VALUES (1, N'admin', N'admin@mail.ru', N'123456', CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Users] ([Id], [Nickname], [Email], [Password], [TotalSpentMoney], [RoleId]) VALUES (2, N'user', N'user@mail.ru', N'123456', CAST(79.90 AS Decimal(18, 2)), 2)
INSERT [dbo].[Users] ([Id], [Nickname], [Email], [Password], [TotalSpentMoney], [RoleId]) VALUES (3, N'Ivan', N'ivan@mail.ru', N'123456', CAST(0.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Users] ([Id], [Nickname], [Email], [Password], [TotalSpentMoney], [RoleId]) VALUES (4, N'Petya', N'petya@mail.ru', N'123456', CAST(0.00 AS Decimal(18, 2)), 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [IX_CategoryId]    Script Date: 28.06.2021 12:43:04 ******/
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImageId]    Script Date: 28.06.2021 12:43:04 ******/
CREATE NONCLUSTERED INDEX [IX_ImageId] ON [dbo].[Products]
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TypeId]    Script Date: 28.06.2021 12:43:04 ******/
CREATE NONCLUSTERED INDEX [IX_TypeId] ON [dbo].[Products]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 28.06.2021 12:43:04 ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[Reviews]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 28.06.2021 12:43:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[Reviews]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlaceId]    Script Date: 28.06.2021 12:43:04 ******/
CREATE NONCLUSTERED INDEX [IX_PlaceId] ON [dbo].[ShoppingCarts]
(
	[PlaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 28.06.2021 12:43:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[ShoppingCarts]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 28.06.2021 12:43:04 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[Users]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.AggregateTypes_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[AggregateTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.AggregateTypes_TypeId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Images_ImageId] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Images_ImageId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reviews_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_dbo.Reviews_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reviews_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_dbo.Reviews_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShoppingCarts_dbo.Places_PlaceId] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Places] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_dbo.ShoppingCarts_dbo.Places_PlaceId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShoppingCarts_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_dbo.ShoppingCarts_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.Roles_RoleId]
GO
USE [master]
GO
ALTER DATABASE [SportingFoodShop.Models.SportingFoodContext] SET  READ_WRITE 
GO
