USE [QLDA]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/17/2023 20:30:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoNV] [nvarchar](50) NULL,
	[TenLot] [nvarchar](50) NULL,
	[TenNv] [nvarchar](50) NULL,
	[NgSinh] [date] NULL,
	[Phai] [nvarchar](10) NULL,
	[Dchi] [nvarchar](50) NULL,
	[MaNQL] [varchar](10) NULL,
	[Phong] [varchar](10) NOT NULL,
	[Luong] [float] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'001', N'Vuong', N'Ngoc', N'Quyen', CAST(0xD4E70A00 AS Date), N'Nữ', N'Hà Nội', NULL, N'QL', 3000000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'002', N'Nguyen', N'Thanh', N'Tung', CAST(0xDBE30A00 AS Date), N'Nam', N'TPHCM', N'001', N'NC', 2500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'003', N'Le', N'Thi', N'Nhan', CAST(0x55EC0A00 AS Date), N'Nữ', N'TPHCM', N'001', N'DH', 2500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'004', N'Dinh', N'Ba', N'Tien', CAST(0x67F60A00 AS Date), N'Nam', N'Đồng Tháp', N'002', N'NC', 2200000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'005', N'Bui', N'Thuy', N'Vu', CAST(0x20FE0A00 AS Date), N'Nữ', N'Trà Vinh', N'003', N'DH', 2200000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'006', N'Nguyen', N'Manh', N'Hung', CAST(0xDD090B00 AS Date), N'Nam', N'Đồng Nai', N'002', N'NC', 2000000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNv], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'007', N'Tran', N'Hong', N'Van', CAST(0x9F020B00 AS Date), N'Nữ', N'Vĩnh Long', N'004', N'NC', 1800000)
/****** Object:  Table [dbo].[DeAn]    Script Date: 12/17/2023 20:30:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeAn](
	[MaDA] [varchar](10) NOT NULL,
	[TenDA] [nvarchar](50) NULL,
	[DiaDiemDA] [nvarchar](50) NULL,
	[Phong] [varchar](10) NOT NULL,
	[NgayBD_DK] [date] NULL,
	[NgayKT_DK] [date] NULL,
 CONSTRAINT [PK_DEAN] PRIMARY KEY CLUSTERED 
(
	[MaDA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'DT001', N'Đào tạo 1', N'Nha Trang', N'DH', CAST(0x04270B00 AS Date), CAST(0xB92C0B00 AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'DT002', N'Đào tạo 2', N'Đà Nẵng', N'DH', CAST(0xB62C0B00 AS Date), CAST(0xF02D0B00 AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'TH001', N'Tin học hóa 1', N'Hà Nội', N'NC', CAST(0x6E280B00 AS Date), CAST(0xDB290B00 AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'TH002', N'Tin học hóa 2', N'TPHCM', N'NC', CAST(0xE9280B00 AS Date), CAST(0xDE290B00 AS Date))
/****** Object:  Table [dbo].[PhongBan]    Script Date: 12/17/2023 20:30:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [varchar](10) NOT NULL,
	[TenPB] [nvarchar](50) NULL,
	[TrPHG] [varchar](10) NOT NULL,
	[DiaDiem] [nvarchar](50) NULL,
	[NgayNhanChuc] [date] NULL,
 CONSTRAINT [PK_PHONGBAN] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [DiaDiem], [NgayNhanChuc]) VALUES (N'DH', N'Điều Hành', N'003', NULL, CAST(0xFC270B00 AS Date))
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [DiaDiem], [NgayNhanChuc]) VALUES (N'NC', N'Nghiên Cứu', N'002', NULL, CAST(0x2B270B00 AS Date))
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [DiaDiem], [NgayNhanChuc]) VALUES (N'QL', N'Quản Lý', N'001', NULL, CAST(0x95240B00 AS Date))
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 12/17/2023 20:30:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanNhan](
	[MaNV] [varchar](10) NOT NULL,
	[MaTN] [varchar](10) NOT NULL,
	[TenTN] [nvarchar](50) NULL,
	[Phai] [nvarchar](10) NULL,
	[NgSinh] [date] NULL,
	[QuanHe] [nvarchar](50) NULL,
 CONSTRAINT [PK_THANNHAN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaTN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'001', N'1', N'Le Nhat Minh', N'Nam', CAST(0x47E40A00 AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'002', N'1', N'Le Hoai Thuong', N'Nữ', CAST(0x48EC0A00 AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'1', N'Tran Minh Tien', N'Nam', CAST(0x1B170B00 AS Date), N'Con')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'2', N'Tran Ngoc Linh', N'Nữ', CAST(0x4F1A0B00 AS Date), N'Con')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'3', N'Tran Minh Long', N'Nam', CAST(0xC8E70A00 AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'004', N'1', N'Le Phi Phung', N'Nữ', CAST(0x5BEC0A00 AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'005', N'1', N'Tran Thu Hong', N'Nữ', CAST(0x08050B00 AS Date), N'Vợ chồng')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'005', N'2', N'Nguyen Manh Tam', N'Nam', CAST(0x95280B00 AS Date), N'Con')
/****** Object:  Table [dbo].[PhanCong]    Script Date: 12/17/2023 20:30:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MaNV] [varchar](10) NOT NULL,
	[MaDA] [varchar](10) NOT NULL,
	[ThoiGian] [float] NULL,
 CONSTRAINT [PK_PHANCONG] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaDA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'001', N'TH001', 30)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'001', N'TH002', 12.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'DT001', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'DT002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'TH001', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'TH002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'003', N'TH001', 37.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'004', N'DT001', 22.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'004', N'DT002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'006', N'DT001', 30.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'007', N'TH001', 20)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'007', N'TH002', 10)
/****** Object:  ForeignKey [FK_PC_MaDA]    Script Date: 12/17/2023 20:30:41 ******/
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PC_MaDA] FOREIGN KEY([MaDA])
REFERENCES [dbo].[DeAn] ([MaDA])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PC_MaDA]
GO
/****** Object:  ForeignKey [FK_PC_MaNV]    Script Date: 12/17/2023 20:30:41 ******/
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PC_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PC_MaNV]
GO
/****** Object:  ForeignKey [FK_TN_MaNV]    Script Date: 12/17/2023 20:30:41 ******/
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD  CONSTRAINT [FK_TN_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ThanNhan] CHECK CONSTRAINT [FK_TN_MaNV]
GO
