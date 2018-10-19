USE [Mycondo]
GO
-- ************************************** [dbo].[EmergencyContacts]

CREATE TABLE [dbo].[EmergencyContacts]
(
 [ContactId]    INT NOT NULL ,
 [Name]         NVARCHAR(50) NOT NULL ,
 [Relationship] NVARCHAR(50) NOT NULL ,
 [Phone]        NVARCHAR(50) NULL ,
 [email]        NVARCHAR(50) NULL ,

 CONSTRAINT [PK_ContactId] PRIMARY KEY CLUSTERED ([ContactId] ASC)
);
GO
-- ************************************** [dbo].[Adress]

CREATE TABLE [dbo].[Adress]
(
 [AdressId]    INT NOT NULL ,
 [AdressLine1] NVARCHAR(50) NOT NULL ,
 [AdressLine2] NVARCHAR(50) NULL ,
 [City]        NVARCHAR(50) NOT NULL ,
 [Province]    NVARCHAR(50) NULL ,
 [PostalCode]  NVARCHAR(50) NULL ,
 [Country]     NVARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED ([AdressId] ASC)
);
GO
-- ************************************** [dbo].[AccountType]

CREATE TABLE [dbo].[AccountType]
(
 [AccountType] CHAR(5) NOT NULL ,
 [Name]        NVARCHAR(50) NOT NULL ,
 [Description] NVARCHAR(50) NULL ,

 CONSTRAINT [PK_AccountType] PRIMARY KEY CLUSTERED ([AccountType] ASC)
);
GO
-- ************************************** [dbo].[UserDetails]

CREATE TABLE [dbo].[UserDetails]
(
 [DetailsId]   INT NOT NULL ,
 [ContactId]   INT NOT NULL ,
 [ContactId_1] INT NOT NULL ,

 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED ([DetailsId] ASC),
 CONSTRAINT [FK_221] FOREIGN KEY ([ContactId])
  REFERENCES [dbo].[EmergencyContacts]([ContactId]),
 CONSTRAINT [FK_224] FOREIGN KEY ([ContactId_1])
  REFERENCES [dbo].[EmergencyContacts]([ContactId])
);
GO
-- ************************************** [dbo].[occupancy]

CREATE TABLE [dbo].[occupancy]
(
 [Occupancy]   CHAR(5) NOT NULL ,
 [Name]        NVARCHAR(50) NOT NULL ,
 [Description] NVARCHAR(50) NULL ,

 CONSTRAINT [PK_occupancy] PRIMARY KEY CLUSTERED ([Occupancy] ASC)
);
-- ************************************** [dbo].[Units]

CREATE TABLE [dbo].[Units] (
    [unitNumber]    INT      NOT NULL,
    [Occupancy]     CHAR (5) NOT NULL,
    [Occupancydate] DATE     NULL,
    [UnitAdressId]  INT      NOT NULL,
    [OwnerAdressId] INT      NULL,
    [OwnerUserId] INT NULL, 
    CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED ([unitNumber] ASC),
    CONSTRAINT [FK_171] FOREIGN KEY ([Occupancy]) REFERENCES [dbo].[occupancy] ([Occupancy]),
    CONSTRAINT [FK_189] FOREIGN KEY ([UnitAdressId]) REFERENCES [dbo].[Adress] ([AdressId]),
    CONSTRAINT [FK_192] FOREIGN KEY ([OwnerAdressId]) REFERENCES [dbo].[Adress] ([AdressId])
);
GO
-- ************************************** [dbo].[Users]
CREATE TABLE [dbo].[Users]
(
 [UserId]          INT NOT NULL ,
 [FirstName]       NVARCHAR(50) NOT NULL ,
 [LastName]        NVARCHAR(50) NOT NULL ,
 [Email]           NVARCHAR(50) NOT NULL ,
 [PhoneNumber]     NVARCHAR(50) NULL ,
 [OffSiteAdressId] INT NULL ,
 [unitNumber]      INT NULL ,
 [CreationDate]    DATETIME NOT NULL ,
 [DetailsId]       INT NULL ,

 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserId] ASC),
 CONSTRAINT [FK_195] FOREIGN KEY ([OffSiteAdressId])
  REFERENCES [dbo].[Adress]([AdressId]),
 CONSTRAINT [FK_212] FOREIGN KEY ([unitNumber])
  REFERENCES [dbo].[Units]([unitNumber]),
 CONSTRAINT [FK_227] FOREIGN KEY ([DetailsId])
  REFERENCES [dbo].[UserDetails]([DetailsId])
);
GO
-- ****************************************add constraint to units table
ALTER TABLE dbo.Units
ADD CONSTRAINT [FK_174] FOREIGN KEY ([OwnerUserId])
  REFERENCES [dbo].[Users]([UserId]);

-- ************************************** [dbo].[Login]

CREATE TABLE [dbo].[Login]
(
 [Username]    NVARCHAR(50) NOT NULL ,
 [Password]    NVARCHAR(50) NOT NULL ,
 [AccountType] CHAR(5) NOT NULL ,
 [UserId]      INT NOT NULL ,

 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED ([Username] ASC),
 CONSTRAINT [FK_145] FOREIGN KEY ([AccountType])
  REFERENCES [dbo].[AccountType]([AccountType]),
 CONSTRAINT [FK_157] FOREIGN KEY ([UserId])
  REFERENCES [dbo].[Users]([UserId])
);
GO



































