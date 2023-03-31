USE [tpch_1000]
GO

/****** Object:  Table [dbo].[customer]    Script Date: 3/17/2023 10:22:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[customer](
	[c_custkey] [bigint] NOT NULL,
	[c_mktsegment] [char](10) NULL,
	[c_nationkey] [int] NULL,
	[c_name] [varchar](25) NULL,
	[c_address] [varchar](40) NULL,
	[c_phone] [char](15) NULL,
	[c_acctbal] [money] NULL,
	[c_comment] [varchar](118) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[customer]  WITH NOCHECK ADD  CONSTRAINT [customer_nation_fk] FOREIGN KEY([c_nationkey])
REFERENCES [dbo].[nation] ([n_nationkey])
GO

ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [customer_nation_fk]
GO


