/*
Modèle de script de post-déploiement							
--------------------------------------------------------------------------------------
 Ce fichier contient des instructions SQL qui seront ajoutées au script de compilation.		
 Utilisez la syntaxe SQLCMD pour inclure un fichier dans le script de post-déploiement.			
 Exemple :      :r .\monfichier.sql								
 Utilisez la syntaxe SQLCMD pour référencer une variable dans le script de post-déploiement.		
 Exemple :      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF NOT EXISTS (SELECT * FROM sys.sysusers where [name] = 'AppUser')
BEGIN
	CREATE USER [AppUser]
		FOR LOGIN AppUser
		WITH DEFAULT_SCHEMA = dbo

	GRANT CONNECT TO [AppUser];
	GRANT EXECUTE ON SCHEMA::AppUser TO [AppUser];
END