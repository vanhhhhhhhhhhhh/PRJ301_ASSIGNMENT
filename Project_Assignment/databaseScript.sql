USE [ASSIGNMENT_PRJ301]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
	[ID] [varchar](150) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[asseid] [int] NOT NULL,
	[name] [varchar](150) NOT NULL,
	[subid] [int] NOT NULL,
	[weight] [float] NOT NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[asseid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendence]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendence](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[leid] [int] NOT NULL,
	[sid] [varchar](150) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[isPresent] [bit] NOT NULL,
	[capturedtime] [datetime] NOT NULL,
 CONSTRAINT [PK_Attendence] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment](
	[sid] [varchar](150) NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Enrollment] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[examid] [varchar](150) NOT NULL,
	[asseid] [int] NOT NULL,
	[begin] [datetime] NOT NULL,
	[end] [datetime] NOT NULL,
	[rid] [int] NOT NULL,
	[proctorlecture] [int] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[examid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[fname] [varchar](150) NOT NULL,
	[url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[gradeid] [varchar](150) NOT NULL,
	[sid] [varchar](150) NOT NULL,
	[examid] [varchar](150) NOT NULL,
	[lid] [int] NOT NULL,
	[score] [float] NOT NULL,
	[comment] [varchar](max) NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[gradeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [int] NOT NULL,
	[lname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lession]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lession](
	[leid] [int] IDENTITY(1,1) NOT NULL,
	[gid] [int] NOT NULL,
	[tid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[isAttended] [bit] NOT NULL,
 CONSTRAINT [PK_Lession] PRIMARY KEY CLUSTERED 
(
	[leid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleid] [int] NOT NULL,
	[rolename] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Account]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[username] [varchar](150) NOT NULL,
	[roleid] [int] NOT NULL,
 CONSTRAINT [PK_Role_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[roleid] [int] NOT NULL,
	[fid] [int] NOT NULL,
 CONSTRAINT [PK_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC,
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [varchar](150) NOT NULL,
	[sname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentGroup]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentGroup](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
	[subid] [int] NOT NULL,
	[lid] [int] NOT NULL,
 CONSTRAINT [PK_StudentGroup] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subid] [int] NOT NULL,
	[suname] [varchar](150) NOT NULL,
	[credit] [int] NOT NULL,
	[fullname] [varchar](150) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 3/18/2024 9:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[tname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname], [ID]) VALUES (N'anhnvhe', N'123', N'Nguyen Viet Anh', NULL)
INSERT [dbo].[Account] ([username], [password], [displayname], [ID]) VALUES (N'Duypq', N'123', N'Pham Quoc Duy', N'HE172390')
INSERT [dbo].[Account] ([username], [password], [displayname], [ID]) VALUES (N'hiepbh', N'123', N'Bui Hoang Hiep', N'HE170388')
INSERT [dbo].[Account] ([username], [password], [displayname], [ID]) VALUES (N'khaothi', N'123', N'FPT Education', NULL)
INSERT [dbo].[Account] ([username], [password], [displayname], [ID]) VALUES (N'sonnt', N'123', N'Ngo Tung Son', NULL)
INSERT [dbo].[Account] ([username], [password], [displayname], [ID]) VALUES (N'ThienNV', N'123', N'Nguyen Van Thien', NULL)
INSERT [dbo].[Account] ([username], [password], [displayname], [ID]) VALUES (N'ThuyNTT', N'123', N'Nguyen Thi Thu Thuy', NULL)
GO
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (1, N'Active learning', 4, 0.1)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (2, N'Exercise ', 4, 0.1)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (3, N'Presentation', 4, 0.1)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (4, N'Project', 4, 0.3)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (5, N'Final Exam', 4, 0.4)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (6, N'Final Exam Resit', 4, 0.4)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (7, N'Participation', 3, 0.1)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (8, N'Progress test ', 3, 0.2)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (9, N'Mid-term test', 3, 0.3)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (10, N'Final Exam', 3, 0.4)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (11, N'Final Exam Resit', 3, 0.4)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (12, N'Computer Project', 2, 0.15)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (13, N'Assignment', 2, 0.2)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (14, N'Progress Test', 2, 0.3)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (15, N'Final Exam', 2, 0.35)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (16, N'Final Exam Resit', 2, 0.35)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (17, N'Progress test 1', 1, 0.05)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (18, N'Progress test 2', 1, 0.05)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (19, N'Workshop 1', 1, 0.05)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (20, N'Workshop 2', 1, 0.05)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (21, N'Practical Exam', 1, 0.2)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (22, N'Assignment', 1, 0.4)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (23, N'Final Exam', 1, 0.2)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (24, N'Final Exam Resit	', 1, 0.2)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (25, N'Theory exam', 5, 0.5)
INSERT [dbo].[Assessment] ([asseid], [name], [subid], [weight]) VALUES (26, N'Pratice exam', 5, 0.5)
GO
SET IDENTITY_INSERT [dbo].[Attendence] ON 

INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (17, 16, N'HE150931', N'', 1, CAST(N'2024-03-08T20:43:19.547' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (18, 16, N'HE161779', N'', 1, CAST(N'2024-03-08T20:43:19.550' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (19, 16, N'HE170388', N'ddddd', 1, CAST(N'2024-03-08T20:43:19.550' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (20, 16, N'HE170406', N'', 1, CAST(N'2024-03-08T20:43:19.553' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (21, 16, N'HE171093', N'', 1, CAST(N'2024-03-08T20:43:19.553' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (22, 16, N'HE171227', N'', 0, CAST(N'2024-03-08T20:43:19.557' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (23, 16, N'HE171749', N'', 0, CAST(N'2024-03-08T20:43:19.557' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (24, 16, N'HE171958', N'', 0, CAST(N'2024-03-08T20:43:19.557' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (25, 16, N'HE172200', N'', 0, CAST(N'2024-03-08T20:43:19.560' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (26, 16, N'HE172209', N'', 0, CAST(N'2024-03-08T20:43:19.560' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (27, 11, N'HE150931', N'sssd', 1, CAST(N'2024-03-10T13:38:24.093' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (28, 11, N'HE161779', N'ddddddd', 1, CAST(N'2024-03-10T13:38:24.100' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (29, 11, N'HE170388', N'dddddd', 1, CAST(N'2024-03-10T13:38:24.100' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (30, 11, N'HE170406', N'ccccccc', 1, CAST(N'2024-03-10T13:38:24.100' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (31, 11, N'HE171093', N'vvvvvvvv', 1, CAST(N'2024-03-10T13:38:24.100' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (32, 11, N'HE171227', N'vvvvvvv', 1, CAST(N'2024-03-10T13:38:24.103' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (33, 11, N'HE171749', N'vvvvvv', 1, CAST(N'2024-03-10T13:38:24.103' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (34, 11, N'HE171958', N'vvvvvv', 1, CAST(N'2024-03-10T13:38:24.103' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (35, 11, N'HE172200', N'vvv', 1, CAST(N'2024-03-10T13:38:24.107' AS DateTime))
INSERT [dbo].[Attendence] ([aid], [leid], [sid], [description], [isPresent], [capturedtime]) VALUES (36, 11, N'HE172209', N'', 1, CAST(N'2024-03-10T13:38:24.107' AS DateTime))
SET IDENTITY_INSERT [dbo].[Attendence] OFF
GO
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE150931', 1)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE150931', 3)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE150931', 7)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE150931', 10)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE161779', 1)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE161779', 3)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE161779', 7)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE161779', 10)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE170388', 1)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE170388', 2)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE170388', 3)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE170388', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE170388', 7)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE170388', 9)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE170388', 10)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE170406', 1)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE170406', 3)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE170406', 7)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE170406', 10)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171093', 1)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171093', 3)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171093', 7)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171093', 10)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171227', 1)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171227', 3)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171227', 7)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171227', 10)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171749', 1)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171749', 3)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171749', 7)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171749', 10)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171958', 1)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171958', 3)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171958', 7)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE171958', 10)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172200', 1)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172200', 3)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172200', 7)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172200', 10)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172209', 1)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172209', 3)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172209', 7)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172209', 10)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172295', 2)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172295', 5)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172295', 8)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172295', 11)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172390', 1)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172390', 2)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172390', 3)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172390', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172390', 5)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172390', 8)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172390', 9)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172390', 10)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE172390', 11)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173190', 2)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173190', 5)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173190', 8)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173190', 11)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173199', 2)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173199', 5)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173199', 8)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173199', 11)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173227', 2)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173227', 5)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173227', 8)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173227', 11)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173337', 2)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173337', 5)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173337', 8)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173337', 11)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173518', 2)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173518', 5)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173518', 8)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173518', 11)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173590', 2)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173590', 5)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173590', 8)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE173590', 11)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176299', 2)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176299', 5)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176299', 8)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176299', 11)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176368', 2)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176368', 5)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176368', 8)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176368', 11)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176394', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176394', 6)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176394', 9)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176404', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176404', 6)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176404', 9)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176405', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176405', 6)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176405', 9)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176419', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176419', 6)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176419', 9)
GO
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176709', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176709', 6)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176709', 9)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176809', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176809', 6)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE176809', 9)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE181166', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE181166', 6)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE181166', 9)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE181266', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE181266', 6)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE181266', 9)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE186864', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE186864', 6)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE186864', 9)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE187107', 4)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE187107', 6)
INSERT [dbo].[Enrollment] ([sid], [gid]) VALUES (N'HE187107', 9)
GO
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam1', 1, CAST(N'2024-02-21T10:00:00.000' AS DateTime), CAST(N'2024-02-21T12:20:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam10', 10, CAST(N'2024-03-29T14:30:00.000' AS DateTime), CAST(N'2024-03-29T16:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam11', 11, CAST(N'2024-04-03T10:50:00.000' AS DateTime), CAST(N'2024-04-03T12:20:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam12', 12, CAST(N'2024-02-22T07:30:00.000' AS DateTime), CAST(N'2024-02-22T09:50:00.000' AS DateTime), 3, 3)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam13', 13, CAST(N'2024-03-05T10:00:00.000' AS DateTime), CAST(N'2024-03-05T12:20:00.000' AS DateTime), 3, 3)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam14', 14, CAST(N'2024-03-15T10:00:00.000' AS DateTime), CAST(N'2024-03-15T12:20:00.000' AS DateTime), 3, 3)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam15', 15, CAST(N'2024-03-27T07:30:00.000' AS DateTime), CAST(N'2024-03-07T09:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam16', 16, CAST(N'2024-04-03T07:30:00.000' AS DateTime), CAST(N'2024-04-03T09:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam17', 17, CAST(N'2024-02-23T10:00:00.000' AS DateTime), CAST(N'2024-02-23T12:20:00.000' AS DateTime), 4, 4)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam18', 18, CAST(N'2024-02-28T07:30:00.000' AS DateTime), CAST(N'2024-02-28T09:50:00.000' AS DateTime), 4, 4)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam19', 19, CAST(N'2024-03-01T10:00:00.000' AS DateTime), CAST(N'2024-03-01T12:20:00.000' AS DateTime), 4, 4)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam2', 2, CAST(N'2024-02-28T10:00:00.000' AS DateTime), CAST(N'2024-02-28T12:20:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam20', 20, CAST(N'2024-03-06T07:30:00.000' AS DateTime), CAST(N'2024-03-06T09:50:00.000' AS DateTime), 4, 4)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam21', 21, CAST(N'2024-03-15T10:00:00.000' AS DateTime), CAST(N'2024-03-15T12:20:00.000' AS DateTime), 4, 4)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam22', 22, CAST(N'2024-03-22T10:00:00.000' AS DateTime), CAST(N'2024-03-22T12:20:00.000' AS DateTime), 4, 4)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam23', 23, CAST(N'2024-04-06T10:50:00.000' AS DateTime), CAST(N'2024-04-06T12:20:00.000' AS DateTime), 4, 4)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam24', 24, CAST(N'2024-04-10T07:30:00.000' AS DateTime), CAST(N'2024-04-10T09:50:00.000' AS DateTime), 4, 4)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam25', 25, CAST(N'2024-04-08T08:00:00.000' AS DateTime), CAST(N'2024-04-08T10:00:00.000' AS DateTime), 5, 5)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam26', 26, CAST(N'2024-04-14T09:00:00.000' AS DateTime), CAST(N'2024-04-14T11:00:00.000' AS DateTime), 5, 5)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam3', 3, CAST(N'2024-03-06T10:00:00.000' AS DateTime), CAST(N'2024-03-06T12:20:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam4', 4, CAST(N'2024-03-13T10:00:00.000' AS DateTime), CAST(N'2024-03-13T12:20:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam5', 5, CAST(N'2024-03-20T07:30:30.000' AS DateTime), CAST(N'2024-03-20T09:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam6', 6, CAST(N'2024-03-24T07:30:00.000' AS DateTime), CAST(N'2024-03-24T09:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam7', 7, CAST(N'2024-02-20T07:30:00.000' AS DateTime), CAST(N'2024-02-20T09:50:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam8', 8, CAST(N'2024-02-27T07:30:00.000' AS DateTime), CAST(N'2024-02-27T09:50:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Exam] ([examid], [asseid], [begin], [end], [rid], [proctorlecture]) VALUES (N'exam9', 9, CAST(N'2024-03-07T10:00:00.000' AS DateTime), CAST(N'2024-03-07T12:20:00.000' AS DateTime), 2, 2)
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (1, N'View Lecturer Timetable', N'/lecturer/timetable')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (2, N'Lecturer Take Attendance', N'/lecturer/attendence')
GO
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade1', N'HE170388', N'exam1', 4, 10, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade10', N'HE170388', N'exam12', 3, 7, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade11', N'HE170388', N'exam13', 3, 9, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade12', N'HE170388', N'exam14', 3, 8, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade13', N'HE170388', N'exam15', 3, 7.75, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade14', N'HE170388', N'exam17', 1, 6, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade15', N'HE170388', N'exam18', 1, 8, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade16', N'HE170388', N'exam19', 1, 7, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade17', N'HE170388', N'exam20', 1, 9, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade18', N'HE170388', N'exam21', 1, 6.5, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade19', N'HE170388', N'exam22', 1, 7, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade2', N'HE170388', N'exam2', 4, 9, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade20', N'HE170388', N'exam23', 1, 8.5, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade21', N'HE170388', N'exam25', 1, 8, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade22', N'HE170388', N'exam26', 1, 9, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade23', N'HE172390', N'exam1', 4, 9, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade24', N'HE172390', N'exam2', 4, 9.5, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade25', N'HE172390', N'exam3', 4, 8, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade26', N'HE172390', N'exam4', 4, 10, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade27', N'HE172390', N'exam5', 4, 9, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade28', N'HE172390', N'exam7', 2, 8, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade29', N'HE172390', N'exam8', 2, 6, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade3', N'HE170388', N'exam3', 4, 9.5, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade30', N'HE172390', N'exam9', 2, 5.5, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade31', N'HE172390', N'exam10', 2, 10, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade32', N'HE172390', N'exam12', 3, 7.7, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade33', N'HE172390', N'exam13', 3, 8.8, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade34', N'HE172390', N'exam14', 3, 5.5, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade35', N'HE172390', N'exam15', 3, 9.9, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade36', N'HE172390', N'exam17', 1, 8, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade37', N'HE172390', N'exam18', 1, 7, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade38', N'HE172390', N'exam19', 1, 9, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade39', N'HE172390', N'exam20', 1, 8.8, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade4', N'HE170388', N'exam4', 4, 9, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade40', N'HE172390', N'exam21', 1, 6, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade41', N'HE172390', N'exam22', 1, 7, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade42', N'HE172390', N'exam23', 1, 8.2, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade43', N'HE172390', N'exam25', 1, 7, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade44', N'HE172390', N'exam26', 1, 8, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade5', N'HE170388', N'exam5', 4, 8.8, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade6', N'HE170388', N'exam7', 2, 9, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade7', N'HE170388', N'exam8', 2, 7.5, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade8', N'HE170388', N'exam9', 2, 8.9, NULL)
INSERT [dbo].[Grade] ([gradeid], [sid], [examid], [lid], [score], [comment]) VALUES (N'grade9', N'HE170388', N'exam10', 2, 10, NULL)
GO
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (1, N'SonNT5')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (2, N'ThuyNTT135')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (3, N'ThienNV')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (4, N'Ducdm39')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (5, N'SonHx')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (6, N'NgocNT84')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (7, N'ThangPD10')
GO
SET IDENTITY_INSERT [dbo].[Lession] ON 

INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (1, 1, 1, 1, 1, CAST(N'2024-02-28' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (2, 1, 1, 1, 1, CAST(N'2024-03-01' AS Date), 1)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (3, 1, 1, 1, 1, CAST(N'2024-03-06' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (4, 2, 2, 1, 3, CAST(N'2024-02-28' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (5, 2, 2, 1, 3, CAST(N'2024-03-01' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (6, 4, 1, 2, 2, CAST(N'2024-03-06' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (7, 4, 2, 2, 2, CAST(N'2024-03-08' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (8, 1, 1, 1, 1, CAST(N'2024-03-07' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (9, 2, 1, 1, 3, CAST(N'2024-03-08' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (10, 9, 3, 3, 7, CAST(N'2024-03-09' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (11, 1, 2, 1, 1, CAST(N'2024-03-11' AS Date), 1)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (13, 1, 1, 1, 1, CAST(N'2024-03-13' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (14, 1, 2, 1, 1, CAST(N'2024-03-15' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (15, 1, 1, 1, 1, CAST(N'2024-03-20' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (16, 1, 2, 1, 1, CAST(N'2024-03-22' AS Date), 1)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (17, 4, 1, 2, 2, CAST(N'2024-03-12' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (18, 4, 2, 2, 2, CAST(N'2024-03-14' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (19, 4, 1, 2, 2, CAST(N'2024-03-19' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (20, 4, 2, 2, 2, CAST(N'2024-03-21' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (21, 2, 2, 1, 3, CAST(N'2024-03-12' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (22, 2, 1, 1, 3, CAST(N'2024-03-14' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (23, 2, 2, 1, 3, CAST(N'2024-03-19' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (24, 2, 1, 1, 3, CAST(N'2024-03-21' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (25, 5, 2, 4, 1, CAST(N'2024-03-06' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (26, 5, 1, 4, 1, CAST(N'2024-03-11' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (27, 5, 2, 4, 1, CAST(N'2024-03-13' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (28, 5, 1, 4, 1, CAST(N'2024-03-15' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (29, 5, 2, 4, 1, CAST(N'2024-03-20' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (30, 5, 1, 4, 1, CAST(N'2024-03-22' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (31, 10, 4, 5, 1, CAST(N'2024-03-19' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (32, 10, 5, 5, 1, CAST(N'2024-03-21' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (33, 11, 5, 5, 1, CAST(N'2024-03-19' AS Date), 0)
INSERT [dbo].[Lession] ([leid], [gid], [tid], [rid], [lid], [date], [isAttended]) VALUES (34, 11, 4, 5, 1, CAST(N'2024-03-21' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Lession] OFF
GO
INSERT [dbo].[Role] ([roleid], [rolename]) VALUES (1, N'Lecture')
INSERT [dbo].[Role] ([roleid], [rolename]) VALUES (2, N'Student')
INSERT [dbo].[Role] ([roleid], [rolename]) VALUES (3, N'Staff')
GO
INSERT [dbo].[Role_Account] ([username], [roleid]) VALUES (N'anhnvhe', 2)
INSERT [dbo].[Role_Account] ([username], [roleid]) VALUES (N'Duypq', 2)
INSERT [dbo].[Role_Account] ([username], [roleid]) VALUES (N'hiepbh', 2)
INSERT [dbo].[Role_Account] ([username], [roleid]) VALUES (N'khaothi', 3)
INSERT [dbo].[Role_Account] ([username], [roleid]) VALUES (N'sonnt', 1)
INSERT [dbo].[Role_Account] ([username], [roleid]) VALUES (N'ThienNV', 1)
INSERT [dbo].[Role_Account] ([username], [roleid]) VALUES (N'ThuyNTT', 1)
GO
INSERT [dbo].[Role_Feature] ([roleid], [fid]) VALUES (1, 1)
INSERT [dbo].[Role_Feature] ([roleid], [fid]) VALUES (1, 2)
INSERT [dbo].[Role_Feature] ([roleid], [fid]) VALUES (3, 1)
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'BE102')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'DE112')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (3, N'BE203')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (4, N'AL-R202')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (5, N'AL-L308')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (6, N'DE411')
GO
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE150931', N'Nguyen Duc Canh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE161779', N'Nguyen Tien Toan')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE170388', N'Bui Hoang Hiep')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE170406', N'Do Minh Duong')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE171093', N'Chu Bao Khanh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE171227', N'Vu Minh Quan')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE171749', N'Pham Duc Trung')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE171958', N'Nguyen Viet Anh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE172200', N'Tran Viet Duy')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE172209', N'Nguyen Huy Anh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE172295', N'Nguyen Van Dat')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE172390', N'Pham Quoc Duy')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE173190', N'Ngo Hai Yen')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE173199', N'Le Minh Thang')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE173227', N'To Tuan Anh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE173337', N'Nguyen Thanh Trung')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE173518', N'Nguyen Minh Tuan')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE173590', N'Hoang Trung Kien')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE176299', N'Cao Van Quan')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE176368', N'Bui Bach Tung')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE176394', N'Ho Tai Huy')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE176404', N'Dinh Hoang Viet')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE176405', N'Truong Xuan Quy')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE176419', N'Le Anh Vu')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE176709', N'Tran Hong Phuc')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE176809', N'Quan Gia Huy')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE181166', N'Nguyen Tuan Anh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE181266', N'Vu Le Anh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE186864', N'Vo Dinh Hung')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (N'HE187107', N'Nguyen Manh Thang')
GO
INSERT [dbo].[StudentGroup] ([gid], [gname], [subid], [lid]) VALUES (1, N'SE1818-PRJ301', 1, 1)
INSERT [dbo].[StudentGroup] ([gid], [gname], [subid], [lid]) VALUES (2, N'SE1818-MAS291', 2, 3)
INSERT [dbo].[StudentGroup] ([gid], [gname], [subid], [lid]) VALUES (3, N'SE1818-IOT102', 4, 4)
INSERT [dbo].[StudentGroup] ([gid], [gname], [subid], [lid]) VALUES (4, N'SE1818-JPD123', 3, 2)
INSERT [dbo].[StudentGroup] ([gid], [gname], [subid], [lid]) VALUES (5, N'SE1825-PRJ301', 1, 1)
INSERT [dbo].[StudentGroup] ([gid], [gname], [subid], [lid]) VALUES (6, N'SE1825-IOT102', 4, 5)
INSERT [dbo].[StudentGroup] ([gid], [gname], [subid], [lid]) VALUES (7, N'SE1825-MAS291', 2, 3)
INSERT [dbo].[StudentGroup] ([gid], [gname], [subid], [lid]) VALUES (8, N'SE1825-JPD123', 3, 6)
INSERT [dbo].[StudentGroup] ([gid], [gname], [subid], [lid]) VALUES (9, N'SE1818-SWE201c', 5, 7)
INSERT [dbo].[StudentGroup] ([gid], [gname], [subid], [lid]) VALUES (10, N'SE1701-PRU211m', 6, 1)
INSERT [dbo].[StudentGroup] ([gid], [gname], [subid], [lid]) VALUES (11, N'SE1702-PRU211m', 6, 1)
GO
INSERT [dbo].[Subject] ([subid], [suname], [credit], [fullname]) VALUES (1, N'PRJ301', 3, N'Java Web Application Development')
INSERT [dbo].[Subject] ([subid], [suname], [credit], [fullname]) VALUES (2, N'MAS291', 3, N'Statistics and Probability')
INSERT [dbo].[Subject] ([subid], [suname], [credit], [fullname]) VALUES (3, N'JPD123', 3, N'	Elementary Japanese 1-A1.2')
INSERT [dbo].[Subject] ([subid], [suname], [credit], [fullname]) VALUES (4, N'IOT102', 3, N'Internet of thing')
INSERT [dbo].[Subject] ([subid], [suname], [credit], [fullname]) VALUES (5, N'SWE201c', 3, N'Introduction to Software Engineering')
INSERT [dbo].[Subject] ([subid], [suname], [credit], [fullname]) VALUES (6, N'PRU211m', 3, N'Programming and Unity ')
GO
INSERT [dbo].[TimeSlot] ([tid], [tname]) VALUES (1, N'Slot 1')
INSERT [dbo].[TimeSlot] ([tid], [tname]) VALUES (2, N'Slot 2')
INSERT [dbo].[TimeSlot] ([tid], [tname]) VALUES (3, N'Slot 3')
INSERT [dbo].[TimeSlot] ([tid], [tname]) VALUES (4, N'Slot 4')
INSERT [dbo].[TimeSlot] ([tid], [tname]) VALUES (5, N'Slot 5')
INSERT [dbo].[TimeSlot] ([tid], [tname]) VALUES (6, N'Slot 6')
INSERT [dbo].[TimeSlot] ([tid], [tname]) VALUES (7, N'slot 7')
INSERT [dbo].[TimeSlot] ([tid], [tname]) VALUES (8, N'slot 8')
INSERT [dbo].[TimeSlot] ([tid], [tname]) VALUES (9, N'slot 9')
INSERT [dbo].[TimeSlot] ([tid], [tname]) VALUES (10, N'slot 10')
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subject] FOREIGN KEY([subid])
REFERENCES [dbo].[Subject] ([subid])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Subject]
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Lession] FOREIGN KEY([leid])
REFERENCES [dbo].[Lession] ([leid])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Lession]
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Lession1] FOREIGN KEY([leid])
REFERENCES [dbo].[Lession] ([leid])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Lession1]
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Student]
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_Student]
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_StudentGroup] FOREIGN KEY([gid])
REFERENCES [dbo].[StudentGroup] ([gid])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_StudentGroup]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Assessment] FOREIGN KEY([asseid])
REFERENCES [dbo].[Assessment] ([asseid])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Assessment]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Room]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Exam] FOREIGN KEY([examid])
REFERENCES [dbo].[Exam] ([examid])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Exam]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Lecturer]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Student]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_Lecturer]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_Room]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_StudentGroup] FOREIGN KEY([gid])
REFERENCES [dbo].[StudentGroup] ([gid])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_StudentGroup]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_TimeSlot]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Role] FOREIGN KEY([roleid])
REFERENCES [dbo].[Role] ([roleid])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Role]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([roleid])
REFERENCES [dbo].[Role] ([roleid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[StudentGroup]  WITH CHECK ADD  CONSTRAINT [FK_StudentGroup_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[StudentGroup] CHECK CONSTRAINT [FK_StudentGroup_Lecturer]
GO
ALTER TABLE [dbo].[StudentGroup]  WITH CHECK ADD  CONSTRAINT [FK_StudentGroup_Subject] FOREIGN KEY([subid])
REFERENCES [dbo].[Subject] ([subid])
GO
ALTER TABLE [dbo].[StudentGroup] CHECK CONSTRAINT [FK_StudentGroup_Subject]
GO
