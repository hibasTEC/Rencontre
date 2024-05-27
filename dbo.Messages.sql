CREATE TABLE [dbo].[Messages]
(
	[idMessage] INT NOT NULL PRIMARY KEY, 
    [Nom] VARCHAR(50) NULL, 
    [Numero] NVARCHAR(50) NULL, 
    [Mot2passe] NCHAR(15) NULL, 
    [Statut] NVARCHAR(25) NULL
)
