CREATE DATABASE EduVision
GO

USE [EduVision]
GO
/****** Object:  User [HieuDat]    Script Date: 11/3/2023 10:00:15 PM ******/
CREATE USER [HieuDat] FOR LOGIN [HieuDat] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[Id] [nvarchar](128) NOT NULL,
	[QuestionId] [nvarchar](128) NULL,
	[AnswerText] [nvarchar](max) NULL,
	[IsCorrect] [bit] NOT NULL,
	[AnswerOrder] [int] NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsoUtcCreatedOn] [nvarchar](128) NULL,
	[IsoUtcModifiedOn] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Answer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime2](7) NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[SystemDefault] [bit] NOT NULL,
	[IsoUtcCreatedOn] [nvarchar](max) NULL,
	[IsoUtcModifiedOn] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[LockoutEndDateUtc] [datetime2](7) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](128) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassHub]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassHub](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsoUtcCreatedOn] [nvarchar](128) NULL,
	[IsoUtcModifiedOn] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.ClassHub] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailTemplate]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailTemplate](
	[Id] [nvarchar](128) NOT NULL,
	[Subject] [nvarchar](max) NULL,
	[Body] [nvarchar](max) NULL,
	[Type] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.EmailTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLog](
	[Id] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[ErrorDetails] [nvarchar](max) NULL,
	[ErrorDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.ErrorLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[IsoUtcStartDate] [nvarchar](128) NULL,
	[EndDate] [datetime] NULL,
	[IsoUtcEndDate] [nvarchar](128) NULL,
	[Duration] [int] NULL,
	[ReleaseAnswer] [bit] NULL,
	[IsActive] [bit] NULL,
	[MarksToPass] [decimal](10, 2) NULL,
	[RandomizeQuestions] [bit] NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsoUtcCreatedOn] [nvarchar](128) NULL,
	[IsoUtcModifiedOn] [nvarchar](128) NULL,
	[IsPublished] [bit] NULL,
 CONSTRAINT [PK_dbo.Exam] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamClassHub]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamClassHub](
	[ExamId] [nvarchar](128) NOT NULL,
	[ClassHubId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.ExamClassHub] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC,
	[ClassHubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamQuestion]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamQuestion](
	[ExamId] [nvarchar](128) NOT NULL,
	[QuestionId] [nvarchar](128) NOT NULL,
	[QuestionOrder] [int] NULL,
	[Mark] [decimal](10, 2) NULL,
 CONSTRAINT [PK_dbo.ExamQuestion] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC,
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamSubject]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamSubject](
	[ExamId] [nvarchar](128) NOT NULL,
	[SubjectId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.ExamSubject] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC,
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GlobalOptionSet]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalOptionSet](
	[Id] [nvarchar](128) NOT NULL,
	[Code] [nvarchar](256) NULL,
	[DisplayName] [nvarchar](256) NULL,
	[Type] [nvarchar](256) NULL,
	[Status] [nvarchar](256) NULL,
	[OptionOrder] [int] NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
	[SystemDefault] [bit] NOT NULL,
	[IsoUtcCreatedOn] [nvarchar](128) NULL,
	[IsoUtcModifiedOn] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.GlobalOptionSet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[Id] [nvarchar](128) NOT NULL,
	[AspNetUserId] [nvarchar](128) NULL,
	[LoginDateTime] [datetime] NULL,
	[IsoUtcLoginDateTime] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.LoginHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Id] [nvarchar](128) NOT NULL,
	[QuestionTitle] [nvarchar](max) NULL,
	[SubjectId] [nvarchar](128) NULL,
	[QuestionTypeId] [nvarchar](128) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsoUtcCreatedOn] [nvarchar](128) NULL,
	[IsoUtcModifiedOn] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Question] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionAttachment]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionAttachment](
	[Id] [nvarchar](128) NOT NULL,
	[QuestionId] [nvarchar](128) NULL,
	[FileUrl] [nvarchar](max) NULL,
	[FileName] [nvarchar](256) NULL,
	[UniqueFileName] [nvarchar](256) NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsoUtcCreatedOn] [nvarchar](128) NULL,
	[IsoUtcModifiedOn] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.QuestionAttachment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionType]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionType](
	[Id] [nvarchar](128) NOT NULL,
	[Code] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.QuestionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAnswer]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAnswer](
	[Id] [nvarchar](128) NOT NULL,
	[StudentId] [nvarchar](128) NULL,
	[ExamId] [nvarchar](128) NULL,
	[QuestionId] [nvarchar](128) NULL,
	[AnswerId] [nvarchar](128) NULL,
	[AnswerText] [nvarchar](max) NULL,
	[MarksObtained] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.StudentAnswer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAnswerCloned]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAnswerCloned](
	[Id] [nvarchar](128) NOT NULL,
	[StudentId] [nvarchar](128) NULL,
	[ExamId] [nvarchar](128) NULL,
	[QuestionId] [nvarchar](128) NULL,
	[AnswerId] [nvarchar](128) NULL,
	[AnswerText] [nvarchar](max) NULL,
	[MarksObtained] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.StudentAnswerCloned] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentClass]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentClass](
	[StudentId] [nvarchar](128) NOT NULL,
	[ClassId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.StudentClass] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentExam]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentExam](
	[Id] [nvarchar](128) NOT NULL,
	[StudentId] [nvarchar](128) NULL,
	[ExamId] [nvarchar](128) NULL,
	[StartedOn] [datetime] NULL,
	[EndedOn] [datetime] NULL,
	[IsoUtcStartedOn] [nvarchar](128) NULL,
	[IsoUtcEndedOn] [nvarchar](128) NULL,
	[Result] [decimal](18, 0) NULL,
	[Passed] [bit] NULL,
 CONSTRAINT [PK_dbo.StudentExam] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentQuestionOrder]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentQuestionOrder](
	[Id] [nvarchar](128) NOT NULL,
	[StudentId] [nvarchar](128) NULL,
	[ExamId] [nvarchar](128) NULL,
	[QuestionOrder] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.StudentQuestionOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsoUtcCreatedOn] [nvarchar](128) NULL,
	[IsoUtcModifiedOn] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAttachment]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAttachment](
	[Id] [nvarchar](128) NOT NULL,
	[UserProfileId] [nvarchar](128) NULL,
	[FileUrl] [nvarchar](max) NULL,
	[FileName] [nvarchar](256) NULL,
	[UniqueFileName] [nvarchar](256) NULL,
	[AttachmentTypeId] [nvarchar](128) NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsoUtcCreatedOn] [nvarchar](128) NULL,
	[IsoUtcModifiedOn] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.UserAttachment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 11/3/2023 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[Id] [nvarchar](128) NOT NULL,
	[AspNetUserId] [nvarchar](128) NULL,
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[FullName] [nvarchar](256) NULL,
	[IDCardNumber] [nvarchar](256) NULL,
	[DateOfBirth] [datetime] NULL,
	[GenderId] [nvarchar](128) NULL,
	[CountryName] [nvarchar](256) NULL,
	[Address] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](128) NULL,
	[PhoneNumber] [nvarchar](256) NULL,
	[UserStatusId] [nvarchar](128) NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsoUtcDateOfBirth] [nvarchar](128) NULL,
	[IsoUtcCreatedOn] [nvarchar](128) NULL,
	[IsoUtcModifiedOn] [nvarchar](128) NULL,
	[IntakeYear] [int] NULL,
	[Code] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.UserProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [SystemDefault], [IsoUtcCreatedOn], [IsoUtcModifiedOn], [ConcurrencyStamp]) VALUES (N'80CE2419-681F-4A44-A4BE-6B958EFCD50E', N'System Admin', N'SYSTEM ADMIN', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [SystemDefault], [IsoUtcCreatedOn], [IsoUtcModifiedOn], [ConcurrencyStamp]) VALUES (N'C9036709-D3AD-4A24-91D7-12BABB2C1EAE', N'Student', N'STUDENT', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [SystemDefault], [IsoUtcCreatedOn], [IsoUtcModifiedOn], [ConcurrencyStamp]) VALUES (N'D07561B7-4E7E-4504-84E0-C3ED58A89504', N'Teacher', N'TEACHER', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0f5284ea-2f30-4502-893f-68bae7589c20', N'80CE2419-681F-4A44-A4BE-6B958EFCD50E')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1b2814c8-fb43-4ade-a20b-7fcd014b49d4', N'D07561B7-4E7E-4504-84E0-C3ED58A89504')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'61d88a38-2080-4fc8-91a9-bf537c73b0fe', N'C9036709-D3AD-4A24-91D7-12BABB2C1EAE')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9d3c4e64-0a85-4331-be0b-99c9fc0e689f', N'C9036709-D3AD-4A24-91D7-12BABB2C1EAE')
