USE [tpch_1000]
GO

/****** Object:  Table [dbo].[supplier]    Script Date: 3/17/2023 10:26:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[supplier](
	[s_suppkey] [int] NOT NULL,
	[s_nationkey] [int] NULL,
	[s_comment] [varchar](102) NULL,
	[s_name] [char](25) NULL,
	[s_address] [varchar](40) NULL,
	[s_phone] [char](15) NULL,
	[s_acctbal] [money] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[supplier]  WITH NOCHECK ADD  CONSTRAINT [supplier_nation_fk] FOREIGN KEY([s_nationkey])
REFERENCES [dbo].[nation] ([n_nationkey])
GO

ALTER TABLE [dbo].[supplier] CHECK CONSTRAINT [supplier_nation_fk]
GO


