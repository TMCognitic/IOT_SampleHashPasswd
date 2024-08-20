CREATE TABLE [dbo].[Utilisateur]
(
	[Id] INT NOT NULL IDENTITY, 
    [Email] NVARCHAR(384) NOT NULL, 
    [Passwd] BINARY(64) NOT NULL, 
    -- Autres champs de l'utilisateur
    CONSTRAINT [PK_Utilisateur] PRIMARY KEY ([Id]), 
    CONSTRAINT [UK_Utilisateur_Email] UNIQUE ([Email]) 
)
