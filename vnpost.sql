USE [master]
GO
/****** Object:  Database [vnPost]    Script Date: 11/13/2018 8:09:49 PM ******/
CREATE DATABASE [vnPost]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'vnPost', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\vnPost.mdf' , SIZE = 9216KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'vnPost_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\vnPost_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [vnPost] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vnPost].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vnPost] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [vnPost] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [vnPost] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [vnPost] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [vnPost] SET ARITHABORT OFF 
GO
ALTER DATABASE [vnPost] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [vnPost] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [vnPost] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [vnPost] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [vnPost] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [vnPost] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [vnPost] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [vnPost] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [vnPost] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [vnPost] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [vnPost] SET  DISABLE_BROKER 
GO
ALTER DATABASE [vnPost] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [vnPost] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [vnPost] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [vnPost] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [vnPost] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [vnPost] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [vnPost] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [vnPost] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [vnPost] SET  MULTI_USER 
GO
ALTER DATABASE [vnPost] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [vnPost] SET DB_CHAINING OFF 
GO
ALTER DATABASE [vnPost] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [vnPost] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [vnPost]
GO
/****** Object:  Table [dbo].[BuuCuc]    Script Date: 11/13/2018 8:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuuCuc](
	[MaBC] [float] NULL,
	[TenBC] [nvarchar](255) NULL,
	[MaTinh] [float] NULL,
	[MaHuyen] [float] NULL,
	[Xa] [nvarchar](255) NULL,
	[Thon] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CacLoaiDichVu]    Script Date: 11/13/2018 8:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CacLoaiDichVu](
	[MaDV] [float] NULL,
	[TenDV] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 11/13/2018 8:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaBC] [float] NULL,
	[MaDV] [float] NULL,
	[F3] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Huyen]    Script Date: 11/13/2018 8:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Huyen](
	[MaTinh] [float] NULL,
	[MaHuyen] [float] NULL,
	[Ten] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Journal]    Script Date: 11/13/2018 8:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journal](
	[IdHT] [nvarchar](255) NULL,
	[MaDH] [nvarchar](255) NULL,
	[ThoiGian] [date] NULL,
	[IdTrangThai] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mien]    Script Date: 11/13/2018 8:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mien](
	[MaMien] [nvarchar](255) NULL,
	[TenMIen] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/13/2018 8:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaBC] [float] NULL,
	[ID] [nvarchar](255) NULL,
	[Ten] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Sdt] [float] NULL,
	[ChucVu] [nvarchar](255) NULL,
	[UserName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/13/2018 8:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[MaDH] [nvarchar](255) NULL,
	[TenGui] [nvarchar](255) NULL,
	[DiaChiGui] [nvarchar](255) NULL,
	[SdtGui] [int] NULL,
	[TenNhan] [nvarchar](255) NULL,
	[DiaChiNhan] [nvarchar](255) NULL,
	[LoaiHang] [nvarchar](255) NULL,
	[KhoiLuong] [int] NULL,
	[IdTrangThai] [nvarchar](255) NULL,
	[SdtNhan] [int] NULL,
	[PhiShip] [nvarchar](255) NULL,
	[TongTien] [nvarchar](255) NULL,
	[MaBC] [int] NULL,
	[PhiThuHo] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tinh]    Script Date: 11/13/2018 8:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tinh](
	[MaTinh] [float] NULL,
	[Ten] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhPhi]    Script Date: 11/13/2018 8:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhPhi](
	[MaKL] [nvarchar](255) NULL,
	[MaMien] [nvarchar](255) NULL,
	[Gia] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrangThai]    Script Date: 11/13/2018 8:09:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai](
	[IdTrangThai] [nvarchar](255) NULL,
	[TenTrangThai] [nvarchar](255) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[BuuCuc] ([MaBC], [TenBC], [MaTinh], [MaHuyen], [Xa], [Thon]) VALUES (112310, N'Bưu cục cấp 3 Vân Hồ ', 1, 12, N'Phường Lê Đại Hành', N'Sô´2, Phố Vân Hồ 3')
INSERT [dbo].[BuuCuc] ([MaBC], [TenBC], [MaTinh], [MaHuyen], [Xa], [Thon]) VALUES (100000, N'Bưu cục cấp 1 Giao dịch Trung tâm ', 1, 11, N'Phường Tràng Tiền', N'Số 75, Phố Đinh Tiên Hoàng')
INSERT [dbo].[BuuCuc] ([MaBC], [TenBC], [MaTinh], [MaHuyen], [Xa], [Thon]) VALUES (740500, N'Bưu cục cấp 2 Quận 10 ', 2, 22, N'Phường Số 9', N'Sô´157, Đường Lý Thái Tổ')
INSERT [dbo].[BuuCuc] ([MaBC], [TenBC], [MaTinh], [MaHuyen], [Xa], [Thon]) VALUES (740100, N'Bưu cục cấp 3 Ngô Quyền ', 2, 21, N'Phường Số 6', N'Sô´237, Đường Ngô Quyền')
INSERT [dbo].[BuuCuc] ([MaBC], [TenBC], [MaTinh], [MaHuyen], [Xa], [Thon]) VALUES (180000, N'Bưu cục cấp 1 Hải Phòng ', 3, 31, N'Phường Minh Khai', N'Sô´5, Đường Nguyễn Tri Phương')
INSERT [dbo].[BuuCuc] ([MaBC], [TenBC], [MaTinh], [MaHuyen], [Xa], [Thon]) VALUES (442200, N'Bưu cục cấp 2 GD Hoằng Hóa ', 4, 41, N' Thị Trấn Bút Sơn', N'Khu phố Vinh Sơn')
INSERT [dbo].[CacLoaiDichVu] ([MaDV], [TenDV]) VALUES (1, N'Chuyển phát nhanh EMS')
INSERT [dbo].[CacLoaiDichVu] ([MaDV], [TenDV]) VALUES (2, N'VN Quick Post')
INSERT [dbo].[CacLoaiDichVu] ([MaDV], [TenDV]) VALUES (3, N'Phát hành báo chí')
INSERT [dbo].[CacLoaiDichVu] ([MaDV], [TenDV]) VALUES (4, N'Điện hoa - Quà tặng')
INSERT [dbo].[CacLoaiDichVu] ([MaDV], [TenDV]) VALUES (5, N'Bưu kiện trong nước')
INSERT [dbo].[CacLoaiDichVu] ([MaDV], [TenDV]) VALUES (6, N'Bưu phẩm bảo đảm')
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (112310, 1, NULL)
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (112310, 2, NULL)
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (112310, 3, NULL)
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (112310, 4, NULL)
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (112310, 5, NULL)
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (112310, 6, NULL)
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (100000, 1, NULL)
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (100000, 2, NULL)
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (100000, 3, NULL)
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (100000, 4, NULL)
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (100000, 5, NULL)
INSERT [dbo].[DichVu] ([MaBC], [MaDV], [F3]) VALUES (100000, 6, NULL)
INSERT [dbo].[Huyen] ([MaTinh], [MaHuyen], [Ten]) VALUES (1, 11, N'Quận Hoàn Kiếm')
INSERT [dbo].[Huyen] ([MaTinh], [MaHuyen], [Ten]) VALUES (1, 12, N'Quận Hai Bà Trưng ')
INSERT [dbo].[Huyen] ([MaTinh], [MaHuyen], [Ten]) VALUES (2, 21, N'Quận 10')
INSERT [dbo].[Huyen] ([MaTinh], [MaHuyen], [Ten]) VALUES (2, 22, N'Quận 1')
INSERT [dbo].[Huyen] ([MaTinh], [MaHuyen], [Ten]) VALUES (3, 31, N'Quận Hồng Bàng')
INSERT [dbo].[Huyen] ([MaTinh], [MaHuyen], [Ten]) VALUES (3, 32, N'Quận Ngô Quyền ')
INSERT [dbo].[Huyen] ([MaTinh], [MaHuyen], [Ten]) VALUES (4, 41, N'Huyện Hoằng Hoá')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'4425', N'YRNA35AX6Z7HZ', CAST(N'2018-11-05' AS Date), N'1d', N'sffsfsfsd')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'8935', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'2d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'51AA', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'3d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'66D4', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'2d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'32A7', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'2d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'D335', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'1d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'0D80', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'2d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'56A5', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'3d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'308B', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'2d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'26BD', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'1d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'D593', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'2d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'1531', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'3d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'3838', N'JDLW7NL2EN86H', CAST(N'2018-11-07' AS Date), N'1d', N'Sá» 32,PhÆ°á»ng TrÃ ng Tiá»n,Quáº­n HoÃ n Kiáº¿m,HÃ  Ná»i')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'7260', N'KHBKNSE6818B2', CAST(N'2018-11-07' AS Date), N'1d', N'Số 32,Phường Tràng Tiền,Quận Hoàn Kiếm,Hà Nội')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'5198', N'KHBKNSE6818B2', CAST(N'2018-11-07' AS Date), N'2d', N'Phường Số 9,Quận 1,T.P Hồ Chí Minh')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'D594', N'KHBKNSE6818B2', CAST(N'2018-11-07' AS Date), N'3d', N'Phường Số 9,Quận 1,T.P Hồ Chí Minh')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'22A0', N'IX4M4U6SNKT60', CAST(N'2018-11-07' AS Date), N'1d', N'Số 32,Phường Tràng Tiền,Quận Hoàn Kiếm,Hà Nội')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'CD7B', N'IX4M4U6SNKT60', CAST(N'2018-11-07' AS Date), N'1d', N'Số 32,Phường Tràng Tiền,Quận Hoàn Kiếm,Hà Nội')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'5257', N'IX4M4U6SNKT60', CAST(N'2018-11-07' AS Date), N'2d', N'Phường Số 9,Quận 1,T.P Hồ Chí Minh')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'B524', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'1d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'194C', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'2d', N'dgsgsg')
INSERT [dbo].[Journal] ([IdHT], [MaDH], [ThoiGian], [IdTrangThai], [DiaChi]) VALUES (N'B0B9', N'YRNA35AX6Z7HZ', CAST(N'2018-11-06' AS Date), N'3d', N'dgsgsg')
INSERT [dbo].[Mien] ([MaMien], [TenMIen]) VALUES (N'11c', N'Cùng Miền')
INSERT [dbo].[Mien] ([MaMien], [TenMIen]) VALUES (N'12l', N'Liên Miền')
INSERT [dbo].[Mien] ([MaMien], [TenMIen]) VALUES (N'13ca', N'Cách Miền')
INSERT [dbo].[NhanVien] ([MaBC], [ID], [Ten], [DiaChi], [Sdt], [ChucVu], [UserName], [Password]) VALUES (100100, N'huong234', N'huong', N'Số 86, Phố Đinh Tiên Hoàng ,Hà Nội', 123456789, N'Quanly', N'huong123', N'123a')
INSERT [dbo].[NhanVien] ([MaBC], [ID], [Ten], [DiaChi], [Sdt], [ChucVu], [UserName], [Password]) VALUES (100100, N'long234', N'long', N'Số 87, Phố Đinh Tiên Hoàng ,Hà Nội', 123456780, N'NhanVien', N'long', N'123a')
INSERT [dbo].[NhanVien] ([MaBC], [ID], [Ten], [DiaChi], [Sdt], [ChucVu], [UserName], [Password]) VALUES (180000, N'huong123', N'huong', N'Số 86, Phố Đinh Tiên Hoàng ,Hà Nội', 123456789, N'Quanly', N'huong', N'123a')
INSERT [dbo].[NhanVien] ([MaBC], [ID], [Ten], [DiaChi], [Sdt], [ChucVu], [UserName], [Password]) VALUES (180000, N'long123', N'long', N'Số 87, Phố Đinh Tiên Hoàng ,Hà Nội', 123456780, N'Ship', N'longShip', N'123a')
INSERT [dbo].[NhanVien] ([MaBC], [ID], [Ten], [DiaChi], [Sdt], [ChucVu], [UserName], [Password]) VALUES (100000, N'Long', N'Long', N'Số 86, Phố Đinh Tiên Hoàng ,Hà Nội', 123456789, N'Quanly', N'longLuffy', N'123a')
INSERT [dbo].[NhanVien] ([MaBC], [ID], [Ten], [DiaChi], [Sdt], [ChucVu], [UserName], [Password]) VALUES (100000, N'hung345', N'hung', N'Số 87, Phố Đinh Tiên Hoàng ,Hà Nội', 123456780, N'NhanVien', N'hung123', N'123a')
INSERT [dbo].[Orders] ([MaDH], [TenGui], [DiaChiGui], [SdtGui], [TenNhan], [DiaChiNhan], [LoaiHang], [KhoiLuong], [IdTrangThai], [SdtNhan], [PhiShip], [TongTien], [MaBC], [PhiThuHo]) VALUES (N'7QW7UGXTHAKDZ', N'huong', N'sffsfsfsd', 5565666, N'fdfsgd', N'dgsgsg', N'ThÆ°', 45678455, N'1d', 45678455, N'25', N'26', NULL, NULL)
INSERT [dbo].[Orders] ([MaDH], [TenGui], [DiaChiGui], [SdtGui], [TenNhan], [DiaChiNhan], [LoaiHang], [KhoiLuong], [IdTrangThai], [SdtNhan], [PhiShip], [TongTien], [MaBC], [PhiThuHo]) VALUES (N'RQI5WE5Q1EW0R', N'huong', N'sffsfsfsd', 5565666, N'fdfsgd', N'dgsgsg', N'ThÆ°', 45678455, N'1d', 45678455, N'25', N'26', 180000, NULL)
INSERT [dbo].[Orders] ([MaDH], [TenGui], [DiaChiGui], [SdtGui], [TenNhan], [DiaChiNhan], [LoaiHang], [KhoiLuong], [IdTrangThai], [SdtNhan], [PhiShip], [TongTien], [MaBC], [PhiThuHo]) VALUES (N'CDRAZG47MD8MU', N'huong', N'sffsfsfsd', 5565666, N'fdfsgd', N'dgsgsg', N'ThÆ°', 45678455, N'1d', 45678455, N'25', N'26', 180000, NULL)
INSERT [dbo].[Orders] ([MaDH], [TenGui], [DiaChiGui], [SdtGui], [TenNhan], [DiaChiNhan], [LoaiHang], [KhoiLuong], [IdTrangThai], [SdtNhan], [PhiShip], [TongTien], [MaBC], [PhiThuHo]) VALUES (N'9R6L77MO8H8Y6', N'huong', N'sffsfsfsd', 5565666, N'fdfsgd', N'dgsgsg', N'ThÆ°', 45678455, N'1d', 45678455, N'25', N'26', 180000, NULL)
INSERT [dbo].[Orders] ([MaDH], [TenGui], [DiaChiGui], [SdtGui], [TenNhan], [DiaChiNhan], [LoaiHang], [KhoiLuong], [IdTrangThai], [SdtNhan], [PhiShip], [TongTien], [MaBC], [PhiThuHo]) VALUES (N'JDLW7NL2EN86H', N'Nguyá»n Thá» HÆ°á»ng', N'Sá» 32,PhÆ°á»ng TrÃ ng Tiá»n,Quáº­n HoÃ n Kiáº¿m,HÃ  Ná»i', 12358649, N'LeHung', N'PhÆ°á»ng Sá» 9,Quáº­n 1,T.P Há» ChÃ­ Minh', N'ThÆ°', 2, N'1d', 3698754, N'32', N'82', 100000, NULL)
INSERT [dbo].[Orders] ([MaDH], [TenGui], [DiaChiGui], [SdtGui], [TenNhan], [DiaChiNhan], [LoaiHang], [KhoiLuong], [IdTrangThai], [SdtNhan], [PhiShip], [TongTien], [MaBC], [PhiThuHo]) VALUES (N'YRNA35AX6Z7HZ', N'huong', N'sffsfsfsd', 5565666, N'fdfsgd', N'dgsgsg', N'ThÆ°', 45678455, N'3d', 45678455, N'25', N'26', 180000, NULL)
INSERT [dbo].[Orders] ([MaDH], [TenGui], [DiaChiGui], [SdtGui], [TenNhan], [DiaChiNhan], [LoaiHang], [KhoiLuong], [IdTrangThai], [SdtNhan], [PhiShip], [TongTien], [MaBC], [PhiThuHo]) VALUES (N'KHBKNSE6818B2', N'Nguyễn Thị Hường', N'Số 32,Phường Tràng Tiền,Quận Hoàn Kiếm,Hà Nội', 12358649, N'LeHung', N'Phường Số 9,Quận 1,T.P Hồ Chí Minh', N'Thư', 1, N'3d', 3698754, N'29', N'49', 100000, NULL)
INSERT [dbo].[Orders] ([MaDH], [TenGui], [DiaChiGui], [SdtGui], [TenNhan], [DiaChiNhan], [LoaiHang], [KhoiLuong], [IdTrangThai], [SdtNhan], [PhiShip], [TongTien], [MaBC], [PhiThuHo]) VALUES (N'IX4M4U6SNKT60', N'Long', N'Số 32,Phường Tràng Tiền,Quận Hoàn Kiếm,Hà Nội', 5565666, N'huong', N'Phường Số 9,Quận 1,T.P Hồ Chí Minh', N'Thư', 8, N'2d', 45678455, N'116', N'166', 180000, NULL)
INSERT [dbo].[Orders] ([MaDH], [TenGui], [DiaChiGui], [SdtGui], [TenNhan], [DiaChiNhan], [LoaiHang], [KhoiLuong], [IdTrangThai], [SdtNhan], [PhiShip], [TongTien], [MaBC], [PhiThuHo]) VALUES (N'IX4M4U6SNKT60', N'Long', N'Số 32,Phường Tràng Tiền,Quận Hoàn Kiếm,Hà Nội', 5565666, N'huong', N'Phường Số 9,Quận 1,T.P Hồ Chí Minh', N'Thư', 8, N'2d', 45678455, N'116', N'166', 180000, NULL)
INSERT [dbo].[Tinh] ([MaTinh], [Ten]) VALUES (1, N'Hà Nội')
INSERT [dbo].[Tinh] ([MaTinh], [Ten]) VALUES (2, N'T.P Hồ Chí Minh')
INSERT [dbo].[Tinh] ([MaTinh], [Ten]) VALUES (3, N'Hải Phòng')
INSERT [dbo].[Tinh] ([MaTinh], [Ten]) VALUES (4, N'Thanh Hóa')
INSERT [dbo].[Tinh] ([MaTinh], [Ten]) VALUES (5, N'Hà Tĩnh')
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'0g', N'11c', 25)
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'0g', N'12l', 29)
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'0g', N'13ca', 32)
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'0,25g', N'11c', 30)
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'0,25g', N'12l', 35)
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'0,25g', N'13ca', 40)
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'0,5g', N'11c', 42)
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'0,5g', N'12l', 54)
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'0,5g', N'13ca', 55)
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'1g', N'11c', 54)
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'1g', N'12l', 68)
INSERT [dbo].[TinhPhi] ([MaKL], [MaMien], [Gia]) VALUES (N'1g', N'13ca', 71)
INSERT [dbo].[TrangThai] ([IdTrangThai], [TenTrangThai]) VALUES (N'1d', N'Đã Nhận Đơn')
INSERT [dbo].[TrangThai] ([IdTrangThai], [TenTrangThai]) VALUES (N'2d', N'Đang Vận Chuyển')
INSERT [dbo].[TrangThai] ([IdTrangThai], [TenTrangThai]) VALUES (N'3d', N'Đã Giao Thành Công')
USE [master]
GO
ALTER DATABASE [vnPost] SET  READ_WRITE 
GO
