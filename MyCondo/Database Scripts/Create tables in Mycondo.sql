USE [Mycondo]
GO
CREATE TABLE [dbo].[login]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Username] NVARCHAR(50) NOT NULL, 
    [Password] NVARCHAR(50) NOT NULL,
	[UserType] NVARCHAR(50) NOT NULL
)ON [PRIMARY]
