CREATE PROCEDURE [AppUser].[CSP_Register]
	@Email NVARCHAR(384),
	@Passwd NVARCHAR(20)
	-- Autre champs de la table utilisateur
AS
BEGIN
	INSERT INTO Utilisateur (Email, Passwd) VALUES (@Email, dbo.CSF_HashPasswd(@Passwd))	
END
