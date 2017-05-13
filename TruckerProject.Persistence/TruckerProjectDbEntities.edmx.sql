
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/13/2017 13:36:05
-- Generated from EDMX file: C:\Users\jarno\Desktop\Web Solutions\TruckerProject\TruckerProject\TruckerProject.Persistence\TruckerProjectDbEntities.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TruckerProjectDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Licenses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Licenses];
GO
IF OBJECT_ID(N'[dbo].[Truckers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Truckers];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Licenses'
CREATE TABLE [dbo].[Licenses] (
    [LicenseType] varchar(1)  NOT NULL
);
GO

-- Creating table 'Truckers'
CREATE TABLE [dbo].[Truckers] (
    [TruckerID] int  NOT NULL,
    [FirstName] varchar(50)  NOT NULL,
    [LastName] varchar(50)  NOT NULL,
    [Address] varchar(50)  NOT NULL,
    [City] varchar(50)  NOT NULL,
    [State] varchar(50)  NOT NULL,
    [Zip] varchar(50)  NOT NULL,
    [LicenseNumber] varchar(50)  NOT NULL,
    [ExpirationDate] datetime  NOT NULL
);
GO

-- Creating table 'LicenseTrucker'
CREATE TABLE [dbo].[LicenseTrucker] (
    [Licenses_LicenseType] varchar(1)  NOT NULL,
    [Truckers_TruckerID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [LicenseType] in table 'Licenses'
ALTER TABLE [dbo].[Licenses]
ADD CONSTRAINT [PK_Licenses]
    PRIMARY KEY CLUSTERED ([LicenseType] ASC);
GO

-- Creating primary key on [TruckerID] in table 'Truckers'
ALTER TABLE [dbo].[Truckers]
ADD CONSTRAINT [PK_Truckers]
    PRIMARY KEY CLUSTERED ([TruckerID] ASC);
GO

-- Creating primary key on [Licenses_LicenseType], [Truckers_TruckerID] in table 'LicenseTrucker'
ALTER TABLE [dbo].[LicenseTrucker]
ADD CONSTRAINT [PK_LicenseTrucker]
    PRIMARY KEY CLUSTERED ([Licenses_LicenseType], [Truckers_TruckerID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Licenses_LicenseType] in table 'LicenseTrucker'
ALTER TABLE [dbo].[LicenseTrucker]
ADD CONSTRAINT [FK_LicenseTrucker_License]
    FOREIGN KEY ([Licenses_LicenseType])
    REFERENCES [dbo].[Licenses]
        ([LicenseType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Truckers_TruckerID] in table 'LicenseTrucker'
ALTER TABLE [dbo].[LicenseTrucker]
ADD CONSTRAINT [FK_LicenseTrucker_Trucker]
    FOREIGN KEY ([Truckers_TruckerID])
    REFERENCES [dbo].[Truckers]
        ([TruckerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LicenseTrucker_Trucker'
CREATE INDEX [IX_FK_LicenseTrucker_Trucker]
ON [dbo].[LicenseTrucker]
    ([Truckers_TruckerID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------