USE [BookingHotel]
GO
/****** Object:  Table [dbo].[banner]    Script Date: 5/12/2020 8:25:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[banner](
	[Id_banner] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_banner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 5/12/2020 8:25:23 AM ******/
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
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 5/12/2020 8:25:23 AM ******/
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
/****** Object:  Table [dbo].[Contact]    Script Date: 5/12/2020 8:25:23 AM ******/
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
/****** Object:  Table [dbo].[Gallery]    Script Date: 5/12/2020 8:25:23 AM ******/
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
/****** Object:  Table [dbo].[imageBanner]    Script Date: 5/12/2020 8:25:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[imageBanner](
	[Id_image] [varchar](8) NOT NULL,
	[imageLink] [varchar](200) NULL,
	[Id_banner] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImageRoom]    Script Date: 5/12/2020 8:25:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImageRoom](
	[Id_image] [varchar](8) NULL,
	[imageLink] [varchar](200) NULL,
	[Id_Room] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImageService]    Script Date: 5/12/2020 8:25:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImageService](
	[Id_image] [varchar](8) NULL,
	[imageLink] [varchar](200) NULL,
	[Id_Service] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 5/12/2020 8:25:23 AM ******/
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
/****** Object:  Table [dbo].[Room]    Script Date: 5/12/2020 8:25:23 AM ******/
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
/****** Object:  Table [dbo].[RoomType]    Script Date: 5/12/2020 8:25:23 AM ******/
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
/****** Object:  Table [dbo].[Service]    Script Date: 5/12/2020 8:25:23 AM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 5/12/2020 8:25:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id_User] [varchar](8) NOT NULL,
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
ALTER TABLE [dbo].[imageBanner]  WITH CHECK ADD FOREIGN KEY([Id_banner])
REFERENCES [dbo].[banner] ([Id_banner])
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
