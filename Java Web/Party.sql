USE [Party]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 1/4/2023 10:17:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[id] [int] NULL,
	[address] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 1/4/2023 10:17:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] NULL,
	[username] [nvarchar](150) NULL,
	[password] [nvarchar](150) NULL,
	[name] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 1/4/2023 10:17:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[age] [int] NULL,
	[address] [int] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Party] SET  READ_WRITE 
GO
