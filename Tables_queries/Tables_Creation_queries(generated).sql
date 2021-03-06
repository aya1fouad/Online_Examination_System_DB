USE [Examination-System]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[AnsId] [int] NOT NULL,
	[AnsText] [varchar](30) NOT NULL,
	[QID] [int] NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[AnsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CrsID] [int] NOT NULL,
	[CrsName] [varchar](50) NULL,
	[InstID] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CrsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_Topics]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Topics](
	[TopicID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [Course_Topics_PK] PRIMARY KEY CLUSTERED 
(
	[TopicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DeptId] [int] NOT NULL,
	[DeptName] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dept_Course]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dept_Course](
	[CourseID] [int] NOT NULL,
	[DeptID] [int] NOT NULL,
	[Date_Of_Insertion] [datetime] NULL,
 CONSTRAINT [Dept_Course_PK] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC,
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dept_Stud]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dept_Stud](
	[StudID] [int] NOT NULL,
	[DeptID] [int] NOT NULL,
	[Date_Of_Insertion] [datetime] NULL,
 CONSTRAINT [Dept_Stud_PK] PRIMARY KEY CLUSTERED 
(
	[StudID] ASC,
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ExamID] [int] NOT NULL,
	[ExamTitle] [varchar](20) NULL,
	[Duration] [float] NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam_Ques]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam_Ques](
	[QuesID] [int] NOT NULL,
	[ExamID] [int] NOT NULL,
 CONSTRAINT [Exam_Ques_PK] PRIMARY KEY CLUSTERED 
(
	[QuesID] ASC,
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstID] [int] NOT NULL,
	[fname] [varchar](20) NOT NULL,
	[lname] [varchar](20) NOT NULL,
	[age] [int] NULL,
	[address] [varchar](30) NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[QID] [int] NOT NULL,
	[QuesText] [varchar](200) NOT NULL,
	[Type] [varchar](10) NOT NULL,
	[ModelAns] [varchar](30) NOT NULL,
	[CrsID] [int] NULL,
	[advLevel] [varchar](50) NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regis_Inst]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regis_Inst](
	[InstID] [int] NOT NULL,
	[RegisID] [int] NOT NULL,
	[Date_Of_Insertion] [datetime] NULL,
 CONSTRAINT [Regis_Inst_PK] PRIMARY KEY CLUSTERED 
(
	[InstID] ASC,
	[RegisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regis_Stud]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regis_Stud](
	[StudId] [int] NOT NULL,
	[RegisID] [int] NOT NULL,
	[Date_Of_Insertion] [datetime] NULL,
 CONSTRAINT [Regis_Stud_PK] PRIMARY KEY CLUSTERED 
(
	[StudId] ASC,
	[RegisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registrar]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registrar](
	[RegID] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [nchar](50) NOT NULL,
	[usertype] [varchar](20) NULL,
 CONSTRAINT [PK_Registrar] PRIMARY KEY CLUSTERED 
(
	[RegID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[St_exam_Q_A]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[St_exam_Q_A](
	[StudID] [int] NOT NULL,
	[ExamID] [int] NOT NULL,
	[QuesID] [int] NOT NULL,
	[Grade] [int] NULL,
	[Answer] [varchar](50) NULL,
 CONSTRAINT [St_exam_Q_A_PK] PRIMARY KEY CLUSTERED 
(
	[StudID] ASC,
	[ExamID] ASC,
	[QuesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stud_Course]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stud_Course](
	[StudID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[FullGrade] [int] NULL,
	[Progress] [varchar](50) NULL,
 CONSTRAINT [Stud_Course_PK] PRIMARY KEY CLUSTERED 
(
	[StudID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stud_Exam]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stud_Exam](
	[StudID] [int] NOT NULL,
	[ExamID] [int] NOT NULL,
	[Grade] [int] NULL,
	[Date_Of_Insertion] [datetime] NULL,
 CONSTRAINT [Stud_Exam_PK] PRIMARY KEY CLUSTERED 
(
	[StudID] ASC,
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[SID] [int] NOT NULL,
	[fname] [varchar](20) NOT NULL,
	[lname] [varchar](20) NOT NULL,
	[age] [int] NULL,
	[address] [varchar](30) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 1/20/2021 3:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[TID] [int] NOT NULL,
	[TopName] [varchar](100) NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dept_Course] ADD  DEFAULT (getdate()) FOR [Date_Of_Insertion]
GO
ALTER TABLE [dbo].[Exam] ADD  CONSTRAINT [DF_Exam_date]  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[Question] ADD  CONSTRAINT [DF_Question_Type]  DEFAULT ('MCQ') FOR [Type]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question] FOREIGN KEY([QID])
REFERENCES [dbo].[Question] ([QID])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Instructor] FOREIGN KEY([InstID])
REFERENCES [dbo].[Instructor] ([InstID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Instructor]
GO
ALTER TABLE [dbo].[Course_Topics]  WITH CHECK ADD  CONSTRAINT [Course_Topics_FK1] FOREIGN KEY([TopicID])
REFERENCES [dbo].[Topic] ([TID])
GO
ALTER TABLE [dbo].[Course_Topics] CHECK CONSTRAINT [Course_Topics_FK1]
GO
ALTER TABLE [dbo].[Course_Topics]  WITH CHECK ADD  CONSTRAINT [Course_Topics_FK2] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CrsID])
GO
ALTER TABLE [dbo].[Course_Topics] CHECK CONSTRAINT [Course_Topics_FK2]
GO
ALTER TABLE [dbo].[Dept_Course]  WITH CHECK ADD  CONSTRAINT [Dept_Course_FK1] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CrsID])
GO
ALTER TABLE [dbo].[Dept_Course] CHECK CONSTRAINT [Dept_Course_FK1]
GO
ALTER TABLE [dbo].[Dept_Course]  WITH CHECK ADD  CONSTRAINT [Dept_Course_FK2] FOREIGN KEY([DeptID])
REFERENCES [dbo].[Department] ([DeptId])
GO
ALTER TABLE [dbo].[Dept_Course] CHECK CONSTRAINT [Dept_Course_FK2]
GO
ALTER TABLE [dbo].[Dept_Stud]  WITH CHECK ADD  CONSTRAINT [Dept_Stud_FK1] FOREIGN KEY([StudID])
REFERENCES [dbo].[Student] ([SID])
GO
ALTER TABLE [dbo].[Dept_Stud] CHECK CONSTRAINT [Dept_Stud_FK1]
GO
ALTER TABLE [dbo].[Dept_Stud]  WITH CHECK ADD  CONSTRAINT [Dept_Stud_FK2] FOREIGN KEY([DeptID])
REFERENCES [dbo].[Department] ([DeptId])
GO
ALTER TABLE [dbo].[Dept_Stud] CHECK CONSTRAINT [Dept_Stud_FK2]
GO
ALTER TABLE [dbo].[Exam_Ques]  WITH CHECK ADD  CONSTRAINT [Exam_Ques_FK1] FOREIGN KEY([QuesID])
REFERENCES [dbo].[Question] ([QID])
GO
ALTER TABLE [dbo].[Exam_Ques] CHECK CONSTRAINT [Exam_Ques_FK1]
GO
ALTER TABLE [dbo].[Exam_Ques]  WITH CHECK ADD  CONSTRAINT [Exam_Ques_FK2] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ExamID])
GO
ALTER TABLE [dbo].[Exam_Ques] CHECK CONSTRAINT [Exam_Ques_FK2]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Course] FOREIGN KEY([CrsID])
REFERENCES [dbo].[Course] ([CrsID])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Course]
GO
ALTER TABLE [dbo].[Regis_Inst]  WITH CHECK ADD  CONSTRAINT [Regis_Inst_FK1] FOREIGN KEY([InstID])
REFERENCES [dbo].[Instructor] ([InstID])
GO
ALTER TABLE [dbo].[Regis_Inst] CHECK CONSTRAINT [Regis_Inst_FK1]
GO
ALTER TABLE [dbo].[Regis_Inst]  WITH CHECK ADD  CONSTRAINT [Regis_Inst_FK2] FOREIGN KEY([RegisID])
REFERENCES [dbo].[Registrar] ([RegID])
GO
ALTER TABLE [dbo].[Regis_Inst] CHECK CONSTRAINT [Regis_Inst_FK2]
GO
ALTER TABLE [dbo].[Regis_Stud]  WITH CHECK ADD  CONSTRAINT [Regis_Stud_FK1] FOREIGN KEY([StudId])
REFERENCES [dbo].[Student] ([SID])
GO
ALTER TABLE [dbo].[Regis_Stud] CHECK CONSTRAINT [Regis_Stud_FK1]
GO
ALTER TABLE [dbo].[Regis_Stud]  WITH CHECK ADD  CONSTRAINT [Regis_Stud_FK2] FOREIGN KEY([RegisID])
REFERENCES [dbo].[Registrar] ([RegID])
GO
ALTER TABLE [dbo].[Regis_Stud] CHECK CONSTRAINT [Regis_Stud_FK2]
GO
ALTER TABLE [dbo].[St_exam_Q_A]  WITH CHECK ADD  CONSTRAINT [St_exam_Q_A_FK1] FOREIGN KEY([StudID])
REFERENCES [dbo].[Student] ([SID])
GO
ALTER TABLE [dbo].[St_exam_Q_A] CHECK CONSTRAINT [St_exam_Q_A_FK1]
GO
ALTER TABLE [dbo].[St_exam_Q_A]  WITH CHECK ADD  CONSTRAINT [St_exam_Q_A_FK2] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ExamID])
GO
ALTER TABLE [dbo].[St_exam_Q_A] CHECK CONSTRAINT [St_exam_Q_A_FK2]
GO
ALTER TABLE [dbo].[St_exam_Q_A]  WITH CHECK ADD  CONSTRAINT [St_exam_Q_A_FK3] FOREIGN KEY([QuesID])
REFERENCES [dbo].[Question] ([QID])
GO
ALTER TABLE [dbo].[St_exam_Q_A] CHECK CONSTRAINT [St_exam_Q_A_FK3]
GO
ALTER TABLE [dbo].[Stud_Course]  WITH CHECK ADD  CONSTRAINT [Stud_Course_FK1] FOREIGN KEY([StudID])
REFERENCES [dbo].[Student] ([SID])
GO
ALTER TABLE [dbo].[Stud_Course] CHECK CONSTRAINT [Stud_Course_FK1]
GO
ALTER TABLE [dbo].[Stud_Course]  WITH CHECK ADD  CONSTRAINT [Stud_Course_FK2] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CrsID])
GO
ALTER TABLE [dbo].[Stud_Course] CHECK CONSTRAINT [Stud_Course_FK2]
GO
ALTER TABLE [dbo].[Stud_Exam]  WITH CHECK ADD  CONSTRAINT [Stud_Exam_FK1] FOREIGN KEY([StudID])
REFERENCES [dbo].[Student] ([SID])
GO
ALTER TABLE [dbo].[Stud_Exam] CHECK CONSTRAINT [Stud_Exam_FK1]
GO
ALTER TABLE [dbo].[Stud_Exam]  WITH CHECK ADD  CONSTRAINT [Stud_Exam_FK2] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ExamID])
GO
ALTER TABLE [dbo].[Stud_Exam] CHECK CONSTRAINT [Stud_Exam_FK2]
GO
