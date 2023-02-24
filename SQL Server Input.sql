CREATE DATABASE HiT_BOOK_STORE_DATABASE
GO

USE HiT_BOOK_STORE_DATABASE
GO

CREATE TABLE [tblRoles](
	[roleID] INT IDENTITY(1,1) PRIMARY KEY,
	[roleName] [nvarchar](50) 
)

CREATE TABLE [tblUsers](
	[userID] INT IDENTITY(1,1) PRIMARY KEY,
	[fullName] [nvarchar] (50),
	[dob] [DATE],
	[address] [nvarchar] (50),
	[phone] [nvarchar] (10),
	[email] [nvarchar] (50),
	[wallet] INT FOREIGN KEY REFERENCES [tblWallet](depositID),
	[password] [nvarchar](50),
	[status] [bit],
	[roleID] INT FOREIGN KEY REFERENCES [tblRoles](roleID)
)

CREATE TABLE [tblWallet](
	[walletID] INT IDENTITY(1,1) PRIMARY KEY,
	[walletBalance] FLOAT 
)