GO
INSERT [dbo].[AspNetUsers] ([Id], [LockoutEndDateUtc], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0f5284ea-2f30-4502-893f-68bae7589c20', NULL, N'Admin', N'ADMIN', N'hieudat2310.bh@gmail.com', N'HIEUDAT2310.BH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEESc6FITlRXdAOUsfpjcsT4gStMjM3NF1pjEOu2gmlndnOBf/3j8CAYupBb5D+iwgw==', N'7FVH57N5OEPO7GLLBL5W7FCTKWANKM4Z', N'e0eab726-bd6a-43d5-a3dd-bfa067eb444f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [LockoutEndDateUtc], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1b2814c8-fb43-4ade-a20b-7fcd014b49d4', NULL, N'HuanMai', N'HUANMAI', N'HuanMai@gmail.com', N'HUANMAI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECGVLZRMj3keS4hbxPgQK4t/k+tFsMxW2jM7YviCxiHdc3ggmCl030BiuBpN9lXVfw==', N'OSPMR6OHCJ6G3NLJVFWHAMXMP6AOXHI5', N'dd7b6434-507d-49dd-b26e-60db548f1eb4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [LockoutEndDateUtc], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'61d88a38-2080-4fc8-91a9-bf537c73b0fe', NULL, N'TuanHung', N'TUANHUNG', N'Hung@gmail.com', N'HUNG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKV+f4wtSVtYSrwPbr6ou3LobGCL8o71KAe685f8h8IJk0ACE61A+QzGqY/8i6wCbQ==', N'KA4L6RRGUZD45KIDYQC363W3AY5QN5PQ', N'2ad966fb-d6e6-4c06-abe7-0f46fbec7f2d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [LockoutEndDateUtc], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9d3c4e64-0a85-4331-be0b-99c9fc0e689f', NULL, N'DangPhat', N'DANGPHAT', N'Phat@gmail.com', N'PHAT@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMplgL+s2nNkJZe6VKEflKs/xBfX93vcDDpv45wX0MqiJINfkNcdcaK1aKQKPTLGtw==', N'PRMNYIU7JCIBC62HANO7MET73WMOPOCZ', N'14ca45dc-eb37-4a0c-a771-e17b43f3c6b5', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[ClassHub] ([Id], [Name], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsoUtcCreatedOn], [IsoUtcModifiedOn]) VALUES (N'88d79355-aae1-4340-8ef4-161dc137943f', N'Data Analytics', 1, N'0f5284ea-2f30-4502-893f-68bae7589c20', CAST(N'2023-11-02T22:58:35.363' AS DateTime), NULL, NULL, N'2023-11-02T15:58', NULL)
INSERT [dbo].[ClassHub] ([Id], [Name], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsoUtcCreatedOn], [IsoUtcModifiedOn]) VALUES (N'a677b018-7f3b-447d-9dae-6707b2283ed6', N'Sofware Developer', 1, N'0f5284ea-2f30-4502-893f-68bae7589c20', CAST(N'2023-11-02T22:54:20.707' AS DateTime), NULL, NULL, N'2023-11-02T15:54', NULL)
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Id], [Name]) VALUES (1, N'Afghanistan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (2, N'Albania')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (3, N'Algeria')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (4, N'Andorra')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (5, N'Angola')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (6, N'Antigua and Barbuda')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (7, N'Argentina')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (8, N'Armenia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (9, N'Australia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (10, N'Austria')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (11, N'Azerbaijan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (12, N'Bahamas')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (13, N'Bahrain')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (14, N'Bangladesh')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (15, N'Barbados')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (16, N'Belarus')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (17, N'Belgium')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (18, N'Belize')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (19, N'Benin')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (20, N'Bhutan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (21, N'Bolivia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (22, N'Bosnia and Herzegovina')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (23, N'Botswana')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (24, N'Brazil')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (25, N'Brunei')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (26, N'Bulgaria')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (27, N'Burkina Faso')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (28, N'Burundi')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (29, N'Cabo Verde')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (30, N'Cambodia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (31, N'Cameroon')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (32, N'Canada')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (33, N'Central African Republic')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (34, N'Chad')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (35, N'Channel Islands')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (36, N'Chile')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (37, N'China')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (38, N'Colombia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (39, N'Comoros')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (40, N'Congo')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (41, N'Costa Rica')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (42, N'Côte d''Ivoire')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (43, N'Croatia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (44, N'Cuba')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (45, N'Cyprus')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (46, N'Czech Republic')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (47, N'Denmark')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (48, N'Djibouti')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (49, N'Dominica')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (50, N'Dominican Republic')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (51, N'DR Congo')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (52, N'Ecuador')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (53, N'Egypt')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (54, N'El Salvador')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (55, N'Equatorial Guinea')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (56, N'Eritrea')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (57, N'Estonia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (58, N'Eswatini')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (59, N'Ethiopia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (60, N'Faeroe Islands')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (61, N'Fiji')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (62, N'Finland')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (63, N'France')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (64, N'French Guiana')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (65, N'Gabon')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (66, N'Gambia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (67, N'Georgia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (68, N'Germany')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (69, N'Ghana')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (70, N'Gibraltar')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (71, N'Greece')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (72, N'Greenland')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (73, N'Grenada')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (74, N'Guadeloupe')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (75, N'Guatemala')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (76, N'Guinea')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (77, N'Guinea-Bissau')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (78, N'Guyana')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (79, N'Haiti')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (80, N'Holy See')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (81, N'Honduras')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (82, N'Hong Kong')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (83, N'Hungary')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (84, N'Iceland')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (85, N'India')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (86, N'Indonesia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (87, N'Iran')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (88, N'Iraq')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (89, N'Ireland')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (90, N'Isle of Man')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (91, N'Israel')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (92, N'Italy')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (93, N'Jamaica')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (94, N'Japan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (95, N'Jordan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (96, N'Kazakhstan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (97, N'Kenya')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (98, N'Kiribati')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (99, N'Kuwait')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (100, N'Kyrgyzstan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (101, N'Laos')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (102, N'Latvia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (103, N'Lebanon')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (104, N'Lesotho')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (105, N'Liberia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (106, N'Libya')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (107, N'Liechtenstein')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (108, N'Lithuania')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (109, N'Luxembourg')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (110, N'Macao')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (111, N'Madagascar')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (112, N'Malawi')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (113, N'Malaysia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (114, N'Maldives')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (115, N'Mali')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (116, N'Malta')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (117, N'Marshall Islands')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (118, N'Martinique')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (119, N'Mauritania')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (120, N'Mauritius')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (121, N'Mayotte')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (122, N'Mexico')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (123, N'Micronesia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (124, N'Moldova')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (125, N'Monaco')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (126, N'Mongolia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (127, N'Montenegro')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (128, N'Morocco')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (129, N'Mozambique')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (130, N'Myanmar')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (131, N'Namibia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (132, N'Nauru')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (133, N'Nepal')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (134, N'Netherlands')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (135, N'New Caledonia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (136, N'New Zealand')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (137, N'Nicaragua')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (138, N'Niger')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (139, N'Nigeria')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (140, N'North Korea')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (141, N'North Macedonia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (142, N'Norway')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (143, N'Oman')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (144, N'Pakistan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (145, N'Palau')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (146, N'Panama')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (147, N'Papua New Guinea')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (148, N'Paraguay')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (149, N'Peru')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (150, N'Philippines')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (151, N'Poland')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (152, N'Portugal')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (153, N'Qatar')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (154, N'Réunion')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (155, N'Romania')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (156, N'Russia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (157, N'Rwanda')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (158, N'Saint Helena')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (159, N'Saint Kitts and Nevis')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (160, N'Saint Lucia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (161, N'Saint Vincent and the Grenadines')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (162, N'Samoa')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (163, N'San Marino')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (164, N'Sao Tome & Principe')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (165, N'Saudi Arabia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (166, N'Senegal')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (167, N'Serbia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (168, N'Seychelles')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (169, N'Sierra Leone')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (170, N'Singapore')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (171, N'Slovakia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (172, N'Slovenia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (173, N'Solomon Islands')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (174, N'Somalia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (175, N'South Africa')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (176, N'South Korea')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (177, N'South Sudan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (178, N'Spain')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (179, N'Sri Lanka')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (180, N'State of Palestine')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (181, N'Sudan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (182, N'Suriname')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (183, N'Sweden')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (184, N'Switzerland')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (185, N'Syria')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (186, N'Taiwan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (187, N'Tajikistan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (188, N'Tanzania')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (189, N'Thailand')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (190, N'Timor-Leste')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (191, N'Togo')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (192, N'Tonga')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (193, N'Trinidad and Tobago')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (194, N'Tunisia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (195, N'Turkey')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (196, N'Turkmenistan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (197, N'Tuvalu')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (198, N'Uganda')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (199, N'Ukraine')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (200, N'United Arab Emirates')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (201, N'United Kingdom')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (202, N'United States')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (203, N'Uruguay')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (204, N'Uzbekistan')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (205, N'Vanuatu')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (206, N'Venezuela')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (207, N'Vietnam')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (208, N'Western Sahara')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (209, N'Yemen')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (210, N'Zambia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (211, N'Zimbabwe')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
INSERT [dbo].[EmailTemplate] ([Id], [Subject], [Body], [Type]) VALUES (N'9E72B612-4A0D-447A-A3D6-FA7BCE4AB0E1', N'Password Reset For [WebsiteName] Account', N'<p>Hi [Username],<br><br>There was a request to reset your password on [WebsiteName].</p><p><a href="[Url]">Click Here</a> and follow the instructions to reset your password. Thank You.</p><p></p><p>If you did not make this request then please ignore this email.</p><p><i>Do not reply to this email.</i></p><p>Regards,<br>[WebsiteName]</p>', N'ForgotPassword')
INSERT [dbo].[EmailTemplate] ([Id], [Subject], [Body], [Type]) VALUES (N'BA57E6C7-0F97-4C00-B13F-EC673E6B70E3', N'Confirm Your Email To Complete [WebsiteName] Account Registration', N'<p>Hi [Username],<br><br>Thanks for signning up an account on [WebsiteName].</p><p>Click <a href="[Url]">Here</a> to confirm your email in order to login. Thank You.</p><p>If you did not sign up an account on [WebsiteName], please ignore this email.</p><p><i>Do not reply to this email.</i></p><p>Regards,<br>[WebsiteName]</p>', N'ConfirmEmail')
INSERT [dbo].[EmailTemplate] ([Id], [Subject], [Body], [Type]) VALUES (N'EA1692C6-32CC-4836-AD7D-1A959000D575', N'Password Reset For [WebsiteName] Account', N'<p>Hi [Username],<br><br>Kindly be informed that your password for the [WebsiteName] account has been reset by [ResetByName].</p><p>Below is your temporary new password to log in:<br><b>New Password:</b> [NewPassword]</p><p><b>NOTE:</b> As a safety precaution, you are advised to change your password after you log in later. Thank you.</p><p><i>Do not reply to this email.</i></p><p>Regards,<br>[WebsiteName]</p>', N'PasswordResetByAdmin')
GO
INSERT [dbo].[GlobalOptionSet] ([Id], [Code], [DisplayName], [Type], [Status], [OptionOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [SystemDefault], [IsoUtcCreatedOn], [IsoUtcModifiedOn]) VALUES (N'085A7D2D-AF19-4AFD-B06C-8600F1B3B305', N'Validated', N'Validated', N'UserStatus', N'Active', 2, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[GlobalOptionSet] ([Id], [Code], [DisplayName], [Type], [Status], [OptionOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [SystemDefault], [IsoUtcCreatedOn], [IsoUtcModifiedOn]) VALUES (N'2DA549D3-36B4-4DFA-A33E-FB6101324ACE', N'Registered', N'Registered', N'UserStatus', N'Active', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[GlobalOptionSet] ([Id], [Code], [DisplayName], [Type], [Status], [OptionOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [SystemDefault], [IsoUtcCreatedOn], [IsoUtcModifiedOn]) VALUES (N'703C7254-7947-41C4-89D1-7BDE559A111C', N'Male', N'Male', N'Gender', N'Active', 2, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[GlobalOptionSet] ([Id], [Code], [DisplayName], [Type], [Status], [OptionOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [SystemDefault], [IsoUtcCreatedOn], [IsoUtcModifiedOn]) VALUES (N'BD08947C-2C97-455E-B003-3409BF6EE44D', N'NotValidated', N'Not Validated', N'UserStatus', N'Active', 3, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[GlobalOptionSet] ([Id], [Code], [DisplayName], [Type], [Status], [OptionOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [SystemDefault], [IsoUtcCreatedOn], [IsoUtcModifiedOn]) VALUES (N'C2E59B97-7EC1-40CD-BA4C-4E118D1E5113', N'Female', N'Female', N'Gender', N'Active', 1, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[GlobalOptionSet] ([Id], [Code], [DisplayName], [Type], [Status], [OptionOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [SystemDefault], [IsoUtcCreatedOn], [IsoUtcModifiedOn]) VALUES (N'CAC9706A-F410-44E8-ACA3-F5EBE2AAA955', N'Other', N'Other', N'Gender', N'Active', 3, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[GlobalOptionSet] ([Id], [Code], [DisplayName], [Type], [Status], [OptionOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [SystemDefault], [IsoUtcCreatedOn], [IsoUtcModifiedOn]) VALUES (N'E531F5DA-61D0-4CE0-A582-20B35647FF8D', N'ProfilePicture', N'Profile Picture', N'UserAttachment', N'Active', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL)
GO
INSERT [dbo].[LoginHistory] ([Id], [AspNetUserId], [LoginDateTime], [IsoUtcLoginDateTime]) VALUES (N'61904180-1da2-49de-82b6-837241cac608', N'1b2814c8-fb43-4ade-a20b-7fcd014b49d4', CAST(N'2023-11-02T22:52:59.610' AS DateTime), N'2023-11-02T15:52')
INSERT [dbo].[LoginHistory] ([Id], [AspNetUserId], [LoginDateTime], [IsoUtcLoginDateTime]) VALUES (N'61c3236b-6938-4243-b3d6-28ec69c2de91', N'9d3c4e64-0a85-4331-be0b-99c9fc0e689f', CAST(N'2023-11-03T01:43:08.563' AS DateTime), N'2023-11-02T18:43')
INSERT [dbo].[LoginHistory] ([Id], [AspNetUserId], [LoginDateTime], [IsoUtcLoginDateTime]) VALUES (N'79e720b7-a0f6-4fa3-a031-491cd0e37f5c', N'0f5284ea-2f30-4502-893f-68bae7589c20', CAST(N'2023-11-02T22:53:19.227' AS DateTime), N'2023-11-02T15:53')
INSERT [dbo].[LoginHistory] ([Id], [AspNetUserId], [LoginDateTime], [IsoUtcLoginDateTime]) VALUES (N'd5698996-6700-40f8-9455-1477d1e75fa4', N'0f5284ea-2f30-4502-893f-68bae7589c20', CAST(N'2023-11-02T22:41:59.490' AS DateTime), N'2023-11-02T15:41')
GO
INSERT [dbo].[QuestionType] ([Id], [Code], [Name]) VALUES (N'2FACBE46-927E-4472-96EE-054545F67E11', N'MCQ', N'Multiple Choice Question')
INSERT [dbo].[QuestionType] ([Id], [Code], [Name]) VALUES (N'C196A497-B8A9-48F5-B1ED-21EBFAD39A5F', N'SA', N'Short Answer')
GO
INSERT [dbo].[StudentClass] ([StudentId], [ClassId]) VALUES (N'9d3c4e64-0a85-4331-be0b-99c9fc0e689f', N'88d79355-aae1-4340-8ef4-161dc137943f')
INSERT [dbo].[StudentClass] ([StudentId], [ClassId]) VALUES (N'61d88a38-2080-4fc8-91a9-bf537c73b0fe', N'a677b018-7f3b-447d-9dae-6707b2283ed6')
GO
INSERT [dbo].[UserProfile] ([Id], [AspNetUserId], [FirstName], [LastName], [FullName], [IDCardNumber], [DateOfBirth], [GenderId], [CountryName], [Address], [PostalCode], [PhoneNumber], [UserStatusId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsoUtcDateOfBirth], [IsoUtcCreatedOn], [IsoUtcModifiedOn], [IntakeYear], [Code]) VALUES (N'66ae147c-12c3-4c75-8767-d90a3e051727', N'61d88a38-2080-4fc8-91a9-bf537c73b0fe', N'Tuấn', N'Hưng', N'Nguyễn Tuấn Hưng', N'06062006', CAST(N'2006-06-06T00:00:00.000' AS DateTime), N'703C7254-7947-41C4-89D1-7BDE559A111C', N'China', N'1/11 khu phố 3 phường Thống Nhất, đối diện bánh ướt cô Loan', N'810000', N'0765252698', N'2DA549D3-36B4-4DFA-A33E-FB6101324ACE', N'0f5284ea-2f30-4502-893f-68bae7589c20', CAST(N'2023-11-02T22:57:15.990' AS DateTime), NULL, NULL, N'2006-06-06T00:00:00.0000000', N'2023-11-02T15:57', NULL, 0, NULL)
INSERT [dbo].[UserProfile] ([Id], [AspNetUserId], [FirstName], [LastName], [FullName], [IDCardNumber], [DateOfBirth], [GenderId], [CountryName], [Address], [PostalCode], [PhoneNumber], [UserStatusId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsoUtcDateOfBirth], [IsoUtcCreatedOn], [IsoUtcModifiedOn], [IntakeYear], [Code]) VALUES (N'a83f50e4-6fe7-4504-8c66-06801cf820e2', N'9d3c4e64-0a85-4331-be0b-99c9fc0e689f', N'Đăng', N'Phát', N'Nguyễn Đăng Phát', N'07072006', CAST(N'2006-07-07T00:00:00.000' AS DateTime), N'703C7254-7947-41C4-89D1-7BDE559A111C', N'United States', N'1/11 khu phố 3 phường Thống Nhất, đối diện bánh ướt cô Loan', N'810000', N'0326896991', N'2DA549D3-36B4-4DFA-A33E-FB6101324ACE', N'0f5284ea-2f30-4502-893f-68bae7589c20', CAST(N'2023-11-02T23:01:05.010' AS DateTime), NULL, NULL, N'2006-07-07T00:00:00.0000000', N'2023-11-02T16:01', NULL, 0, NULL)
INSERT [dbo].[UserProfile] ([Id], [AspNetUserId], [FirstName], [LastName], [FullName], [IDCardNumber], [DateOfBirth], [GenderId], [CountryName], [Address], [PostalCode], [PhoneNumber], [UserStatusId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsoUtcDateOfBirth], [IsoUtcCreatedOn], [IsoUtcModifiedOn], [IntakeYear], [Code]) VALUES (N'c87c6432-7fdd-4a46-a5c5-f3aca99fb67f', N'0f5284ea-2f30-4502-893f-68bae7589c20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2DA549D3-36B4-4DFA-A33E-FB6101324ACE', N'0f5284ea-2f30-4502-893f-68bae7589c20', CAST(N'2023-11-02T22:41:52.250' AS DateTime), NULL, NULL, NULL, N'2023-11-02T15:41', NULL, 0, NULL)
INSERT [dbo].[UserProfile] ([Id], [AspNetUserId], [FirstName], [LastName], [FullName], [IDCardNumber], [DateOfBirth], [GenderId], [CountryName], [Address], [PostalCode], [PhoneNumber], [UserStatusId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsoUtcDateOfBirth], [IsoUtcCreatedOn], [IsoUtcModifiedOn], [IntakeYear], [Code]) VALUES (N'f3a069ce-0728-401e-bcee-ac86c3a9d7e4', N'1b2814c8-fb43-4ade-a20b-7fcd014b49d4', N'Huân', N'Mai', N'Mai Trọng Huân', N'01012001', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'703C7254-7947-41C4-89D1-7BDE559A111C', N'Canada', N'1/11 khu phố 3 phường Thống Nhất, đối diện bánh ướt cô Loan', N'810000', N'0365413077', N'2DA549D3-36B4-4DFA-A33E-FB6101324ACE', N'0f5284ea-2f30-4502-893f-68bae7589c20', CAST(N'2023-11-02T22:52:36.080' AS DateTime), NULL, NULL, N'2001-01-01T00:00:00.0000000', N'2023-11-02T15:52', NULL, 1, N'11223')
GO
ALTER TABLE [dbo].[Answer] ADD  DEFAULT ((0)) FOR [IsCorrect]
GO
ALTER TABLE [dbo].[GlobalOptionSet] ADD  DEFAULT ((0)) FOR [SystemDefault]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ErrorLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ErrorLog_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ErrorLog] CHECK CONSTRAINT [FK_dbo.ErrorLog_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ExamClassHub]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExamClassHub_dbo.ClassHub_ClassHubId] FOREIGN KEY([ClassHubId])
REFERENCES [dbo].[ClassHub] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamClassHub] CHECK CONSTRAINT [FK_dbo.ExamClassHub_dbo.ClassHub_ClassHubId]
GO
ALTER TABLE [dbo].[ExamClassHub]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExamClassHub_dbo.Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamClassHub] CHECK CONSTRAINT [FK_dbo.ExamClassHub_dbo.Exam_ExamId]
GO
ALTER TABLE [dbo].[ExamQuestion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExamQuestion_dbo.Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamQuestion] CHECK CONSTRAINT [FK_dbo.ExamQuestion_dbo.Exam_ExamId]
GO
ALTER TABLE [dbo].[ExamQuestion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExamQuestion_dbo.Question_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamQuestion] CHECK CONSTRAINT [FK_dbo.ExamQuestion_dbo.Question_QuestionId]
GO
ALTER TABLE [dbo].[ExamSubject]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExamSubject_dbo.Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamSubject] CHECK CONSTRAINT [FK_dbo.ExamSubject_dbo.Exam_ExamId]
GO
ALTER TABLE [dbo].[ExamSubject]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExamSubject_dbo.Subject_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamSubject] CHECK CONSTRAINT [FK_dbo.ExamSubject_dbo.Subject_SubjectId]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Question_dbo.QuestionType_QuestionTypeId] FOREIGN KEY([QuestionTypeId])
REFERENCES [dbo].[QuestionType] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_dbo.Question_dbo.QuestionType_QuestionTypeId]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Question_dbo.Subject_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_dbo.Question_dbo.Subject_SubjectId]
GO
ALTER TABLE [dbo].[QuestionAttachment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuestionAttachment_dbo.Question_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuestionAttachment] CHECK CONSTRAINT [FK_dbo.QuestionAttachment_dbo.Question_QuestionId]
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentAnswer_dbo.Answer_AnswerId] FOREIGN KEY([AnswerId])
REFERENCES [dbo].[Answer] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[StudentAnswer] CHECK CONSTRAINT [FK_dbo.StudentAnswer_dbo.Answer_AnswerId]
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentAnswer_dbo.AspNetUsers_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentAnswer] CHECK CONSTRAINT [FK_dbo.StudentAnswer_dbo.AspNetUsers_StudentId]
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentAnswer_dbo.Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentAnswer] CHECK CONSTRAINT [FK_dbo.StudentAnswer_dbo.Exam_ExamId]
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentAnswer_dbo.Question_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentAnswer] CHECK CONSTRAINT [FK_dbo.StudentAnswer_dbo.Question_QuestionId]
GO
ALTER TABLE [dbo].[StudentAnswerCloned]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentAnswerCloned_dbo.Answer_AnswerId] FOREIGN KEY([AnswerId])
REFERENCES [dbo].[Answer] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[StudentAnswerCloned] CHECK CONSTRAINT [FK_dbo.StudentAnswerCloned_dbo.Answer_AnswerId]
GO
ALTER TABLE [dbo].[StudentAnswerCloned]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentAnswerCloned_dbo.AspNetUsers_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentAnswerCloned] CHECK CONSTRAINT [FK_dbo.StudentAnswerCloned_dbo.AspNetUsers_StudentId]
GO
ALTER TABLE [dbo].[StudentAnswerCloned]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentAnswerCloned_dbo.Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentAnswerCloned] CHECK CONSTRAINT [FK_dbo.StudentAnswerCloned_dbo.Exam_ExamId]
GO
ALTER TABLE [dbo].[StudentAnswerCloned]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentAnswerCloned_dbo.Question_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentAnswerCloned] CHECK CONSTRAINT [FK_dbo.StudentAnswerCloned_dbo.Question_QuestionId]
GO
ALTER TABLE [dbo].[StudentClass]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentClass_dbo.AspNetUsers_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentClass] CHECK CONSTRAINT [FK_dbo.StudentClass_dbo.AspNetUsers_StudentId]
GO
ALTER TABLE [dbo].[StudentClass]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentClass_dbo.ClassHub_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[ClassHub] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentClass] CHECK CONSTRAINT [FK_dbo.StudentClass_dbo.ClassHub_ClassId]
GO
ALTER TABLE [dbo].[StudentExam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentExam_dbo.AspNetUsers_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentExam] CHECK CONSTRAINT [FK_dbo.StudentExam_dbo.AspNetUsers_StudentId]
GO
ALTER TABLE [dbo].[StudentExam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentExam_dbo.Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentExam] CHECK CONSTRAINT [FK_dbo.StudentExam_dbo.Exam_ExamId]
GO
ALTER TABLE [dbo].[StudentQuestionOrder]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentQuestionOrder_dbo.AspNetUsers_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentQuestionOrder] CHECK CONSTRAINT [FK_dbo.StudentQuestionOrder_dbo.AspNetUsers_StudentId]
GO
ALTER TABLE [dbo].[StudentQuestionOrder]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StudentQuestionOrder_dbo.Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentQuestionOrder] CHECK CONSTRAINT [FK_dbo.StudentQuestionOrder_dbo.Exam_ExamId]
GO
ALTER TABLE [dbo].[UserAttachment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserAttachment_dbo.UserProfile_UserProfileId] FOREIGN KEY([UserProfileId])
REFERENCES [dbo].[UserProfile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserAttachment] CHECK CONSTRAINT [FK_dbo.UserAttachment_dbo.UserProfile_UserProfileId]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserProfile_dbo.AspNetUsers_AspNetUserId] FOREIGN KEY([AspNetUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_dbo.UserProfile_dbo.AspNetUsers_AspNetUserId]
GO
