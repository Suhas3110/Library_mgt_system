USE [Library_mgt_system]
GO
/****** Object:  Table [dbo].[tbl_login]    Script Date: 3/18/2025 12:43:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_login](
	[login_id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[isApproved] [bit] NULL,
 CONSTRAINT [PK_tbl_login] PRIMARY KEY CLUSTERED 
(
	[login_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user_details]    Script Date: 3/18/2025 12:43:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user_details](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[loginID] [int] NULL,
	[userTypeID] [int] NULL,
	[Name] [varchar](50) NULL,
	[Contact] [bigint] NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_user_details] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_userType]    Script Date: 3/18/2025 12:43:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_userType](
	[userTypeID] [int] IDENTITY(1,1) NOT NULL,
	[userType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_userType] PRIMARY KEY CLUSTERED 
(
	[userTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_login] ON 

INSERT [dbo].[tbl_login] ([login_id], [userName], [password], [isApproved]) VALUES (1, N'admin', N'admin@123', 1)
SET IDENTITY_INSERT [dbo].[tbl_login] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_userType] ON 

INSERT [dbo].[tbl_userType] ([userTypeID], [userType]) VALUES (1, N'Librarian')
INSERT [dbo].[tbl_userType] ([userTypeID], [userType]) VALUES (2, N'Student')
SET IDENTITY_INSERT [dbo].[tbl_userType] OFF
GO
ALTER TABLE [dbo].[tbl_login] ADD  CONSTRAINT [DF_tbl_login_isApproved]  DEFAULT ((0)) FOR [isApproved]
GO
ALTER TABLE [dbo].[tbl_user_details]  WITH CHECK ADD  CONSTRAINT [FK_tbl_user_details_tbl_login] FOREIGN KEY([loginID])
REFERENCES [dbo].[tbl_login] ([login_id])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[tbl_user_details] CHECK CONSTRAINT [FK_tbl_user_details_tbl_login]
GO
ALTER TABLE [dbo].[tbl_user_details]  WITH CHECK ADD  CONSTRAINT [FK_tbl_user_details_tbl_userType] FOREIGN KEY([userTypeID])
REFERENCES [dbo].[tbl_userType] ([userTypeID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[tbl_user_details] CHECK CONSTRAINT [FK_tbl_user_details_tbl_userType]
GO
