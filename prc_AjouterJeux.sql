USE Micromanio
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE prj_AjouterJeux
	@mode nvarchar(10),
	@id int,
	@nom nchar(50),
	@idEtat int,
	@idConsole int
AS
	if @mode='Add'
	BEGIN
	INSERT INTO Jeux
	(id,
nom,
idEtat,
idConsole
)
VALUES
(
@id,
@nom,
@idEtat,
@idConsole
)

END