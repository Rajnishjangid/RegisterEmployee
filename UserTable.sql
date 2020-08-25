USE [Practice20082020]
GO

/****** Object:  Table [dbo].[UserMaster]    Script Date: 25-08-2020 11:50:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](128) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Email] [varchar](255) NULL,
	[Birthdate] [date] NULL,
	[DeptId] [int] NULL,
	[Address] [nvarchar](2048) NULL,
	[CityId] [int] NULL,
	[StateId] [int] NULL,
	[Gender] [varchar](50) NULL,
	[Sallary] [bigint] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[UserMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserMaster_CityMaster] FOREIGN KEY([CityId])
REFERENCES [dbo].[CityMaster] ([Id])
GO

ALTER TABLE [dbo].[UserMaster] CHECK CONSTRAINT [FK_UserMaster_CityMaster]
GO

ALTER TABLE [dbo].[UserMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserMaster_DepartmentMaster] FOREIGN KEY([DeptId])
REFERENCES [dbo].[DepartmentMaster] ([Id])
GO

ALTER TABLE [dbo].[UserMaster] CHECK CONSTRAINT [FK_UserMaster_DepartmentMaster]
GO

ALTER TABLE [dbo].[UserMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserMaster_StateMaster] FOREIGN KEY([StateId])
REFERENCES [dbo].[StateMaster] ([Id])
GO

ALTER TABLE [dbo].[UserMaster] CHECK CONSTRAINT [FK_UserMaster_StateMaster]
GO


