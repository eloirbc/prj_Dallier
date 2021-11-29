USE Micromanio
GO
/****** Object:  StoredProcedure [dbo].[ClientAddOrEdit]    Script Date: 29/11/2021 14:12:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE prj_AjouterConsole
	@mode nvarchar(10),
	@id int,
	@nom nchar(50),
	@idMarque int
AS
	if @mode='Add'
	BEGIN
	INSERT INTO Console
	(id,nom,idMarque)
VALUES
(
@id,
@nom,
@idMarque
)


END