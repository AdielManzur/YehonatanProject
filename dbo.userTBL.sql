CREATE TABLE [dbo].[userTBL] (
    [Id]        INT           NOT NULL IDENTITY,
    [FirstName] NVARCHAR (50) NOT NULL,
    [LastName]  NVARCHAR(50)    NOT NULL,
    [Email]     NVARCHAR(50)    NOT NULL,
    [Password]  NVARCHAR(50)    NOT NULL,
    [username] NVARCHAR(50) NOT NULL, 
    [regDate] DATETIME NOT NULL, 
    [isLogined] BIT NOT NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

