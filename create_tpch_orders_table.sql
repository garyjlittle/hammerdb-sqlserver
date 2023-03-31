USE [tpch_1000]
GO

/****** Object:  Table [dbo].[orders]    Script Date: 3/17/2023 10:23:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[orders](
	[o_orderdate] [date] NULL,
	[o_orderkey] [bigint] NOT NULL,
	[o_custkey] [bigint] NOT NULL,
	[o_orderpriority] [char](15) NULL,
	[o_shippriority] [int] NULL,
	[o_clerk] [char](15) NULL,
	[o_orderstatus] [char](1) NULL,
	[o_totalprice] [money] NULL,
	[o_comment] [varchar](79) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[orders]  WITH NOCHECK ADD  CONSTRAINT [order_customer_fk] FOREIGN KEY([o_custkey])
REFERENCES [dbo].[customer] ([c_custkey])
GO

ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [order_customer_fk]
GO


