USE [master]
GO
/****** Object:  Database [MoviesDB]    Script Date: 2017/3/21 22:49:27 ******/
CREATE DATABASE [MoviesDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( 
	NAME = N'MoviesDB', 
	FILENAME = N'D:\2教案\数据库原理\1数据库系统基础教程(第3版)\MoviesDB.mdf' , 
	SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( 
	NAME = N'MoviesDB_log', 
	FILENAME = N'D:\2教案\数据库原理\1数据库系统基础教程(第3版)\MoviesDB_log.ldf' , 
	SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [MoviesDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MoviesDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MoviesDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MoviesDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MoviesDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MoviesDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MoviesDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MoviesDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MoviesDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MoviesDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MoviesDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MoviesDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MoviesDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MoviesDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MoviesDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MoviesDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MoviesDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MoviesDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MoviesDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MoviesDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MoviesDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MoviesDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MoviesDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MoviesDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MoviesDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MoviesDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MoviesDB] SET  MULTI_USER 
GO
ALTER DATABASE [MoviesDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MoviesDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MoviesDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MoviesDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MoviesDB]
GO
/****** Object:  Table [dbo].[MovieExec]    Script Date: 2017/3/21 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovieExec](
	[name] [char](30) NULL,
	[address] [varchar](255) NULL,
	[cert#] [int] NOT NULL,
	[netWorth] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cert#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 2017/3/21 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[title] [nchar](100) NOT NULL,
	[year] [int] NOT NULL,
	[length] [int] NULL,
	[genre] [nchar](10) NULL,
	[studioName] [nchar](30) NULL,
	[producerC#] [int] NULL,
 CONSTRAINT [PK__Movie__5D23B98A40AB8AD5] PRIMARY KEY CLUSTERED 
(
	[title] ASC,
	[year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MovieStar]    Script Date: 2017/3/21 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovieStar](
	[name] [nchar](30) NOT NULL,
	[address] [varchar](255) NULL,
	[gender] [char](1) NULL,
	[birthdate] [date] NULL,
 CONSTRAINT [PK_MovieStar] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StarsIn]    Script Date: 2017/3/21 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StarsIn](
	[movieTitle] [varchar](255) NULL,
	[movieYear] [int] NULL,
	[starName] [char](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Studio]    Script Date: 2017/3/21 22:49:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Studio](
	[name] [char](50) NOT NULL,
	[address] [varchar](255) NULL,
	[presC#] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MovieExec] ([name], [address], [cert#], [netWorth]) VALUES (N'Rupert Murdoch                ', N'New York', 90064, 130000000)
INSERT [dbo].[MovieExec] ([name], [address], [cert#], [netWorth]) VALUES (N'Gary Barber                   ', N'Los Angeles, California, U.S', 90067, 300000000)
INSERT [dbo].[MovieExec] ([name], [address], [cert#], [netWorth]) VALUES (N'Sanford Panitch               ', N'Culver City, California, United States', 90232, 800000000)
INSERT [dbo].[MovieExec] ([name], [address], [cert#], [netWorth]) VALUES (N'Robert Allen Iger             ', N'500 South Buena Vista Street,
Burbank, California, United States', 91521, 560000000)
INSERT [dbo].[MovieExec] ([name], [address], [cert#], [netWorth]) VALUES (N'Kevin Tsujihara               ', N'Petaluma, California, U.S', 91522, 20000000)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Galaxy Quest                                                                                        ', 1999, 104, N'comedy    ', N'DreamWorks                    ', 67890)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Gone With the Wind                                                                                  ', 1939, 231, N'drama     ', N'MGM                           ', NULL)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'King Kong                                                                                           ', 2005, 187, N'action    ', N'Universal Picture             ', NULL)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Love Story                                                                                          ', 1970, 99, N'Romance   ', N'Paramount Pictures            ', NULL)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Love, Lies and Murder                                                                               ', 1991, 240, N'Drama     ', N'Republic Pictures Corporation ', NULL)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Pretty woman                                                                                        ', 1990, 119, N'comedy    ', N'Disney                        ', 999)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Return of the Jedi                                                                                  ', 1983, 134, N'action    ', N'Fox                           ', NULL)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Romance                                                                                             ', 1990, 119, N'comedy    ', N'Disney                        ', NULL)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Showgirls                                                                                           ', 1995, 150, NULL, N'MGM                           ', NULL)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Star Wars                                                                                           ', 1977, 124, N'sciFi     ', N'Fox                           ', 12345)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Star Wars: Episode V - The Empire Strikes Back                                                      ', 1980, 124, N'action    ', N'Fox                           ', NULL)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'The Amazing Spider-Man                                                                              ', 2012, 141, N'cartoon   ', N'Columbia Pictures             ', NULL)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'The Maltese Falcon                                                                                  ', 1942, 101, N'Mystery   ', N'Warner                        ', NULL)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Titanic                                                                                             ', 1997, 194, N'Romance   ', N'Fox                           ', NULL)
INSERT [dbo].[Movies] ([title], [year], [length], [genre], [studioName], [producerC#]) VALUES (N'Wayne''s World                                                                                       ', 1992, 95, N'comedy    ', N'Paramount                     ', 99999)
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Carrie Fisher                 ', N'123 Maple St.,Hollywood', N'F', CAST(0x95230B00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Clancy Brown                  ', N'Urbana, Ohio, U.S', N'M', CAST(0x8CE90A00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Elizabeth Berkeley            ', N'
Farmington Hills, Michigan ', N'F', CAST(0xC7FC0A00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Emma Stone                    ', N'Los Angeles, California, U.S', N'F', CAST(0x1E140B00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Harrison Ford                 ', N'789 Palm Dr.,Beverly Hills', N'M', CAST(0xF2030B00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Jane Fonda                    ', N'316 Alta Ave., Santa Monica, CA 90402 ', N'M', CAST(0x87CB0A00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Joanne Woodward               ', N'WestPort,Connecticut', N'M', CAST(0x57C00A00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Kate Winslet                  ', N'West Wittering, West Sussex', N'F', CAST(0x71010B00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Leonardo DiCaprio             ', N'Los Angeles, California', N'M', CAST(0x29000B00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'MacLaine Shirley              ', N'Old Malibu Rd Malibu', N'F', CAST(0x4CC60A00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Mark  Hamill                  ', N'456 Oak Rd.,Brentwood', N'M', CAST(0xC4130B00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Paul Newman                   ', N'WestPort,Connecticut', N'F', CAST(0x1FB90A00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Sandra Bullock                ', N'
New Orleans, Louisiana ', N'F', CAST(0x77F10A00 AS Date))
INSERT [dbo].[MovieStar] ([name], [address], [gender], [birthdate]) VALUES (N'Sheryl Lee                    ', N'Augsburg, West Germany', N'F', CAST(0x61F50A00 AS Date))
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Star Wars: Episode IV - A New Hope', 1977, N'Carrie Fisher                 ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Star Wars: Episode IV - A New Hope', 1977, N'Mark Hamill                   ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Star Wars: Episode IV - A New Hope', 1977, N'Harrison Ford                 ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Wayne''s World', 1992, N'Dana Carvey                   ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Wayne''s World', 1992, N'Mike Meyers                   ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Gone With the Wind', 1939, N'Vivien Leigh                  ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Star Wars: Episode V - The Empire Strikes Back', 1980, N'Carrie Fisher                 ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Star Wars: Episode V - The Empire Strikes Back', 1980, N'Mark Hamill                   ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Star Wars: Episode V - The Empire Strikes Back', 1980, N'Harrison Ford                 ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Titanic', 1997, N'Leonardo DiCaprio             ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Titanic', 1997, N'Kate Winslet                  ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'The Amazing Spider-Man', 2012, N'Emma Stone                    ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Love Story', 1970, N'Clancy Brown                  ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Love Story', 1970, N'Sheryl Lee                    ')
INSERT [dbo].[StarsIn] ([movieTitle], [movieYear], [starName]) VALUES (N'Showgirls', 1995, N'Elizabeth Berkeley            ')
INSERT [dbo].[Studio] ([name], [address], [presC#]) VALUES (N'Columbia                                          ', N' 10202 W. Washington Blvd.,Culver City, CA 90232', 90232)
INSERT [dbo].[Studio] ([name], [address], [presC#]) VALUES (N'Disney                                            ', N'500 S. Buena Vista St. Burbank CA 91521', 91521)
INSERT [dbo].[Studio] ([name], [address], [presC#]) VALUES (N'Fox                                               ', N'10201 West Pico Boulevard, Los Angeles, CA 90064 ', 90064)
INSERT [dbo].[Studio] ([name], [address], [presC#]) VALUES (N'MGM                                               ', N'10250 Constellation Boulevard,Los Angeles, CA 90067', 90067)
INSERT [dbo].[Studio] ([name], [address], [presC#]) VALUES (N'Universal                                         ', N'100 Universal City Plaza, Universal City, CA 91608', 91608)
INSERT [dbo].[Studio] ([name], [address], [presC#]) VALUES (N'Warner                                            ', N' 4000 Warner Boulevard, Burbank, CA 91522-0001', 91522)
