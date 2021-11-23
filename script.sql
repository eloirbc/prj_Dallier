USE [master]
GO
/****** Object:  Database [Micromanio]    Script Date: 23/11/2021 11:07:49 ******/
CREATE DATABASE [Micromanio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Micromanio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Micromanio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Micromanio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Micromanio_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
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
/****** Object:  Table [dbo].[Console]    Script Date: 23/11/2021 11:07:49 ******/
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
/****** Object:  Table [dbo].[Etat]    Script Date: 23/11/2021 11:07:49 ******/
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
/****** Object:  Table [dbo].[Jeux]    Script Date: 23/11/2021 11:07:49 ******/
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
/****** Object:  Table [dbo].[Marque]    Script Date: 23/11/2021 11:07:49 ******/
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
/****** Object:  Table [dbo].[utilisateur]    Script Date: 23/11/2021 11:07:49 ******/
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
INSERT [dbo].[Console] ([id], [nom], [idMarque]) VALUES (5, N'PS4', 1)
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
INSERT [dbo].[Jeux] ([id], [nom], [idEtat], [idConsole]) VALUES (11, N'Fifa 2022', 1, 3)
INSERT [dbo].[Jeux] ([id], [nom], [idEtat], [idConsole]) VALUES (13, N'Fifa 2022', 2, 1)
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
/****** Object:  StoredProcedure [dbo].[prc_ajout_console]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prc_ajout_console]
	-- Add the parameters for the stored procedure here
	@libConsole nvarchar(50),
	@idMarque int
AS
BEGIN
	SET NOCOUNT ON;
	
    -- Insertion du client
	INSERT INTO Console VALUES (@libConsole, @idMarque)
END
GO
/****** Object:  StoredProcedure [dbo].[prc_ajout_etat]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prc_ajout_etat]
	-- Add the parameters for the stored procedure here
	@libEtat nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
    -- Insertion du client
	INSERT INTO Etat VALUES (@libEtat)
END
GO
/****** Object:  StoredProcedure [dbo].[prc_ajout_jeux]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prc_ajout_jeux]
	-- Add the parameters for the stored procedure here
	@nomJeux nvarchar(max),
	@idConsole int,
	@idMarque int
AS
BEGIN
	SET NOCOUNT ON;
	
    -- Insertion du client
	INSERT INTO Jeux VALUES (@nomJeux, @idConsole, @idMarque)
END
GO
/****** Object:  StoredProcedure [dbo].[prc_ajout_marque]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prc_ajout_marque]
	-- Add the parameters for the stored procedure here
	@libMarque nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
    -- Insertion du client
	INSERT INTO Marque VALUES (@libMarque)
END
GO
/****** Object:  StoredProcedure [dbo].[prc_supp_Console]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prc_supp_Console]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	
    -- Insertion du client
	delete from Console where id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[prc_supp_Etat]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prc_supp_Etat]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	
    -- Insertion du client
	delete from Etat where id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[prc_supp_Jeux]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prc_supp_Jeux]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	
    -- Insertion du client
	delete from Jeux where id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[prc_supp_marque]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prc_supp_marque]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	
    -- Insertion du client
	delete from Marque where id = @id
END

GO
/****** Object:  Trigger [dbo].[trg_ajout_console]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trg_ajout_console]
   ON  [dbo].[Console] 
   instead of insert
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @libConsole nvarchar(50)
	declare @idMarque int
	declare @nbConsole int

	select @libConsole = nom,@idMarque = idMarque  from inserted

	select @nbConsole = COUNT(*) from Console where nom = @libConsole

	if (@nbConsole >0)
	Begin
		raiserror('Une console du même nom existe déjà',12,1)
		return
	end

	insert into Console
	values(@libConsole, @idMarque)

    -- Insert statements for trigger here

END
GO
ALTER TABLE [dbo].[Console] ENABLE TRIGGER [trg_ajout_console]
GO
/****** Object:  Trigger [dbo].[trg_supp_console]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create TRIGGER [dbo].[trg_supp_console]
   ON  [dbo].[Console]
   instead of delete
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @idConsole int
	declare @nbJeux int 

	select @idConsole = id from deleted

	select @nbJeux = COUNT(*) from Jeux where idConsole = @idConsole


	if (@nbJeux >0) 
	begin
		raiserror('Il existe encore des jeux pour cette console',12,1)
		return
	end


	delete from Console where id = @idConsole
    -- Insert statements for trigger here

END
GO
ALTER TABLE [dbo].[Console] ENABLE TRIGGER [trg_supp_console]
GO
/****** Object:  Trigger [dbo].[trg_ajout_Etat]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trg_ajout_Etat]
   ON  [dbo].[Etat]
   instead of insert
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @nomEtat nvarchar(max)
	declare @nbEtat int

	select @nomEtat = libelle from inserted

	select @nbEtat = COUNT(*) from Etat where libelle = @nomEtat

	if (@nbEtat >0)
	begin
	raiserror('Cet état existe déjà',12,1)
	return
	end

	insert into Etat
	values(@nomEtat)



    -- Insert statements for trigger here

END
GO
ALTER TABLE [dbo].[Etat] ENABLE TRIGGER [trg_ajout_Etat]
GO
/****** Object:  Trigger [dbo].[trg_supp_Etat]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trg_supp_Etat]
   ON  [dbo].[Etat]
   instead of delete
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	declare @idEtat as int
	declare @libEtat as nvarchar(max)
	declare @nbJeuxEtat as int


	select @idEtat = id, @libEtat = libelle from deleted

	select @nbJeuxEtat = COUNT(*) from Jeux where idEtat = @idEtat

	if (@nbJeuxEtat >0)
	Begin
		raiserror('Il reste des Jeux actifs pour cet état',12,1)
		return
	end

	delete from Etat where id = @idEtat

    -- Insert statements for trigger here

END
GO
ALTER TABLE [dbo].[Etat] ENABLE TRIGGER [trg_supp_Etat]
GO
/****** Object:  Trigger [dbo].[trg_ajout_jeux]    Script Date: 23/11/2021 11:07:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trg_ajout_jeux]
   ON  [dbo].[Jeux]
   instead of insert
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	
	declare @nomJeux nvarchar(max)
	declare @idConsole int
	declare @idEtat int
	declare @nbJeux int

	select  @nomJeux = nom,@idConsole = idConsole, @idEtat = idEtat from inserted

	select @nbJeux = COUNT(*) from Jeux where nom = @nomJeux and idConsole = @idConsole

	if (@nbJeux >0) 
		begin
		raiserror('Ce jeu pour cette console existe déjà',12,1)
		return
	end


    -- Insert statements for trigger here

	insert into Jeux
	values(@nomJeux,@idConsole,@idEtat)

END
GO
ALTER TABLE [dbo].[Jeux] ENABLE TRIGGER [trg_ajout_jeux]
GO
/****** Object:  Trigger [dbo].[trg_ajout_marque]    Script Date: 23/11/2021 11:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trg_ajout_marque]
   ON  [dbo].[Marque]
   instead of insert
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	declare @nomMarque nvarchar(max)
	declare @nbMarque int


	select @nomMarque = libelle from inserted

	select @nbMarque = COUNT(*) from Marque where libelle = @nomMarque


	if (@nbMarque >0)
	Begin
		raiserror('Une marque du même nom existe déjà',12,1)
		return
	end

	insert into Marque
	values(@nomMarque)

    -- Insert statements for trigger here

END
GO
ALTER TABLE [dbo].[Marque] ENABLE TRIGGER [trg_ajout_marque]
GO
/****** Object:  Trigger [dbo].[trg_supp_marque]    Script Date: 23/11/2021 11:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trg_supp_marque]
   ON  [dbo].[Marque]
   instead of delete
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @idMarque int
	declare @nbConsole int 

	select @idMarque = id from deleted

	select @nbConsole = COUNT(*) from Console where idMarque = @idMarque


	if (@nbConsole >0) 
	begin
		raiserror('Il existe encore une console de cette marque',12,1)
		return
	end


	delete from Marque where id = @idMarque
    -- Insert statements for trigger here

END
GO
ALTER TABLE [dbo].[Marque] ENABLE TRIGGER [trg_supp_marque]
GO
USE [master]
GO
ALTER DATABASE [Micromanio] SET  READ_WRITE 
GO
