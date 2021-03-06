USE [master]
GO
/****** Object:  Database [Micromanio]    Script Date: 16/11/2021 10:26:09 ******/
ALTER DATABASE [Micromanio] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Micromanio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Micromanio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Micromanio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Micromanio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Micromanio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Micromanio] SET ARITHABORT OFF 
GO
ALTER DATABASE [Micromanio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Micromanio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Micromanio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Micromanio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Micromanio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Micromanio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Micromanio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Micromanio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Micromanio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Micromanio] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Micromanio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Micromanio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Micromanio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Micromanio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Micromanio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Micromanio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Micromanio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Micromanio] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Micromanio] SET  MULTI_USER 
GO
ALTER DATABASE [Micromanio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Micromanio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Micromanio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Micromanio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Micromanio] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Micromanio] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Micromanio] SET QUERY_STORE = OFF
GO
USE [Micromanio]
GO
/****** Object:  Table [dbo].[Console]    Script Date: 16/11/2021 10:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Console](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](50) NOT NULL,
	[idMarque] [int] NOT NULL,
 CONSTRAINT [PK_Console] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Etat]    Script Date: 16/11/2021 10:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[libelle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Etat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jeux]    Script Date: 16/11/2021 10:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jeux](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](50) NOT NULL,
	[idEtat] [int] NOT NULL,
	[idConsole] [int] NOT NULL,
 CONSTRAINT [PK_Jeux] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marque]    Script Date: 16/11/2021 10:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marque](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[libelle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Marque] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[utilisateur]    Script Date: 16/11/2021 10:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utilisateur](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[identifiantConnexion] [nvarchar](50) NOT NULL,
	[passConnexion] [nvarchar](14) NOT NULL,
	[Droit] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_utilisateur] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Console] ON 

INSERT [dbo].[Console] ([id], [nom], [idMarque]) VALUES (1, N'Playstation5', 1)
INSERT [dbo].[Console] ([id], [nom], [idMarque]) VALUES (2, N'Xbox Series X', 2)
INSERT [dbo].[Console] ([id], [nom], [idMarque]) VALUES (3, N'Nintendo switch', 3)
SET IDENTITY_INSERT [dbo].[Console] OFF
GO
SET IDENTITY_INSERT [dbo].[Etat] ON 

INSERT [dbo].[Etat] ([id], [libelle]) VALUES (1, N'Complet')
INSERT [dbo].[Etat] ([id], [libelle]) VALUES (2, N'Partiel')
INSERT [dbo].[Etat] ([id], [libelle]) VALUES (3, N'Incomplet')
SET IDENTITY_INSERT [dbo].[Etat] OFF
GO
SET IDENTITY_INSERT [dbo].[Jeux] ON 

INSERT [dbo].[Jeux] ([id], [nom], [idEtat], [idConsole]) VALUES (1, N'GTA V', 1, 1)
INSERT [dbo].[Jeux] ([id], [nom], [idEtat], [idConsole]) VALUES (2, N'GTA V', 2, 3)
INSERT [dbo].[Jeux] ([id], [nom], [idEtat], [idConsole]) VALUES (3, N'Minecraft', 2, 1)
INSERT [dbo].[Jeux] ([id], [nom], [idEtat], [idConsole]) VALUES (4, N'Minecraft', 3, 2)
INSERT [dbo].[Jeux] ([id], [nom], [idEtat], [idConsole]) VALUES (6, N'Call of duty', 1, 1)
INSERT [dbo].[Jeux] ([id], [nom], [idEtat], [idConsole]) VALUES (7, N'Zelda', 3, 1)
INSERT [dbo].[Jeux] ([id], [nom], [idEtat], [idConsole]) VALUES (8, N'Fifa 2022', 1, 1)
INSERT [dbo].[Jeux] ([id], [nom], [idEtat], [idConsole]) VALUES (9, N'Fifa 2022', 2, 1)
INSERT [dbo].[Jeux] ([id], [nom], [idEtat], [idConsole]) VALUES (10, N'Fifa 2022', 3, 1)
SET IDENTITY_INSERT [dbo].[Jeux] OFF
GO
SET IDENTITY_INSERT [dbo].[Marque] ON 

INSERT [dbo].[Marque] ([id], [libelle]) VALUES (1, N'Nintendo')
INSERT [dbo].[Marque] ([id], [libelle]) VALUES (2, N'Microsoft')
INSERT [dbo].[Marque] ([id], [libelle]) VALUES (3, N'Sony')
SET IDENTITY_INSERT [dbo].[Marque] OFF
GO
SET IDENTITY_INSERT [dbo].[utilisateur] ON 

INSERT [dbo].[utilisateur] ([id], [identifiantConnexion], [passConnexion], [Droit]) VALUES (1, N'Jean', N'admin123', N'admin')
INSERT [dbo].[utilisateur] ([id], [identifiantConnexion], [passConnexion], [Droit]) VALUES (2, N'Jacques', N'user123', N'user')
SET IDENTITY_INSERT [dbo].[utilisateur] OFF
GO
ALTER TABLE [dbo].[Console]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([idMarque])
REFERENCES [dbo].[Marque] ([id])
GO
ALTER TABLE [dbo].[Console] CHECK CONSTRAINT [FK1]
GO
ALTER TABLE [dbo].[Jeux]  WITH CHECK ADD  CONSTRAINT [FK2] FOREIGN KEY([idEtat])
REFERENCES [dbo].[Etat] ([id])
GO
ALTER TABLE [dbo].[Jeux] CHECK CONSTRAINT [FK2]
GO
ALTER TABLE [dbo].[Jeux]  WITH CHECK ADD  CONSTRAINT [FK3] FOREIGN KEY([idConsole])
REFERENCES [dbo].[Console] ([id])
GO
ALTER TABLE [dbo].[Jeux] CHECK CONSTRAINT [FK3]
GO
USE [master]
GO
ALTER DATABASE [Micromanio] SET  READ_WRITE 
GO
