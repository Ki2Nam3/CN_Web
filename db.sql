
Create database [BookingHotel]
USE [BookingHotel]
GO
/****** Object:  Table [dbo].[banner]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking](
	[Id_Booking] [varchar](8) NOT NULL,
	[Status] [bit] NULL,
	[Note] [nvarchar](max) NULL,
	[Id_Customer] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Booking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[Id_Contact] [varchar](8) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Id_Customer] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImageRoom]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImageService]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Service]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Service](
	[Id_Service] [varchar](8) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/20/2020 5:58:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id_User] [](8) NOT NULL,
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
SET ANSI_PADDING OFF
GO
INSERT [dbo].[banner] ([Id_banner], [imageLink]) VALUES (N'MBN01', N'bn1.jpg')
INSERT [dbo].[banner] ([Id_banner], [imageLink]) VALUES (N'MBN02', N'bn2.jpg')
INSERT [dbo].[banner] ([Id_banner], [imageLink]) VALUES (N'MBN03', N'bn3.jpg')
INSERT [dbo].[ImageRoom] ([Id_image], [imageLink], [Id_Room]) VALUES (N'MA01', N'80625894.jpg', N'MP01')
INSERT [dbo].[ImageRoom] ([Id_image], [imageLink], [Id_Room]) VALUES (N'MA02', N'80625893.jpg', N'MP02')
INSERT [dbo].[ImageRoom] ([Id_image], [imageLink], [Id_Room]) VALUES (N'MA03', N'80626002.jpg', N'MP03')
INSERT [dbo].[ImageRoom] ([Id_image], [imageLink], [Id_Room]) VALUES (N'MA04', N'phong1.jpg', N'MP04')
INSERT [dbo].[Promotion] ([Id_Prom], [Title], [ImageLink], [Active], [Detail]) VALUES (N'MKM01', N'Khuyến mãi lớn', N'80625895.jpg', 1, N'- Giảm giá 63% cho tất cả các loại phòng, chương trình khuyến mãi này có hiệu lực đến ngày 09/04/2020.
- Khách hàng được quyền thay đổi hoặc hủy bỏ một tuần trước khi đến mà không bị tính phí.')
INSERT [dbo].[Promotion] ([Id_Prom], [Title], [ImageLink], [Active], [Detail]) VALUES (N'MKM02', N'Khuyến mãi mùa hè 2020', N'80626001.jpg', 1, N'- Với hệ thống Grandhotel bạn sẽ không chỉ tận hưởng trải nghiệm kỳ nghỉ tuyệt vời với những trải nghiệm thú vị mà còn tận hưởng với những chương trình khuyến mãi cực kỳ hấp dẫn.')
INSERT [dbo].[Promotion] ([Id_Prom], [Title], [ImageLink], [Active], [Detail]) VALUES (N'MKM03', N'Khuyến mãi thành lập khách sạn Grandhotel', N'80625894.jpg', 1, N'- Bạn sẽ được tận hưởng rất nhiều ưu đãi khi GrandHotel mới mở cửa.')
INSERT [dbo].[Room] ([Id_Room], [Name], [Price], [Status], [Active], [Id_Type]) VALUES (N'MP01', N'101', 400000, 1, 1, N'MLP01')
INSERT [dbo].[Room] ([Id_Room], [Name], [Price], [Status], [Active], [Id_Type]) VALUES (N'MP02', N'102', 300000, 1, 1, N'MLP02')
INSERT [dbo].[Room] ([Id_Room], [Name], [Price], [Status], [Active], [Id_Type]) VALUES (N'MP03', N'103', 400000, 1, 1, N'MLP03')
INSERT [dbo].[Room] ([Id_Room], [Name], [Price], [Status], [Active], [Id_Type]) VALUES (N'MP04', N'104', 800000, 1, 1, N'MLP04')
INSERT [dbo].[RoomType] ([Id_Type], [Name], [Bed_Amount], [Size], [Adult_Amount], [Children_Amount], [Active], [Note]) VALUES (N'MLP01', N'Phòng Deluxe', N'2', 45, N'2', N'1', 1, NULL)
INSERT [dbo].[RoomType] ([Id_Type], [Name], [Bed_Amount], [Size], [Adult_Amount], [Children_Amount], [Active], [Note]) VALUES (N'MLP02', N'Phòng Superior', N'1', 20, N'2', N'1', 1, NULL)
INSERT [dbo].[RoomType] ([Id_Type], [Name], [Bed_Amount], [Size], [Adult_Amount], [Children_Amount], [Active], [Note]) VALUES (N'MLP03', N'Phòng Suite', N'3', 70, N'2', N'1', 1, NULL)
INSERT [dbo].[RoomType] ([Id_Type], [Name], [Bed_Amount], [Size], [Adult_Amount], [Children_Amount], [Active], [Note]) VALUES (N'MLP04', N'Phòng Luxury', N'2', 100, N'2', N'1', 1, NULL)
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
 create table Introduce
(
Id varchar(8) primary key,
imageLink varchar(200)null,
note1 nvarchar(max)null,
note2 nvarchar(max)null,
note3 nvarchar(max)null,
note4 nvarchar(max)null,
note5 nvarchar(max)null,
)