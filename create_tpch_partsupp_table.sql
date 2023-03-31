USE [tpch_clustered_100]
GO

/****** Object:  Table [dbo].[partsupp]    Script Date: 3/17/2023 10:25:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[partsupp](
	[ps_partkey] [bigint] NOT NULL,
	[ps_suppkey] [int] NOT NULL,
	[ps_supplycost] [money] NOT NULL,
	[ps_availqty] [int] NULL,
	[ps_comment] [varchar](199) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[partsupp]  WITH NOCHECK ADD  CONSTRAINT [partsupp_part_fk] FOREIGN KEY([ps_partkey])
REFERENCES [dbo].[part] ([p_partkey])
GO

ALTER TABLE [dbo].[partsupp] CHECK CONSTRAINT [partsupp_part_fk]
GO

ALTER TABLE [dbo].[partsupp]  WITH NOCHECK ADD  CONSTRAINT [partsupp_supplier_fk] FOREIGN KEY([ps_suppkey])
REFERENCES [dbo].[supplier] ([s_suppkey])
GO

ALTER TABLE [dbo].[partsupp] CHECK CONSTRAINT [partsupp_supplier_fk]
GO


