USE [tpch_1000]
GO

/****** Object:  Table [dbo].[nation]    Script Date: 3/17/2023 10:23:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nation](
	[n_nationkey] [int] NOT NULL,
	[n_name] [char](25) NULL,
	[n_regionkey] [int] NULL,
	[n_comment] [varchar](152) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[nation]  WITH NOCHECK ADD  CONSTRAINT [nation_region_fk] FOREIGN KEY([n_regionkey])
REFERENCES [dbo].[region] ([r_regionkey])
GO

ALTER TABLE [dbo].[nation] CHECK CONSTRAINT [nation_region_fk]
GO


