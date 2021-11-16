USE [Micromanio]
GO
/****** Object:  Table [dbo].[Console]    Script Date: 16/11/2021 10:03:30 ******/
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
ALTER TABLE [dbo].[Console]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([idMarque])
REFERENCES [dbo].[Marque] ([id])
GO
ALTER TABLE [dbo].[Console] CHECK CONSTRAINT [FK1]
GO
