USE [master]
GO
/****** Object:  Database [BookingHotel]    Script Date: 06/06/2020 15:50:03 ******/
CREATE DATABASE [BookingHotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookingHotel', FILENAME = N'D:\Hoc ky 6\S4_N9_LuongDinhHoang_17150120\BookingHotel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookingHotel_log', FILENAME = N'D:\Hoc ky 6\S4_N9_LuongDinhHoang_17150120\BookingHotel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BookingHotel] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookingHotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookingHotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookingHotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookingHotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookingHotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookingHotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookingHotel] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BookingHotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookingHotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookingHotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookingHotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookingHotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookingHotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookingHotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookingHotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookingHotel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookingHotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookingHotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookingHotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookingHotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookingHotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookingHotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BookingHotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookingHotel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BookingHotel] SET  MULTI_USER 
GO
ALTER DATABASE [BookingHotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookingHotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookingHotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookingHotel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookingHotel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookingHotel] SET QUERY_STORE = OFF
GO
USE [BookingHotel]
GO
/****** Object:  Table [dbo].[banner]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banner](
	[Id_banner] [varchar](8) NOT NULL,
	[imageLink] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_banner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Id_Booking] [varchar](8) NOT NULL,
	[Status] [bit] NULL,
	[Note] [nvarchar](max) NULL,
	[Id_Customer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Booking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetail](
	[Id] [varchar](8) NOT NULL,
	[StartDay] [date] NULL,
	[EndDay] [date] NULL,
	[Adult_Amount] [char](1) NULL,
	[Children_Amount] [char](1) NULL,
	[Total_Amount] [float] NULL,
	[Status] [bit] NULL,
	[Id_Room] [varchar](8) NULL,
	[Id_Booking] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id_Contact] [varchar](8) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Id_Customer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[Id_Glr] [varchar](8) NOT NULL,
	[ImageLink] [varchar](200) NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Glr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageRoom]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageRoom](
	[Id_image] [varchar](8) NOT NULL,
	[imageLink] [varchar](200) NULL,
	[Id_Room] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageService]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageService](
	[Id_image] [varchar](8) NOT NULL,
	[imageLink] [varchar](200) NULL,
	[Id_Service] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Introduce]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Introduce](
	[Id] [varchar](8) NOT NULL,
	[imageLink] [varchar](200) NULL,
	[note1] [nvarchar](max) NULL,
	[note2] [nvarchar](max) NULL,
	[note3] [nvarchar](max) NULL,
	[note4] [nvarchar](max) NULL,
	[note5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[Id_Prom] [varchar](8) NOT NULL,
	[Title] [nvarchar](300) NULL,
	[ImageLink] [varchar](200) NULL,
	[Active] [bit] NULL,
	[Detail] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Prom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id_Room] [varchar](8) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Price] [float] NULL,
	[Status] [bit] NULL,
	[Active] [bit] NULL,
	[Id_Type] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[Id_Type] [varchar](8) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[Bed_Amount] [varchar](1) NULL,
	[Size] [tinyint] NULL,
	[Adult_Amount] [char](1) NULL,
	[Children_Amount] [char](1) NULL,
	[Active] [bit] NULL,
	[Note] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id_Service] [varchar](8) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Active] [bit] NULL,
	[ID_Type] [varchar](8) NULL,
	[Image_service] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceType]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceType](
	[ID_Type] [varchar](8) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[Content_Service] [nvarchar](max) NULL,
 CONSTRAINT [PK_ServiceType] PRIMARY KEY CLUSTERED 
(
	[ID_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/06/2020 15:50:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id_User] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[UserName] [varchar](30) NULL,
	[PassWord] [varchar](30) NULL,
	[Sex] [bit] NULL,
	[Email] [varchar](50) NULL,
	[Address] [nvarchar](20) NULL,
	[Phone] [char](12) NULL,
	[Status] [bit] NULL,
	[Permission] [bit] NULL,
	[ImageLink] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[banner] ([Id_banner], [imageLink]) VALUES (N'MBN01', N'bn1.jpg')
INSERT [dbo].[banner] ([Id_banner], [imageLink]) VALUES (N'MBN02', N'bn2.jpg')
INSERT [dbo].[banner] ([Id_banner], [imageLink]) VALUES (N'MBN03', N'bn3.jpg')
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr01', N'80625893.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr02', N'80625894.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr03', N'80625895.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr04', N'80625899.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr05', N'81119043.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr06', N'80626001.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr07', N'83973660.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr08', N'83973661.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr09', N'phong12.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr10', N'phong8.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr11', N'phong5.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr12', N'phong7.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr13', N'phong4.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr14', N'phong2.jpg', NULL)
INSERT [dbo].[Gallery] ([Id_Glr], [ImageLink], [Active]) VALUES (N'Glr15', N'83973662.jpg', NULL)
INSERT [dbo].[ImageRoom] ([Id_image], [imageLink], [Id_Room]) VALUES (N'MA01', N'80625894.jpg', N'MP01')
INSERT [dbo].[ImageRoom] ([Id_image], [imageLink], [Id_Room]) VALUES (N'MA02', N'80625893.jpg', N'MP02')
INSERT [dbo].[ImageRoom] ([Id_image], [imageLink], [Id_Room]) VALUES (N'MA03', N'80626002.jpg', N'MP03')
INSERT [dbo].[ImageRoom] ([Id_image], [imageLink], [Id_Room]) VALUES (N'MA04', N'phong1.jpg', N'MP04')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA01', N'gym.jpg', N'MDV02')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA02', N'hb1.jpg', N'MDV03')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA03', N'hb2.jpg', N'MDV03')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA04', N'hb3.jpg', N'MDV03')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA05', N'hb4.jpg', N'MDV03')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA06', N'nh1.jpg', N'MDV04')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA07', N'nh2.jpg', N'MDV04')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA08', N'nh3.jpg', N'MDV04')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA09', N'nh4.jpg', N'MDV04')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA10', N'nh5.jpg', N'MDV04')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA11', N'nh6.jpg', N'MDV04')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA12', N'nh7.jpg', N'MDV04')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA13', N'spa1.jpg', N'MDV01')
INSERT [dbo].[ImageService] ([Id_image], [imageLink], [Id_Service]) VALUES (N'MA14', N'spa2.jpg', N'MDV01')
INSERT [dbo].[Introduce] ([Id], [imageLink], [note1], [note2], [note3], [note4], [note5]) VALUES (N'Gt01', N'81119049.jpg', N' GrandHotel là một khách
                                                                    sạn sang trọng, đẳng cấp hàng đầu tại Việt Nam. Đến
                                                                    với Grand Hotel, bạn không chỉ được đắm mình trong
                                                                    cuộc sống vương giả với đầy đủ tiện nghi, dịch vụ
                                                                    chuyên nghiệp, chất lượng hàng đầu mà còn cảm nhận
                                                                    được không khí ấm cúng, thoải mái và dễ chịu như
                                                                    gia đình ngay tại nhà.', N'Grand hotel là một nơi an toàn, thân thiện cho mọi
                                                                    người khi ở Hà Nội. Tọa lạc tại một vị trí đắc địa,
                                                                    ngay trung tâm thành phố, dễ dàng đến các điểm du
                                                                    lịch của Hà Nội, khách sạn có thể dễ dàng đến tất cả
                                                                    các điểm du lịch nổi tiếng. Đây cũng là một điểm đến
                                                                    lý tưởng nhờ dịch vụ cao cấp được cung cấp bởi khách
                                                                    sạn. Tất cả các phòng đều được thiết kế theo phong
                                                                    cách hiện đại pha trộn giữa kiến ​​trúc cổ điển, độc
                                                                    đáo, hài hòa giữa vẻ đẹp truyền thống của người Việt
                                                                    và sự tinh tế của phương Tây. Đội ngũ nhân viên
                                                                    khách sạn là những nhân viên giàu kinh nghiệm,
                                                                    chuyên nghiệp và nhiệt tình, không ngừng nâng cao
                                                                    các kỹ năng và chất lượng chuyên nghiệp, luôn sẵn
                                                                    sàng phục vụ khách hàng với phương châm "mang lại
                                                                    giá trị cốt lõi cho khách hàng".', N' Điểm nổi bật của khách sạn Grand chúng tôi là hệ
                                                                    thống nhà hàng phục vụ chuyên nghiệp mang đậm chất
                                                                    Á-Âu với nhà hàng thương hiệu Grand hotel. Ngay tại
                                                                    đây, bạn có thể thưởng thức những món ăn đặc biệt
                                                                    với hương vị tuyệt vời nhất theo phong cách châu Á,
                                                                    được chế biến từ những nguyên liệu tươi ngon nhất
                                                                    dưới sự kiểm tra nghiêm ngặt để đảm bảo an toàn cho
                                                                    thực phẩm. Sản phẩm dưới bàn tay khéo léo của đội
                                                                    ngũ đầu bếp giàu kinh nghiệm.', N' Ngoài ra, trong thời gian lưu trú tại khách sạn, bạn
                                                                    cũng có thể tận hưởng các tiện nghi tại chỗ miễn phí
                                                                    như phòng tập thể dục, spa, hồ bơi, ... Công việc
                                                                    hàng ngày, thói quen hàng ngày, sức khỏe và sức khỏe
                                                                    của bạn là Duy trì tại nhà.', N'Tuyệt vời, thoải mái và ấn tượng là những cảm giác
                                                                    mà du khách nhận xét về khách sạn Grand sau thời
                                                                    gian ở đây và đó cũng là điều chúng tôi - những
                                                                    người có duyên phục vụ bạn cảm thấy tự hào nhất. Với
                                                                    những dịch vụ uy tín và chất lượng được xây dựng từ
                                                                    những nỗ lực bền bỉ nhất, Grand Hotel cam kết mang
                                                                    đến cho bạn chất lượng cuộc sống cao nhất, những
                                                                    khoảnh khắc đẹp nhất, hạnh phúc nhất, kỳ nghỉ nhất
                                                                    của bạn là kỷ niệm mãi mãi không bao giờ quên.')
INSERT [dbo].[Promotion] ([Id_Prom], [Title], [ImageLink], [Active], [Detail]) VALUES (N'MKM01', N'Khuyến mãi lớn', N'80625895.jpg', 1, N'- Giảm giá 63% cho tất cả các loại phòng, chương trình khuyến mãi này có hiệu lực đến ngày 09/04/2020.
- Khách hàng được quyền thay đổi hoặc hủy bỏ một tuần trước khi đến mà không bị tính phí.')
INSERT [dbo].[Promotion] ([Id_Prom], [Title], [ImageLink], [Active], [Detail]) VALUES (N'MKM02', N'Khuyến mãi mùa hè 2020', N'80626001.jpg', 1, N'- Với hệ thống Grandhotel bạn sẽ không chỉ tận hưởng trải nghiệm kỳ nghỉ tuyệt vời với những trải nghiệm thú vị mà còn tận hưởng với những chương trình khuyến mãi cực kỳ hấp dẫn.')
INSERT [dbo].[Promotion] ([Id_Prom], [Title], [ImageLink], [Active], [Detail]) VALUES (N'MKM03', N'Khuyến mãi thành lập khách sạn Grandhotel', N'80625894.jpg', 1, N'- Bạn sẽ được tận hưởng rất nhiều ưu đãi khi GrandHotel mới mở cửa.')
INSERT [dbo].[Room] ([Id_Room], [Name], [Price], [Status], [Active], [Id_Type]) VALUES (N'MP01', N'101', 400000, 1, 1, N'MLP01')
INSERT [dbo].[Room] ([Id_Room], [Name], [Price], [Status], [Active], [Id_Type]) VALUES (N'MP02', N'102', 300000, 1, 1, N'MLP02')
INSERT [dbo].[Room] ([Id_Room], [Name], [Price], [Status], [Active], [Id_Type]) VALUES (N'MP03', N'103', 400000, 1, 1, N'MLP03')
INSERT [dbo].[Room] ([Id_Room], [Name], [Price], [Status], [Active], [Id_Type]) VALUES (N'MP04', N'104', 800000, 1, 1, N'MLP04')
INSERT [dbo].[RoomType] ([Id_Type], [Name], [Bed_Amount], [Size], [Adult_Amount], [Children_Amount], [Active], [Note]) VALUES (N'MLP01', N'Phòng Deluxe ', N'2', 45, N'2', N'1', 1, N'phong-deluxe')
INSERT [dbo].[RoomType] ([Id_Type], [Name], [Bed_Amount], [Size], [Adult_Amount], [Children_Amount], [Active], [Note]) VALUES (N'MLP02', N'Phòng Superior ', N'1', 20, N'2', N'1', 1, N'phong-Superior')
INSERT [dbo].[RoomType] ([Id_Type], [Name], [Bed_Amount], [Size], [Adult_Amount], [Children_Amount], [Active], [Note]) VALUES (N'MLP03', N'Phòng Suite ', N'3', 70, N'2', N'1', 1, N'phong-Suite')
INSERT [dbo].[RoomType] ([Id_Type], [Name], [Bed_Amount], [Size], [Adult_Amount], [Children_Amount], [Active], [Note]) VALUES (N'MLP04', N'Phòng Luxury ', N'2', 100, N'2', N'1', 1, N'phong-luxury')
INSERT [dbo].[Service] ([Id_Service], [Name], [Active], [ID_Type], [Image_service]) VALUES (N'MDV01', N'spa', 1, N'ST000001', N'spa.jpg')
INSERT [dbo].[Service] ([Id_Service], [Name], [Active], [ID_Type], [Image_service]) VALUES (N'MDV02', N'gym', 1, N'ST000004', N'gym.jpg')
INSERT [dbo].[Service] ([Id_Service], [Name], [Active], [ID_Type], [Image_service]) VALUES (N'MDV03', N'hoboi', 1, N'ST000002', N'hoboi.jpg')
INSERT [dbo].[Service] ([Id_Service], [Name], [Active], [ID_Type], [Image_service]) VALUES (N'MDV04', N'nhahang', 1, N'ST000003', N'nhahang.jpg')
INSERT [dbo].[ServiceType] ([ID_Type], [Name], [Content_Service]) VALUES (N'ST000001', N'Nhà hàng chuẩn 5 sao', N'Nhà Hàng Hội An Hotel & Spa sẽ mang đến cho bạn sự trải nghiệm ẩm thực Việt thật sự khó quên, khi thưởng thức ẩm thực hòa quyện cùng vẻ đẹp của thiên nhiên và bầu không khí tươi mát đặc trưng của miền nhiệt đới. Từ giản dị đến tinh tế, những món ăn được trang trí mắt mắt kích thích khẩu vị của bạn.

Ẩm thực Việt Nam vốn nổi tiếng bởi sự thanh đạm nhưng vẫn giữ được nét tinh tế trong hương vị. Không những vậy, các món ăn có thể làm bạn bất ngờ với những kết hợp đặc biệt giữa các nguyên liệu. Đại diện cho sự kết hợp tinh tế đó phải nhắc đến các món ăn truyền thống Việt Nam. Nhờ nằm trong vùng khí hậu nhiệt đới, thảm thực vật phát triển phong phú đã cung cấp cho các món ăn Việt sự lựa chọn các loại thảo mộc phong phú tốt cho sức khỏe. Bên cạnh đó, những phương thức nấu ăn xưa độc đáo được truyền lại từ các thế hệ trước cũng góp phần tạo nên sự đậm đà trong hương vị của từng món ăn.

Hãy đến với chúng tôi để có thể thưởng thức những đặc sản mang đậm hương vị Việt! Chắc chắn bạn sẽ không thể nào quên!')
INSERT [dbo].[ServiceType] ([ID_Type], [Name], [Content_Service]) VALUES (N'ST000002', N'Bể bơi', N'Đây là hồ bơi nước nóng hiện đại bậc nhất nơi đây, nơi du khách vừa có thể thỏa sức bơi lội vừa tận hưởng không khí tự nhiên trong lành. Bạn sẽ vô cùng mát mẻ, sảng khoải, nếu được ngâm mình trong làn nước xanh ngắt và trong vắt ngắm nhìn cảnh hoàng hôn thơ mộng và bình minh trên biển. Mọi mệt nhọc trong cuộc họp hay ngày vui chơi sẽ được giải tỏa hết, thư giãn và thả lỏng cơ thể trong làn nước xanh mát.')
INSERT [dbo].[ServiceType] ([ID_Type], [Name], [Content_Service]) VALUES (N'ST000003', N'Spa', N'Tạm gác lại những bộn bề của cuộc sống để đến với Grand Hotel & Spa. Một không gian yên bình mang đậm bản sắc văn hóa địa phương cùng mùi hương thảo mộc đầy thư thái như ôm lấy cơ thể và đánh thức tâm trí bạn. Sau một ngày dài tham quan phố núi mờ sương, ngâm mình trong bồn lá thuốc đặc trưng của người dân tộc Dao Đỏ chắc chắn sẽ giúp bạn tìm lại sự cân bằng, xua tan mệt mỏi.')
INSERT [dbo].[ServiceType] ([ID_Type], [Name], [Content_Service]) VALUES (N'ST000004', N'Gym', N'Phòng tập Gym của Hội An Hotel & Spa sở hữu một không gian tập rộng rãi với đầy đủ trang thiết bị hiện đại. Tất cả những dụng cụ tập đều được đầu tư hiện đại để đảm bảo việc tập luyện của Quý khách thuận tiện và hiệu quả. Đội ngũ huấn luyện viên cá nhân có hiểu biết chuyên sâu về dinh dưỡng cũng như luyện tập luôn hướng dẫn bạn từ những động tác nhỏ nhất, đến lộ trình dinh dưỡng và luyện tập trong suốt quá trình bạn sinh hoạt tại đây.')
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id_User], [Name], [UserName], [PassWord], [Sex], [Email], [Address], [Phone], [Status], [Permission], [ImageLink]) VALUES (1, N'Hoàng', N'admin', N'1', 1, N'hoang@gmail.com', N'Hà Nội', N'01223456    ', 1, 1, NULL)
INSERT [dbo].[Users] ([Id_User], [Name], [UserName], [PassWord], [Sex], [Email], [Address], [Phone], [Status], [Permission], [ImageLink]) VALUES (2, N'Name', NULL, N'Password', 1, N'Email', N'Address', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id_User], [Name], [UserName], [PassWord], [Sex], [Email], [Address], [Phone], [Status], [Permission], [ImageLink]) VALUES (3, N'User name', NULL, N'Password', 1, N'Email', N'Address', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id_User], [Name], [UserName], [PassWord], [Sex], [Email], [Address], [Phone], [Status], [Permission], [ImageLink]) VALUES (4, N'User name', NULL, N'Password', 1, N'Email', N'Address', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id_User], [Name], [UserName], [PassWord], [Sex], [Email], [Address], [Phone], [Status], [Permission], [ImageLink]) VALUES (5, N'Name', N'User name', N'Password', 1, N'Email', N'Address', N'Phone       ', NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id_User], [Name], [UserName], [PassWord], [Sex], [Email], [Address], [Phone], [Status], [Permission], [ImageLink]) VALUES (6, N'Hoang', N'admin1', N'123', 1, N'hoang160799@gmail.com', N'Thanh Hoa', N'0123456     ', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([Id_Customer])
REFERENCES [dbo].[Users] ([Id_User])
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD FOREIGN KEY([Id_Booking])
REFERENCES [dbo].[Booking] ([Id_Booking])
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD FOREIGN KEY([Id_Room])
REFERENCES [dbo].[Room] ([Id_Room])
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD FOREIGN KEY([Id_Customer])
REFERENCES [dbo].[Users] ([Id_User])
GO
ALTER TABLE [dbo].[ImageRoom]  WITH CHECK ADD FOREIGN KEY([Id_Room])
REFERENCES [dbo].[Room] ([Id_Room])
GO
ALTER TABLE [dbo].[ImageService]  WITH CHECK ADD FOREIGN KEY([Id_Service])
REFERENCES [dbo].[Service] ([Id_Service])
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD FOREIGN KEY([Id_Type])
REFERENCES [dbo].[RoomType] ([Id_Type])
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_ServiceType] FOREIGN KEY([ID_Type])
REFERENCES [dbo].[ServiceType] ([ID_Type])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_ServiceType]
GO
USE [master]
GO
ALTER DATABASE [BookingHotel] SET  READ_WRITE 
GO
