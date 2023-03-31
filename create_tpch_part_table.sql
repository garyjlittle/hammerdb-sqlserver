USE [tpch_1000]
GO

/****** Object:  Table [dbo].[part]    Script Date: 3/17/2023 10:24:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[part](
	[p_partkey] [bigint] NOT NULL,
	[p_type] [varchar](25) NULL,
	[p_size] [int] NULL,
	[p_brand] [char](10) NULL,
	[p_name] [varchar](55) NULL,
	[p_container] [char](10) NULL,
	[p_mfgr] [char](25) NULL,
	[p_retailprice] [money] NULL,
	[p_comment] [varchar](23) NULL
) ON [PRIMARY]
GO


