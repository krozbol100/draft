ALTER DATABASE [TestEsession] COLLATE SQL_Latin1_General_CP1_CI_AS


ALTER DATABASE [TestEsession] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestEsession].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestEsession] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestEsession] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestEsession] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestEsession] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestEsession] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestEsession] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestEsession] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestEsession] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestEsession] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestEsession] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestEsession] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestEsession] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestEsession] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestEsession] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestEsession] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestEsession] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestEsession] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestEsession] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestEsession] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestEsession] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestEsession] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestEsession] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestEsession] SET RECOVERY FULL 
GO
ALTER DATABASE [TestEsession] SET  MULTI_USER 
GO
ALTER DATABASE [TestEsession] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestEsession] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestEsession] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestEsession] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestEsession] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestEsession', N'ON'
GO
ALTER DATABASE [TestEsession] SET QUERY_STORE = OFF
GO
USE [TestEsession]
GO
/****** Object:  User [TestEsession]    Script Date: 11/26/2020 9:41:49 AM ******/
/****** Object:  Schema [dctm]    Script Date: 11/26/2020 9:41:49 AM ******/
CREATE SCHEMA [dctm]
GO
/****** Object:  Schema [SignalR]    Script Date: 11/26/2020 9:41:49 AM ******/
CREATE SCHEMA [SignalR]
GO
/****** Object:  Schema [uk]    Script Date: 11/26/2020 9:41:49 AM ******/
CREATE SCHEMA [uk]
GO
/****** Object:  Table [dbo].[AdminUser]    Script Date: 11/26/2020 9:41:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminUser](
	[Username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AdminUser] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItem]    Script Date: 11/26/2020 9:41:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StatusId] [bigint] NOT NULL,
	[OrganisationUnit] [nvarchar](max) NULL,
	[Author] [nvarchar](50) NULL,
	[ProposalPlace] [nvarchar](max) NULL,
	[ProposalDate] [datetime] NULL,
	[AdditionalParticipants] [nvarchar](max) NULL,
	[FormalDecision] [bit] NOT NULL,
	[TimeForDiscussion] [nvarchar](20) NULL,
	[Annotation] [nvarchar](max) NULL,
	[OtherOrganisationUnits] [nvarchar](max) NULL,
	[EmergencyExplanation] [nvarchar](max) NULL,
	[ReferenceDocuments] [nvarchar](max) NULL,
	[Sponsor] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedUser] [nvarchar](50) NOT NULL,
	[AdminVerificationNote] [nvarchar](max) NULL,
	[Owner] [nvarchar](50) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
	[CodebookBoardId] [bigint] NULL,
	[CodebookConfidentialityLevelId] [bigint] NULL,
	[Timestamp] [timestamp] NULL,
	[DirectorPermission] [bit] NULL,
	[InitiativeNumber] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[VotingMethodTypeId] [bigint] NULL,
 CONSTRAINT [PK_Proposal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemEntityConfigurations]    Script Date: 11/26/2020 9:41:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemEntityConfigurations](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Label] [nvarchar](max) NULL,
	[IsMandatory] [bit] NULL,
	[RegEx] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[Tooltip] [nvarchar](max) NULL,
 CONSTRAINT [PK_AgendaItemEntityConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemESession]    Script Date: 11/26/2020 9:41:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemESession](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaItemId] [bigint] NOT NULL,
	[ESessionId] [bigint] NOT NULL,
	[VotingStatusId] [bigint] NOT NULL,
	[OrderSort] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedUser] [nvarchar](max) NULL,
	[DateModified] [datetime2](7) NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
	[EsessionAgendaItemId] [bigint] NULL,
	[IsRemovable] [bit] NULL,
	[OnDiscussion] [bit] NOT NULL,
 CONSTRAINT [PK_AgendaItemESession] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemESessionConfigurations]    Script Date: 11/26/2020 9:41:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemESessionConfigurations](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsRemovable] [bit] NULL,
	[EsessionTypeId] [bigint] NULL,
 CONSTRAINT [PK_AgendaItemESessionConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemHistory]    Script Date: 11/26/2020 9:41:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaItemId] [bigint] NOT NULL,
	[HistoryDate] [datetime] NOT NULL,
	[HistoryActionId] [bigint] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[UserFullName] [nvarchar](100) NULL,
	[Comment] [nvarchar](max) NULL,
	[MaterialId] [bigint] NULL,
	[ESessionId] [bigint] NULL,
 CONSTRAINT [PK_AgendaItemHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemHistoryAction]    Script Date: 11/26/2020 9:41:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemHistoryAction](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnumName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AgendaItemHistoryAction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemMaterial]    Script Date: 11/26/2020 9:41:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemMaterial](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaItemId] [bigint] NOT NULL,
	[OrderingNumber] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](2000) NULL,
	[Annotations] [nvarchar](2000) NULL,
	[InternalMark] [nvarchar](50) NULL,
	[SectorName] [nvarchar](100) NULL,
	[ImplementationDeadline] [datetime] NULL,
	[ConclusionText] [nvarchar](2000) NULL,
	[SignatureTypeId] [bigint] NULL,
	[EPeroJobId] [nvarchar](250) NULL,
	[EPeroDocumentId] [nvarchar](250) NULL,
	[EPeroReturnUrl] [nvarchar](250) NULL,
	[CodebookMaterialTypeId] [bigint] NULL,
	[DocumentCategoryId] [bigint] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_AgendaItemMaterial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemMaterialFile]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemMaterialFile](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaItemMaterialId] [bigint] NOT NULL,
	[FileName] [nvarchar](250) NOT NULL,
	[FileType] [varchar](150) NOT NULL,
	[DmsObjectId] [varchar](250) NOT NULL,
	[IsMaterial] [bit] NULL,
 CONSTRAINT [PK_AgendaItemMaterialFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemMaterialsEntityConfiguration]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemMaterialsEntityConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Label] [nvarchar](100) NOT NULL,
	[IsMandatory] [bit] NOT NULL,
	[RegEx] [nvarchar](100) NULL,
	[Value] [nvarchar](100) NULL,
	[Type] [nvarchar](max) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[Tooltip] [nvarchar](max) NULL,
 CONSTRAINT [PK_AgendaItemMaterialsEntityConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemMaterialSigned]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemMaterialSigned](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ESessionId] [bigint] NOT NULL,
	[AgendaItemMaterialId] [bigint] NOT NULL,
	[AgendaItemId] [bigint] NOT NULL,
	[Date] [date] NOT NULL,
	[DMSObjectId] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_AgendaItemMaterialSigned] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemParticipants]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemParticipants](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaItemMaterialId] [bigint] NOT NULL,
	[ParticipantId] [bigint] NOT NULL,
	[IsSignatureApproved] [bit] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUser] [nvarchar](max) NULL,
	[DateModified] [datetime2](7) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
 CONSTRAINT [PK_AgendaItemParticipants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemStatus]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemStatus](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnumName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProposalStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemVoted]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemVoted](
	[Id] [bigint] NOT NULL,
	[AgendaItemId] [bigint] NOT NULL,
	[DistributionId] [bigint] NOT NULL,
 CONSTRAINT [PK_AgendaItemVoted] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaItemVotingStatus]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItemVotingStatus](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnumName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AgendaItemVotingStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaRealization]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaRealization](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EsessionId] [bigint] NOT NULL,
	[RealizationStatusId] [bigint] NOT NULL,
	[DateSent] [datetime2](7) NOT NULL,
	[DeadlineRealization] [datetime2](7) NULL,
	[DeliveryDate] [datetime2](7) NULL,
	[CreatedUser] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[Email] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[AgendaItemId] [bigint] NOT NULL,
	[DateRealized] [datetime2](7) NULL,
	[CancelationEmail] [nvarchar](max) NULL,
 CONSTRAINT [PK_AgendaRealization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaRealizationDateHistory]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaRealizationDateHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaRealizationId] [bigint] NOT NULL,
	[DeadlineRealizationDate] [datetime2](7) NOT NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AgendaRealizationDateHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaRealizationExecutant]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaRealizationExecutant](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaRealizationId] [bigint] NOT NULL,
	[ExecutantId] [bigint] NOT NULL,
 CONSTRAINT [PK_AgendaRealizationExecutant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaRealizationMaterial]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaRealizationMaterial](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaRealizationId] [bigint] NOT NULL,
	[AgendaMaterialId] [bigint] NOT NULL,
 CONSTRAINT [PK_AgendaRealizationMaterial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaRealizationStatus]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaRealizationStatus](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnumName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AgendaRealizationStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllowedIpAddresses]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllowedIpAddresses](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IpAdress] [nvarchar](max) NULL,
 CONSTRAINT [PK_AllowedIpAddresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AvailableLanguages]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvailableLanguages](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Flag] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Default] [bit] NOT NULL,
 CONSTRAINT [PK_AvailableLanguages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoardMember]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoardMember](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[DateAdded] [datetime] NOT NULL,
	[IsVoter] [bit] NOT NULL,
	[IsConfidential] [bit] NOT NULL,
	[MemberGroupId] [bigint] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[CreatedUser] [nvarchar](max) NULL,
	[DateModified] [datetime2](7) NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[CodebookBoardId] [bigint] NULL,
 CONSTRAINT [PK_BoardMember] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Codebook]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Codebook](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[Modified] [datetime2](7) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[CodebookType] [bigint] NOT NULL,
 CONSTRAINT [PK_Codebook] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CommentText] [nvarchar](max) NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[CommentDate] [datetime] NOT NULL,
	[ParticipantESessionId] [bigint] NOT NULL,
	[AgendaItemESessionId] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MaterialComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBModel-MigrationAudit]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBModel-MigrationAudit](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_DBModel-MigrationAudit] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distribution]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distribution](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NULL,
	[ESessionId] [bigint] NOT NULL,
	[EmailBody] [nvarchar](max) NULL,
 CONSTRAINT [PK_Distribution] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DistributionMaterial]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistributionMaterial](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[DistributionId] [bigint] NULL,
	[AgendaItemMaterialId] [bigint] NULL,
	[IsSignedVersion] [bit] NULL,
 CONSTRAINT [PK_DistributionMaterial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DistributionParticipant]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistributionParticipant](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParticipantId] [bigint] NOT NULL,
	[DistributionId] [bigint] NULL,
 CONSTRAINT [PK_DistributionParticipant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentCategory]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[Modified] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[EnumName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DocumentCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESession]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESession](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[MeetingDate] [datetime] NULL,
	[MeetingLocation] [nvarchar](100) NULL,
	[StatusId] [bigint] NOT NULL,
	[EndDate] [datetime] NULL,
	[ProtocolNumber] [nvarchar](100) NULL,
	[SessionNumber] [nvarchar](200) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUser] [nvarchar](max) NULL,
	[DateModified] [datetime2](7) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
	[CodebookBoardId] [bigint] NULL,
	[TimeStamp] [timestamp] NULL,
	[EssesionTypeId] [bigint] NOT NULL,
	[AdoptionOnEsessionAdopted] [bit] NULL,
 CONSTRAINT [PK_ESession1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EsessionConfiguration]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsessionConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Label] [nvarchar](max) NULL,
	[IsMandatory] [bit] NULL,
	[RegEx] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_EsessionConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EsessionEmailInvitationMaterials]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsessionEmailInvitationMaterials](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EsessionEmailInvitationId] [bigint] NULL,
	[EsessionMaterialId] [bigint] NULL,
 CONSTRAINT [PK_EsessionEmailInvitationMaterials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EsessionEmailInvitationParticipants]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsessionEmailInvitationParticipants](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EsessionEmailInvitationId] [bigint] NULL,
	[ParticipantId] [bigint] NOT NULL,
 CONSTRAINT [PK_EsessionEmailInvitationParticipants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EsessionEmailInvitations]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsessionEmailInvitations](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DateSent] [datetime2](7) NOT NULL,
	[CreatedUser] [nvarchar](max) NULL,
	[ESessionId] [bigint] NOT NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_EsessionEmailInvitations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EsessionMaterial]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsessionMaterial](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CodebookId] [bigint] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUser] [nvarchar](max) NULL,
	[DateModified] [datetime2](7) NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DMSObjectId] [nvarchar](250) NOT NULL,
	[EsessionId] [bigint] NULL,
	[FileType] [nvarchar](max) NULL,
	[AgendaRealizationId] [bigint] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_EsessionMaterial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESessionName]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESessionName](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ESessionTypeId] [bigint] NOT NULL,
	[BoardId] [bigint] NULL,
	[COUNT] [bigint] NOT NULL,
 CONSTRAINT [PK_ESessionName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESessionStatus]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESessionStatus](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnumName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ESessionStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EsessionTypes]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsessionTypes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[EnumName] [nvarchar](50) NOT NULL,
	[DiscussionNecessaryForVoting] [bit] NOT NULL,
 CONSTRAINT [PK_EsessionTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Executant]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Executant](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Sector] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Executant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberGroup]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberGroup](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnumName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migration_AgendaItem]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migration_AgendaItem](
	[RSTacka_ObjectID] [nvarchar](max) NULL,
	[RSTacka_Opis] [nvarchar](max) NULL,
	[RSTacka_Naziv] [nvarchar](max) NULL,
	[RSTacka_RBR_TackaPodtacka] [nvarchar](max) NULL,
	[RSTacka_RBR_Tacka] [nvarchar](max) NULL,
	[RSTacka_RBR_Podtacka] [nvarchar](max) NULL,
	[RSTacka_OrderSort] [nvarchar](max) NULL,
	[RSTacka_VotingStatusId] [nvarchar](max) NULL,
	[RSTacka_CreatedDate] [nvarchar](max) NULL,
	[RSTacka_CreatedUser] [nvarchar](max) NULL,
	[RSTacka_DateModified] [nvarchar](max) NULL,
	[RSTacka_UpdatedByUser] [nvarchar](max) NULL,
	[RsIdTelo] [nvarchar](max) NULL,
	[RsNazivTelo ] [nvarchar](max) NULL,
	[RsIdSednica] [nvarchar](max) NULL,
	[RsNazivSednica ] [nvarchar](max) NULL,
	[RSTacka_Codebook_Conf] [nvarchar](max) NULL,
	[Migrirano] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migration_ESession]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migration_ESession](
	[ObjectID] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[MeetingDate] [nvarchar](max) NULL,
	[MeetingLocation] [nvarchar](max) NULL,
	[CreatedDate] [nvarchar](max) NULL,
	[CreatedUser] [nvarchar](max) NULL,
	[DateModified] [nvarchar](max) NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
	[CodebookBoardName] [nvarchar](max) NULL,
	[Migrirano] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migration_Participant]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migration_Participant](
	[RSUcesnici_ID] [nvarchar](max) NULL,
	[RSUcesnici_Ime] [nvarchar](max) NULL,
	[RSUcesnici_Prezime] [nvarchar](max) NULL,
	[RSUcesnici_Username] [nvarchar](max) NULL,
	[RSUcesnici_Email] [nvarchar](max) NULL,
	[RSUcesnici_Phone] [nvarchar](max) NULL,
	[RSUcesnici_Svojstvo] [nvarchar](max) NULL,
	[RSUcesnici_Glasa] [nvarchar](max) NULL,
	[Migrirano] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migration_ParticipantESession]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migration_ParticipantESession](
	[RSPredmetSednice_ObjectID] [nvarchar](max) NULL,
	[RSPredmetSednice_ObjectName] [nvarchar](max) NULL,
	[RSUcesnici_ID] [nvarchar](max) NULL,
	[RSUcesnici_Ime] [nvarchar](max) NULL,
	[RSUcesnici_Prezime] [nvarchar](max) NULL,
	[RSUcesnici_Username] [nvarchar](max) NULL,
	[RSUcesnici_Email] [nvarchar](max) NULL,
	[RSUcesnici_Phone] [nvarchar](max) NULL,
	[RSUcesnici_Svojstvo] [nvarchar](max) NULL,
	[RSUcesnici_Glasa] [nvarchar](max) NULL,
	[RSPredmetSednice_CreatedDate] [nvarchar](max) NULL,
	[RSPredmetSednice_CreatedUser] [nvarchar](max) NULL,
	[RSPredmetSednice_DateModified] [nvarchar](max) NULL,
	[RSPredmetSednice_UpdatedByUser] [nvarchar](max) NULL,
	[CodebookBoardName] [nvarchar](max) NULL,
	[Migrirano] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migration_ParticipantESessionVote_DnevniRed_Za]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migration_ParticipantESessionVote_DnevniRed_Za](
	[RSPredmetTackaDr_RsIdTacka] [nvarchar](max) NULL,
	[RSPredmetTackaDr_NazivTacka] [nvarchar](max) NULL,
	[RSPredmetTackaDr_OpisTacka] [nvarchar](max) NULL,
	[RSPredmetSednice_ObjectID] [nvarchar](max) NULL,
	[RSTacka_rs_glasaci_za] [nvarchar](max) NULL,
	[RSUcesnici_Username] [nvarchar](max) NULL,
	[Migrirano] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migration_ParticipantESessionVote_Protiv]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migration_ParticipantESessionVote_Protiv](
	[RSPredmetSednice_ObjectID] [nvarchar](max) NULL,
	[RSPredmetTackaDr_RsIdTacka] [nvarchar](max) NULL,
	[RSPredmetSednice_ObjectName] [nvarchar](max) NULL,
	[RSUcesnici_Username] [nvarchar](max) NULL,
	[RSTacka_rs_glasaci_protiv] [nvarchar](max) NULL,
	[Migrirano] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migration_ParticipantESessionVote_Uzdrzan]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migration_ParticipantESessionVote_Uzdrzan](
	[RSPredmetSednice_ObjectID] [nvarchar](max) NULL,
	[RSPredmetTackaDr_RsIdTacka] [nvarchar](max) NULL,
	[RSPredmetSednice_ObjectName] [nvarchar](max) NULL,
	[RSUcesnici_Username] [nvarchar](max) NULL,
	[RSTacka_rs_glasaci_uzdrzan] [nvarchar](max) NULL,
	[Migrirano] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migration_ParticipantESessionVote_Za]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migration_ParticipantESessionVote_Za](
	[RSPredmetSednice_ObjectID] [nvarchar](max) NULL,
	[RSPredmetTackaDr_RsIdTacka] [nvarchar](max) NULL,
	[RSPredmetSednice_ObjectName] [nvarchar](max) NULL,
	[RSUcesnici_Username] [nvarchar](max) NULL,
	[RSTacka_rs_glasaci_za] [nvarchar](max) NULL,
	[Migrirano] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migration_SpinnDocument]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migration_SpinnDocument](
	[Id_Tela] [nvarchar](max) NULL,
	[Naziv_tela] [nvarchar](max) NULL,
	[Id_Sednice] [nvarchar](max) NULL,
	[Naziv_sednice] [nvarchar](max) NULL,
	[RS_Id_tacka_Dr] [nvarchar](max) NULL,
	[Naziv_tacke] [nvarchar](max) NULL,
	[SpinnDocument_ObjectId] [nvarchar](max) NULL,
	[SpinnDocument_ObjectName] [nvarchar](max) NULL,
	[SpinnDocument_TS_Napomena] [nvarchar](max) NULL,
	[SpinnDocument_ContentType] [nvarchar](max) NULL,
	[SpinnDocument_Broj_U_Predmetu] [nvarchar](max) NULL,
	[SpinnDocument_TipDokumentaSednice] [nvarchar](max) NULL,
	[Migrirano] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParticipanESession]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipanESession](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParticipantId] [bigint] NOT NULL,
	[SessionId] [bigint] NOT NULL,
	[CanVote] [bit] NOT NULL,
	[IsConfidential] [bit] NOT NULL,
	[IsOperater] [bit] NOT NULL,
	[MemberGroupId] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedUser] [nvarchar](max) NULL,
	[DateModified] [datetime2](7) NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
 CONSTRAINT [PK_ParticipanSession] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participant]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](150) NOT NULL,
	[LastName] [nvarchar](150) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
	[Phone] [nvarchar](15) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUser] [nvarchar](max) NULL,
	[DateModified] [datetime2](7) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
 CONSTRAINT [PK_Participant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParticipantEsessionAgendaItem]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipantEsessionAgendaItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParticipantEsessionId] [bigint] NOT NULL,
	[AgendaItemEsessionId] [bigint] NOT NULL,
	[VotingPermission] [bit] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CanSee] [bit] NULL,
	[IsRappourteur] [bit] NULL,
 CONSTRAINT [PK__Particip__3214EC07C8D2EC2D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParticipantSignatureEPero]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipantSignatureEPero](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParticipantId] [bigint] NOT NULL,
	[EPeroUserId] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ParticipantSignatureEPero] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParticipantSignatureImage]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipantSignatureImage](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParticipantId] [bigint] NOT NULL,
	[DmsObjectId] [varchar](250) NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[FileType] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ParticipantSignatureImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proceeding]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proceeding](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProceedingsFormDMS] [varchar](50) NULL,
	[ProceedingsExtractDMS] [varchar](50) NULL,
	[ESessionId] [bigint] NOT NULL,
	[Date] [datetime] NULL,
	[FileName] [nvarchar](250) NULL,
	[FIleType] [varchar](150) NULL,
 CONSTRAINT [PK_Proceeding] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProceedingSignature]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProceedingSignature](
	[Id] [bigint] NOT NULL,
	[ParticipantId] [bigint] NULL,
	[ProceedingId] [bigint] NULL,
	[IsSigned] [bit] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_ProceedingSignature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProceedingSignedVersion]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProceedingSignedVersion](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DMSObjectId] [varchar](250) NULL,
	[ProceedingId] [bigint] NULL,
	[Date] [datetime] NULL,
	[FileNameProceedingSigned] [nvarchar](250) NULL,
	[FileTypeProceedingSigned] [varchar](150) NULL,
 CONSTRAINT [PK_ProceedingSignedVersion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proposer]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proposer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Sector] [nvarchar](150) NULL,
 CONSTRAINT [PK_Proposer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportType]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[EnumName] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ReportTypeCode] [bigint] NULL,
 CONSTRAINT [PK_ReportType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SignatureType]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignatureType](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnumName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SignatureType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Templates]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Templates](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TemplateName] [nvarchar](250) NOT NULL,
	[TemplateFileName] [nvarchar](250) NOT NULL,
	[VersionNumber] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[CreatedUser] [nvarchar](50) NOT NULL,
	[DmsObjectId] [varchar](250) NOT NULL,
	[FileType] [varchar](150) NOT NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedByUser] [nvarchar](max) NULL,
	[CodebookTypeId] [bigint] NOT NULL,
 CONSTRAINT [PK_Templates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCodeVerification]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCodeVerification](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Code] [nvarchar](20) NULL,
	[ExpireDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_UserCodeVerification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vote]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vote](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaItemEsessionId] [bigint] NOT NULL,
	[ParticipantId] [bigint] NOT NULL,
	[VoteTypeId] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Vote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoteType]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoteType](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[EnumName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_VoteType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VotingMethodTypes]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VotingMethodTypes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[EnumName] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
 CONSTRAINT [PK_VotingMethodTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dctm].[AgendaOnDiscussion]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dctm].[AgendaOnDiscussion](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaItemId] [bigint] NULL,
	[ESessionId] [bigint] NOT NULL,
 CONSTRAINT [PK_AgendaOnDiscussion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dctm].[Vote]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dctm].[Vote](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaItemEsessionId] [bigint] NOT NULL,
	[ParticipantEsessionId] [bigint] NOT NULL,
	[VoteTypeId] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[VoterFullName] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
 CONSTRAINT [PK_Vote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [uk].[Autorizacija]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[Autorizacija](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDKorisnika] [bigint] NOT NULL,
	[IDKorisnickeUloge] [bigint] NOT NULL,
	[IDKompanije] [bigint] NOT NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisan] [bit] NULL,
	[VremenskiZig] [timestamp] NOT NULL,
 CONSTRAINT [PK_Autorizacija] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[AutorizacijaLog]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[AutorizacijaLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDAutorizacija] [bigint] NOT NULL,
	[IDKorisnika] [bigint] NOT NULL,
	[IDKorisnickeUloge] [bigint] NOT NULL,
	[IDKompanije] [bigint] NOT NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisan] [bit] NULL,
 CONSTRAINT [PK_AutorizacijaLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[GrupaOperacija]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[GrupaOperacija](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](250) NOT NULL,
	[GrupaOperacijaId] [bigint] NULL,
 CONSTRAINT [PK_GrupaOperacija] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[IzdavalacSertifikata]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[IzdavalacSertifikata](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubjectKeyIdentifier] [varchar](100) NULL,
	[Subject] [varchar](2000) NULL,
	[FriendlyName] [varchar](50) NULL,
 CONSTRAINT [PK_IzdavalacSertifikata] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[Kompanija]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[Kompanija](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Sifra] [varchar](20) NOT NULL,
	[Naziv] [nvarchar](250) NOT NULL,
	[MB] [varchar](20) NULL,
	[PIB] [varchar](20) NULL,
	[KompanijaTipId] [bigint] NULL,
	[JeAktivna] [bit] NULL,
	[DodatnoPolje1] [nvarchar](250) NULL,
	[DodatnoPolje2] [nvarchar](250) NULL,
	[DodatnoPolje3] [nvarchar](250) NULL,
	[DodatnoPolje4] [nvarchar](250) NULL,
	[DodatnoPolje5] [nvarchar](250) NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisano] [bit] NULL,
	[VremenskiZig] [timestamp] NOT NULL,
 CONSTRAINT [PK_Kompanija] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[KompanijaLog]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[KompanijaLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDKompanija] [bigint] NOT NULL,
	[Sifra] [varchar](20) NOT NULL,
	[Naziv] [nvarchar](250) NOT NULL,
	[MB] [varchar](20) NULL,
	[PIB] [varchar](20) NULL,
	[KompanijaTipId] [bigint] NULL,
	[JeAktivna] [bit] NULL,
	[DodatnoPolje1] [nvarchar](250) NULL,
	[DodatnoPolje2] [nvarchar](250) NULL,
	[DodatnoPolje3] [nvarchar](250) NULL,
	[DodatnoPolje4] [nvarchar](250) NULL,
	[DodatnoPolje5] [nvarchar](250) NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisano] [bit] NULL,
 CONSTRAINT [PK_KompanijaLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[KompanijaTip]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[KompanijaTip](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](250) NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisano] [bit] NULL,
	[VremenskiZig] [timestamp] NOT NULL,
 CONSTRAINT [PK_KompanijaTip] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[KorisnickaUloga]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[KorisnickaUloga](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](100) NOT NULL,
	[TipKorisnickeUloge] [int] NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisan] [bit] NULL,
	[VremenskiZig] [timestamp] NOT NULL,
	[DodatnoPolje1] [nvarchar](250) NULL,
	[DodatnoPolje2] [nvarchar](250) NULL,
	[DodatnoPolje3] [nvarchar](250) NULL,
	[DodatnoPolje4] [nvarchar](250) NULL,
	[DodatnoPolje5] [nvarchar](250) NULL,
 CONSTRAINT [PK_KorisnickaUloga] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[KorisnickaUloga_Operacije]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[KorisnickaUloga_Operacije](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDKorisnickeUloge] [bigint] NOT NULL,
	[IDOperacije] [bigint] NOT NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisan] [bit] NULL,
	[VremenskiZig] [timestamp] NOT NULL,
 CONSTRAINT [PK_KorisnickaUloga_Operacije] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[KorisnickaUloga_OperacijeLog]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[KorisnickaUloga_OperacijeLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDKorinickaUlogaOperacija] [bigint] NOT NULL,
	[IDKorisnickeUloge] [bigint] NOT NULL,
	[IDOperacije] [bigint] NOT NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisan] [bit] NULL,
 CONSTRAINT [PK_KorisnickaUloga_OperacijeLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[KorisnickaUloga_PravaKreiranja]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[KorisnickaUloga_PravaKreiranja](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[KorisnickaUlogaKreatorId] [bigint] NOT NULL,
	[KreiranaKorisnickaUlogaId] [bigint] NOT NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisano] [bit] NULL,
	[VremenskiZig] [timestamp] NOT NULL,
 CONSTRAINT [PK_KorisnickaUloga_PravaKreiranja] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[KorisnickaUlogaLog]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[KorisnickaUlogaLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDKorsinickaUloga] [bigint] NOT NULL,
	[Naziv] [nvarchar](100) NOT NULL,
	[TipKorisnickeUloge] [int] NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisan] [bit] NULL,
 CONSTRAINT [PK_KorisnickaUlogaLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[Korisnik]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[Korisnik](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](100) NULL,
	[Prezime] [nvarchar](100) NULL,
	[KorisnickoIme] [nvarchar](100) NULL,
	[Lozinka] [nvarchar](100) NULL,
	[LozinkaSalt] [nvarchar](512) NULL,
	[Domen] [nvarchar](100) NULL,
	[ADNalog] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[VaziOd] [datetime] NOT NULL,
	[VaziDo] [datetime] NULL,
	[JeBlokiran] [bit] NULL,
	[RazlogBlokiranjaNaloga] [nvarchar](250) NULL,
	[DodatnoPolje1] [nvarchar](250) NULL,
	[DodatnoPolje2] [nvarchar](250) NULL,
	[DodatnoPolje3] [nvarchar](250) NULL,
	[DodatnoPolje4] [nvarchar](250) NULL,
	[DodatnoPolje5] [nvarchar](250) NULL,
	[JeAktivan] [bit] NULL,
	[AktivacioniId] [uniqueidentifier] NULL,
	[DatumIstekaAktivacije] [datetime] NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisano] [bit] NULL,
	[VremenskiZig] [timestamp] NOT NULL,
	[KompanijaId] [bigint] NULL,
 CONSTRAINT [PK_Korisnik] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[KorisnikLog]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[KorisnikLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDKorisnika] [bigint] NOT NULL,
	[Ime] [nvarchar](100) NULL,
	[Prezime] [nvarchar](100) NULL,
	[KorisnickoIme] [nvarchar](100) NULL,
	[Lozinka] [nvarchar](100) NULL,
	[Domen] [nvarchar](100) NULL,
	[ADNalog] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[VaziOd] [datetime] NOT NULL,
	[VaziDo] [datetime] NULL,
	[JeBlokiran] [bit] NULL,
	[RazlogBlokiranjaNaloga] [nvarchar](250) NULL,
	[DodatnoPolje1] [nvarchar](250) NULL,
	[DodatnoPolje2] [nvarchar](250) NULL,
	[DodatnoPolje3] [nvarchar](250) NULL,
	[DodatnoPolje4] [nvarchar](250) NULL,
	[DodatnoPolje5] [nvarchar](250) NULL,
	[JeAktivan] [bit] NULL,
	[AktivacioniId] [uniqueidentifier] NULL,
	[DatumIstekaAktivacije] [datetime] NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisano] [bit] NULL,
 CONSTRAINT [PK_KorisnikLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[Operacija]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[Operacija](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDGrupeOperacija] [bigint] NOT NULL,
	[Naziv] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Operacija] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[Sertifikat]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[Sertifikat](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDIzdavalacSertifikata] [bigint] NOT NULL,
	[SerijskiBrojSertifikata] [varchar](50) NOT NULL,
	[Lozinka] [varchar](250) NULL,
	[JeBlokiran] [bit] NULL,
	[DatumBlokiranjaOd] [datetime] NULL,
	[DatumBlokiranjaDo] [datetime] NULL,
	[TipBlokiranja] [varchar](25) NULL,
	[BrojPogresnihPokusaja] [int] NULL,
	[JePotrebnaPromenaLozinke] [bit] NULL,
	[IDKorisnik] [bigint] NOT NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisano] [bit] NULL,
	[VremenskiZig] [timestamp] NOT NULL,
 CONSTRAINT [PK_Sertifikat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[SertifikatLog]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[SertifikatLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDSertifikat] [bigint] NOT NULL,
	[IDIzdavalacSertifikata] [bigint] NOT NULL,
	[SerijskiBrojSertifikata] [varchar](50) NOT NULL,
	[Lozinka] [varchar](250) NULL,
	[JeBlokiran] [bit] NULL,
	[DatumBlokiranjaOd] [datetime] NULL,
	[DatumBlokiranjaDo] [datetime] NULL,
	[TipBlokiranja] [varchar](25) NULL,
	[BrojPogresnihPokusaja] [int] NULL,
	[JePotrebnaPromenaLozinke] [bit] NULL,
	[IDKorisnik] [bigint] NOT NULL,
	[DatumKreiranja] [datetime] NOT NULL,
	[IDSesijeKreiranja] [bigint] NOT NULL,
	[DatumIzmene] [datetime] NULL,
	[IDSesijeIzmene] [bigint] NULL,
	[JeObrisano] [bit] NULL,
 CONSTRAINT [PK_SertifikatLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [uk].[Sesija]    Script Date: 11/26/2020 9:41:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [uk].[Sesija](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDKorisnika] [bigint] NULL,
	[IDSertifikata] [bigint] NULL,
	[KorisnickoIme] [nvarchar](100) NULL,
	[ADNalog] [nvarchar](100) NULL,
	[DatumIVreme] [datetime] NULL,
	[RefreshToken] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sesija] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [master]
GO
ALTER DATABASE [TestEsession] SET RECOVERY SIMPLE WITH NO_WAIT
GO
use [TestEsession]
SET IDENTITY_INSERT [dbo].[AgendaItemEntityConfigurations] ON

INSERT [dbo].[AgendaItemEntityConfigurations] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (19, N'board', N'features.proposals.containers.agenda-item-page.selectBoard', 1, NULL, NULL, N'select', N'features.proposals.containers.agenda-item-page-ts.fieldRequiredSessionBoard', NULL)
INSERT [dbo].[AgendaItemEntityConfigurations] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (20, N'name', N'features.proposals.containers.agenda-item-page.subject', 1, NULL, NULL, N'input', N'features.proposals.containers.agenda-item-page-ts.fieldRequiredSubjectName', N'features.proposals.containers.agenda-item-page.subjectPopMessage-eps')
INSERT [dbo].[AgendaItemEntityConfigurations] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (21, N'statusName', N'features.proposals.containers.agenda-item-page.status', NULL, NULL, NULL, N'select', NULL, NULL)
INSERT [dbo].[AgendaItemEntityConfigurations] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (39, N'initiativeNumber', N'features.proposals.containers.agenda-item-page.numberOfInitiation', NULL, NULL, NULL, N'input', NULL, NULL)
INSERT [dbo].[AgendaItemEntityConfigurations] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (40, N'date', N'features.proposals.containers.agenda-item-page.proposalDate', NULL, NULL, NULL, N'date', NULL, N'features.proposals.containers.agenda-item-page.proposalDatePopMessage')
INSERT [dbo].[AgendaItemEntityConfigurations] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (41, N'author', N'features.proposals.containers.agenda-item-page.selectAuthor', NULL, NULL, NULL, N'adSearch', NULL, NULL)
INSERT [dbo].[AgendaItemEntityConfigurations] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (42, N'organizationalUnit', N'features.proposals.containers.agenda-item-page.organizationalUnit', NULL, NULL, NULL, N'input', NULL, N'features.proposals.containers.agenda-item-page.organizationalUnitName')
INSERT [dbo].[AgendaItemEntityConfigurations] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (43, N'directorPermission', N'features.proposals.containers.agenda-item-page.directorPermision', NULL, NULL, N'true', N'radio', NULL, NULL)
INSERT [dbo].[AgendaItemEntityConfigurations] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (44, N'confidentialAgendaItem', N'features.proposals.containers.agenda-item-page.itemConfidentiality', NULL, NULL, NULL, N'select', NULL, NULL)
INSERT [dbo].[AgendaItemEntityConfigurations] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (45, N'note', N'features.proposals.containers.agenda-item-page.note', NULL, NULL, NULL, N'textarea', NULL, NULL)
SET IDENTITY_INSERT [dbo].[AgendaItemEntityConfigurations] OFF
GO


SET IDENTITY_INSERT [dbo].[AgendaItemESessionConfigurations] ON 

INSERT [dbo].[AgendaItemESessionConfigurations] ([Id], [Name], [IsRemovable], [EsessionTypeId]) VALUES (1, N'Usvajanje zapisnika', 0, 1)
SET IDENTITY_INSERT [dbo].[AgendaItemESessionConfigurations] OFF
GO
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (1, N'Tačka kreirana', N'Created')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (2, N'Promena podataka', N'Updated')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (3, N'Poslato na verifikaciju', N'SentToVerification')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (4, N'Vraćeno na doradu', N'ReturnedFromVerification')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (5, N'Verifikovano', N'Verified')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (6, N'Povučeno sa verifikacije', N'Withdrawn')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (7, N'Verifikovan automatski', N'AutomaticVerification')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (8, N'Novi materijal', N'NewMaterialAdded')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (9, N'Nova verzija materijala', N'NewMaterialVersionAdded')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (10, N'Predlog usvojen', N'Adopted')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (11, N'Predlog odbijen', N'Rejected')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (12, N'Uvršteno u sednicu', N'IncludedInAgenda')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (13, N'Uklonjeno sa sednice', N'RemovedFromAgenda')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (14, N'Odloženo', N'Postponed')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (15, N'Uklonjen prilog', N'MaterialRemoved')
INSERT [dbo].[AgendaItemHistoryAction] ([Id], [Name], [EnumName]) VALUES (16, N'Izbrisan sa sednice', N'DeletedFromEsession')
GO



SET IDENTITY_INSERT [dbo].[AgendaItemMaterialsEntityConfiguration] ON 

INSERT [dbo].[AgendaItemMaterialsEntityConfiguration] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (1, N'name', N'features.administration.material-row.attachmentName', 1, NULL, NULL, N'input', N'features.administration.material-row.fieldRequiredName', NULL)
INSERT [dbo].[AgendaItemMaterialsEntityConfiguration] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (2, N'file', N'features.administration.material-row.attachmentFile', 1, NULL, NULL, N'file', N'features.administration.material-row.fieldRequiredFile', NULL)
INSERT [dbo].[AgendaItemMaterialsEntityConfiguration] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (3, N'type', N'features.administration.material-row.documentType', 1, NULL, NULL, N'select', N'features.administration.material-row.fieldRequiredType', NULL)
INSERT [dbo].[AgendaItemMaterialsEntityConfiguration] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (5, N'description', N'features.administration.material-row.description', 0, NULL, NULL, N'textarea', N'features.administration.material-row.fieldRequiredDescription', NULL)
INSERT [dbo].[AgendaItemMaterialsEntityConfiguration] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [Type], [ErrorMessage], [Tooltip]) VALUES (10003, N'documentCategory', N'features.administration.material-row.documentCategory', 1, NULL, NULL, N'select', N'features.administration.material-row.fieldRequiredCategory', NULL)
SET IDENTITY_INSERT [dbo].[AgendaItemMaterialsEntityConfiguration] OFF
GO
INSERT [dbo].[AgendaItemStatus] ([Id], [Name], [EnumName]) VALUES (1, N'Novi', N'NewItem')
INSERT [dbo].[AgendaItemStatus] ([Id], [Name], [EnumName]) VALUES (2, N'U pripremi', N'InPreparation')
INSERT [dbo].[AgendaItemStatus] ([Id], [Name], [EnumName]) VALUES (3, N'Poslato na verifikaciju', N'SentToVerification')
INSERT [dbo].[AgendaItemStatus] ([Id], [Name], [EnumName]) VALUES (4, N'Vraćeno na doradu', N'ReturnedFromVerification')
INSERT [dbo].[AgendaItemStatus] ([Id], [Name], [EnumName]) VALUES (5, N'Verifikovano', N'Verified')
INSERT [dbo].[AgendaItemStatus] ([Id], [Name], [EnumName]) VALUES (6, N'Uvršteno u dnevni red', N'IncludedInAgenda')
INSERT [dbo].[AgendaItemStatus] ([Id], [Name], [EnumName]) VALUES (7, N'Odloženo', N'Postponed')
INSERT [dbo].[AgendaItemStatus] ([Id], [Name], [EnumName]) VALUES (8, N'Izglasana', N'Voted')
GO
INSERT [dbo].[AgendaItemVotingStatus] ([Id], [Name], [EnumName]) VALUES (1, N'Nije glasano', N'NotVoted')
INSERT [dbo].[AgendaItemVotingStatus] ([Id], [Name], [EnumName]) VALUES (2, N'Usvojena', N'Adopted')
INSERT [dbo].[AgendaItemVotingStatus] ([Id], [Name], [EnumName]) VALUES (3, N'Odbijena', N'Rejected')
INSERT [dbo].[AgendaItemVotingStatus] ([Id], [Name], [EnumName]) VALUES (4, N'Odložena', N'Postponed')
INSERT [dbo].[AgendaItemVotingStatus] ([Id], [Name], [EnumName]) VALUES (5, N'Usvojena uz korekcije', N'AdoptedWithCorrections')
INSERT [dbo].[AgendaItemVotingStatus] ([Id], [Name], [EnumName]) VALUES (6, N'Vraćena na doradu', N'ReturnedToFinish')
GO
INSERT [dbo].[AgendaRealizationStatus] ([Id], [Name], [EnumName]) VALUES (1, N'Poslato na realizaciju', N'SendToRealization')
INSERT [dbo].[AgendaRealizationStatus] ([Id], [Name], [EnumName]) VALUES (2, N'Primljeno', N'Recived')
INSERT [dbo].[AgendaRealizationStatus] ([Id], [Name], [EnumName]) VALUES (3, N'Realizovano', N'RealizationCompleted')
INSERT [dbo].[AgendaRealizationStatus] ([Id], [Name], [EnumName]) VALUES (4, N'Stornirano', N'Cancelation')
GO
SET IDENTITY_INSERT [dbo].[AvailableLanguages] ON 

INSERT [dbo].[AvailableLanguages] ([Id], [Name], [Code], [Flag], [IsActive], [Default]) VALUES (1, N'English', N'en', N'flag-icon-us', 1, 0)
INSERT [dbo].[AvailableLanguages] ([Id], [Name], [Code], [Flag], [IsActive], [Default]) VALUES (2, N'Srpski Latinica', N'sr-Latin-RS', N'flag-icon-rs', 1, 1)
INSERT [dbo].[AvailableLanguages] ([Id], [Name], [Code], [Flag], [IsActive], [Default]) VALUES (3, N'Српски Ћирилица', N'sr-Cyrl-RS', N'flag-icon-rs', 1, 0)
INSERT [dbo].[AvailableLanguages] ([Id], [Name], [Code], [Flag], [IsActive], [Default]) VALUES (4, N'Босански Ћирилица', N'bs-Cyrl-BA', N'flag-icon-ba', 0, 0)
INSERT [dbo].[AvailableLanguages] ([Id], [Name], [Code], [Flag], [IsActive], [Default]) VALUES (5, N'Bosanski Latinica', N'bs-Latin-BA', N'flag-icon-ba', 0, 0)
SET IDENTITY_INSERT [dbo].[AvailableLanguages] OFF
GO


SET IDENTITY_INSERT [dbo].[Codebook] ON 

INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (1, N'Nadzorni odbor', 1, CAST(N'2020-05-06T11:33:28.0000000' AS DateTime2), NULL, NULL, NULL, 0)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (2, N'Upravni odbor', 0, CAST(N'2020-05-06T11:33:28.0300000' AS DateTime2), NULL, NULL, NULL, 0)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (3, N'Ostalo', 1, CAST(N'2020-05-06T11:33:56.7033333' AS DateTime2), NULL, NULL, NULL, 3)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (4, N'Odluka', 1, CAST(N'2020-05-06T11:33:56.7500000' AS DateTime2), NULL, NULL, NULL, 3)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (5, N'Obrazloženje', 1, CAST(N'2020-05-06T11:33:56.7966667' AS DateTime2), NULL, NULL, NULL, 3)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (6, N'Pravno mišljenje', 1, CAST(N'2020-05-06T11:33:56.8433333' AS DateTime2), NULL, NULL, NULL, 3)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (7, N'Predlog', 1, CAST(N'2020-05-06T11:33:56.8733333' AS DateTime2), NULL, NULL, NULL, 3)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (8, N'Zakljucak', 1, CAST(N'2020-05-06T11:33:56.9200000' AS DateTime2), NULL, NULL, NULL, 3)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (9, N'Izveštaj', 1, CAST(N'2020-05-06T11:33:56.9366667' AS DateTime2), NULL, NULL, NULL, 3)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (10, N'Prezentacija', 1, CAST(N'2020-05-06T11:33:56.9700000' AS DateTime2), NULL, NULL, NULL, 3)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (11, N'Prilog odluke', 1, CAST(N'2020-05-06T11:33:57.0000000' AS DateTime2), NULL, NULL, NULL, 3)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (12, N'Nije poverljivo', 1, CAST(N'2020-05-06T11:33:57.0466667' AS DateTime2), NULL, NULL, NULL, 2)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (13, N'Poverljivo', 1, CAST(N'2020-05-06T11:33:57.0766667' AS DateTime2), NULL, NULL, NULL, 2)
INSERT [dbo].[Codebook] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [CodebookType]) VALUES (14, N'Strogo poverljivo', 1, CAST(N'2020-05-06T11:33:57.1233333' AS DateTime2), NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Codebook] OFF


SET IDENTITY_INSERT [dbo].[DocumentCategory] ON 

INSERT [dbo].[DocumentCategory] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [EnumName]) VALUES (1, N'Regularni', 1, CAST(N'2019-09-16T00:00:00.0000000' AS DateTime2), N'imijakovic', CAST(N'2019-09-16T00:00:00.0000000' AS DateTime2), N'imijakovic', N'Regular')
INSERT [dbo].[DocumentCategory] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [EnumName]) VALUES (2, N'Interni', 1, CAST(N'2019-09-16T00:00:00.0000000' AS DateTime2), N'imijakovic', CAST(N'2019-09-16T00:00:00.0000000' AS DateTime2), N'imijakovic', N'Internal')
INSERT [dbo].[DocumentCategory] ([Id], [Name], [IsActive], [Created], [CreatedBy], [Modified], [ModifiedBy], [EnumName]) VALUES (3, N'Rezultat sednice', 1, CAST(N'2019-09-16T00:00:00.0000000' AS DateTime2), N'imijakovic', CAST(N'2019-09-16T00:00:00.0000000' AS DateTime2), N'imijakovic', N'SessionResult')
SET IDENTITY_INSERT [dbo].[DocumentCategory] OFF

SET IDENTITY_INSERT [dbo].[EsessionConfiguration] ON 

INSERT [dbo].[EsessionConfiguration] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [ErrorMessage], [Type]) VALUES (1, N'name', N'features.administration.containers.esession-edit.eSessionName', NULL, NULL, NULL, N'features.administration.containers.esession-edit.eSessionNameFieldRequired', N'input')
INSERT [dbo].[EsessionConfiguration] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [ErrorMessage], [Type]) VALUES (2, N'location', N'features.administration.containers.esession-edit.eSessionLocation', 1, NULL, NULL, N'features.administration.containers.esession-edit.sessionLocationRequired', N'input')
INSERT [dbo].[EsessionConfiguration] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [ErrorMessage], [Type]) VALUES (3, N'status', N'features.administration.containers.esession-edit.status', 1, NULL, N'4', N'features.administration.containers.esession-edit.statusFieldRequired', N'select')
INSERT [dbo].[EsessionConfiguration] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [ErrorMessage], [Type]) VALUES (4, N'date', N'features.administration.containers.esession-edit.date', 1, NULL, NULL, N'features.administration.containers.esession-edit.dateFieldRequired', N'dateTimePicker')
INSERT [dbo].[EsessionConfiguration] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [ErrorMessage], [Type]) VALUES (5, N'board', N'features.administration.containers.esession-edit.sessionBoard', 1, NULL, NULL, N'features.administration.containers.esession-edit.sessionBoardFieldRequired', N'select')
INSERT [dbo].[EsessionConfiguration] ([Id], [Name], [Label], [IsMandatory], [RegEx], [Value], [ErrorMessage], [Type]) VALUES (7, N'esessionTypeId', N'features.administration.containers.esession-edit.sessionType', 1, NULL, NULL, N'features.administration.containers.esession-edit.sessionTypeRequired', N'select')
SET IDENTITY_INSERT [dbo].[EsessionConfiguration] OFF
GO

SET IDENTITY_INSERT [dbo].[ESessionName] ON 

INSERT [dbo].[ESessionName] ([Id], [ESessionTypeId], [BoardId], [COUNT]) VALUES (4, 1, 1, 2)
SET IDENTITY_INSERT [dbo].[ESessionName] OFF
GO
INSERT [dbo].[ESessionStatus] ([Id], [Name], [EnumName]) VALUES (1, N'Zakazana', N'Scheduled')
INSERT [dbo].[ESessionStatus] ([Id], [Name], [EnumName]) VALUES (2, N'Zavrsena', N'Completed')
INSERT [dbo].[ESessionStatus] ([Id], [Name], [EnumName]) VALUES (3, N'Otkazana', N'Postponed')
INSERT [dbo].[ESessionStatus] ([Id], [Name], [EnumName]) VALUES (4, N'U pripremi', N'InPreparation')
INSERT [dbo].[ESessionStatus] ([Id], [Name], [EnumName]) VALUES (5, N'Obrisana', N'Deleted')
GO

SET IDENTITY_INSERT [dbo].[EsessionTypes] ON 

INSERT [dbo].[EsessionTypes] ([Id], [Name], [Code], [EnumName], [DiscussionNecessaryForVoting]) VALUES (1, N'Redovna', N'R', N'RegularSession', 0)
INSERT [dbo].[EsessionTypes] ([Id], [Name], [Code], [EnumName], [DiscussionNecessaryForVoting]) VALUES (2, N'Vanredna', N'V', N'Extraordinary', 0)
INSERT [dbo].[EsessionTypes] ([Id], [Name], [Code], [EnumName], [DiscussionNecessaryForVoting]) VALUES (3, N'Vansednično izjašnjavanje', N'VS', N'ExtraordinaryPleading', 0)
SET IDENTITY_INSERT [dbo].[EsessionTypes] OFF

GO
INSERT [dbo].[MemberGroup] ([Id], [Name], [EnumName]) VALUES (1, N'Predsednik', N'President')
INSERT [dbo].[MemberGroup] ([Id], [Name], [EnumName]) VALUES (2, N'Član', N'Member')
INSERT [dbo].[MemberGroup] ([Id], [Name], [EnumName]) VALUES (3, N'Ostalo', N'Other')
GO

SET IDENTITY_INSERT [dbo].[ReportType] ON 

INSERT [dbo].[ReportType] ([Id], [Name], [EnumName], [IsActive], [ReportTypeCode]) VALUES (1, N'EvidencijaSvihDorada', N'reportOnAllRecordsOfRecords', 0, 4)
INSERT [dbo].[ReportType] ([Id], [Name], [EnumName], [IsActive], [ReportTypeCode]) VALUES (2, N'EvidencijaSvihOdluka', N'reportOnTheRecordOfAllDecisions', 0, 1)
INSERT [dbo].[ReportType] ([Id], [Name], [EnumName], [IsActive], [ReportTypeCode]) VALUES (3, N'EvidencijaSvihZakljucaka', N'reportOnAllConclusions', 0, 2)
INSERT [dbo].[ReportType] ([Id], [Name], [EnumName], [IsActive], [ReportTypeCode]) VALUES (4, N'FollowUp', N'followUpReport', 0, 3)
INSERT [dbo].[ReportType] ([Id], [Name], [EnumName], [IsActive], [ReportTypeCode]) VALUES (6, N'EvidencijaRealizacije', N'realizationReport', 1, 5)
SET IDENTITY_INSERT [dbo].[ReportType] OFF
GO
INSERT [dbo].[SignatureType] ([Id], [Name], [EnumName]) VALUES (1, N'Svojerucno', N'Manually')
INSERT [dbo].[SignatureType] ([Id], [Name], [EnumName]) VALUES (2, N'Digitalnom olovkom', N'DigitalPen')
INSERT [dbo].[SignatureType] ([Id], [Name], [EnumName]) VALUES (3, N'Elektronski', N'Electronic')
INSERT [dbo].[SignatureType] ([Id], [Name], [EnumName]) VALUES (4, N'Bez potpisa', N'No signature')
GO

SET IDENTITY_INSERT [uk].[GrupaOperacija] ON 

INSERT [uk].[GrupaOperacija] ([ID], [Naziv], [GrupaOperacijaId]) VALUES (1, N'Administracija korisnika', NULL)
INSERT [uk].[GrupaOperacija] ([ID], [Naziv], [GrupaOperacijaId]) VALUES (2, N'Administracija kompanija', NULL)
INSERT [uk].[GrupaOperacija] ([ID], [Naziv], [GrupaOperacijaId]) VALUES (3, N'Administracija rola', NULL)
SET IDENTITY_INSERT [uk].[GrupaOperacija] OFF
GO
SET IDENTITY_INSERT [uk].[Kompanija] ON 

INSERT [uk].[Kompanija] ([ID], [Sifra], [Naziv], [MB], [PIB], [KompanijaTipId], [JeAktivna], [DodatnoPolje1], [DodatnoPolje2], [DodatnoPolje3], [DodatnoPolje4], [DodatnoPolje5], [DatumKreiranja], [IDSesijeKreiranja], [DatumIzmene], [IDSesijeIzmene], [JeObrisano]) VALUES (1, N'0', N'Telekom Srbija', N'12345678', N'123456789', NULL, 1, N'Root', NULL, NULL, NULL, NULL, CAST(N'2019-01-01T12:00:00.000' AS DateTime), 1, NULL, NULL, 0)
INSERT [uk].[Kompanija] ([ID], [Sifra], [Naziv], [MB], [PIB], [KompanijaTipId], [JeAktivna], [DodatnoPolje1], [DodatnoPolje2], [DodatnoPolje3], [DodatnoPolje4], [DodatnoPolje5], [DatumKreiranja], [IDSesijeKreiranja], [DatumIzmene], [IDSesijeIzmene], [JeObrisano]) VALUES (2, N'1', N'Nadzorni Odbor', N'1234', N'1234', NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-01-01T12:00:00.000' AS DateTime), 1, NULL, NULL, 0)
INSERT [uk].[Kompanija] ([ID], [Sifra], [Naziv], [MB], [PIB], [KompanijaTipId], [JeAktivna], [DodatnoPolje1], [DodatnoPolje2], [DodatnoPolje3], [DodatnoPolje4], [DodatnoPolje5], [DatumKreiranja], [IDSesijeKreiranja], [DatumIzmene], [IDSesijeIzmene], [JeObrisano]) VALUES (3, N'2', N'Upravni Odbor', N'1234', N'1234', NULL, 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-01-01T12:00:00.000' AS DateTime), 1, NULL, NULL, 0)
SET IDENTITY_INSERT [uk].[Kompanija] OFF
GO
SET IDENTITY_INSERT [uk].[KorisnickaUloga] ON 

INSERT [uk].[KorisnickaUloga] ([ID], [Naziv], [TipKorisnickeUloge], [DatumKreiranja], [IDSesijeKreiranja], [DatumIzmene], [IDSesijeIzmene], [JeObrisan], [DodatnoPolje1], [DodatnoPolje2], [DodatnoPolje3], [DodatnoPolje4], [DodatnoPolje5]) VALUES (1, N'SystemAdmin', NULL, CAST(N'2019-01-01T12:00:00.000' AS DateTime), 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [uk].[KorisnickaUloga] ([ID], [Naziv], [TipKorisnickeUloge], [DatumKreiranja], [IDSesijeKreiranja], [DatumIzmene], [IDSesijeIzmene], [JeObrisan], [DodatnoPolje1], [DodatnoPolje2], [DodatnoPolje3], [DodatnoPolje4], [DodatnoPolje5]) VALUES (2, N'SessionAdmin', NULL, CAST(N'2019-01-01T12:00:00.000' AS DateTime), 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [uk].[KorisnickaUloga] ([ID], [Naziv], [TipKorisnickeUloge], [DatumKreiranja], [IDSesijeKreiranja], [DatumIzmene], [IDSesijeIzmene], [JeObrisan], [DodatnoPolje1], [DodatnoPolje2], [DodatnoPolje3], [DodatnoPolje4], [DodatnoPolje5]) VALUES (3, N'Proposer', NULL, CAST(N'2019-01-01T12:00:00.000' AS DateTime), 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [uk].[KorisnickaUloga] OFF
GO
SET IDENTITY_INSERT [uk].[Korisnik] ON 

INSERT [uk].[Korisnik] 
([ID], [Ime], [Prezime], [KorisnickoIme], [Lozinka], [LozinkaSalt], [Domen], [ADNalog], [Email], [VaziOd], [VaziDo], [JeBlokiran],
[RazlogBlokiranjaNaloga], [DodatnoPolje1], [DodatnoPolje2], [DodatnoPolje3], [DodatnoPolje4], [DodatnoPolje5], [JeAktivan], [AktivacioniId], 
[DatumIstekaAktivacije], [DatumKreiranja], [IDSesijeKreiranja], [DatumIzmene], [IDSesijeIzmene], [JeObrisano], [KompanijaId]) 
VALUES 
(1, N'eSession', N'Admin', N'placeholder_for_email', NULL, NULL, NULL, N'placeholder_for_email', N'placeholder_for_email', CAST(N'2019-01-01T12:00:00.000' AS DateTime), NULL, 0, 
NULL, N'123456789', NULL, NULL, NULL, NULL, 1, NULL, NULL, 
CAST(N'2019-01-01T12:00:00.000' AS DateTime), 1, CAST(N'2020-04-23T22:20:22.170' AS DateTime), 1, 0, NULL)
SET IDENTITY_INSERT [uk].[Korisnik] OFF
GO
SET IDENTITY_INSERT [uk].[Autorizacija] ON 
INSERT [uk].[Autorizacija] 
([ID], [IDKorisnika], [IDKorisnickeUloge], [IDKompanije], [DatumKreiranja], [IDSesijeKreiranja], [DatumIzmene], 
[IDSesijeIzmene], [JeObrisan])
VALUES 
(1, 1, 1, 1, CAST(N'2019-01-01T12:00:00.000' AS DateTime), 1, CAST(N'2020-04-23T22:20:22.797' AS DateTime), NULL, NULL)


SET IDENTITY_INSERT [uk].[Autorizacija] OFF 

SET IDENTITY_INSERT [uk].[KorisnikLog] ON 

INSERT [uk].[KorisnikLog] ([ID], [IDKorisnika], [Ime], [Prezime], [KorisnickoIme], [Lozinka], [Domen], [ADNalog], [Email], [VaziOd], [VaziDo], [JeBlokiran], [RazlogBlokiranjaNaloga], [DodatnoPolje1], [DodatnoPolje2], [DodatnoPolje3], [DodatnoPolje4], [DodatnoPolje5], [JeAktivan], [AktivacioniId], [DatumIstekaAktivacije], [DatumKreiranja], [IDSesijeKreiranja], [DatumIzmene], [IDSesijeIzmene], [JeObrisano]) VALUES (1, 1, N'Jovana', N'Jevremovic', N'jovanaj', NULL, NULL, N'jovanaj', N'jovana.jevremovic@comtrade.com', CAST(N'2019-01-01T12:00:00.000' AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-08-22T10:28:20.933' AS DateTime), 1, NULL, NULL, 0)
SET IDENTITY_INSERT [uk].[KorisnikLog] OFF
GO
SET IDENTITY_INSERT [uk].[Operacija] ON 

INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (1, 1, N'Unos korisnika')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (2, 1, N'Izmena korisnika')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (3, 1, N'Aktivacija korisnika')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (4, 1, N'Deaktivacija korisnika')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (5, 1, N'Pregled korisnika')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (6, 1, N'Brisanje korisnika')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (7, 2, N'Unos kompanije')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (8, 2, N'Izmena kompanije')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (9, 2, N'Pregled kompanija')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (10, 2, N'Brisanje kompanije')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (11, 3, N'Unos role')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (12, 3, N'Izmena role')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (13, 3, N'Pregled role')
INSERT [uk].[Operacija] ([ID], [IDGrupeOperacija], [Naziv]) VALUES (14, 3, N'Brisanje role')
SET IDENTITY_INSERT [uk].[Operacija] OFF
GO
SET IDENTITY_INSERT [uk].[Sesija] ON 

INSERT [uk].[Sesija] ([ID], [IDKorisnika], [IDSertifikata], [KorisnickoIme], [ADNalog], [DatumIVreme], [RefreshToken]) VALUES (1, 1, NULL, N'jovanaj', NULL, CAST(N'2019-07-26T12:00:00.000' AS DateTime), N'38WYfRGhFOeqxJjtE2Ery/N/+BnpGSucny0sNAcsVYk=')
SET IDENTITY_INSERT [uk].[Sesija] OFF

GO
ALTER TABLE [dbo].[AgendaItemESession] ADD  DEFAULT ((0)) FOR [OnDiscussion]
GO
ALTER TABLE [dbo].[AgendaItemParticipants] ADD  DEFAULT ((0)) FOR [IsSignatureApproved]
GO
ALTER TABLE [dbo].[AgendaItemParticipants] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AgendaRealization] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [AgendaItemId]
GO
ALTER TABLE [dbo].[AvailableLanguages] ADD  DEFAULT ((0)) FOR [Default]
GO
ALTER TABLE [dbo].[Comment] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[DocumentCategory] ADD  DEFAULT (N'Regular') FOR [EnumName]
GO
ALTER TABLE [dbo].[ESession] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ESession] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [EssesionTypeId]
GO
ALTER TABLE [dbo].[EsessionMaterial] ADD  DEFAULT (N'') FOR [DMSObjectId]
GO
ALTER TABLE [dbo].[EsessionTypes] ADD  DEFAULT (N'') FOR [EnumName]
GO
ALTER TABLE [dbo].[EsessionTypes] ADD  DEFAULT ((0)) FOR [DiscussionNecessaryForVoting]
GO
ALTER TABLE [dbo].[Migration_AgendaItem] ADD  DEFAULT ((0)) FOR [Migrirano]
GO
ALTER TABLE [dbo].[Migration_ESession] ADD  DEFAULT ((0)) FOR [Migrirano]
GO
ALTER TABLE [dbo].[Migration_Participant] ADD  DEFAULT ((0)) FOR [Migrirano]
GO
ALTER TABLE [dbo].[Migration_ParticipantESession] ADD  DEFAULT ((0)) FOR [Migrirano]
GO
ALTER TABLE [dbo].[Migration_ParticipantESessionVote_DnevniRed_Za] ADD  DEFAULT ((0)) FOR [Migrirano]
GO
ALTER TABLE [dbo].[Migration_ParticipantESessionVote_Protiv] ADD  DEFAULT ((0)) FOR [Migrirano]
GO
ALTER TABLE [dbo].[Migration_ParticipantESessionVote_Uzdrzan] ADD  DEFAULT ((0)) FOR [Migrirano]
GO
ALTER TABLE [dbo].[Migration_ParticipantESessionVote_Za] ADD  DEFAULT ((0)) FOR [Migrirano]
GO
ALTER TABLE [dbo].[Migration_SpinnDocument] ADD  DEFAULT ((0)) FOR [Migrirano]
GO
ALTER TABLE [dbo].[Participant] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ParticipantEsessionAgendaItem] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Templates] ADD  CONSTRAINT [DF__Templates__Codeb__06B7F65E]  DEFAULT (CONVERT([bigint],(0))) FOR [CodebookTypeId]
GO
ALTER TABLE [dbo].[Vote] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AgendaItem]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItem_AgendaItemStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[AgendaItemStatus] ([Id])
GO
ALTER TABLE [dbo].[AgendaItem] CHECK CONSTRAINT [FK_AgendaItem_AgendaItemStatus]
GO
ALTER TABLE [dbo].[AgendaItem]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItem_Board_Codebook] FOREIGN KEY([CodebookBoardId])
REFERENCES [dbo].[Codebook] ([Id])
GO
ALTER TABLE [dbo].[AgendaItem] CHECK CONSTRAINT [FK_AgendaItem_Board_Codebook]
GO
ALTER TABLE [dbo].[AgendaItem]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItem_ConfidentialityLevel_Codebook] FOREIGN KEY([CodebookConfidentialityLevelId])
REFERENCES [dbo].[Codebook] ([Id])
GO
ALTER TABLE [dbo].[AgendaItem] CHECK CONSTRAINT [FK_AgendaItem_ConfidentialityLevel_Codebook]
GO
ALTER TABLE [dbo].[AgendaItem]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItem_VotingMethodType] FOREIGN KEY([VotingMethodTypeId])
REFERENCES [dbo].[VotingMethodTypes] ([Id])
GO
ALTER TABLE [dbo].[AgendaItem] CHECK CONSTRAINT [FK_AgendaItem_VotingMethodType]
GO
ALTER TABLE [dbo].[AgendaItemESession]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemESession_AgendaItem] FOREIGN KEY([AgendaItemId])
REFERENCES [dbo].[AgendaItem] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemESession] CHECK CONSTRAINT [FK_AgendaItemESession_AgendaItem]
GO
ALTER TABLE [dbo].[AgendaItemESession]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemESession_AgendaItemESession_EsessionAgendaItemId] FOREIGN KEY([EsessionAgendaItemId])
REFERENCES [dbo].[AgendaItemESession] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemESession] CHECK CONSTRAINT [FK_AgendaItemESession_AgendaItemESession_EsessionAgendaItemId]
GO
ALTER TABLE [dbo].[AgendaItemESession]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemESession_AgendaItemVotingStatus] FOREIGN KEY([VotingStatusId])
REFERENCES [dbo].[AgendaItemVotingStatus] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemESession] CHECK CONSTRAINT [FK_AgendaItemESession_AgendaItemVotingStatus]
GO
ALTER TABLE [dbo].[AgendaItemESession]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemESession_ESession] FOREIGN KEY([ESessionId])
REFERENCES [dbo].[ESession] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemESession] CHECK CONSTRAINT [FK_AgendaItemESession_ESession]
GO
ALTER TABLE [dbo].[AgendaItemESessionConfigurations]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemESessionConfigurations_EsessionTypes_EsessionTypeId] FOREIGN KEY([EsessionTypeId])
REFERENCES [dbo].[EsessionTypes] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemESessionConfigurations] CHECK CONSTRAINT [FK_AgendaItemESessionConfigurations_EsessionTypes_EsessionTypeId]
GO
ALTER TABLE [dbo].[AgendaItemHistory]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemHistory_AgendaItem] FOREIGN KEY([AgendaItemId])
REFERENCES [dbo].[AgendaItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgendaItemHistory] CHECK CONSTRAINT [FK_AgendaItemHistory_AgendaItem]
GO
ALTER TABLE [dbo].[AgendaItemHistory]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemHistory_AgendaItemHistoryAction] FOREIGN KEY([HistoryActionId])
REFERENCES [dbo].[AgendaItemHistoryAction] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemHistory] CHECK CONSTRAINT [FK_AgendaItemHistory_AgendaItemHistoryAction]
GO
ALTER TABLE [dbo].[AgendaItemHistory]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemHistory_ESessionId] FOREIGN KEY([ESessionId])
REFERENCES [dbo].[ESession] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemHistory] CHECK CONSTRAINT [FK_AgendaItemHistory_ESessionId]
GO
ALTER TABLE [dbo].[AgendaItemHistory]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemHistory_MaterialId] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[AgendaItemMaterial] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemHistory] CHECK CONSTRAINT [FK_AgendaItemHistory_MaterialId]
GO
ALTER TABLE [dbo].[AgendaItemMaterial]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemMaterial_AgendaItem] FOREIGN KEY([AgendaItemId])
REFERENCES [dbo].[AgendaItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgendaItemMaterial] CHECK CONSTRAINT [FK_AgendaItemMaterial_AgendaItem]
GO
ALTER TABLE [dbo].[AgendaItemMaterial]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemMaterial_Codebook] FOREIGN KEY([CodebookMaterialTypeId])
REFERENCES [dbo].[Codebook] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemMaterial] CHECK CONSTRAINT [FK_AgendaItemMaterial_Codebook]
GO
ALTER TABLE [dbo].[AgendaItemMaterial]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemMaterial_DocumentCategory] FOREIGN KEY([DocumentCategoryId])
REFERENCES [dbo].[DocumentCategory] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemMaterial] CHECK CONSTRAINT [FK_AgendaItemMaterial_DocumentCategory]
GO
ALTER TABLE [dbo].[AgendaItemMaterial]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemMaterial_SignatureType] FOREIGN KEY([SignatureTypeId])
REFERENCES [dbo].[SignatureType] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemMaterial] CHECK CONSTRAINT [FK_AgendaItemMaterial_SignatureType]
GO
ALTER TABLE [dbo].[AgendaItemMaterialFile]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemMaterialFile_AgendaItemMaterial] FOREIGN KEY([AgendaItemMaterialId])
REFERENCES [dbo].[AgendaItemMaterial] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgendaItemMaterialFile] CHECK CONSTRAINT [FK_AgendaItemMaterialFile_AgendaItemMaterial]
GO
ALTER TABLE [dbo].[AgendaItemMaterialSigned]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemMaterialSigned_AgendaItem] FOREIGN KEY([AgendaItemId])
REFERENCES [dbo].[AgendaItem] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemMaterialSigned] CHECK CONSTRAINT [FK_AgendaItemMaterialSigned_AgendaItem]
GO
ALTER TABLE [dbo].[AgendaItemMaterialSigned]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemMaterialSigned_AgendaItemMaterial] FOREIGN KEY([AgendaItemMaterialId])
REFERENCES [dbo].[AgendaItemMaterial] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgendaItemMaterialSigned] CHECK CONSTRAINT [FK_AgendaItemMaterialSigned_AgendaItemMaterial]
GO
ALTER TABLE [dbo].[AgendaItemMaterialSigned]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemMaterialSigned_ESession] FOREIGN KEY([ESessionId])
REFERENCES [dbo].[ESession] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemMaterialSigned] CHECK CONSTRAINT [FK_AgendaItemMaterialSigned_ESession]
GO
ALTER TABLE [dbo].[AgendaItemParticipants]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemParticipants_AgendaItemMaterial] FOREIGN KEY([AgendaItemMaterialId])
REFERENCES [dbo].[AgendaItemMaterial] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgendaItemParticipants] CHECK CONSTRAINT [FK_AgendaItemParticipants_AgendaItemMaterial]
GO
ALTER TABLE [dbo].[AgendaItemParticipants]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemParticipants_Participant] FOREIGN KEY([ParticipantId])
REFERENCES [dbo].[Participant] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemParticipants] CHECK CONSTRAINT [FK_AgendaItemParticipants_Participant]
GO
ALTER TABLE [dbo].[AgendaItemVoted]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemVoted_AgendaItem] FOREIGN KEY([AgendaItemId])
REFERENCES [dbo].[AgendaItem] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemVoted] CHECK CONSTRAINT [FK_AgendaItemVoted_AgendaItem]
GO
ALTER TABLE [dbo].[AgendaItemVoted]  WITH CHECK ADD  CONSTRAINT [FK_AgendaItemVoted_Distribution] FOREIGN KEY([DistributionId])
REFERENCES [dbo].[Distribution] ([Id])
GO
ALTER TABLE [dbo].[AgendaItemVoted] CHECK CONSTRAINT [FK_AgendaItemVoted_Distribution]
GO
ALTER TABLE [dbo].[AgendaRealization]  WITH CHECK ADD  CONSTRAINT [FK_AgendaRealization_AgendaRealizationStatus] FOREIGN KEY([RealizationStatusId])
REFERENCES [dbo].[AgendaRealizationStatus] ([Id])
GO
ALTER TABLE [dbo].[AgendaRealization] CHECK CONSTRAINT [FK_AgendaRealization_AgendaRealizationStatus]
GO
ALTER TABLE [dbo].[AgendaRealization]  WITH CHECK ADD  CONSTRAINT [FK_AgendaRealization_EsessionId] FOREIGN KEY([EsessionId])
REFERENCES [dbo].[ESession] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgendaRealization] CHECK CONSTRAINT [FK_AgendaRealization_EsessionId]
GO
ALTER TABLE [dbo].[AgendaRealization]  WITH CHECK ADD  CONSTRAINT [FK_AgendaRealizations_AgendaItem] FOREIGN KEY([AgendaItemId])
REFERENCES [dbo].[AgendaItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgendaRealization] CHECK CONSTRAINT [FK_AgendaRealizations_AgendaItem]
GO
ALTER TABLE [dbo].[AgendaRealizationDateHistory]  WITH CHECK ADD  CONSTRAINT [FK_AgendaRealizationDateHistory_AgendaRealization] FOREIGN KEY([AgendaRealizationId])
REFERENCES [dbo].[AgendaRealization] ([Id])
GO
ALTER TABLE [dbo].[AgendaRealizationDateHistory] CHECK CONSTRAINT [FK_AgendaRealizationDateHistory_AgendaRealization]
GO
ALTER TABLE [dbo].[AgendaRealizationExecutant]  WITH CHECK ADD  CONSTRAINT [FK_AgendaRealization_AgendaRealizationExecutant] FOREIGN KEY([AgendaRealizationId])
REFERENCES [dbo].[AgendaRealization] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgendaRealizationExecutant] CHECK CONSTRAINT [FK_AgendaRealization_AgendaRealizationExecutant]
GO
ALTER TABLE [dbo].[AgendaRealizationExecutant]  WITH CHECK ADD  CONSTRAINT [FK_AgendaRealizationParticipant_Executant] FOREIGN KEY([ExecutantId])
REFERENCES [dbo].[Executant] ([Id])
GO
ALTER TABLE [dbo].[AgendaRealizationExecutant] CHECK CONSTRAINT [FK_AgendaRealizationParticipant_Executant]
GO
ALTER TABLE [dbo].[AgendaRealizationMaterial]  WITH CHECK ADD  CONSTRAINT [FK__AgendaRealizationMaterial_AgendaItemMaterials] FOREIGN KEY([AgendaMaterialId])
REFERENCES [dbo].[AgendaItemMaterial] ([Id])
GO
ALTER TABLE [dbo].[AgendaRealizationMaterial] CHECK CONSTRAINT [FK__AgendaRealizationMaterial_AgendaItemMaterials]
GO
ALTER TABLE [dbo].[AgendaRealizationMaterial]  WITH CHECK ADD  CONSTRAINT [FK_AgendaRealizationMaterial_AgendaRealization] FOREIGN KEY([AgendaRealizationId])
REFERENCES [dbo].[AgendaRealization] ([Id])
GO
ALTER TABLE [dbo].[AgendaRealizationMaterial] CHECK CONSTRAINT [FK_AgendaRealizationMaterial_AgendaRealization]
GO
ALTER TABLE [dbo].[BoardMember]  WITH CHECK ADD  CONSTRAINT [FK_BoardMember_Board] FOREIGN KEY([CodebookBoardId])
REFERENCES [dbo].[Codebook] ([Id])
GO
ALTER TABLE [dbo].[BoardMember] CHECK CONSTRAINT [FK_BoardMember_Board]
GO
ALTER TABLE [dbo].[BoardMember]  WITH CHECK ADD  CONSTRAINT [FK_BoardMember_MemberGroup] FOREIGN KEY([MemberGroupId])
REFERENCES [dbo].[MemberGroup] ([Id])
GO
ALTER TABLE [dbo].[BoardMember] CHECK CONSTRAINT [FK_BoardMember_MemberGroup]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_AgendaItemESession] FOREIGN KEY([AgendaItemESessionId])
REFERENCES [dbo].[AgendaItemESession] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_AgendaItemESession]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_ParticipanESession] FOREIGN KEY([ParticipantESessionId])
REFERENCES [dbo].[ParticipanESession] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_ParticipanESession]
GO
ALTER TABLE [dbo].[Distribution]  WITH CHECK ADD  CONSTRAINT [FK_Distribution_ESession] FOREIGN KEY([ESessionId])
REFERENCES [dbo].[ESession] ([Id])
GO
ALTER TABLE [dbo].[Distribution] CHECK CONSTRAINT [FK_Distribution_ESession]
GO
ALTER TABLE [dbo].[DistributionMaterial]  WITH CHECK ADD  CONSTRAINT [FK__DistributionMaterial_AgendaItemMaterial] FOREIGN KEY([AgendaItemMaterialId])
REFERENCES [dbo].[AgendaItemMaterial] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[DistributionMaterial] CHECK CONSTRAINT [FK__DistributionMaterial_AgendaItemMaterial]
GO
ALTER TABLE [dbo].[DistributionMaterial]  WITH CHECK ADD  CONSTRAINT [FK_DistributionMaterial_Distribution] FOREIGN KEY([DistributionId])
REFERENCES [dbo].[Distribution] ([Id])
GO
ALTER TABLE [dbo].[DistributionMaterial] CHECK CONSTRAINT [FK_DistributionMaterial_Distribution]
GO
ALTER TABLE [dbo].[DistributionParticipant]  WITH CHECK ADD  CONSTRAINT [FK_DistributionParticipant_Distribution] FOREIGN KEY([DistributionId])
REFERENCES [dbo].[Distribution] ([Id])
GO
ALTER TABLE [dbo].[DistributionParticipant] CHECK CONSTRAINT [FK_DistributionParticipant_Distribution]
GO
ALTER TABLE [dbo].[DistributionParticipant]  WITH CHECK ADD  CONSTRAINT [FK_DistributionParticipant_Participant] FOREIGN KEY([ParticipantId])
REFERENCES [dbo].[Participant] ([Id])
GO
ALTER TABLE [dbo].[DistributionParticipant] CHECK CONSTRAINT [FK_DistributionParticipant_Participant]
GO
ALTER TABLE [dbo].[ESession]  WITH CHECK ADD  CONSTRAINT [FK_ESession_Board] FOREIGN KEY([CodebookBoardId])
REFERENCES [dbo].[Codebook] ([Id])
GO
ALTER TABLE [dbo].[ESession] CHECK CONSTRAINT [FK_ESession_Board]
GO
ALTER TABLE [dbo].[ESession]  WITH CHECK ADD  CONSTRAINT [FK_ESession_ESessionStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[ESessionStatus] ([Id])
GO
ALTER TABLE [dbo].[ESession] CHECK CONSTRAINT [FK_ESession_ESessionStatus]
GO
ALTER TABLE [dbo].[EsessionEmailInvitationMaterials]  WITH CHECK ADD  CONSTRAINT [FK_EsessionEmailInvitationMaterials_EsessionEmailInvitations_EsessionEmailInvitationId] FOREIGN KEY([EsessionEmailInvitationId])
REFERENCES [dbo].[EsessionEmailInvitations] ([Id])
GO
ALTER TABLE [dbo].[EsessionEmailInvitationMaterials] CHECK CONSTRAINT [FK_EsessionEmailInvitationMaterials_EsessionEmailInvitations_EsessionEmailInvitationId]
GO
ALTER TABLE [dbo].[EsessionEmailInvitationMaterials]  WITH CHECK ADD  CONSTRAINT [FK_EsessionEmailInvitationMaterials_EsessionMaterial_EsessionMaterialId] FOREIGN KEY([EsessionMaterialId])
REFERENCES [dbo].[EsessionMaterial] ([Id])
GO
ALTER TABLE [dbo].[EsessionEmailInvitationMaterials] CHECK CONSTRAINT [FK_EsessionEmailInvitationMaterials_EsessionMaterial_EsessionMaterialId]
GO
ALTER TABLE [dbo].[EsessionEmailInvitationParticipants]  WITH CHECK ADD  CONSTRAINT [FK_EsessionEmailInvitationParticipants_EsessionEmailInvitations_EsessionEmailInvitationId] FOREIGN KEY([EsessionEmailInvitationId])
REFERENCES [dbo].[EsessionEmailInvitations] ([Id])
GO
ALTER TABLE [dbo].[EsessionEmailInvitationParticipants] CHECK CONSTRAINT [FK_EsessionEmailInvitationParticipants_EsessionEmailInvitations_EsessionEmailInvitationId]
GO
ALTER TABLE [dbo].[EsessionEmailInvitationParticipants]  WITH CHECK ADD  CONSTRAINT [FK_EsessionEmailInvitationParticipants_Participant_ParticipantId] FOREIGN KEY([ParticipantId])
REFERENCES [dbo].[Participant] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EsessionEmailInvitationParticipants] CHECK CONSTRAINT [FK_EsessionEmailInvitationParticipants_Participant_ParticipantId]
GO
ALTER TABLE [dbo].[EsessionEmailInvitations]  WITH CHECK ADD  CONSTRAINT [FK_EsessionEmailInvitations_ESession_ESessionId] FOREIGN KEY([ESessionId])
REFERENCES [dbo].[ESession] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EsessionEmailInvitations] CHECK CONSTRAINT [FK_EsessionEmailInvitations_ESession_ESessionId]
GO
ALTER TABLE [dbo].[EsessionMaterial]  WITH CHECK ADD  CONSTRAINT [FK_Codebooks_EssesionMaterials_CoodebookId] FOREIGN KEY([CodebookId])
REFERENCES [dbo].[Codebook] ([Id])
GO
ALTER TABLE [dbo].[EsessionMaterial] CHECK CONSTRAINT [FK_Codebooks_EssesionMaterials_CoodebookId]
GO
ALTER TABLE [dbo].[EsessionMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ESession_EssesionMaterials_EsessionId] FOREIGN KEY([EsessionId])
REFERENCES [dbo].[ESession] ([Id])
GO
ALTER TABLE [dbo].[EsessionMaterial] CHECK CONSTRAINT [FK_ESession_EssesionMaterials_EsessionId]
GO
ALTER TABLE [dbo].[EsessionMaterial]  WITH CHECK ADD  CONSTRAINT [FK_EssesionMaterials_AgendaRealization] FOREIGN KEY([AgendaRealizationId])
REFERENCES [dbo].[AgendaRealization] ([Id])
GO
ALTER TABLE [dbo].[EsessionMaterial] CHECK CONSTRAINT [FK_EssesionMaterials_AgendaRealization]
GO
ALTER TABLE [dbo].[ESessionName]  WITH CHECK ADD  CONSTRAINT [FK_ESessionName_Codebook_CodebookId] FOREIGN KEY([BoardId])
REFERENCES [dbo].[Codebook] ([Id])
GO
ALTER TABLE [dbo].[ESessionName] CHECK CONSTRAINT [FK_ESessionName_Codebook_CodebookId]
GO
ALTER TABLE [dbo].[ESessionName]  WITH CHECK ADD  CONSTRAINT [FK_ESessionName_EsessionTypes_EsessionTypeId] FOREIGN KEY([ESessionTypeId])
REFERENCES [dbo].[EsessionTypes] ([Id])
GO
ALTER TABLE [dbo].[ESessionName] CHECK CONSTRAINT [FK_ESessionName_EsessionTypes_EsessionTypeId]
GO
ALTER TABLE [dbo].[ParticipanESession]  WITH CHECK ADD  CONSTRAINT [FK__Participa__Membe__3A4CA8FD] FOREIGN KEY([MemberGroupId])
REFERENCES [dbo].[MemberGroup] ([Id])
GO
ALTER TABLE [dbo].[ParticipanESession] CHECK CONSTRAINT [FK__Participa__Membe__3A4CA8FD]
GO
ALTER TABLE [dbo].[ParticipanESession]  WITH NOCHECK ADD  CONSTRAINT [FK_ParticipanESession_ESession] FOREIGN KEY([SessionId])
REFERENCES [dbo].[ESession] ([Id])
GO
ALTER TABLE [dbo].[ParticipanESession] CHECK CONSTRAINT [FK_ParticipanESession_ESession]
GO
ALTER TABLE [dbo].[ParticipanESession]  WITH NOCHECK ADD  CONSTRAINT [FK_ParticipanESession_Participant] FOREIGN KEY([ParticipantId])
REFERENCES [dbo].[Participant] ([Id])
GO
ALTER TABLE [dbo].[ParticipanESession] CHECK CONSTRAINT [FK_ParticipanESession_Participant]
GO
ALTER TABLE [dbo].[ParticipantEsessionAgendaItem]  WITH CHECK ADD  CONSTRAINT [FK__Participa__Agend__3864608B] FOREIGN KEY([AgendaItemEsessionId])
REFERENCES [dbo].[AgendaItemESession] ([Id])
GO
ALTER TABLE [dbo].[ParticipantEsessionAgendaItem] CHECK CONSTRAINT [FK__Participa__Agend__3864608B]
GO
ALTER TABLE [dbo].[ParticipantEsessionAgendaItem]  WITH CHECK ADD  CONSTRAINT [FK__Participa__Parti__37703C52] FOREIGN KEY([ParticipantEsessionId])
REFERENCES [dbo].[ParticipanESession] ([Id])
GO
ALTER TABLE [dbo].[ParticipantEsessionAgendaItem] CHECK CONSTRAINT [FK__Participa__Parti__37703C52]
GO
ALTER TABLE [dbo].[ParticipantSignatureEPero]  WITH CHECK ADD  CONSTRAINT [FK_ParticipantSignatureEPero_Participant] FOREIGN KEY([ParticipantId])
REFERENCES [dbo].[Participant] ([Id])
GO
ALTER TABLE [dbo].[ParticipantSignatureEPero] CHECK CONSTRAINT [FK_ParticipantSignatureEPero_Participant]
GO
ALTER TABLE [dbo].[Proceeding]  WITH CHECK ADD  CONSTRAINT [FK_Proceeding_ESession] FOREIGN KEY([ESessionId])
REFERENCES [dbo].[ESession] ([Id])
GO
ALTER TABLE [dbo].[Proceeding] CHECK CONSTRAINT [FK_Proceeding_ESession]
GO
ALTER TABLE [dbo].[ProceedingSignature]  WITH CHECK ADD  CONSTRAINT [FK_ProceedingSignature_Participant] FOREIGN KEY([ParticipantId])
REFERENCES [dbo].[Participant] ([Id])
GO
ALTER TABLE [dbo].[ProceedingSignature] CHECK CONSTRAINT [FK_ProceedingSignature_Participant]
GO
ALTER TABLE [dbo].[ProceedingSignature]  WITH CHECK ADD  CONSTRAINT [FK_ProceedingSignature_Proceeding] FOREIGN KEY([ProceedingId])
REFERENCES [dbo].[Proceeding] ([Id])
GO
ALTER TABLE [dbo].[ProceedingSignature] CHECK CONSTRAINT [FK_ProceedingSignature_Proceeding]
GO
ALTER TABLE [dbo].[ProceedingSignedVersion]  WITH CHECK ADD  CONSTRAINT [FK_ProceedingSignedVersion_Proceeding] FOREIGN KEY([ProceedingId])
REFERENCES [dbo].[Proceeding] ([Id])
GO
ALTER TABLE [dbo].[ProceedingSignedVersion] CHECK CONSTRAINT [FK_ProceedingSignedVersion_Proceeding]
GO
ALTER TABLE [dbo].[Templates]  WITH CHECK ADD  CONSTRAINT [FK_Templates_Codebook] FOREIGN KEY([CodebookTypeId])
REFERENCES [dbo].[Codebook] ([Id])
GO
ALTER TABLE [dbo].[Templates] CHECK CONSTRAINT [FK_Templates_Codebook]
GO
ALTER TABLE [dbo].[Vote]  WITH CHECK ADD  CONSTRAINT [FK_Vote_AgendaItemESession] FOREIGN KEY([AgendaItemEsessionId])
REFERENCES [dbo].[AgendaItemESession] ([Id])
GO
ALTER TABLE [dbo].[Vote] CHECK CONSTRAINT [FK_Vote_AgendaItemESession]
GO
ALTER TABLE [dbo].[Vote]  WITH CHECK ADD  CONSTRAINT [FK_Vote_Participant] FOREIGN KEY([ParticipantId])
REFERENCES [dbo].[Participant] ([Id])
GO
ALTER TABLE [dbo].[Vote] CHECK CONSTRAINT [FK_Vote_Participant]
GO
ALTER TABLE [dbo].[Vote]  WITH CHECK ADD  CONSTRAINT [FK_Vote_VoteType] FOREIGN KEY([VoteTypeId])
REFERENCES [dbo].[VoteType] ([Id])
GO
ALTER TABLE [dbo].[Vote] CHECK CONSTRAINT [FK_Vote_VoteType]
GO
ALTER TABLE [uk].[Autorizacija]  WITH CHECK ADD  CONSTRAINT [FK_Autorizacija_Kompanija] FOREIGN KEY([IDKompanije])
REFERENCES [uk].[Kompanija] ([ID])
GO
ALTER TABLE [uk].[Autorizacija] CHECK CONSTRAINT [FK_Autorizacija_Kompanija]
GO
ALTER TABLE [uk].[Autorizacija]  WITH CHECK ADD  CONSTRAINT [FK_Autorizacija_KorisnickaUloga] FOREIGN KEY([IDKorisnickeUloge])
REFERENCES [uk].[KorisnickaUloga] ([ID])
GO
ALTER TABLE [uk].[Autorizacija] CHECK CONSTRAINT [FK_Autorizacija_KorisnickaUloga]
GO
ALTER TABLE [uk].[Autorizacija]  WITH CHECK ADD  CONSTRAINT [FK_Autorizacija_Korisnik] FOREIGN KEY([IDKorisnika])
REFERENCES [uk].[Korisnik] ([ID])
GO
ALTER TABLE [uk].[Autorizacija] CHECK CONSTRAINT [FK_Autorizacija_Korisnik]
GO
ALTER TABLE [uk].[Autorizacija]  WITH CHECK ADD  CONSTRAINT [FK_Autorizacija_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[Autorizacija] CHECK CONSTRAINT [FK_Autorizacija_SesijaIzmene]
GO
ALTER TABLE [uk].[Autorizacija]  WITH CHECK ADD  CONSTRAINT [FK_Autorizacija_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[Autorizacija] CHECK CONSTRAINT [FK_Autorizacija_SesijaKreiranja]
GO
ALTER TABLE [uk].[AutorizacijaLog]  WITH CHECK ADD  CONSTRAINT [FK_AutorizacijaLog_Autorizacija] FOREIGN KEY([IDAutorizacija])
REFERENCES [uk].[Autorizacija] ([ID])
GO
ALTER TABLE [uk].[AutorizacijaLog] CHECK CONSTRAINT [FK_AutorizacijaLog_Autorizacija]
GO
ALTER TABLE [uk].[AutorizacijaLog]  WITH CHECK ADD  CONSTRAINT [FK_AutorizacijaLog_Kompanija] FOREIGN KEY([IDKompanije])
REFERENCES [uk].[Kompanija] ([ID])
GO
ALTER TABLE [uk].[AutorizacijaLog] CHECK CONSTRAINT [FK_AutorizacijaLog_Kompanija]
GO
ALTER TABLE [uk].[AutorizacijaLog]  WITH CHECK ADD  CONSTRAINT [FK_AutorizacijaLog_KorisnickaUloga] FOREIGN KEY([IDKorisnickeUloge])
REFERENCES [uk].[KorisnickaUloga] ([ID])
GO
ALTER TABLE [uk].[AutorizacijaLog] CHECK CONSTRAINT [FK_AutorizacijaLog_KorisnickaUloga]
GO
ALTER TABLE [uk].[AutorizacijaLog]  WITH CHECK ADD  CONSTRAINT [FK_AutorizacijaLog_Korisnik] FOREIGN KEY([IDKorisnika])
REFERENCES [uk].[Korisnik] ([ID])
GO
ALTER TABLE [uk].[AutorizacijaLog] CHECK CONSTRAINT [FK_AutorizacijaLog_Korisnik]
GO
ALTER TABLE [uk].[AutorizacijaLog]  WITH CHECK ADD  CONSTRAINT [FK_AutorizacijaLog_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[AutorizacijaLog] CHECK CONSTRAINT [FK_AutorizacijaLog_SesijaIzmene]
GO
ALTER TABLE [uk].[AutorizacijaLog]  WITH CHECK ADD  CONSTRAINT [FK_AutorizacijaLog_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[AutorizacijaLog] CHECK CONSTRAINT [FK_AutorizacijaLog_SesijaKreiranja]
GO
ALTER TABLE [uk].[Kompanija]  WITH CHECK ADD  CONSTRAINT [FK_Kompanija_KompanijaTip] FOREIGN KEY([KompanijaTipId])
REFERENCES [uk].[KompanijaTip] ([ID])
GO
ALTER TABLE [uk].[Kompanija] CHECK CONSTRAINT [FK_Kompanija_KompanijaTip]
GO
ALTER TABLE [uk].[Kompanija]  WITH CHECK ADD  CONSTRAINT [FK_Kompanija_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[Kompanija] CHECK CONSTRAINT [FK_Kompanija_SesijaIzmene]
GO
ALTER TABLE [uk].[Kompanija]  WITH CHECK ADD  CONSTRAINT [FK_Kompanija_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[Kompanija] CHECK CONSTRAINT [FK_Kompanija_SesijaKreiranja]
GO
ALTER TABLE [uk].[KompanijaLog]  WITH CHECK ADD  CONSTRAINT [FK_KompanijaLog_Kompanija] FOREIGN KEY([IDKompanija])
REFERENCES [uk].[Kompanija] ([ID])
GO
ALTER TABLE [uk].[KompanijaLog] CHECK CONSTRAINT [FK_KompanijaLog_Kompanija]
GO
ALTER TABLE [uk].[KompanijaLog]  WITH CHECK ADD  CONSTRAINT [FK_KompanijaLog_KompanijaTip] FOREIGN KEY([KompanijaTipId])
REFERENCES [uk].[KompanijaTip] ([ID])
GO
ALTER TABLE [uk].[KompanijaLog] CHECK CONSTRAINT [FK_KompanijaLog_KompanijaTip]
GO
ALTER TABLE [uk].[KompanijaLog]  WITH CHECK ADD  CONSTRAINT [FK_KompanijaLog_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KompanijaLog] CHECK CONSTRAINT [FK_KompanijaLog_SesijaIzmene]
GO
ALTER TABLE [uk].[KompanijaLog]  WITH CHECK ADD  CONSTRAINT [FK_KompanijaLog_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KompanijaLog] CHECK CONSTRAINT [FK_KompanijaLog_SesijaKreiranja]
GO
ALTER TABLE [uk].[KorisnickaUloga]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga] CHECK CONSTRAINT [FK_KorisnickaUloga_SesijaIzmene]
GO
ALTER TABLE [uk].[KorisnickaUloga]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga] CHECK CONSTRAINT [FK_KorisnickaUloga_SesijaKreiranja]
GO
ALTER TABLE [uk].[KorisnickaUloga_Operacije]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_Operacije_KorisnickaUloga] FOREIGN KEY([IDKorisnickeUloge])
REFERENCES [uk].[KorisnickaUloga] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga_Operacije] CHECK CONSTRAINT [FK_KorisnickaUloga_Operacije_KorisnickaUloga]
GO
ALTER TABLE [uk].[KorisnickaUloga_Operacije]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_Operacije_Operacija] FOREIGN KEY([IDOperacije])
REFERENCES [uk].[Operacija] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga_Operacije] CHECK CONSTRAINT [FK_KorisnickaUloga_Operacije_Operacija]
GO
ALTER TABLE [uk].[KorisnickaUloga_Operacije]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_Operacije_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga_Operacije] CHECK CONSTRAINT [FK_KorisnickaUloga_Operacije_SesijaIzmene]
GO
ALTER TABLE [uk].[KorisnickaUloga_Operacije]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_Operacije_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga_Operacije] CHECK CONSTRAINT [FK_KorisnickaUloga_Operacije_SesijaKreiranja]
GO
ALTER TABLE [uk].[KorisnickaUloga_OperacijeLog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_OperacijeLog_KorisnickaUloga] FOREIGN KEY([IDKorisnickeUloge])
REFERENCES [uk].[KorisnickaUloga] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga_OperacijeLog] CHECK CONSTRAINT [FK_KorisnickaUloga_OperacijeLog_KorisnickaUloga]
GO
ALTER TABLE [uk].[KorisnickaUloga_OperacijeLog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_OperacijeLog_KorisnickaUloga_Operacije] FOREIGN KEY([IDKorinickaUlogaOperacija])
REFERENCES [uk].[KorisnickaUloga_Operacije] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga_OperacijeLog] CHECK CONSTRAINT [FK_KorisnickaUloga_OperacijeLog_KorisnickaUloga_Operacije]
GO
ALTER TABLE [uk].[KorisnickaUloga_OperacijeLog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_OperacijeLog_Operacija] FOREIGN KEY([IDOperacije])
REFERENCES [uk].[Operacija] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga_OperacijeLog] CHECK CONSTRAINT [FK_KorisnickaUloga_OperacijeLog_Operacija]
GO
ALTER TABLE [uk].[KorisnickaUloga_OperacijeLog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_OperacijeLog_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga_OperacijeLog] CHECK CONSTRAINT [FK_KorisnickaUloga_OperacijeLog_SesijaIzmene]
GO
ALTER TABLE [uk].[KorisnickaUloga_OperacijeLog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_OperacijeLog_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga_OperacijeLog] CHECK CONSTRAINT [FK_KorisnickaUloga_OperacijeLog_SesijaKreiranja]
GO
ALTER TABLE [uk].[KorisnickaUloga_PravaKreiranja]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_PravaKreiranja_KorisnickaUlogaKreator] FOREIGN KEY([KorisnickaUlogaKreatorId])
REFERENCES [uk].[KorisnickaUloga] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga_PravaKreiranja] CHECK CONSTRAINT [FK_KorisnickaUloga_PravaKreiranja_KorisnickaUlogaKreator]
GO
ALTER TABLE [uk].[KorisnickaUloga_PravaKreiranja]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUloga_PravaKreiranja_KreiranaKorisnickaUloga] FOREIGN KEY([KreiranaKorisnickaUlogaId])
REFERENCES [uk].[KorisnickaUloga] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUloga_PravaKreiranja] CHECK CONSTRAINT [FK_KorisnickaUloga_PravaKreiranja_KreiranaKorisnickaUloga]
GO
ALTER TABLE [uk].[KorisnickaUlogaLog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUlogaLog_KorisnickaUloga] FOREIGN KEY([IDKorsinickaUloga])
REFERENCES [uk].[KorisnickaUloga] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUlogaLog] CHECK CONSTRAINT [FK_KorisnickaUlogaLog_KorisnickaUloga]
GO
ALTER TABLE [uk].[KorisnickaUlogaLog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUlogaLog_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUlogaLog] CHECK CONSTRAINT [FK_KorisnickaUlogaLog_SesijaIzmene]
GO
ALTER TABLE [uk].[KorisnickaUlogaLog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnickaUlogaLog_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KorisnickaUlogaLog] CHECK CONSTRAINT [FK_KorisnickaUlogaLog_SesijaKreiranja]
GO
ALTER TABLE [uk].[Korisnik]  WITH CHECK ADD  CONSTRAINT [FK_Korisnik_KompanijaId] FOREIGN KEY([KompanijaId])
REFERENCES [uk].[Kompanija] ([ID])
GO
ALTER TABLE [uk].[Korisnik] CHECK CONSTRAINT [FK_Korisnik_KompanijaId]
GO
ALTER TABLE [uk].[Korisnik]  WITH CHECK ADD  CONSTRAINT [FK_Korisnik_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[Korisnik] CHECK CONSTRAINT [FK_Korisnik_SesijaIzmene]
GO
ALTER TABLE [uk].[Korisnik]  WITH CHECK ADD  CONSTRAINT [FK_Korisnik_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[Korisnik] CHECK CONSTRAINT [FK_Korisnik_SesijaKreiranja]
GO
ALTER TABLE [uk].[KorisnikLog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnikLog_Korisnik] FOREIGN KEY([IDKorisnika])
REFERENCES [uk].[Korisnik] ([ID])
GO
ALTER TABLE [uk].[KorisnikLog] CHECK CONSTRAINT [FK_KorisnikLog_Korisnik]
GO
ALTER TABLE [uk].[KorisnikLog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnikLog_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KorisnikLog] CHECK CONSTRAINT [FK_KorisnikLog_SesijaIzmene]
GO
ALTER TABLE [uk].[KorisnikLog]  WITH CHECK ADD  CONSTRAINT [FK_KorisnikLog_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[KorisnikLog] CHECK CONSTRAINT [FK_KorisnikLog_SesijaKreiranja]
GO
ALTER TABLE [uk].[Operacija]  WITH CHECK ADD  CONSTRAINT [FK_Operacija_GrupaOperacija] FOREIGN KEY([IDGrupeOperacija])
REFERENCES [uk].[GrupaOperacija] ([ID])
GO
ALTER TABLE [uk].[Operacija] CHECK CONSTRAINT [FK_Operacija_GrupaOperacija]
GO
ALTER TABLE [uk].[Sertifikat]  WITH CHECK ADD  CONSTRAINT [FK_Sertifikat_IzdavalacSertifikata] FOREIGN KEY([IDIzdavalacSertifikata])
REFERENCES [uk].[IzdavalacSertifikata] ([ID])
GO
ALTER TABLE [uk].[Sertifikat] CHECK CONSTRAINT [FK_Sertifikat_IzdavalacSertifikata]
GO
ALTER TABLE [uk].[Sertifikat]  WITH CHECK ADD  CONSTRAINT [FK_Sertifikat_Korisnik] FOREIGN KEY([IDKorisnik])
REFERENCES [uk].[Korisnik] ([ID])
GO
ALTER TABLE [uk].[Sertifikat] CHECK CONSTRAINT [FK_Sertifikat_Korisnik]
GO
ALTER TABLE [uk].[Sertifikat]  WITH CHECK ADD  CONSTRAINT [FK_Sertifikat_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[Sertifikat] CHECK CONSTRAINT [FK_Sertifikat_SesijaIzmene]
GO
ALTER TABLE [uk].[Sertifikat]  WITH CHECK ADD  CONSTRAINT [FK_Sertifikat_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[Sertifikat] CHECK CONSTRAINT [FK_Sertifikat_SesijaKreiranja]
GO
ALTER TABLE [uk].[SertifikatLog]  WITH CHECK ADD  CONSTRAINT [FK_SertifikatLog_IzdavalacSertifikata] FOREIGN KEY([IDIzdavalacSertifikata])
REFERENCES [uk].[IzdavalacSertifikata] ([ID])
GO
ALTER TABLE [uk].[SertifikatLog] CHECK CONSTRAINT [FK_SertifikatLog_IzdavalacSertifikata]
GO
ALTER TABLE [uk].[SertifikatLog]  WITH CHECK ADD  CONSTRAINT [FK_SertifikatLog_Kompanija] FOREIGN KEY([IDSertifikat])
REFERENCES [uk].[Sertifikat] ([ID])
GO
ALTER TABLE [uk].[SertifikatLog] CHECK CONSTRAINT [FK_SertifikatLog_Kompanija]
GO
ALTER TABLE [uk].[SertifikatLog]  WITH CHECK ADD  CONSTRAINT [FK_SertifikatLog_Korisnik] FOREIGN KEY([IDKorisnik])
REFERENCES [uk].[Korisnik] ([ID])
GO
ALTER TABLE [uk].[SertifikatLog] CHECK CONSTRAINT [FK_SertifikatLog_Korisnik]
GO
ALTER TABLE [uk].[SertifikatLog]  WITH CHECK ADD  CONSTRAINT [FK_SertifikatLog_SesijaIzmene] FOREIGN KEY([IDSesijeIzmene])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[SertifikatLog] CHECK CONSTRAINT [FK_SertifikatLog_SesijaIzmene]
GO
ALTER TABLE [uk].[SertifikatLog]  WITH CHECK ADD  CONSTRAINT [FK_SertifikatLog_SesijaKreiranja] FOREIGN KEY([IDSesijeKreiranja])
REFERENCES [uk].[Sesija] ([ID])
GO
ALTER TABLE [uk].[SertifikatLog] CHECK CONSTRAINT [FK_SertifikatLog_SesijaKreiranja]
GO
ALTER TABLE [uk].[Sesija]  WITH CHECK ADD  CONSTRAINT [FK_Sesija_Korisnik] FOREIGN KEY([IDKorisnika])
REFERENCES [uk].[Korisnik] ([ID])
GO
ALTER TABLE [uk].[Sesija] CHECK CONSTRAINT [FK_Sesija_Korisnik]
GO
ALTER TABLE [uk].[Sesija]  WITH CHECK ADD  CONSTRAINT [FK_Sesija_Sertifikat] FOREIGN KEY([IDSertifikata])
REFERENCES [uk].[Sertifikat] ([ID])
GO
ALTER TABLE [uk].[Sesija] CHECK CONSTRAINT [FK_Sesija_Sertifikat]
GO
USE [master]
GO
ALTER DATABASE [TestEsession] SET  READ_WRITE 
GO
