USE [tpch_clustered_100]
GO

/****** Object:  Table [dbo].[lineitem]    Script Date: 3/17/2023 10:23:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lineitem](
	[l_shipdate] [date] NULL,
	[l_orderkey] [bigint] NOT NULL,
	[l_discount] [money] NOT NULL,
	[l_extendedprice] [money] NOT NULL,
	[l_suppkey] [int] NOT NULL,
	[l_quantity] [bigint] NOT NULL,
	[l_returnflag] [char](1) NULL,
	[l_partkey] [bigint] NOT NULL,
	[l_linestatus] [char](1) NULL,
	[l_tax] [money] NOT NULL,
	[l_commitdate] [date] NULL,
	[l_receiptdate] [date] NULL,
	[l_shipmode] [char](10) NULL,
	[l_linenumber] [bigint] NOT NULL,
	[l_shipinstruct] [char](25) NULL,
	[l_comment] [varchar](44) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[lineitem]  WITH NOCHECK ADD  CONSTRAINT [lineitem_order_fk] FOREIGN KEY([l_orderkey])
REFERENCES [dbo].[orders] ([o_orderkey])
GO

ALTER TABLE [dbo].[lineitem] CHECK CONSTRAINT [lineitem_order_fk]
GO

ALTER TABLE [dbo].[lineitem]  WITH NOCHECK ADD  CONSTRAINT [lineitem_partkey_fk] FOREIGN KEY([l_partkey])
REFERENCES [dbo].[part] ([p_partkey])
GO

ALTER TABLE [dbo].[lineitem] CHECK CONSTRAINT [lineitem_partkey_fk]
GO

ALTER TABLE [dbo].[lineitem]  WITH NOCHECK ADD  CONSTRAINT [lineitem_partsupp_fk] FOREIGN KEY([l_partkey], [l_suppkey])
REFERENCES [dbo].[partsupp] ([ps_partkey], [ps_suppkey])
GO

ALTER TABLE [dbo].[lineitem] CHECK CONSTRAINT [lineitem_partsupp_fk]
GO

ALTER TABLE [dbo].[lineitem]  WITH NOCHECK ADD  CONSTRAINT [lineitem_suppkey_fk] FOREIGN KEY([l_suppkey])
REFERENCES [dbo].[supplier] ([s_suppkey])
GO

ALTER TABLE [dbo].[lineitem] CHECK CONSTRAINT [lineitem_suppkey_fk]
GO


