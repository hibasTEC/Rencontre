CREATE TABLE [dbo].[MembresSite] (
    [idMembres]   INT           IDENTITY (1, 1) NOT NULL,
    [Nom]         VARCHAR (50)  NOT NULL,
    [Prenom]      VARCHAR (50)  NOT NULL,
    [Genre]       VARCHAR (50)  NOT NULL,
    [Jour]        SMALLINT      NOT NULL,
    [Mois]        SMALLINT      NOT NULL,
    [Annee]       INT           NOT NULL,
    [AdressEmail] NCHAR (75)    NOT NULL,
    [Mot2passe]   NVARCHAR (20) NOT NULL,
    [Pseudo]      VARCHAR (50)  NOT NULL,
    [CodePostal]  VARCHAR (50)  NOT NULL,
    [Taille]      FLOAT (53)    NOT NULL,
    [Poids]       FLOAT (53)    NOT NULL,
    [Origine]     VARCHAR (50)  NOT NULL,
    [Religion]    VARCHAR (50)  NOT NULL,
    [Type2Corps]  VARCHAR (50)  NOT NULL
);


