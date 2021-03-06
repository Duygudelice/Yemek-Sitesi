USE [master]
GO
/****** Object:  Database [Dbo_yemektarifi]    Script Date: 16.01.2022 23:19:43 ******/
CREATE DATABASE [Dbo_yemektarifi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dbo_yemektarifi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dbo_yemektarifi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dbo_yemektarifi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dbo_yemektarifi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Dbo_yemektarifi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dbo_yemektarifi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dbo_yemektarifi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dbo_yemektarifi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dbo_yemektarifi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET RECOVERY FULL 
GO
ALTER DATABASE [Dbo_yemektarifi] SET  MULTI_USER 
GO
ALTER DATABASE [Dbo_yemektarifi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dbo_yemektarifi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dbo_yemektarifi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dbo_yemektarifi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Dbo_yemektarifi', N'ON'
GO
ALTER DATABASE [Dbo_yemektarifi] SET QUERY_STORE = OFF
GO
USE [Dbo_yemektarifi]
GO
/****** Object:  Table [dbo].[Tbl_GununYemegi]    Script Date: 16.01.2022 23:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_GununYemegi](
	[GununYemegiID] [smallint] IDENTITY(1,1) NOT NULL,
	[GununYemegiAd] [varchar](50) NULL,
	[GununYemegiMalzeme] [varchar](500) NULL,
	[GununYemegiTarif] [varchar](max) NULL,
	[GününYemegiResim] [varchar](100) NULL,
	[GununYemegiPuan] [tinyint] NULL,
	[GununYemegiTarih] [smalldatetime] NULL,
 CONSTRAINT [PK_Tbl_GununYemegi] PRIMARY KEY CLUSTERED 
(
	[GununYemegiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hakkimizda]    Script Date: 16.01.2022 23:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hakkimizda](
	[Metin] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 16.01.2022 23:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[Kategoriid] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
	[KategoriAdet] [smallint] NULL,
	[KategoriResim] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[Kategoriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kullanici]    Script Date: 16.01.2022 23:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kullanici](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Kullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Mesajlar]    Script Date: 16.01.2022 23:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Mesajlar](
	[MesajID] [int] IDENTITY(1,1) NOT NULL,
	[MesajGonderen] [varchar](50) NULL,
	[MesajMail] [varchar](50) NULL,
	[MesajBaslik] [varchar](50) NULL,
	[Mesajİcerik] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Slider]    Script Date: 16.01.2022 23:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Slider](
	[Resimİd] [int] IDENTITY(1,1) NOT NULL,
	[Resim] [varchar](50) NULL,
	[ResimDurum] [bit] NULL,
	[Ad] [varchar](50) NULL,
	[Tarih] [smalldatetime] NULL,
	[Malzeme] [nvarchar](500) NULL,
	[Tarif] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_Slider] PRIMARY KEY CLUSTERED 
(
	[Resimİd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Tarifler]    Script Date: 16.01.2022 23:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Tarifler](
	[TarifID] [smallint] IDENTITY(1,1) NOT NULL,
	[TarifAd] [varchar](50) NULL,
	[TarifMalzeme] [varchar](500) NULL,
	[TarifYapilis] [varchar](max) NULL,
	[TarifResim] [varchar](100) NULL,
	[TarifSahip] [varchar](50) NULL,
	[TarifSahipMail] [varchar](50) NULL,
	[TarifDurum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Tarifler] PRIMARY KEY CLUSTERED 
(
	[TarifID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Uyeler]    Script Date: 16.01.2022 23:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Uyeler](
	[UyeID] [int] IDENTITY(1,1) NOT NULL,
	[UyeMail] [varchar](50) NOT NULL,
	[UyeSifre] [varchar](50) NOT NULL,
	[UyeAdSoyad] [varchar](50) NOT NULL,
	[UyeKullanici] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Uyeler] PRIMARY KEY CLUSTERED 
(
	[UyeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yemekler]    Script Date: 16.01.2022 23:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yemekler](
	[YemekID] [smallint] IDENTITY(1,1) NOT NULL,
	[YemekAd] [varchar](50) NULL,
	[YemekMalzeme] [varchar](500) NULL,
	[YemekTarif] [varchar](max) NULL,
	[YemekResim] [varchar](100) NULL,
	[YemekTarih] [smalldatetime] NULL,
	[YemekPuan] [float] NULL,
	[Kategoriid] [smallint] NULL,
	[YemekDurum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Yemekler] PRIMARY KEY CLUSTERED 
(
	[YemekID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 16.01.2022 23:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[YoneticiID] [tinyint] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](50) NULL,
	[YoneticiSifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Yonetici] PRIMARY KEY CLUSTERED 
(
	[YoneticiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yorumlar]    Script Date: 16.01.2022 23:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yorumlar](
	[YorumID] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumAdSoyad] [varchar](50) NULL,
	[YorumMail] [varchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL,
	[YorumOnay] [bit] NULL,
	[Yorumİcerik] [varchar](500) NULL,
	[YemekID] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[YorumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Tbl_Hakkimizda] ([Metin]) VALUES (N'Sizleri mutlu etmek adına ücretsiz şekilde paylaştığımız yemek ve diğer tariflere olan ilginizden dolayı hepinize teşekkür ederiz.İştahınızın açık olduğu günlerde sitemizi ziyaret ederek türlü türlü tarifleri gerçekleştirebilirsiniz. Hızlı yemek tercihleri ve yemek pişirmenize yardımcı tüm olanaklara sitemiz üzerinden erişebilirsiniz.Favori tariflerinizi en iyi yemek tarifleri sitemize göndererek farklı kişilere fikir olarak sunabilirsiniz.Sofralarımızın baş tacı olacağı pasta tarifleri ve çorba tarifleri sitemiz üzerinden ücretsiz şekilde okunarak yapılabilmektedir.Burada her bütçeye ve damak zevkine uygun yemek tariflerini bulabileceğiniz gibi, hali hazırda yapmayı bildiğiniz yemeklere de küçük dokunuşlar ekleyerek farklılıklar gerçekleştirebilirsiniz. Web adresimizde  yer alan tariflerin tümü, yemek yapmakla arası olan ya da olmayan herkesin kolayca anlayabileceği ve uygulayabileceği biçimde yazılmıştır. Yemek yapmayı çok ta bilmeyenler için pratik tarifler kategorimiz olduğu gibi, usta şeflere taş çıkartmak isteyenler için ziyafet sofralarına yakışır tarifler de eklenerek mutlu ve leziz sofralar kurulmaktadır. Bizi ziyaret ederek onurlandırdınız…. Afiyet Olsun.. ')
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (1, N'Çorbalar', 5, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (2, N'Et Yemekleri', 2, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (3, N'Tavuk Yemekleri', 3, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (4, N'Makarnalar', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (5, N'Pilavlar', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (6, N'Salatalar', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (13, N'Tatlılar', 0, N'')
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (16, N'Sebze Yemekleri', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (17, N'Bakliyat Yemekleri', 0, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kullanici] ON 

INSERT [dbo].[Tbl_Kullanici] ([KullaniciID], [Ad], [Sifre]) VALUES (1, N'Duygu', N'12345')
SET IDENTITY_INSERT [dbo].[Tbl_Kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] ON 

INSERT [dbo].[Tbl_Mesajlar] ([MesajID], [MesajGonderen], [MesajMail], [MesajBaslik], [Mesajİcerik]) VALUES (1, N'Duygu Delice', N'Duygu@hotmail.com', N'Yemek lezzetleri', N'Daha lezzetli tarifler verin lütfen')
INSERT [dbo].[Tbl_Mesajlar] ([MesajID], [MesajGonderen], [MesajMail], [MesajBaslik], [Mesajİcerik]) VALUES (2, N'Duygu Delice', N'Duygu@hotmail.com', N'Yemek lezzetleri', N'daha lzeetli lütfen')
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Slider] ON 

INSERT [dbo].[Tbl_Slider] ([Resimİd], [Resim], [ResimDurum], [Ad], [Tarih], [Malzeme], [Tarif]) VALUES (13, N'~/resimler/izmir-kofte-tarifi-son.jpg', 1, N'İzmir Köfte', CAST(N'2021-12-19T23:38:00' AS SmallDateTime), N'Köftesi için: •	500 gram az yağlı kıyma •	1 adet kuru soğan •	1 adet yumurta •	1/2 (yarım) demet maydanoz •	1,5 su bardağı bayat ekmek içi •	Karabiber •	Kırmızı pul biber •	Kekik •	Tuz Diğer malzemeler; •	4 adet domates (3 adedi sosu için, 1 adedi de üzerine dilimlemek için gerekiyor) •	4 adet patates (ufaksa 5 tane de koyabilirsiniz) •	3 adet çarliston biber •	1 tatlı kaşığı salça (tercihen karışık) •	3 yemek kaşığı sıvı yağ (sos için) Kızartmak için: •	Sıvı yağ', N'1.	Ekmek içini ve arkasından soğanı rondodan geçiriyoruz. (isterseniz rendeleyip, ufalayabilirsiniz)
2.	Yumurtayı, ince ince doğranmış maydanozu, baharatları ve kıymayı da ekleyip iyice yoğuruyoruz.
3.	Parmak uzunluğunda ince ve uzun bir şekil verip biraz dinlenmesi için tabağa sıralıyoruz.
4.	Patatesleri soyup, elma dilimi şeklinde keselim. Patateslerle köfteler aynı boy olursa, daha şık gözükecektir.
5.	Sıvı yağı iyice kızdırıp (çok yağ çekmesin diye) önce patatesleri arkasından da köfteleri azıcık kızartıyoruz. (kesinlikle iyice pişirmeyin ağır olur, kızarmadan almamız gerekiyor)
6.	Daha sonra tepsiye, yan yana olacak şekilde bir patates bir köfte şeklinde sıralayın.
7.	Sonrasında sos tenceremize sıvı yağımızı alıyoruz, salçamızı da ekleyip iyice karıştıralım.
8.	Arkasından rendelediğimiz 3 adet domatesi de ekleyip 10 dakika pişmeye bırakalım, isterseniz sarımsak da atabilirsiniz içine. Kekik ve tuzunu da ekledikten bir kaç dakika sonra ocaktan alıyoruz. Bu aşamada sosun içerisine 1,5 çay bardağı su ekleyerek de yapabilirsiniz dilerseniz eklemeden yemeği fırına koymadan önce tepsinize 1 çay bardağı sıcak su da ekleyebilirsiniz.
9.	Hazırlanan sosu patates ve köftelerin üzerine hepsine değecek şekilde döküyoruz ki kurumasın pişerken.
10.	Üzerine 1 adet soyulup dilimlenmiş domatesi sıralıyoruz, biberleri de kesip içini temizledikten sonra aralarına yerleştiriyoruz.
11.	Fırına atmadan önce tepsinin kenarından 1 çay bardağı sıcak su koyup önceden ısıtılmış 180°C fırında patateslerin üzeri kızarana kadar pişiriyoruz. (Benim yemek tam 1 saatte istediğim kıvamda pişti, fırından fırına değişiklik gösterebileceği için 20-25 dakikada pişmesi de mümkün, kontrollü olmalısınız.)
12.	Dilerseniz 30. dakikadan sonra açıp, tepsinin içindeki sostan köftelerin ve patateslerin üzerine biraz gezdirin. (daha lezzetli olacaktır)
')
INSERT [dbo].[Tbl_Slider] ([Resimİd], [Resim], [ResimDurum], [Ad], [Tarih], [Malzeme], [Tarif]) VALUES (14, N'~/resimler/sutlu-mantar-corbasi.jpg', 1, N'Mantar Çorbası ', CAST(N'2021-12-19T23:36:00' AS SmallDateTime), N'•	8-9 adet kültür mantarı •	1 adet küçük kuru soğan •	1 su bardağı süt •	1 litre sıcak su •	2 yemek kaşığı un (tepeleme) •	3-4 yemek kaşığı sıvı yağ •	Karabiber •	tuz üzeri için: •	Tereyağı •	Kırmızı biber', N'1.	Mantar çorbası yapımı için öncelikle mantarları yıkayıp çok minik doğrayalım.
2.	Soğanı çok ince doğrayıp sıvıyağda çevirelim.
3.	Mantarları da ekleyelim ve az sulanana kadar kavuralım.
4.	Unu ekleyelim, bir iki daha çevirelim.
5.	Karabiberi ekleyelim ve sıcak suyu ekleyip kaynadıktan sonra oda sıcaklığındaki sütü ekleyip kaynara çıkana kadar karıştıralım.
6.	Çorba kaynamaya başladıktan sonra 10 dk pişirelim ve altını kapatıp tuzunu atalım.
Mantar çorbasını servis ederken tereyağı ve kırmızı biberle hazırladığımız yağı üzerine gezdirelim. Lezzetli Mantar Çorbası servise hazır. Afiyet olsun

')
INSERT [dbo].[Tbl_Slider] ([Resimİd], [Resim], [ResimDurum], [Ad], [Tarih], [Malzeme], [Tarif]) VALUES (16, N'~/resimler/domates-corbasi.jpg', 1, N'Sütlü Domates Çorbası Tarifi', CAST(N'2021-12-19T23:34:00' AS SmallDateTime), N'•	2 yemek kaşığı sıvı yağ •	1 yemek kaşığı tereyağı •	2 tepeleme yemek kaşığı un •	1 yemek kaşığı domates salçası •	5 adet domates •	4 su bardağı su •	Yarım su bardağı süt •	Tuz', N'Domates çorbasının yapımı için,
1.	Tereyağı ve sıvı yağ tencereye alınır, un eklenerek biraz kavrulur.
2.	Domates salçası ve rendelenmiş domatesler eklenir. 3-4 dakika daha kavrulur.
3.	4 su bardağı su eklenerek çırpılır.
4.	Tuzu damak tadınıza göre ayarlanır.
5.	Kaynayana kadar karıştırılarak, kaynadıktan sonra yaklaşık 15dk kısık ateşte pişirilir.
6.	Servis yapmadan önce tencereye süt ilave edilerek, karıştırılır.
7.	 İsteğe göre üzerine kaşar peyniri rendesi ve karabiber serpilir.
8.	Nefis Sütlü domates çorbası tarifimiz servise hazır. Deneyeceklere afiyet olsun.
')
SET IDENTITY_INSERT [dbo].[Tbl_Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] ON 

INSERT [dbo].[Tbl_Tarifler] ([TarifID], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (1, N'Mercimek Çorbası', N'mercimek su', N'çorbayı yap', N'mercimek-corbasi-yemekcom.jpg', N'Duygu Delice', N'Duygu@hotmail.com', 1)
INSERT [dbo].[Tbl_Tarifler] ([TarifID], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (6, N'', N'', N'', N'', N'', N'', 0)
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Uyeler] ON 

INSERT [dbo].[Tbl_Uyeler] ([UyeID], [UyeMail], [UyeSifre], [UyeAdSoyad], [UyeKullanici]) VALUES (1, N'Duygu@hotmail.com', N'1234', N'Duygu Delice', N'Duygodlc')
INSERT [dbo].[Tbl_Uyeler] ([UyeID], [UyeMail], [UyeSifre], [UyeAdSoyad], [UyeKullanici]) VALUES (9, N'Duygu@hotmail.com', N'123456', N'hülya', N'hulyaa')
INSERT [dbo].[Tbl_Uyeler] ([UyeID], [UyeMail], [UyeSifre], [UyeAdSoyad], [UyeKullanici]) VALUES (15, N'oguzhansezer14@gmail.com', N'123', N'Oğuzhan Sezer', N'sezerminster')
INSERT [dbo].[Tbl_Uyeler] ([UyeID], [UyeMail], [UyeSifre], [UyeAdSoyad], [UyeKullanici]) VALUES (16, N'sezer@gmail.com', N'123', N'oğuzhan sezer', N'atillaa')
INSERT [dbo].[Tbl_Uyeler] ([UyeID], [UyeMail], [UyeSifre], [UyeAdSoyad], [UyeKullanici]) VALUES (17, N'oguzhansezer15@gmail.com', N'123', N'Oğuzhan Sezer', N'sezerminster')
SET IDENTITY_INSERT [dbo].[Tbl_Uyeler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] ON 

INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [YemekDurum]) VALUES (27, N'Yayla Çorbası', N'•	1 çay bardağı pirinç •	3 su bardağı su •	3 su bardağı sıcak su (tavuk veya kemik suyu) •	Tuz Terbiyesi için: •	1 adet yumurta sarısı •	1,5 su bardağı yoğurt •	1 yemek kaşığı un Sosu için: •	2 yemek kaşığı tereyağı •	1 yemek kaşığı kuru nane', N'1.	Yayla çorbası için ilk olarak pirinçler yıkanarak suda yumuşayıncaya kadar haşlanır.
2.	Yayla çorbamızın terbiyesi için diğer taraftan yumurta sarısı, yoğurt, un bir kâsede iyice çırpılır.
3.	Pişen pirinçlere varsa et ya da kemik suyu yoksa 3 su bardağı sıcak su ilave edilir.
4.	Çorbanın suyundan 1-2 kepçe alınarak yavaş yavaş alınıp terbiyeye ilave edilir.
5.	Hafifçe sulanan bu karışım ılınmış olan çorbaya ilave edilir ve 1-2 taşım kaynatılır.
6.	En son tuzu ilave edilir, bir kaç dakika daha kaynatılarak ocak kapatılır.
7.	Üzerine sos için kuru nane eritilmiş tereyağında kızdırılarak gezdirilir. Yayla çorbamız servise hazır. Afiyet olsun.
Not: Çorbamız bekledikçe koyulaşabilir, servis öncesi sıcak su ekleyerek kıvamını istediğiniz şekilde ayarlayabilirsiniz.
', N'~/resimler/yayla.png', CAST(N'2021-12-19T23:34:00' AS SmallDateTime), 4, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [YemekDurum]) VALUES (28, N'Sütlü Domates Çorbası Tarifi', N'•	2 yemek kaşığı sıvı yağ •	1 yemek kaşığı tereyağı •	2 tepeleme yemek kaşığı un •	1 yemek kaşığı domates salçası •	5 adet domates •	4 su bardağı su •	Yarım su bardağı süt •	Tuz', N'Domates çorbasının yapımı için,
1.	Tereyağı ve sıvı yağ tencereye alınır, un eklenerek biraz kavrulur.
2.	Domates salçası ve rendelenmiş domatesler eklenir. 3-4 dakika daha kavrulur.
3.	4 su bardağı su eklenerek çırpılır.
4.	Tuzu damak tadınıza göre ayarlanır.
5.	Kaynayana kadar karıştırılarak, kaynadıktan sonra yaklaşık 15dk kısık ateşte pişirilir.
6.	Servis yapmadan önce tencereye süt ilave edilerek, karıştırılır.
7.	 İsteğe göre üzerine kaşar peyniri rendesi ve karabiber serpilir.
8.	Nefis Sütlü domates çorbası tarifimiz servise hazır. Deneyeceklere afiyet olsun.
', N'~/resimler/domates-corbasi.jpg', CAST(N'2021-12-19T23:34:00' AS SmallDateTime), 4.3, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [YemekDurum]) VALUES (29, N'Şehriyeli Tavuk Suyu Çorbası', N'•	1 su bardağı tavuk suyu •	1 çay bardağına yakın tel şehriye •	2 yemek kaşığı un •	1 yemek kaşığı limon suyu •	haşlanıp didiklenmiş göğüs eti •	3 su bardağı sıcak su •	tuz •	pul biber •	karabiber •	nane', N'1.	Tavuk suyuna 3 su bardağı kadar su ve didiklenmiş tavuk etlerini ekleyip kaynatın.
2.	İçerisine tel şehriyeleri ilave edip karıştırın.
3.	Limon suyu, un ve az miktarda suyu çırparak çorbaya ilave edin.
4.	Şehriyeler pişmeye yakın tuz, nane, isteğe bağlı pul biber ve karabiber serperek 5 dakika kadar kaynattıktan sonra ocaktan alın. Afiyet olsun.', N'~/resimler/tavuk-suyu-corba.jpg', CAST(N'2021-12-19T23:35:00' AS SmallDateTime), 4.3, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [YemekDurum]) VALUES (30, N'Mantar Çorbası ', N'•	8-9 adet kültür mantarı •	1 adet küçük kuru soğan •	1 su bardağı süt •	1 litre sıcak su •	2 yemek kaşığı un (tepeleme) •	3-4 yemek kaşığı sıvı yağ •	Karabiber •	tuz üzeri için: •	Tereyağı •	Kırmızı biber', N'1.	Mantar çorbası yapımı için öncelikle mantarları yıkayıp çok minik doğrayalım.
2.	Soğanı çok ince doğrayıp sıvıyağda çevirelim.
3.	Mantarları da ekleyelim ve az sulanana kadar kavuralım.
4.	Unu ekleyelim, bir iki daha çevirelim.
5.	Karabiberi ekleyelim ve sıcak suyu ekleyip kaynadıktan sonra oda sıcaklığındaki sütü ekleyip kaynara çıkana kadar karıştıralım.
6.	Çorba kaynamaya başladıktan sonra 10 dk pişirelim ve altını kapatıp tuzunu atalım.
Mantar çorbasını servis ederken tereyağı ve kırmızı biberle hazırladığımız yağı üzerine gezdirelim. Lezzetli Mantar Çorbası servise hazır. Afiyet olsun

', N'~/resimler/sutlu-mantar-corbasi.jpg', CAST(N'2021-12-19T23:36:00' AS SmallDateTime), 4.3, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [YemekDurum]) VALUES (31, N'Tavuklu Sultan Kebabı', N'•	2 adet yufka •	400g tavuk göğsü •	400g tavuk pirzola •	1 adet kuru soğan •	2 yemek kaşığı domates salçası (1 kaşığını ketçap kullanabilirsiniz) •	1 su bardağı haşlanmış ya da konserve bezelye •	1 adet patlıcan •	Pul biber •	Kekik •	Karabiber •	Tuz Beşamel sos için: •	1,5 yemek kaşığı un •	1,5 su bardağı süt •	2 yemek kaşığı tereyağı •	Tuz Üzeri için: •	Kaşar peyniri rendesi', N'1.	Patlıcanı alacalı soyarak küçük küçük doğrayın ve sıvı yağ ile kızartın.
2.	Süzgece alarak yağının süzmesi bekleyin bu arada tavukları soteleyin.
3.	Tavukları kuş başı doğrayın, tencereye alarak arada karıştırarak pişirin.
4.	Rengi dönüp suyunu saldığında yemeklik doğranmış soğanı ekleyin.
5.	Soğanlar yumuşadıktan sonra salçayı ve isteğe bağlı kullanacaksanız eğer ketçabı ilave edin.
6.	Kapağını kapatarak 4-5 dk. kadar pişmeye bırakın.
7.	Suyunu çektikten sonra bezelye ve patlıcanı ilave edin.
8.	Baharatları da ekleyerek 3-4 dk. daha pişirin.
9.	Tavuklar da artık pişmiş olmalılar.
10.	Beşamel sos için, tereyağını eritin ve unu kokusu çıkana kadar kavurun.
11.	Üzerine sütü ilave ederek çırpıcı yardımı ile topak kalmayacak şekilde koyulaşıp göz göz olana kadar karıştırarak pişirin.
12.	Son olarak tuzunu ilave ederek ocaktan alın.
13.	Küçük bir kaseye 4’e böldüğünüz yufkadan serin.
14.	Yufkanın kenarlarından parçalar kopartarak çukur olan kısma bir kat daha serin.
15.	Kaseye tavuklu harçtan koyarak, kasenin kenarlarından sarkan yufkaları üzerine kapatın.
16.	Yağlanmış fırın kabına ters çevirin.
17.	Tüm malzemeyi bu şekilde yaptıktan sonra üzerleri beşamel sostan her birine eşit miktarda olacak şekilde dökün.
18.	190 derece fırında yufkalar pembeleşene kadar pişirin.
19.	Sonra üzerine kaşar peyniri rendesi serpin ve tekrar fırına sürün.
20.	Peynirler eriyip kızardığında alabilirsiniz.
', N'~/resimler/Tavuklu-Sultan-Kebabi-Tarifi.jpg', CAST(N'2021-12-19T23:37:00' AS SmallDateTime), 4.3, 3, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [YemekDurum]) VALUES (32, N'Beyti Kebabı', N'•	1-2 adet yufka Beyti Köftesi için: •	400g kıyma •	1 adet yumurta •	1 adet soğan •	1 diş sarımsak •	Yarım çay bardağı galeta unu •	Tuz •	Karabiber Yufkalara ve üzerine sürmek için: •	2-3 yemek kaşığı tereyağı Domates sosu için: •	1 su bardağı domates rendesi •	1 yemek kaşığı tereyağı •	Karabiber •	Tuz Yanında servis etmek için •	Yoğurt', N'1.	İlk olarak beytimizin köftesini hazırlıyoruz. Soğan, sarımsak ve yumurtayı rondoya alarak çekelim. Rondo kullanmak istemezseniz soğan ve sarımsağı rendeleyebilirsiniz.
2.	Köfte için rondoda çektiğimiz malzemeleri, kıyma, galeta unu ve baharatları derince bir kaba alarak köfte harcını güzelce yoğuralım.
3.	Köfte harcından bir miktar alarak elimizde uzun ve yassı bir şekilde biçimlendirelim. Unutmayın köfteler pişerken kısalıp kalınlaşacaktır, eğer çok miktarda çıkartmak isterseniz köftelerinizi daha ince yapabilirsiniz.
4.	Şekillendirdiğimiz köfteleri pişirme kağıdı serdiğiniz fırın tepsisine yerleştelim.
5.	Önceden ısıtılmış 190 derece fırında köftelerimizi 15 dakika pişirelim.
6.	Köftelerin pişmesine yakın, tereyağını eritelim.
7.	Yufkalardan bir tanesini alarak ikiye keselim.
8.	Tek kat olacak şekilde bir parçasının üzerine tereyağı sürelim.
9.	Fırından aldığımız köfteleri yufkanın geniş kısmına boşluk bırakmadan tek sıra halinde dizelim ve yufkanın kenarlarını katlayarak rulo şeklinde saralım. (Fotoğraflarda ve videoda bu bölümü görebilirsiniz)
10.	Tüm malzemeleri sardıktan sonra ruloları verev olarak şekilde keselim ve tekrar tepsiye dizelim.
11.	Üzerlerine tereyağı sürerek fırına sürelim.
12.	Kebabımız fırında kızarırken domates sosunu hazırlayalım. Bunun için tereyağını tavada eritelim, domates rendesini ekleyelim. Birkaç dakika kaynadıktan sonra karabiber ve tuz ilave edelim. Kıvamı koyu ise bir miktar su ilave edebilirsiniz.
13.	Yufkaların üzeri hafifçe kızardıktan sonra fırından alalım.
14.	Beyti kebabımızı servis tabağına aldıktan sonra üzerine domates sosundan gezdirelim, yanına birkaç kaşık yoğurt koyalım.
15.	Sıcak sıcak servis edelim :)', N'~/resimler/beyti.jpg', CAST(N'2021-12-19T23:37:00' AS SmallDateTime), 4.3, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [YemekDurum]) VALUES (33, N'İzmir Köfte', N'Köftesi için: •	500 gram az yağlı kıyma •	1 adet kuru soğan •	1 adet yumurta •	1/2 (yarım) demet maydanoz •	1,5 su bardağı bayat ekmek içi •	Karabiber •	Kırmızı pul biber •	Kekik •	Tuz Diğer malzemeler; •	4 adet domates (3 adedi sosu için, 1 adedi de üzerine dilimlemek için gerekiyor) •	4 adet patates (ufaksa 5 tane de koyabilirsiniz) •	3 adet çarliston biber •	1 tatlı kaşığı salça (tercihen karışık) •	3 yemek kaşığı sıvı yağ (sos için) Kızartmak için: •	Sıvı yağ', N'1.	Ekmek içini ve arkasından soğanı rondodan geçiriyoruz. (isterseniz rendeleyip, ufalayabilirsiniz)
2.	Yumurtayı, ince ince doğranmış maydanozu, baharatları ve kıymayı da ekleyip iyice yoğuruyoruz.
3.	Parmak uzunluğunda ince ve uzun bir şekil verip biraz dinlenmesi için tabağa sıralıyoruz.
4.	Patatesleri soyup, elma dilimi şeklinde keselim. Patateslerle köfteler aynı boy olursa, daha şık gözükecektir.
5.	Sıvı yağı iyice kızdırıp (çok yağ çekmesin diye) önce patatesleri arkasından da köfteleri azıcık kızartıyoruz. (kesinlikle iyice pişirmeyin ağır olur, kızarmadan almamız gerekiyor)
6.	Daha sonra tepsiye, yan yana olacak şekilde bir patates bir köfte şeklinde sıralayın.
7.	Sonrasında sos tenceremize sıvı yağımızı alıyoruz, salçamızı da ekleyip iyice karıştıralım.
8.	Arkasından rendelediğimiz 3 adet domatesi de ekleyip 10 dakika pişmeye bırakalım, isterseniz sarımsak da atabilirsiniz içine. Kekik ve tuzunu da ekledikten bir kaç dakika sonra ocaktan alıyoruz. Bu aşamada sosun içerisine 1,5 çay bardağı su ekleyerek de yapabilirsiniz dilerseniz eklemeden yemeği fırına koymadan önce tepsinize 1 çay bardağı sıcak su da ekleyebilirsiniz.
9.	Hazırlanan sosu patates ve köftelerin üzerine hepsine değecek şekilde döküyoruz ki kurumasın pişerken.
10.	Üzerine 1 adet soyulup dilimlenmiş domatesi sıralıyoruz, biberleri de kesip içini temizledikten sonra aralarına yerleştiriyoruz.
11.	Fırına atmadan önce tepsinin kenarından 1 çay bardağı sıcak su koyup önceden ısıtılmış 180°C fırında patateslerin üzeri kızarana kadar pişiriyoruz. (Benim yemek tam 1 saatte istediğim kıvamda pişti, fırından fırına değişiklik gösterebileceği için 20-25 dakikada pişmesi de mümkün, kontrollü olmalısınız.)
12.	Dilerseniz 30. dakikadan sonra açıp, tepsinin içindeki sostan köftelerin ve patateslerin üzerine biraz gezdirin. (daha lezzetli olacaktır)
', N'~/resimler/izmir-kofte-tarifi-son.jpg', CAST(N'2021-12-19T23:38:00' AS SmallDateTime), 4.3, 2, 1)
INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [YemekDurum]) VALUES (34, N'Fırında Tavuk Şiş', N'•	600 gr tavuk göğüs •	Yarım çay bardağı zeytinyağı •	1 yemek kaşığı domates salçası •	2 yemek kaşığı yoğurt •	1 tatlı kaşığı bal •	2 diş sarımsak •	1 tatlı kaşığı toz kırmızı biber •	1 tatlı kaşığı kekik •	1 çay kaşığı tuz •	1 çay kaşığı karabiber •	Çeri domates •	Yeşil biber', N'1.	Uygun bir karıştırma kabına zeytinyağı, salça, yoğurt, bal, sarımsak, kırmızı toz biber, kekik, karabiber ve tuzu alarak tel çırpıcı ile karıştıralım.
2.	Tavuk göğsünü doğrayalım ve sosumuzun içerisine alarak güzelce harmanlayalım. 3-4 saat kadar bu şekilde dinlenmeye bırakalım.
3.	Yeşil biberlerimizi uygun boyutta doğrayalım.
4.	Sürenin sonunda dinlenen tavuklarımızı biber ve çeri domateslerle birlikte şişlere dizelim. Tüm malzemelerimiz bitene kadar bu işleme devam edelim.
5.	Ardından hazırladığımız tavuk şişlerini pişirme kağıdı serdiğimiz fırın tepsisine alarak önceden ısıttığımız 200 derece fırında yaklaşık 30 dakika pişmeye bırakalım.
6.	Sürenin sonunda pişen tavuk şişlerimiz servise hazır. Afiyet olsun!
', N'~/resimler/firinda-tavuk-sis.jpg', CAST(N'2021-12-19T23:39:00' AS SmallDateTime), 4.3, 3, 0)
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Yonetici] ON 

INSERT [dbo].[Tbl_Yonetici] ([YoneticiID], [YoneticiAd], [YoneticiSifre]) VALUES (1, N'Duygu', N'12345')
SET IDENTITY_INSERT [dbo].[Tbl_Yonetici] OFF
GO
ALTER TABLE [dbo].[Tbl_GununYemegi] ADD  CONSTRAINT [DF_Tbl_GununYemegi_GununYemegiTarih]  DEFAULT (getdate()) FOR [GununYemegiTarih]
GO
ALTER TABLE [dbo].[Tbl_Kategoriler] ADD  CONSTRAINT [DF_Tbl_Kategoriler_KategoriAdet]  DEFAULT ((0)) FOR [KategoriAdet]
GO
ALTER TABLE [dbo].[Tbl_Slider] ADD  CONSTRAINT [DF_Tbl_Slider_ResimDurum]  DEFAULT ((0)) FOR [ResimDurum]
GO
ALTER TABLE [dbo].[Tbl_Tarifler] ADD  CONSTRAINT [DF_Tbl_Tarifler_TarifDurum]  DEFAULT ((0)) FOR [TarifDurum]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_YemekTarih]  DEFAULT (getdate()) FOR [YemekTarih]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_YemekDurum]  DEFAULT ((0)) FOR [YemekDurum]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumTarih]  DEFAULT (getdate()) FOR [YorumTarih]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Table_1_Yorum]  DEFAULT ((0)) FOR [Yorumİcerik]
GO
ALTER TABLE [dbo].[Tbl_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler] FOREIGN KEY([Kategoriid])
REFERENCES [dbo].[Tbl_Kategoriler] ([Kategoriid])
GO
ALTER TABLE [dbo].[Tbl_Yemekler] CHECK CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler] FOREIGN KEY([YemekID])
REFERENCES [dbo].[Tbl_Yemekler] ([YemekID])
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] CHECK CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler]
GO
USE [master]
GO
ALTER DATABASE [Dbo_yemektarifi] SET  READ_WRITE 
GO
