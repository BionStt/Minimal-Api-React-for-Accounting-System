/****** Object:  Schema [Accounting]    Script Date: 31/08/2022 15:17:54 ******/
CREATE SCHEMA [Accounting]
GO
/****** Object:  Table [Accounting].[DataSaldoHarian]    Script Date: 31/08/2022 15:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Accounting].[DataSaldoHarian](
	[DataSaldoHarianId] [uniqueidentifier] NOT NULL,
	[NoUrutId] [int] IDENTITY(1,1) NOT NULL,
	[DataAccountId] [uniqueidentifier] NOT NULL,
	[Debet] [money] NOT NULL,
	[Kredit] [money] NOT NULL,
	[Saldo] [money] NOT NULL,
	[TanggalInput] [datetime] NOT NULL,
 CONSTRAINT [PK_DataSaldoHarian] PRIMARY KEY CLUSTERED 
(
	[DataSaldoHarianId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataAccount]    Script Date: 31/08/2022 15:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataAccount](
	[DataAccountId] [uniqueidentifier] NOT NULL,
	[NoUrutId] [int] IDENTITY(1,1) NOT NULL,
	[Lft] [int] NULL,
	[Rgt] [int] NULL,
	[Depth] [int] NULL,
	[Parent] [nvarchar](15) NULL,
	[KodeAccount] [nvarchar](25) NULL,
	[Account] [varchar](150) NULL,
	[NormalPos] [int] NULL,
	[Kelompok] [varchar](2) NULL,
	[Aktif] [nvarchar](max) NULL,
 CONSTRAINT [PK_DataAccount] PRIMARY KEY CLUSTERED 
(
	[DataAccountId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataBuktiTransaksi]    Script Date: 31/08/2022 15:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataBuktiTransaksi](
	[DataBuktiTransaksiId] [uniqueidentifier] NOT NULL,
	[NoUrutId] [int] IDENTITY(1,1) NOT NULL,
	[TipeJournalId] [int] NOT NULL,
	[NoBukti] [nvarchar](max) NULL,
	[TanggalInput] [datetime] NOT NULL,
	[Keterangan] [nvarchar](max) NULL,
	[ValidateBy] [nvarchar](max) NULL,
	[ValidatedDate] [datetime] NOT NULL,
	[Total] [money] NOT NULL,
 CONSTRAINT [PK_DataBuktiTransaksi] PRIMARY KEY CLUSTERED 
(
	[DataBuktiTransaksiId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataJournal]    Script Date: 31/08/2022 15:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataJournal](
	[DataJournalDetailsId] [uniqueidentifier] NOT NULL,
	[NoUrutId] [int] IDENTITY(1,1) NOT NULL,
	[DataJournalHeaderId] [uniqueidentifier] NOT NULL,
	[DataAccountId] [uniqueidentifier] NOT NULL,
	[Debit] [money] NULL,
	[Kredit] [money] NULL,
	[Keterangan] [varchar](400) NULL,
	[TanggalInput] [datetime2](7) NOT NULL,
	[SaldoAwal] [nvarchar](1) NULL,
 CONSTRAINT [PK_DataJournal] PRIMARY KEY CLUSTERED 
(
	[DataJournalDetailsId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataJournalHeader]    Script Date: 31/08/2022 15:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataJournalHeader](
	[DataJournalHeaderId] [uniqueidentifier] NOT NULL,
	[NoUrutId] [int] IDENTITY(1,1) NOT NULL,
	[TanggalInput] [datetime2](7) NOT NULL,
	[NoBuktiJournal] [varchar](40) NULL,
	[Keterangan] [nvarchar](500) NULL,
	[TipeJournalId] [int] NOT NULL,
	[UserInput] [varchar](40) NULL,
	[Validasi] [datetime] NULL,
	[ValidasiOleh] [varchar](40) NULL,
	[Aktif] [varchar](2) NULL,
	[TotalRupiah] [money] NOT NULL,
 CONSTRAINT [PK_DataJournalHeader] PRIMARY KEY CLUSTERED 
(
	[DataJournalHeaderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataPeriode]    Script Date: 31/08/2022 15:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataPeriode](
	[DataPeriodeId] [uniqueidentifier] NOT NULL,
	[NoUrutId] [int] IDENTITY(1,1) NOT NULL,
	[Mulai] [datetime] NOT NULL,
	[Berakhir] [datetime] NOT NULL,
	[IsAktif] [varchar](2) NULL,
	[UserInput] [varchar](50) NULL,
 CONSTRAINT [PK_DataPeriode] PRIMARY KEY CLUSTERED 
(
	[DataPeriodeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataSaldoAwal]    Script Date: 31/08/2022 15:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataSaldoAwal](
	[DataSaldoAwalId] [uniqueidentifier] NOT NULL,
	[NoUrutId] [int] IDENTITY(1,1) NOT NULL,
	[DataAccountId] [uniqueidentifier] NOT NULL,
	[Debet] [money] NOT NULL,
	[Kredit] [money] NOT NULL,
	[Saldo] [money] NOT NULL,
	[TanggalInput] [datetime] NOT NULL,
 CONSTRAINT [PK_DataSaldoAwal] PRIMARY KEY CLUSTERED 
(
	[DataSaldoAwalId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipeJournal]    Script Date: 31/08/2022 15:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipeJournal](
	[TipeJournalId] [uniqueidentifier] NOT NULL,
	[NoUrutId] [int] IDENTITY(1,1) NOT NULL,
	[KodeJournal] [varchar](10) NULL,
	[NamaJournal] [varchar](50) NULL,
 CONSTRAINT [PK_TipeJournal] PRIMARY KEY CLUSTERED 
(
	[TipeJournalId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 31/08/2022 15:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserProfileId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[ConfirmPassword] [nvarchar](max) NULL,
	[OldPassword] [nvarchar](max) NULL,
	[ProfilePicture] [nvarchar](max) NULL,
	[ApplicationUserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserProfileId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DataAccount] ON 

INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'd641c568-8d93-463d-87b0-046775ed0b6e', 144, 296, 297, 3, N'141', N'6.01.03.03', N'BIAYA PROPOSAL', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'604953fb-bf9a-4738-ba9d-047a8acff6d4', 15, 12, 13, 3, N'13', N'1.01.02.02', N'BANK BNI', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'098bf28a-1fb5-4421-952a-06c2a588db08', 151, 310, 311, 3, N'149', N'6.02.01.02', N'BIAYA SEWA GEDUNG', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'b28c6153-5f7a-4934-9b0e-0a4d2b40f197', 162, 334, 335, 3, N'159', N'6.03.01.03', N'BIAYA BONUS', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'12bfa27f-7677-408c-859f-0dcaa137d902', 59, 102, 135, 1, N'1', N'1.02', N'AKTIVA TETAP', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'7648ce5c-8e80-463d-97ce-100ea04fa341', 62, 107, 112, 2, N'59', N'1.02.03', N'KENDARAAN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ac4ebe18-6838-4ff9-aa6d-1225a5b1df3e', 27, 36, 37, 3, N'26', N'1.01.04.01', N'PIUTANG ACO', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'23f4e72b-c138-439e-b3df-16e9d6f16a1b', 69, 129, 134, 2, N'59', N'1.02.08', N'AKUMULASI PENYU GEDUNG DAN TANAH', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'7400afb9-f6b6-45a9-9a46-174c6726722c', 38, 58, 59, 3, N'37', N'1.01.07.01', N'SEWA GEDUNG', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'2b09f139-5d26-4361-b93c-17e396f8eeef', 85, 160, 161, 3, N'77', N'2.01.01.07', N'HUTANG ADIRA FINANCE', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'29f69656-9063-4926-b9ae-188058baea77', 57, 96, 97, 3, N'55', N'1.01.10.02', N'OBLIGASI', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'495d980b-02a7-4748-87e1-18b2b32e93e0', 79, 148, 149, 3, N'77', N'2.01.01.01', N'HUTANG GAJI', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'c378a6f2-c149-49eb-b81b-1a4dc854cdd8', 26, 35, 40, 2, N'9', N'1.01.04', N'PIUTANG KARYAWAN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'aac2a453-9011-41d3-8b72-1af26348a949', 32, 46, 47, 3, N'29', N'1.01.05.03', N'UANG MUKA PEMBELIAN - AKTIVA TETAP', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'bb48d73e-777f-4acb-a8f1-1b4c2c9a3738', 73, 137, 138, 2, N'72', N'1.03.01', N'HAK PATEN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'04071718-b0ac-46e5-a6a7-1bb3e8f35114', 54, 90, 91, 3, N'49', N'1.01.09.05', N'PPH 25', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'd4ed219b-8e3b-4de8-9aeb-1c113f70af69', 7, 373, 376, 0, NULL, N'8', N'PENDAPATAN LAIN LAIN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'767b0a88-9359-4b16-ad2d-1c4df1a4864b', 182, 380, 381, 1, N'8', N'9.02', N'RUGI PENJUALAN AKTIVA', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'321dac11-9f22-4ac3-aee1-208741885f49', 78, 169, 190, 2, N'76', N'2.01.02', N'HUTANG PAJAK', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'1972b969-ffd7-40f4-ade8-20d9c9353644', 120, 243, 244, 2, N'119', N'4.02.01', N'PENJUALAN SUZUKI CAB PANCIRO', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'7581b54d-1506-4845-b2c2-236d023ca8e6', 184, 166, 167, 3, N'77', N'2.01.01.10', N'HUTANG BENGKEL', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'bb099068-d21d-416e-9422-26140a4cf3bd', 126, 256, 257, 1, N'4', N'4.05', N'PENDAPATAN BIAYA KIRIM', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'9c1253a2-59bb-4d53-868c-267a2b5c9e16', 29, 41, 48, 2, N'9', N'1.01.05', N'UANG MUKA PEMASOK', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'c6f1e9d5-7d54-443e-909e-26909dfbfc6b', 53, 88, 89, 3, N'49', N'1.01.09.04', N'PPH FINAL PS 4 AYAT 2', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'569aebc9-b9cb-4761-b59f-2791f51e7f7f', 102, 198, 199, 3, N'98', N'2.01.03.04', N'HUTANG PINJAMAN DARI PT DAGANG JAYA', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'f9ace200-60b9-49b0-bdd4-2d45af9f8f1c', 55, 93, 100, 2, N'9', N'1.01.10', N'INVESTASI JANGKA PANJANG', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'697e7f93-f245-4aff-8e0e-2df4d451d44d', 101, 196, 197, 3, N'98', N'2.01.03.03', N'HUTANG PINJAMAN DARI PT JAYA TERUS', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'aec17e4f-a14f-42e9-9fe6-2fd2533eb9d6', 169, 349, 356, 2, N'158', N'6.03.03', N'BIAYA KOMUNIKASI DAN LISTRIK', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'0f5bb722-3370-4f1d-b763-3026e6bfe34b', 58, 98, 99, 3, N'55', N'1.01.10.03', N'INVESTASI PROPERTI', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'43cddcd6-2ae5-4c5f-ab4e-3042f4eaee2d', 111, 219, 220, 2, N'107', N'3.01.02', N'AGIO SAHAM', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'6433389d-8e23-4f8d-97d8-30dba3a29b30', 138, 284, 285, 3, N'137', N'6.01.02.01', N'BIAYA TINTA', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'2808a369-0da4-45b7-8fcd-31672dff18be', 35, 52, 53, 3, N'33', N'1.01.06.02', N'STOK UNIT PANCIRO', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'1db1a7c6-a0f9-4088-b4ac-326ab567622c', 45, 72, 73, 3, N'44', N'1.01.08.01', N'BUNGA DEPOSITO', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ba5da0f9-016c-4e32-838a-34ce448846cb', 75, 141, 142, 2, N'72', N'1.03.03', N'FRANCHISE', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'85422bd6-e1ac-415a-aa06-35ac9ffb3bb0', 96, 186, 187, 3, N'78', N'2.01.02.09', N'HUTANG PAJAK PBB', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'c8425fc5-ee37-4198-a0f7-36eeb75e786b', 8, 377, 382, 0, NULL, N'9', N'BIAYA LAIN-LAIN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'4cf5a7e4-53dc-4044-a402-373af60077c8', 107, 212, 221, 1, N'3', N'3.01', N'MODAL DISETOR', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'9626412b-8a29-4591-8e63-3c780adb0a40', 117, 234, 241, 1, N'4', N'4.01', N'PENDAPATAN PROYEK', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'3fcd2188-ab0d-49e7-b2c1-3e3c16a396d7', 172, 354, 355, 3, N'169', N'6.03.03.03', N'BIAYA PDAM', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'85420a27-e5e5-4c83-80b5-3ecd6edda77d', 61, 105, 106, 2, N'59', N'1.02.02', N'AKUMULASI PENYU MESIN DAN PERALATAN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'9172ae37-1624-4ad0-83ba-41e01820a9a1', 44, 71, 80, 2, N'9', N'1.01.08', N'PENDAPATAN YANG MASIH HARUS DITERIMA', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a3d9388b-e66b-480b-b1cd-429a24c22412', 160, 330, 331, 3, N'159', N'6.03.01.01', N'BIAYA GAJI', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a6eae0d8-a649-44e5-a279-470140179fae', 190, 324, 325, 3, N'149', N'6.02.01.09', N'BIAYA PENYUSUTAN MOBIL', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'3ff251a9-9f59-469c-8c4f-49678d699c95', 124, 250, 251, 3, N'123', N'4.03.01.01', N'RETURN PENJUALAN SUZUKI CAB PANCIRO', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'e33fa3d4-2b43-4a8d-afca-49a757c47ffe', 119, 242, 247, 1, N'4', N'4.02', N'PENJUALAN BARANG DAGANGAN', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'd74c159d-ade5-43d0-93b6-49dee10ce932', 156, 320, 321, 3, N'149', N'6.02.01.07', N'BIAYA ADMINISTRASI PINJAMAN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'4cc5a8d6-fb11-42cc-b09d-4a48952490a8', 123, 249, 252, 2, N'122', N'4.03.01', N'RETURN PENJUALAN SUZUKI ', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'b75a3c11-a29e-4480-860c-4b356f8a8abb', 88, 170, 171, 3, N'78', N'2.01.02.01', N'PPN MASUKAN', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'9c094e76-64ad-462d-b51c-4f230a81bc79', 168, 346, 347, 3, N'166', N'6.03.02.02', N'BIAYA TOL', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'cea576d5-1525-4bca-8b7a-4f9bc7dc744e', 118, 235, 236, 2, N'117', N'4.01.01', N'PENDAPATAN SEWA KOMPUTER', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'945527da-ca5a-48d8-b552-506cd2b20f0a', 22, 26, 27, 3, N'21', N'1.01.03.01', N'PIUTANG PT ADIRA CAB CILEDUG', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'57cb2746-6648-44a0-95c8-509bd35a964a', 146, 300, 301, 3, N'145', N'6.01.04.01', N'BIAYA IKLAN KORAN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'459a1565-74ff-4765-b5c3-512cef0877e3', 100, 194, 195, 3, N'98', N'2.01.03.02', N'HUTANG PINJAMAN DARI BAPAK ACO', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'bb735d14-284b-4b1a-a9ac-51dc1852b91c', 98, 191, 200, 2, N'76', N'2.01.03', N'HUTANG PINJAMAN', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'e24d5a25-8713-4d02-abec-51fde2351450', 159, 329, 342, 2, N'158', N'6.03.01', N'BIAYA PEGAWAI', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'68cced38-9b51-41e2-850a-529da4bc3851', 93, 180, 181, 3, N'78', N'2.01.02.06', N'HUTANG PAJAK PPH 25', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ba2f31d6-5e3d-440e-9fb0-54cfde5856f6', 71, 132, 133, 3, N'69', N'1.02.08.02', N'AKUMULASI PENYUSUTAN TANAH', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a6b84f24-656c-4311-a641-578d85b11787', 87, 164, 165, 3, N'77', N'2.01.01.09', N'HUTANG SEWA', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'c62a9a17-6752-47e5-a26d-57a39b693cd8', 14, 10, 11, 3, N'13', N'1.01.02.01', N'BANK BCA 3452399889', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ee4b7175-7421-412f-a2ff-57b3d341ea57', 34, 50, 51, 3, N'33', N'1.01.06.01', N'STOK UNIT TJM', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'bfff083c-611b-4284-8544-592c89ffbd64', 51, 84, 85, 3, N'49', N'1.01.09.02', N'PPH 21', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ef03c42b-be47-4d3c-92e9-5954f39874d0', 16, 14, 15, 3, N'13', N'1.01.02.03', N'BANK MANDIRI', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'8f2ee3c6-4678-408b-8762-59602441acc9', 47, 76, 77, 3, N'44', N'1.01.08.03', N'DEVIDEN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a17c912f-e976-4359-b255-5a2ca6c93174', 67, 124, 125, 3, N'66', N'1.02.07.01', N'GEDUNG', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'90aa096b-031f-4a34-b7c3-5c8befefa19e', 99, 192, 193, 3, N'98', N'2.01.03.01', N'HUTANG PINJAMAN DARI IBU LUSI', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'c7fb9b5f-ff28-4310-9691-5d1eb28b6db2', 95, 184, 185, 3, N'78', N'2.01.02.08', N'HUTANG PAJAK PPH 29', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'7c404384-6afd-494e-882f-5d4748f2243d', 149, 307, 326, 2, N'148', N'6.02.01', N'BIAYA NON OPERASIONAL', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'68e650a8-3f95-4378-bad9-5eac488b96cb', 113, 224, 225, 1, N'3', N'3.03', N'LABA/RUGI PERIODE BERJALAN', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'040a785f-dbad-484d-a4e2-5ebc8ff58259', 63, 113, 116, 2, N'59', N'1.02.04', N'AKUMULASI PENYU KENDARAAN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'dd6bd9c8-b34f-4f02-af00-5ff47783e8d2', 177, 365, 366, 2, N'158', N'6.03.08', N'BIAYA KOMSUMSI', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'9fb2bb8b-0c6e-4ef7-8bab-60a82a5aa2a2', 2, 145, 210, 0, NULL, N'2', N'PASIVA / KEWAJIBAN', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ceaa6a38-f063-47ba-9da1-60c4bef755d1', 6, 271, 372, 0, NULL, N'6', N'BIAYA', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'3533879f-b1d4-4019-b5c3-618e06fc2cfa', 122, 248, 253, 1, N'4', N'4.03', N'RETURN PENJUALAN DAN PENGURANGAN HARGA', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a83a630d-3f40-4332-a041-628b29e121f2', 157, 322, 323, 3, N'149', N'6.02.01.08', N'BIAYA PENYUSUTAN GEDUNG', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'256efce5-ca74-457a-ad02-635d1a67a100', 28, 38, 39, 3, N'26', N'1.01.04.02', N'PIUTANG ARI', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'3602b8b4-ef62-423f-967e-63af6e9b1f4e', 110, 216, 217, 3, N'108', N'3.01.01.02', N'MODAL DERMAWAN', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'5b4c7a09-0717-4753-afbe-6466dbda4dd4', 104, 204, 209, 1, N'2', N'2.02', N'KEWAJIBAN HUTANG JANGKA PANJANG', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'2c0bb347-dbe6-4cce-b7c4-6665da818b52', 125, 254, 255, 1, N'4', N'4.04', N'POTONGAN PENJUALAN', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a033a8c1-452a-455f-af2b-6719c46f2d26', 92, 178, 179, 3, N'78', N'2.01.02.05', N'HUTANG PAJAK PPH 23', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'3b03182f-e119-4424-8220-67c75b8ddc4d', 142, 292, 293, 3, N'141', N'6.01.03.01', N'BIAYA ENTERTAINMENT', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'fc353db2-5377-4525-be36-6ca7ff5a0003', 83, 156, 157, 3, N'77', N'2.01.01.05', N'HUTANG BPJS', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ad6cf82c-b1b2-4904-ac3d-6e8cf3f20ee0', 68, 126, 127, 3, N'66', N'1.02.07.02', N'TANAH', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ccc1d89d-7516-4531-a091-705cf332b98f', 31, 44, 45, 3, N'29', N'1.01.05.02', N'UANG MUKA KE PT SPS', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'84ed808a-00c7-481d-8325-71008fc334a9', 171, 352, 353, 3, N'169', N'6.03.03.02', N'BIAYA INTERNET', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'c4ebb59f-8007-4949-a589-739f4e4f5b90', 72, 136, 143, 1, N'1', N'1.03', N'AKTIVA TIDAK BERWUJUD', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'79845483-38ab-4420-abfc-757df7304636', 136, 278, 279, 3, N'133', N'6.01.01.03', N'BIAYA SEWA KOMPUTER', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'30e1ff98-43c5-409b-a728-768742ba2146', 128, 261, 264, 2, N'127', N'5.01.01', N'HPP UNIT SUZUKI', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'96173622-6e1e-4256-acf9-78f585ab8572', 114, 226, 231, 1, N'3', N'3.04', N'KOREKSI LABA', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'bfc14c19-8706-4029-afdd-79b7dd3981ca', 97, 188, 189, 3, N'78', N'2.01.02.10', N'HUTANG PAJAK STP PAJAK', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'824060af-3d75-4f40-8caf-7b4b180b0d57', 130, 266, 267, 1, N'5', N'5.02', N'RETURN PEMBELIAN DAN PENGURANGAN HARGA', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'e1a6c388-ad66-440a-b2d8-7c22c43469c7', 76, 146, 203, 1, N'2', N'2.01', N'KEWAJIBAN HUTANG LANCAR', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'dc6cf678-3a64-4187-adba-7cf562c17d17', 141, 291, 298, 2, N'132', N'6.01.03', N'BIAYA MARKETING', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'8aa901e7-0b58-40f1-8757-7d050ae12441', 174, 359, 360, 2, N'158', N'6.03.05', N'BIAYA PERALATAN ADMINISTRASI', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'1478ce49-dd6a-455f-842d-7d0b1f08e5f5', 161, 332, 333, 3, N'159', N'6.03.01.02', N'BIAYA THR', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ba7e31b0-997b-4667-9349-7d576b3556b6', 112, 222, 223, 1, N'3', N'3.02', N'LABA DITAHAN', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'762f1ffd-229c-45bd-897f-7d7cf80cfce2', 94, 182, 183, 3, N'78', N'2.01.02.07', N'HUTANG PAJAK PPH 22', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a4591d3f-9517-45d8-a22f-7eb431330b92', 145, 299, 304, 2, N'132', N'6.01.04', N'BIAYA IKLAN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'9adbc916-944a-401b-bee9-7f13e511ddfc', 181, 378, 379, 1, N'8', N'9.01', N'BIAYA BUNGA PINJAMAN BANK', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'0a37e1ca-4488-40a0-b049-80079c5849d0', 106, 207, 208, 2, N'104', N'2.02.02', N'HUTANG JANGKA PANJANG LAIN', -1, N'N', NULL)
GO
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'4c657032-ad56-482b-b7a6-805f33a7fcde', 84, 158, 159, 3, N'77', N'2.01.01.06', N'HUTANG SEWA KENDARAAN', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'b284e2ce-1141-418b-b5cb-81ae1f52d3a5', 19, 20, 21, 3, N'13', N'1.01.02.06', N'BANK BRI', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'641660d2-f1f9-431c-9b51-839fea759e26', 80, 150, 151, 3, N'77', N'2.01.01.02', N'HUTANG BRI', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'85e53cdd-06b0-41f6-bae5-848d3c77a569', 143, 294, 295, 3, N'141', N'6.01.03.02', N'BIAYA PERJALANAN DINAS', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'af7ad55d-375b-49be-97da-889dc7dec87b', 1, 1, 144, 0, NULL, N'1', N'AKTIVA', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'fa65d9ab-0b80-49d7-8c78-88d4e3f0f023', 148, 306, 327, 1, N'6', N'6.02', N'BIAYA NON OPERASIONAL', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a669972c-40ec-4426-a155-88fece91850e', 189, 118, 119, 3, N'64', N'1.02.05.01', N'INVENTARIS KANTOR', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'5c1ad174-e81b-410b-abb1-89efba97a5b6', 158, 328, 371, 1, N'6', N'6.03', N'BIAYA ADMINISTRASI', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'acdbf8e4-f4b1-49b6-b0fc-89f20a239a27', 185, 110, 111, 3, N'62', N'1.02.03.02', N'PERALATAN BUS', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'3715b70c-156a-428c-b0eb-8af406a725b1', 191, 114, 115, 3, N'63', N'1.02.04.01', N'AKUMULASI PENYU MOBIL', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'e060ca5a-3647-4ea6-9095-8b36f030f47a', 152, 312, 313, 3, N'149', N'6.02.01.03', N'BIAYA SEWA LAHAN PARKIR', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'6d2cc5d2-a861-4bbe-95e0-8c23c0f2b1dd', 66, 123, 128, 2, N'59', N'1.02.07', N'GEDUNG DAN TANAH', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'76f8ac04-8639-4f5a-9997-8d524f4360b0', 132, 272, 305, 1, N'6', N'6.01', N'BIAYA OPERASIONAL', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'4617cba0-bebf-4dd3-9f9c-8e5d267ac960', 49, 81, 92, 2, N'9', N'1.01.09', N'PAJAK DIBAYAR DIMUKA', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'4041028d-75de-41ea-bd4f-8f4a99e101a5', 135, 276, 277, 3, N'133', N'6.01.01.02', N'BIAYA DINAS GANGGUAN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ef135798-ba49-4564-afb2-90dc5c553ee2', 186, 237, 240, 2, N'117', N'4.01.02', N'PENDAPATAN SEWA BUS', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'e2470128-cb03-43bf-82b3-91aa78f6845a', 77, 147, 168, 2, N'76', N'2.01.01', N'HUTANG USAHA', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'9213e24e-c53e-4cf2-904d-956bce82e430', 70, 130, 131, 3, N'69', N'1.02.08.01', N'AKUMULASI PENYUSUTAN GEDUNG', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'bc0064c0-bf6f-4959-be70-97ca0382047d', 187, 238, 239, 3, N'186', N'4.01.02.01', N'PENDAPATAN SEWA BUS A', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'6129c83e-3745-489b-bfb1-9814260bb98d', 33, 49, 56, 2, N'9', N'1.01.06', N'PERSEDIAAN BARANG DAGANGAN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'dfe7ed7c-0bb4-4a53-aa88-99009d70b3d7', 178, 367, 368, 2, N'158', N'6.03.09', N'BIAYA PENDIDIKAN DAN PELATIHAN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'db7abb14-eac5-49a2-9c9b-9b493bb8b772', 46, 74, 75, 3, N'44', N'1.01.08.02', N'BUNGA OBLIGASI', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'475005ef-081d-4acc-88e6-a007c6344631', 109, 214, 215, 3, N'108', N'3.01.01.01', N'MODAL WALTHON', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'62c19271-ebd9-405a-8c9c-a0e928b8c44a', 9, 2, 101, 1, N'1', N'1.01', N'AKTIVA LANCAR', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'6dc3fc8b-eea3-4eba-aa5e-a17db9aa857d', 147, 302, 303, 3, N'145', N'6.01.04.02', N'BIAYA IKLAN MEDSON', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'fb1ae318-85dd-46e6-8cf0-a1b5079e43c6', 10, 3, 8, 2, N'9', N'1.01.01', N'KAS', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'd8f85c54-48bb-4a4b-8479-a4f48dee42c6', 65, 121, 122, 2, N'59', N'1.02.06', N'AKUMULASI PENYU INVENTARIS KANTOR', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'd9ede5f8-93f6-4487-98a0-a66c8f6c9845', 30, 42, 43, 3, N'29', N'1.01.05.01', N'UANG MUKA KE PT SGP', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'9f56ba25-7fdd-4495-9ff4-a7fdf09739bc', 41, 64, 65, 3, N'37', N'1.01.07.04', N'PERSEKOT ASURANSI', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a467d35c-4eb3-4a07-929e-a82a1e77ddfc', 108, 213, 218, 2, N'107', N'3.01.01', N'MODAL AWAL', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a1ff500d-acb6-41a4-a9df-a9283834b30e', 164, 338, 339, 3, N'159', N'6.03.01.05', N'BIAYA TUNJANGAN ASURANSI', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'8ae88fc2-acb7-4bbf-ae8e-a97d291223c0', 74, 139, 140, 2, N'72', N'1.03.02', N'MEREK DAN CAP DAGANG', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'6026a211-9955-4d4a-bcf6-ab334348f657', 52, 86, 87, 3, N'49', N'1.01.09.03', N'PPH23', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'180b8d93-5800-4a60-974c-ab6b1f1ceec1', 12, 6, 7, 3, N'10', N'1.01.01.02', N'KAS OUTSANDING', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'957e66a2-034f-46d2-b6e3-abaa4678ddd7', 21, 25, 34, 2, N'9', N'1.01.03', N'PIUTANG USAHA', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'acc0e6f8-df28-4584-a615-ac37e54816fe', 20, 22, 23, 3, N'13', N'1.01.02.07', N'BANK BPD', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'456a4101-7fb9-4775-a983-adbc1aac3470', 173, 357, 358, 2, N'158', N'6.03.04', N'BIAYA PEMELIHARAAN ASET', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'54e2b1af-1d28-42e7-9a69-aed480936eb3', 42, 66, 67, 3, N'37', N'1.01.07.05', N'PERSEKOTA BIAYA PERJALANAN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ebfd8f90-749d-45e8-a333-b134d7e31985', 50, 82, 83, 3, N'49', N'1.01.09.01', N'PPN MASUKAN(PEMBELIAN)', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'fa3cc1b4-9222-4cd8-8291-b266443ad236', 3, 211, 232, 0, NULL, N'3', N'MODAL / EKUITAS', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a91a941b-eb76-4503-beef-b3b4203d688c', 24, 30, 31, 3, N'21', N'1.01.03.03', N'PIUTANG PT SOF CAB CILEDUG', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'639c840b-b4e4-4fa2-bac6-b414e778aea4', 86, 162, 163, 3, N'77', N'2.01.01.08', N'HUTANG PENDAPATAN', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'25cca29e-b1f5-4f99-8b60-b7ed5736e62b', 90, 174, 175, 3, N'78', N'2.01.02.03', N'HUTANG PAJAK PENJUALAN', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'6640b298-3507-496e-b4ec-b875f29cd4eb', 89, 172, 173, 3, N'78', N'2.01.02.02', N'PPN KELUARAN', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'166a3fd2-7073-43d5-902d-ba730f345cb7', 4, 233, 258, 0, NULL, N'4', N'PENDAPATAN', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'7a5ebd3e-6b9f-494e-8713-bafa9f036de3', 121, 245, 246, 2, N'119', N'4.02.02', N'PENJUALAN 3 RODA CAB SMM', -1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'379baf1b-3cdd-4671-86b4-bbd99baed63d', 11, 4, 5, 3, N'10', N'1.01.01.01', N'KAS KASIR', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'e045d9e2-2214-4409-a0e2-bc203ab38183', 40, 62, 63, 3, N'37', N'1.01.07.03', N'SEWA LAHAN PARKIR', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'70ecb22d-c111-41be-9e61-bcf56e4ecb40', 131, 268, 269, 1, N'5', N'5.03', N'POTONGAN PEMBELIAN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'bf01ad4f-a4c0-4ead-b3fb-bf583233d52c', 180, 374, 375, 1, N'7', N'8.01', N'PENDAPATAN NON OPERASIONAL', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'655bbd2a-38f1-4468-8fe6-c0e6976702ec', 150, 308, 309, 3, N'149', N'6.02.01.01', N'BIAYA PENYUSUTAN ASET', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'55b43ff0-d200-4927-9c3f-c13792ae7d63', 133, 273, 282, 2, N'132', N'6.01.01', N'BIAYA PROYEK', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'50ae8308-3041-4302-9b4c-c411de4518d1', 18, 18, 19, 3, N'13', N'1.01.02.05', N'BANK PANIN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a2ffd395-1700-45d7-a7ca-c73cba7c7d0b', 103, 201, 202, 2, N'76', N'2.01.04', N'PENDAPATAN DITERIMA DIMUKA', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ff435d29-4806-4c9f-bfb5-c9e016732934', 37, 57, 70, 2, N'9', N'1.01.07', N'SEWA / BIAYA DIBAYAR DIMUKA', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'2ca25244-a1a5-4969-bec1-ca4bdb3ede45', 5, 259, 270, 0, NULL, N'5', N'HARGA POKOK / HPP', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'23f5b571-8d40-4a3d-8275-cfdd5b614cad', 82, 154, 155, 3, N'77', N'2.01.01.04', N'HUTANG BIAYA', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'4af0b73d-d946-4bf3-a0a0-d0c1c9622dfe', 188, 280, 281, 3, N'133', N'6.01.01.04', N'BIAYA SEWA BUS ', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'32e56f2d-8d56-4bda-9d8e-d0d23e0c8d50', 36, 54, 55, 3, N'33', N'1.01.06.03', N'STOK UNIT SMM', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'3e970a6d-ee06-4201-92dd-d1528d737a21', 183, 108, 109, 3, N'62', N'1.02.03.01', N'MOBIL BUS', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'baa6de44-9795-4f39-862f-d274caa7ee3d', 17, 16, 17, 3, N'13', N'1.01.02.04', N'BANK DANAMON', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'9fe8c152-e022-4ab0-90a2-d5633480455b', 140, 288, 289, 3, N'137', N'6.01.02.03', N'BIAYA CETAK / JILID', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a30637c9-7920-451e-9646-d576424e9d6c', 176, 363, 364, 2, N'158', N'6.03.07', N'BIAYA PERPAJAKAN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'58940259-1c67-4c5e-b658-d60087adc6cc', 48, 78, 79, 3, N'44', N'1.01.08.04', N'JASA KEAGENAN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'e082ba25-fc7e-4923-ab35-d7bdeeea7569', 23, 28, 29, 3, N'21', N'1.01.03.02', N'PIUTANG PT ADIRA CAB DAANMOGOT', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'8cbcc99a-360d-415b-a557-d906d6b1f526', 139, 286, 287, 3, N'137', N'6.01.02.02', N'BIAYA KERTAS', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'05e3c5fe-6db3-4e4d-8b24-da3d2d9bd5c1', 165, 340, 341, 3, N'159', N'6.03.01.06', N'BIAYA ASURANSI', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'6b01ca91-7b34-4190-af53-daf6d0d882e6', 134, 274, 275, 3, N'133', N'6.01.01.01', N'BIAYA TUL', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'32f2c012-56ab-4cd4-8519-dda44331ca72', 91, 176, 177, 3, N'78', N'2.01.02.04', N'HUTANG PAJAK PPH 21', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'77599e2d-1a27-46ea-865a-ddc55e33f54c', 163, 336, 337, 3, N'159', N'6.03.01.04', N'BIAYA PAKAIAN SERAGAM', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'4fb14d39-2efb-48d4-8969-e032bc1384ee', 179, 369, 370, 2, N'158', N'6.03.10', N'BIAYA ADMINISTRASI LAINNYA', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'518696fd-c640-460c-a4c1-e2f527a33f5d', 64, 117, 120, 2, N'59', N'1.02.05', N'INVENTARIS KANTOR', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'e39c2eaf-450b-4fc6-9e4b-e3233f8ef5d7', 166, 343, 348, 2, N'158', N'6.03.02', N'BIAYA TRANSPORTASI', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'ad051afa-43c2-49bb-b175-e44ba15fc216', 153, 314, 315, 3, N'149', N'6.02.01.04', N'BIAYA BUNGA PINJAMAN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'e922ec89-d280-48dd-8bba-e65d499da009', 60, 103, 104, 2, N'59', N'1.02.01', N'MESIN DAN PERALATAN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'a284a5b5-2102-46c0-8140-e8dc7d429631', 105, 205, 206, 2, N'104', N'2.02.01', N'HUTANG BANK', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'e8c98323-236e-462e-836e-e988cd14f4e4', 116, 229, 230, 2, N'114', N'3.04.02', N'KOREKSI LABA RUGI PERIODE BERJALAN', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'b43826d5-31f5-4da5-b438-ea094879d49d', 81, 152, 153, 3, N'77', N'2.01.01.03', N'HUTANG BCA', -1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'c1c7591a-201d-4b50-bd1b-ea7f22aea5c5', 155, 318, 319, 3, N'149', N'6.02.01.06', N'BIAYA DIVIDEN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'f161a5c3-15cc-480d-8fe4-ea9f180d996c', 56, 94, 95, 3, N'55', N'1.01.10.01', N'PENYERTAAN SAHAM', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'13787a52-2874-4dd4-90bf-eb4a0cf7a57a', 25, 32, 33, 3, N'21', N'1.01.03.04', N'PIUTANG PT IMFI CAB TANGERANG', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'8df6c590-d38a-446c-b582-eee82bf1224d', 129, 262, 263, 3, N'128', N'5.01.01.01', N'HPP UNIT SUZUKI CAB PANCIRO', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'3e74946a-1dd1-4942-87de-f335b56e6ff5', 137, 283, 290, 2, N'132', N'6.01.02', N'BIAYA OVERHEAD PROYEK', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'abd8c59c-21e9-4540-9592-f5f198e2cab1', 43, 68, 69, 3, N'37', N'1.01.07.06 ', N'PERSEKOTA BIAYA IKLAN', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'0b4f242b-d406-4833-b81c-f7fd3c6f87de', 127, 260, 265, 1, N'5', N'5.01', N'HPP BARANG DAGANGAN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'3f91851a-d04b-48a1-b78d-f85f6e320ec0', 175, 361, 362, 2, N'158', N'6.03.06', N'BIAYA PERIJINAN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'e8ac2150-26b8-4a9a-a160-f8feb923ff53', 154, 316, 317, 3, N'149', N'6.02.01.05', N'BIAYA ADMINISTRASI BANK', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'f83505e0-997c-46e1-8356-f9a489f42d33', 167, 344, 345, 3, N'166', N'6.03.02.01', N'BIAYA BENSIN', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'0e5c4778-694b-4658-95cd-fa48c3744eea', 39, 60, 61, 3, N'37', N'1.01.07.02', N'SEWA RUKO', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'82bbe720-8c72-4061-81ba-fa961ecb878e', 170, 350, 351, 3, N'169', N'6.03.03.01', N'BIAYA TELEPON', 1, N'L', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'3c248246-814c-4def-95d7-fe7d02a94afa', 13, 9, 24, 2, N'9', N'1.01.02', N'BANK', 1, N'N', NULL)
INSERT [dbo].[DataAccount] ([DataAccountId], [NoUrutId], [Lft], [Rgt], [Depth], [Parent], [KodeAccount], [Account], [NormalPos], [Kelompok], [Aktif]) VALUES (N'66e44230-af26-4f89-ab95-fec9e5cf3b89', 115, 227, 228, 2, N'114', N'3.04.01', N'KOREKSI LABA DITAHAN', -1, N'N', NULL)
SET IDENTITY_INSERT [dbo].[DataAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[DataJournal] ON 

INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'39a56c31-837c-4990-3d2f-08d9992ebf2c', 1, N'72482eee-be14-4f5c-5204-08d9992ea38d', N'379baf1b-3cdd-4671-86b4-bbd99baed63d', 2000000000.0000, 0.0000, N'modal tn walthon', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'e57d0812-fb6a-46d4-3d30-08d9992ebf2c', 2, N'72482eee-be14-4f5c-5204-08d9992ea38d', N'475005ef-081d-4acc-88e6-a007c6344631', 0.0000, 2000000000.0000, N'modal tn walthon', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'955bd696-8420-4c7a-7227-08d999304750', 3, N'6398d543-b49a-429f-c840-08d9992fbaf3', N'3e970a6d-ee06-4201-92dd-d1528d737a21', 1600000000.0000, 0.0000, N'PEMBELIAN 4 UNIT BUS', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'44126a5b-7758-4232-7228-08d999304750', 4, N'6398d543-b49a-429f-c840-08d9992fbaf3', N'379baf1b-3cdd-4671-86b4-bbd99baed63d', 0.0000, 1600000000.0000, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'4bb94a9f-ff3b-4e93-9c83-08d999315eae', 5, N'00aad857-e1f2-4eb2-92d9-08d999310209', N'acdbf8e4-f4b1-49b6-b0fc-89f20a239a27', 2000000.0000, 0.0000, N'peralatan bus 2 juta dengan utang', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'9d639e3a-7360-4c7b-9c84-08d999315eae', 6, N'00aad857-e1f2-4eb2-92d9-08d999310209', N'7581b54d-1506-4845-b2c2-236d023ca8e6', 0.0000, 2000000.0000, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'1a4c5c96-0152-4eae-9c85-08d999315eae', 7, N'6230d0a9-d812-4f97-92da-08d999310209', N'0e5c4778-694b-4658-95cd-fa48c3744eea', 10000000.0000, 0.0000, N'sewa ruko 2 tahun', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'f32ff4d3-8f3b-44de-9c86-08d999315eae', 8, N'6230d0a9-d812-4f97-92da-08d999310209', N'379baf1b-3cdd-4671-86b4-bbd99baed63d', 0.0000, 10000000.0000, N'bayar sewa ruko 2 tahun', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'a1ccf1f9-6669-4032-9c87-08d999315eae', 9, N'3a1f5123-56f2-402b-92db-08d999310209', N'3e970a6d-ee06-4201-92dd-d1528d737a21', 250000000.0000, 0.0000, N'beli bus bekas 1 unit tunai 250 juta', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'6c3d7ec5-4036-4555-9c88-08d999315eae', 10, N'3a1f5123-56f2-402b-92db-08d999310209', N'379baf1b-3cdd-4671-86b4-bbd99baed63d', 0.0000, 250000000.0000, N'beli bus bekas 1 unit tunai 250 juta', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'31c0ba28-2277-4332-9c89-08d999315eae', 11, N'5a4d1fe7-06c8-4f5a-92dc-08d999310209', N'379baf1b-3cdd-4671-86b4-bbd99baed63d', 15000000.0000, 0.0000, N'	pendapatan sewa bus tunai 15 jt', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'd8ca7e41-8141-4009-9c8a-08d999315eae', 12, N'5a4d1fe7-06c8-4f5a-92dc-08d999310209', N'bc0064c0-bf6f-4959-be70-97ca0382047d', 0.0000, 15000000.0000, N'pendapatan sewa bus tunai 15 jt', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'998fddbd-ecb4-4008-9c8b-08d999315eae', 13, N'6eb1ae11-2117-479f-92dd-08d999310209', N'4af0b73d-d946-4bf3-a0a0-d0c1c9622dfe', 5000000.0000, 0.0000, N'biaya selama bus disewa sebesar 5 juta', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'f1e212dd-43d5-473d-9c8c-08d999315eae', 14, N'6eb1ae11-2117-479f-92dd-08d999310209', N'379baf1b-3cdd-4671-86b4-bbd99baed63d', 0.0000, 5000000.0000, N'biaya yang muncul selama bus disewakan', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'b8f993fb-606b-4f05-9c8d-08d999315eae', 15, N'82a22d39-8aee-4b2c-92de-08d999310209', N'a669972c-40ec-4426-a155-88fece91850e', 8000000.0000, 0.0000, N'pembelian inventari kantor 8 juta untuk 2 unit komputer', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'8c337ac6-0fb7-40f5-9c8e-08d999315eae', 16, N'82a22d39-8aee-4b2c-92de-08d999310209', N'379baf1b-3cdd-4671-86b4-bbd99baed63d', 0.0000, 8000000.0000, N'pembelian inventari kantor 8 juta untuk 2 unit komputer', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'73037f27-150f-46a0-9c8f-08d999315eae', 17, N'bf052123-a224-46c0-92df-08d999310209', N'379baf1b-3cdd-4671-86b4-bbd99baed63d', 30000000.0000, 0.0000, N'	pendapatan dari sewa bus 30 juta', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'3e4863a6-8dfb-480f-9c90-08d999315eae', 18, N'bf052123-a224-46c0-92df-08d999310209', N'bc0064c0-bf6f-4959-be70-97ca0382047d', 0.0000, 30000000.0000, N'	pendapatan dari sewa bus 30 juta', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'64123c06-a01a-4ce4-9c91-08d999315eae', 19, N'329d301a-dd69-4bfe-92e0-08d999310209', N'4af0b73d-d946-4bf3-a0a0-d0c1c9622dfe', 10000000.0000, 0.0000, N'bayar biaya beban selama penyewaan bus', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'9653fc57-2a15-4376-9c92-08d999315eae', 20, N'329d301a-dd69-4bfe-92e0-08d999310209', N'379baf1b-3cdd-4671-86b4-bbd99baed63d', 0.0000, 10000000.0000, N'bayar biaya beban selama penyewaan bus', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'f5bf03a6-43ea-46d9-5137-08d99934f0aa', 21, N'8983ae9a-bffc-4785-669a-08d99934d2cd', N'a3d9388b-e66b-480b-b1cd-429a24c22412', 5000000.0000, 0.0000, N'bayar biaya gaji', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'70fd898c-7a56-4bd4-5138-08d99934f0aa', 22, N'8983ae9a-bffc-4785-669a-08d99934d2cd', N'379baf1b-3cdd-4671-86b4-bbd99baed63d', 0.0000, 5000000.0000, N'bayar biaya gaji', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'a7dc03df-01a6-44a7-1173-08d99ac782d5', 23, N'a3e2f92a-7cc0-4c89-f4a8-08d99ac772d8', N'a6eae0d8-a649-44e5-a279-470140179fae', 5000000.0000, 0.0000, N'beban penyusutan mobil 5 juta', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[DataJournal] ([DataJournalDetailsId], [NoUrutId], [DataJournalHeaderId], [DataAccountId], [Debit], [Kredit], [Keterangan], [TanggalInput], [SaldoAwal]) VALUES (N'04d914da-567b-4a66-1174-08d99ac782d5', 24, N'a3e2f92a-7cc0-4c89-f4a8-08d99ac772d8', N'3715b70c-156a-428c-b0eb-8af406a725b1', 0.0000, 5000000.0000, N'beban penyusutan mobil 5 juta', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[DataJournal] OFF
GO
SET IDENTITY_INSERT [dbo].[DataJournalHeader] ON 

INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'72482eee-be14-4f5c-5204-08d9992ea38d', 1, CAST(N'2021-10-27T16:45:00.0000000' AS DateTime2), N'NBJ/1/X/2021', N'modal usaha 2 milyar walton', 1008, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'6398d543-b49a-429f-c840-08d9992fbaf3', 2, CAST(N'2021-10-28T16:50:00.0000000' AS DateTime2), N'NBJ/2/X/2021', N'pembelian 4 mobil', 1003, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'00aad857-e1f2-4eb2-92d9-08d999310209', 3, CAST(N'2021-10-30T17:03:00.0000000' AS DateTime2), N'NBJ/3/X/2021', N'beli peratan mobil dengan utang', 1003, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'6230d0a9-d812-4f97-92da-08d999310209', 4, CAST(N'2021-10-31T17:08:00.0000000' AS DateTime2), N'NBJ/4/X/2021', N'sewa ruko 2 tahun sebesar 10 juta', 1006, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'3a1f5123-56f2-402b-92db-08d999310209', 5, CAST(N'2021-11-01T17:09:00.0000000' AS DateTime2), N'NBJ/5/XI/2021', N'beli bus bekas secara tunai 250 juta', 1003, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'5a4d1fe7-06c8-4f5a-92dc-08d999310209', 6, CAST(N'2021-11-02T17:13:00.0000000' AS DateTime2), N'NBJ/6/XI/2021', N'pendapatan sewa bus tunai 15 jt', 1005, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'6eb1ae11-2117-479f-92dd-08d999310209', 7, CAST(N'2021-11-04T17:16:00.0000000' AS DateTime2), N'NBJ/7/XI/2021', N'beban selama disewa 5 juta', 1006, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'82a22d39-8aee-4b2c-92de-08d999310209', 8, CAST(N'2021-11-04T17:20:00.0000000' AS DateTime2), N'NBJ/8/XI/2021', N'pembelian 2 inventaris kantor 2 unit cpu', 1003, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'bf052123-a224-46c0-92df-08d999310209', 9, CAST(N'2021-11-04T17:22:00.0000000' AS DateTime2), N'NBJ/9/XI/2021', N'pendapatan dari sewa bus 30 juta', 1005, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'329d301a-dd69-4bfe-92e0-08d999310209', 10, CAST(N'2021-11-06T17:24:00.0000000' AS DateTime2), N'NBJ/10/XI/2021', N'bayar biaya beban selama penyewaan bus', 1006, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'8983ae9a-bffc-4785-669a-08d99934d2cd', 11, CAST(N'2021-11-06T17:30:00.0000000' AS DateTime2), N'NBJ/11/XI/2021', N'bayar biaya gaji', 1006, NULL, NULL, NULL, NULL, 0.0000)
INSERT [dbo].[DataJournalHeader] ([DataJournalHeaderId], [NoUrutId], [TanggalInput], [NoBuktiJournal], [Keterangan], [TipeJournalId], [UserInput], [Validasi], [ValidasiOleh], [Aktif], [TotalRupiah]) VALUES (N'a3e2f92a-7cc0-4c89-f4a8-08d99ac772d8', 12, CAST(N'2021-10-29T17:32:00.0000000' AS DateTime2), N'NBJ/12/X/2021', N'beban penyusutan mobil 5 juta', 1002, NULL, NULL, NULL, NULL, 0.0000)
SET IDENTITY_INSERT [dbo].[DataJournalHeader] OFF
GO
SET IDENTITY_INSERT [dbo].[TipeJournal] ON 

INSERT [dbo].[TipeJournal] ([TipeJournalId], [NoUrutId], [KodeJournal], [NamaJournal]) VALUES (N'0dcbf188-9447-46a1-8f69-03d87410982e', 1039, N'JPMB', N'JURNAL PEMBELIAN')
INSERT [dbo].[TipeJournal] ([TipeJournalId], [NoUrutId], [KodeJournal], [NamaJournal]) VALUES (N'593931f3-fa59-403d-80c3-3e9cc5f256b1', 1042, N'JPGNK', N'JURNAL PENGELUARAN KAS')
INSERT [dbo].[TipeJournal] ([TipeJournalId], [NoUrutId], [KodeJournal], [NamaJournal]) VALUES (N'99818232-423d-4c82-a5f8-a190fe6696fc', 1043, N'JPEY', N'JURNAL PENYESUAIAN')
INSERT [dbo].[TipeJournal] ([TipeJournalId], [NoUrutId], [KodeJournal], [NamaJournal]) VALUES (N'ba45723f-4821-4ca9-adaa-ae15da430285', 1040, N'JPJ', N'JURNAL PENJUALAN')
INSERT [dbo].[TipeJournal] ([TipeJournalId], [NoUrutId], [KodeJournal], [NamaJournal]) VALUES (N'8fb6b83d-af98-4070-821b-b77592e228da', 1038, N'JU', N'JURNAL UMUM')
INSERT [dbo].[TipeJournal] ([TipeJournalId], [NoUrutId], [KodeJournal], [NamaJournal]) VALUES (N'18f24582-0973-4597-9472-c4dbfe201f56', 1046, N'JPMBLK', N'JURNAL PEMBALIK')
INSERT [dbo].[TipeJournal] ([TipeJournalId], [NoUrutId], [KodeJournal], [NamaJournal]) VALUES (N'02ea092d-b28c-470d-a227-c7b6ee641317', 1044, N'JPMBK', N'JURNAL PEMBUKA')
INSERT [dbo].[TipeJournal] ([TipeJournalId], [NoUrutId], [KodeJournal], [NamaJournal]) VALUES (N'1fc7e614-f1ef-40fd-92b1-d34d839a4dce', 1041, N'JPNK', N'JURNAL PENERIMAAN KAS')
INSERT [dbo].[TipeJournal] ([TipeJournalId], [NoUrutId], [KodeJournal], [NamaJournal]) VALUES (N'4e16154f-9d59-4f21-85d7-f4155db02867', 1045, N'JPNTP', N'JURNAL PENUTUP')
SET IDENTITY_INSERT [dbo].[TipeJournal] OFF
GO
ALTER TABLE [Accounting].[DataSaldoHarian] ADD  DEFAULT ('2021-11-01T17:01:50.029') FOR [TanggalInput]
GO
ALTER TABLE [dbo].[DataJournal] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [TanggalInput]
GO
ALTER TABLE [dbo].[DataSaldoAwal] ADD  DEFAULT ('2021-11-01T17:01:50.024') FOR [TanggalInput]
GO
/****** Object:  StoredProcedure [dbo].[MoveAccountSubtree]    Script Date: 31/08/2022 15:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[MoveAccountSubtree]
	@AccID INT
	, @NewParentID INT
	, @Debug BIT = 0
AS
BEGIN
	SET NOCOUNT ON;

	--Disable triggers during operations
	ALTER TABLE DataAccount DISABLE TRIGGER trg_DataAccount_DEL;
	ALTER TABLE DataAccount DISABLE TRIGGER trg_DataAccount_INS;
	ALTER TABLE DataAccount DISABLE TRIGGER trg_DataAccount_UPD;

	--Treat 0/-1/NULL the same: means we want to make the top of this subtree a Root node
	IF (@NewParentID <= 0 OR @NewParentID IS NULL)
	BEGIN
		SET @NewParentID = -1;
	END

	--Cannot move a subtree under itself
	ELSE IF @NewParentID IN (
		SELECT SubAccount.NoUrutId
		FROM DataAccount Account1
		JOIN DataAccount SubAccount
				ON SubAccount.Lft BETWEEN Account1.Lft AND Account1.Rgt
		WHERE Account1.NoUrutId = @AccID)
	BEGIN
		RAISERROR (N'Cannot move subtree to a node within itself.', 18, 1);
		RETURN;
	END

	--Cannot move subtree to a node that doesnt exist
	ELSE IF NOT EXISTS (SELECT 1 FROM DataAccount WHERE NoUrutId = @NewParentID)
	BEGIN
		RAISERROR (N'Cannot move subtree to a node that doesn''t exist.', 18, 1);
		RETURN;
	END

	--Cannot move subtree that doesnt exist
	ELSE IF NOT EXISTS (SELECT 1 FROM DataAccount WHERE NoUrutId = @AccID)
	BEGIN
		RAISERROR (N'Cannot move subtree that doesn''t exist.', 18, 1);
		RETURN;
	END

	--Get old Parent & Subtree size
	DECLARE @OldParentID INT
		, @SubtreeSize INT
		, @SubtreeOldLeft INT
		, @SubtreeOldRight INT
		, @SubtreeOldDepth INT

	SELECT @OldParentID = Parent,  @SubtreeSize = Rgt - Lft + 1
		, @SubtreeOldLeft = Lft, @SubtreeOldRight = Rgt, @SubtreeOldDepth = Depth
	FROM DataAccount
	WHERE Account = @AccID

	--Cannot move subtree to its own Parent, i.e. there's nothing to do b/c new parent is same as old
	IF @OldParentID = @NewParentID
	BEGIN
		RAISERROR (N'Cannot move subtree to its own parent.', 18, 1);
		RETURN;
	END

	--Get new Parent position
	DECLARE @NewParentRight INT
		, @NewParentDepth INT;

	--If we're going Root, place it to the Right of existing Roots
	IF @NewParentID = -1
	BEGIN
		SELECT @NewParentRight = MAX(Rgt) + 1, @NewParentDepth = -1
		FROM DataAccount
	END
	--Else, place it to the Right of its new siblings-to-be
	ELSE
	BEGIN
		SELECT @NewParentRight = Rgt, @NewParentDepth = Depth
		FROM DataAccount
		WHERE Account = @NewParentID
	END

	--Get new positions for use
	SELECT NoUrutId
		, Lft + @NewParentRight - @SubtreeOldLeft AS PLeft
		, Rgt + @NewParentRight - @SubtreeOldLeft AS PRight
		, Depth + (@NewParentDepth - @SubtreeOldDepth) + 1 AS Depth
	INTO #MoveNodes
	FROM DataAccount
	WHERE NoUrutId IN (
		SELECT SubAccount.NoUrutId
		FROM DataAccount Account1
		JOIN DataAccount SubAccount
				ON SubAccount.Lft BETWEEN Account1.Lft AND Account1.Rgt
		WHERE Account1.NoUrutId = @AccID
	)

	IF (@Debug = 1)
		SELECT * FROM #MoveNodes
		ORDER BY PLeft

	--Make gap in tree (at destination branch) equal to the SubtreeSize
	UPDATE DataAccount
	SET Lft = CASE WHEN Lft > @NewParentRight THEN Lft + @SubtreeSize ELSE Lft END,
		Rgt = CASE WHEN Rgt >= @NewParentRight THEN Rgt + @SubtreeSize ELSE Rgt END
	WHERE Rgt >= @NewParentRight

	--Update Subtree positions to new ones
	UPDATE DataAccount
	SET Lft = #MoveNodes.PLeft, Rgt = #MoveNodes.PRight, Depth = #MoveNodes.Depth
	FROM DataAccount
	JOIN #MoveNodes
			ON DataAccount.NoUrutId= #MoveNodes.NoUrutId

	--Maintain the Adjacency-List part (set ParentID)
	UPDATE DataAccount
	SET Parent = (CASE WHEN @NewParentID = -1 THEN NULL ELSE @NewParentID END)
	WHERE NoUrutId = @AccID

	--Close gaps, i.e. after the Subtree is gone from its old Parent, said old parent node has no children;
	--while nodes to the right & above now have inflated values, except where they include the newly moved subtree.
	UPDATE DataAccount
	SET Lft = CASE WHEN Lft > @SubtreeOldRight THEN Lft - @SubtreeSize ELSE Lft END,
		Rgt = CASE WHEN Rgt >= @SubtreeOldRight THEN Rgt - @SubtreeSize ELSE Rgt END
	WHERE Rgt >= @SubtreeOldRight

	--Re-enable triggers when done
	ALTER TABLE DataAccount ENABLE TRIGGER trg_DataAccount_DEL;
	ALTER TABLE DataAccount ENABLE TRIGGER trg_DataAccount_INS;
	ALTER TABLE DataAccount ENABLE TRIGGER trg_DataAccount_UPD;
END
GO
/****** Object:  StoredProcedure [dbo].[RebuildDataAccountTree]    Script Date: 31/08/2022 15:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[RebuildDataAccountTree]
	@ParentID INT = NULL
	, @Position INT = 0
	, @Depth INT = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	--Starting depth; we will set this to the given Parent's Depth (or 0 if NULL)
	--DECLARE @Depth INT
	/*
	SELECT @Depth = (CASE WHEN @ParentID IS NULL THEN 0 ELSE Depth END)
		FROM nsm.Cat
		WHERE (@ParentID IS NULL AND ParentID IS NULL)
			OR ParentID = @ParentID
	*/

	--Cursor (loop) over child nodes of the given ParentID
	DECLARE @Curff CURSOR 
	SET @Curff = CURSOR READ_ONLY FAST_FORWARD FOR
		SELECT NoUrutId
		FROM DataAccount
		WHERE (@ParentID IS NULL AND NoUrutId IS NULL)
			OR NoUrutId = @ParentID
		ORDER BY Lft

	DECLARE @CatID INT
	OPEN @Curff
	FETCH NEXT FROM @Curff INTO @CatID

	WHILE @@FETCH_STATUS = 0
	BEGIN
		--Assumption: @Position starts at the CORRECT # from the given parent
		SET @Position = @Position + 1

		--@Depth gets incremented when you travel down from parent to child
		SET @Depth = @Depth + 1

		--Update this node's PLeft & Depth
		ALTER TABLE DataAccount DISABLE TRIGGER trg_DataAccount_UPD;

		UPDATE DataAccount SET Lft = @Position, Depth = @Depth
		WHERE NoUrutId = @CatID

		ALTER TABLE DataAccount ENABLE TRIGGER trg_DataAccount_UPD;

		--Recursively re-number this node's children
		RAISERROR ('Calling RebuildCatTree %d, %d --at Depth=%d', 0, 1, @CatID, @Position, @Depth) WITH NOWAIT
		
		EXEC @Position = RebuildDataAccountTree @CatID, @Position, @Depth

		--It returns the last PRight set on the sub-tree, so add +1 to get this node's PRight
		SET @Position = @Position + 1

		--@Depth gets decremented when you travel up from child to parent
		SET @Depth = @Depth - 1

		--Update this node's PRight as mentioned above
		ALTER TABLE DataAccount DISABLE TRIGGER trg_DataAccount_UPD;

		UPDATE DataAccount  SET Rgt = @Position
		WHERE NoUrutId = @CatID

		ALTER TABLE DataAccount ENABLE TRIGGER trg_DataAccount_UPD;

		--continue looping
		FETCH NEXT FROM @Curff INTO @CatID
	END
	CLOSE @Curff
	DEALLOCATE @Curff

	RAISERROR('RebuildCatTree for %d returning %d --at Depth=%d', 0, 1, @ParentID, @Position, @Depth) WITH NOWAIT

	--Return PRight as set on this node, so that caller knows what it's new PRight should be
	RETURN @Position
END
GO
