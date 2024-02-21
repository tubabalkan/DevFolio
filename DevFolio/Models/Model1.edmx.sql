
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/15/2024 23:46:54
-- Generated from EDMX file: D:\Egitim_hazirlik\DevFolio\DevFolio\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DbDevFolio];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_TblProject_TblCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TblProject] DROP CONSTRAINT [FK_TblProject_TblCategory];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[TblAbout]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblAbout];
GO
IF OBJECT_ID(N'[dbo].[TblAdmin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblAdmin];
GO
IF OBJECT_ID(N'[dbo].[TblAdress]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblAdress];
GO
IF OBJECT_ID(N'[dbo].[TblCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblCategory];
GO
IF OBJECT_ID(N'[dbo].[TblContact]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblContact];
GO
IF OBJECT_ID(N'[dbo].[TblFeature]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblFeature];
GO
IF OBJECT_ID(N'[dbo].[TblProfile]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblProfile];
GO
IF OBJECT_ID(N'[dbo].[TblProject]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblProject];
GO
IF OBJECT_ID(N'[dbo].[TblSkill]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblSkill];
GO
IF OBJECT_ID(N'[dbo].[TblSocialMedia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblSocialMedia];
GO
IF OBJECT_ID(N'[dbo].[TblTestimonial]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TblTestimonial];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'TblAbout'
CREATE TABLE [dbo].[TblAbout] (
    [AboutId] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(1000)  NULL
);
GO

-- Creating table 'TblAdmin'
CREATE TABLE [dbo].[TblAdmin] (
    [AdminId] int IDENTITY(1,1) NOT NULL,
    [UserName] varchar(30)  NULL,
    [Password] varchar(20)  NULL
);
GO

-- Creating table 'TblAdress'
CREATE TABLE [dbo].[TblAdress] (
    [AdresID] int IDENTITY(1,1) NOT NULL,
    [Descrşption] varchar(250)  NULL,
    [Location] varchar(50)  NULL,
    [PhoneNumber] varchar(20)  NULL,
    [Email] varchar(50)  NULL
);
GO

-- Creating table 'TblCategory'
CREATE TABLE [dbo].[TblCategory] (
    [CategoryId] int IDENTITY(1,1) NOT NULL,
    [CategoryName] varchar(50)  NULL
);
GO

-- Creating table 'TblContact'
CREATE TABLE [dbo].[TblContact] (
    [ContactID] int IDENTITY(1,1) NOT NULL,
    [NameSurname] varchar(50)  NULL,
    [Email] varchar(50)  NULL,
    [Subject] varchar(50)  NULL,
    [Message] varchar(max)  NULL,
    [SendMessageDate] datetime  NULL,
    [IsRead] bit  NULL
);
GO

-- Creating table 'TblFeature'
CREATE TABLE [dbo].[TblFeature] (
    [FeatureID] int IDENTITY(1,1) NOT NULL,
    [HeaderTitle] varchar(50)  NULL,
    [HeaderDescription] varchar(250)  NULL
);
GO

-- Creating table 'TblProfile'
CREATE TABLE [dbo].[TblProfile] (
    [ProfileId] int IDENTITY(1,1) NOT NULL,
    [NameSurname] varchar(50)  NULL,
    [Title] varchar(50)  NULL,
    [Email] varchar(50)  NULL,
    [Phone] varchar(20)  NULL
);
GO

-- Creating table 'TblProject'
CREATE TABLE [dbo].[TblProject] (
    [ProjectId] int IDENTITY(1,1) NOT NULL,
    [Title] varchar(100)  NULL,
    [CoverImageUrl] varchar(250)  NULL,
    [CreatedDate] datetime  NULL,
    [ProjectCategory] int  NULL
);
GO

-- Creating table 'TblSkill'
CREATE TABLE [dbo].[TblSkill] (
    [SkillId] int IDENTITY(1,1) NOT NULL,
    [SkillTitle] varchar(20)  NULL,
    [SkillValue] tinyint  NULL
);
GO

-- Creating table 'TblSocialMedia'
CREATE TABLE [dbo].[TblSocialMedia] (
    [SocialMediID] int IDENTITY(1,1) NOT NULL,
    [PlatformName] varchar(50)  NULL,
    [IconUrl] varchar(10)  NULL,
    [RedirectUrl] varchar(100)  NULL,
    [status] bit  NULL
);
GO

-- Creating table 'TblTestimonial'
CREATE TABLE [dbo].[TblTestimonial] (
    [TestMonialID] int IDENTITY(1,1) NOT NULL,
    [NameSurname] varchar(50)  NULL,
    [Description] varchar(200)  NULL,
    [ImageUrl] varchar(250)  NULL,
    [Status] bit  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [AboutId] in table 'TblAbout'
ALTER TABLE [dbo].[TblAbout]
ADD CONSTRAINT [PK_TblAbout]
    PRIMARY KEY CLUSTERED ([AboutId] ASC);
GO

-- Creating primary key on [AdminId] in table 'TblAdmin'
ALTER TABLE [dbo].[TblAdmin]
ADD CONSTRAINT [PK_TblAdmin]
    PRIMARY KEY CLUSTERED ([AdminId] ASC);
GO

-- Creating primary key on [AdresID] in table 'TblAdress'
ALTER TABLE [dbo].[TblAdress]
ADD CONSTRAINT [PK_TblAdress]
    PRIMARY KEY CLUSTERED ([AdresID] ASC);
GO

-- Creating primary key on [CategoryId] in table 'TblCategory'
ALTER TABLE [dbo].[TblCategory]
ADD CONSTRAINT [PK_TblCategory]
    PRIMARY KEY CLUSTERED ([CategoryId] ASC);
GO

-- Creating primary key on [ContactID] in table 'TblContact'
ALTER TABLE [dbo].[TblContact]
ADD CONSTRAINT [PK_TblContact]
    PRIMARY KEY CLUSTERED ([ContactID] ASC);
GO

-- Creating primary key on [FeatureID] in table 'TblFeature'
ALTER TABLE [dbo].[TblFeature]
ADD CONSTRAINT [PK_TblFeature]
    PRIMARY KEY CLUSTERED ([FeatureID] ASC);
GO

-- Creating primary key on [ProfileId] in table 'TblProfile'
ALTER TABLE [dbo].[TblProfile]
ADD CONSTRAINT [PK_TblProfile]
    PRIMARY KEY CLUSTERED ([ProfileId] ASC);
GO

-- Creating primary key on [ProjectId] in table 'TblProject'
ALTER TABLE [dbo].[TblProject]
ADD CONSTRAINT [PK_TblProject]
    PRIMARY KEY CLUSTERED ([ProjectId] ASC);
GO

-- Creating primary key on [SkillId] in table 'TblSkill'
ALTER TABLE [dbo].[TblSkill]
ADD CONSTRAINT [PK_TblSkill]
    PRIMARY KEY CLUSTERED ([SkillId] ASC);
GO

-- Creating primary key on [SocialMediID] in table 'TblSocialMedia'
ALTER TABLE [dbo].[TblSocialMedia]
ADD CONSTRAINT [PK_TblSocialMedia]
    PRIMARY KEY CLUSTERED ([SocialMediID] ASC);
GO

-- Creating primary key on [TestMonialID] in table 'TblTestimonial'
ALTER TABLE [dbo].[TblTestimonial]
ADD CONSTRAINT [PK_TblTestimonial]
    PRIMARY KEY CLUSTERED ([TestMonialID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ProjectCategory] in table 'TblProject'
ALTER TABLE [dbo].[TblProject]
ADD CONSTRAINT [FK_TblProject_TblCategory]
    FOREIGN KEY ([ProjectCategory])
    REFERENCES [dbo].[TblCategory]
        ([CategoryId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblProject_TblCategory'
CREATE INDEX [IX_FK_TblProject_TblCategory]
ON [dbo].[TblProject]
    ([ProjectCategory]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------