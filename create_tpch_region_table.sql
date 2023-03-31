USE [tpch_1000]
GO

/****** Object:  Table [dbo].[region]    Script Date: 3/17/2023 10:26:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[region](
	[r_regionkey] [int] NOT NULL,
	[r_name] [char](25) NULL,
	[r_comment] [varchar](152) NULL
) ON [PRIMARY]
GO


