CREATE PROCEDURE [AppUser].[CSP_Login]
	@Email NVARCHAR(384),
	@Passwd NVARCHAR(20)
AS
BEGIN	
	SELECT Id, Email FROM Utilisateur WHERE Email = @Email AND Passwd = dbo.CSF_HashPasswd(@Passwd);
END