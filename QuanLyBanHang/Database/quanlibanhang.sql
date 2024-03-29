create database quanlibanhang
USE quanlibanhang
GO
--create table ChiTietHoaDon
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE ChiTietHoaDon(
	MaHD nchar(10) NOT NULL,
	MaSP nchar(10) NOT NULL,
	SoLuong int NOT NULL,
	DonGia int NOT NULL,
	GiamGia int NOT NULL,
	ThanhTien int NOT NULL,
 CONSTRAINT ChiTietHoaDon_pk PRIMARY KEY CLUSTERED 
(
	MaHD ASC,
	MaSP ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
-- create table HoaDon
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE HoaDon(
	MaHD nchar(10) NOT NULL,
	MaNV nchar(10) NOT NULL,
	MaKH nchar(10) NOT NULL,
	NgayBan date NOT NULL,
	TongTien nchar(10) NOT NULL,
 CONSTRAINT PK_HoaDon PRIMARY KEY CLUSTERED 
(
	MaHD ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--crate table KhachHnag
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE KhachHang(
	MaKH nchar(10) NOT NULL,
	TenKH nvarchar(50) NOT NULL,
	GioiTinh nchar(5) NOT NULL,
	DiaChi nvarchar(50) NOT NULL,
	SDT int NOT NULL,
 CONSTRAINT PK_KhachHang PRIMARY KEY CLUSTERED 
(
	MaKH ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--create NhaCungCap
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE NhaCungCap(
	MaNCC nchar(10) NOT NULL,
	TenNCC nvarchar(20) NOT NULL,
 CONSTRAINT PK_NhaCungCap PRIMARY KEY CLUSTERED 
(
	MaNCC ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--create NhanVien
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE NhanVien(
	MaNV nchar(10) NOT NULL,
	TenNV nvarchar(50) NOT NULL,
	NgaySinh date NOT NULL,
	GioiTinh nvarchar(5) NOT NULL,
	DiaChi nvarchar(50) NOT NULL,
	SDT int NOT NULL,
 CONSTRAINT PK_NhanVien PRIMARY KEY CLUSTERED 
(
	MaNV ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--create SanPham
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE SanPham(
	MaSP nchar(10) NOT NULL,
	MaNCC nchar(10) NOT NULL,
	TenSP nvarchar(50) NOT NULL,
	SoLuong int NOT NULL,
	DonGiaNhap int NOT NULL,
	DonGiaBan int NOT NULL,
 CONSTRAINT PK_SanPham PRIMARY KEY CLUSTERED 
(
	MaSP ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT ChiTietHoaDon  ( MaHD ,  MaSP ,  SoLuong ,  DonGia ,  GiamGia ,  ThanhTien ) VALUES (N'01        ', N'01        ', 1, 20000000, 0, 20000000)
INSERT ChiTietHoaDon  ( MaHD ,  MaSP ,  SoLuong ,  DonGia ,  GiamGia ,  ThanhTien ) VALUES (N'01        ', N'04        ', 1, 30000000, 0, 30000000)
INSERT ChiTietHoaDon  ( MaHD ,  MaSP ,  SoLuong ,  DonGia ,  GiamGia ,  ThanhTien ) VALUES (N'02        ', N'01        ', 1, 20000000, 0, 20000000)
INSERT ChiTietHoaDon  ( MaHD ,  MaSP ,  SoLuong ,  DonGia ,  GiamGia ,  ThanhTien ) VALUES (N'02        ', N'03        ', 1, 25000000, 5000000, 20000000)
GO
INSERT HoaDon  ( MaHD ,  MaNV ,  MaKH ,  NgayBan ,  TongTien ) VALUES (N'01        ', N'01        ', N'02        ', CAST(N'2022-01-01' AS Date), N'50000000  ')
INSERT HoaDon  ( MaHD ,  MaNV ,  MaKH ,  NgayBan ,  TongTien ) VALUES (N'02        ', N'02        ', N'02        ', CAST(N'2022-02-02' AS Date), N'40000000  ')
GO
INSERT KhachHang  ( MaKH ,  TenKH ,  GioiTinh ,  DiaChi ,  SDT ) VALUES (N'01        ', N'Lý Thành Lập', N'Nam  ', N'Thái Nguyên', 456789123)
INSERT KhachHang  ( MaKH ,  TenKH ,  GioiTinh ,  DiaChi ,  SDT ) VALUES (N'02        ', N'Nguyễn Quang Huy', N'Nam  ', N'Thái Nguyên', 789123456)
GO
INSERT NhaCungCap  ( MaNCC ,  TenNCC ) VALUES (N'1         ', N'JUNO')
INSERT NhaCungCap  ( MaNCC ,  TenNCC ) VALUES (N'2         ', N'MINAFS')
INSERT NhaCungCap  ( MaNCC ,  TenNCC ) VALUES (N'3         ', N'ALBEE')
INSERT NhaCungCap  ( MaNCC ,  TenNCC ) VALUES (N'4         ', N'DONG HAI')
GO
INSERT NhanVien  ( MaNV ,  TenNV ,  NgaySinh ,  GioiTinh ,  DiaChi ,  SDT ) VALUES (N'01        ', N'Lý Thành Lập', CAST(N'2004-12-21' AS Date), N'Nam', N'Thái Nguyên', 123456789)
INSERT NhanVien  ( MaNV ,  TenNV ,  NgaySinh ,  GioiTinh ,  DiaChi ,  SDT ) VALUES (N'02        ', N'Nguyễn Quang Huy', CAST(N'2004-01-01' AS Date), N'Nam', N'Thía Nguyên', 123789456)
GO
INSERT SanPham  ( MaSP ,  MaNCC ,  TenSP ,  SoLuong ,  DonGiaNhap ,  DonGiaBan ) VALUES (N'01        ', N'4         ', N'Cao gót vải 7cm', 10, 350000, 499000)
INSERT SanPham  ( MaSP ,  MaNCC ,  TenSP ,  SoLuong ,  DonGiaNhap ,  DonGiaBan ) VALUES (N'02        ', N'1         ', N'Cao gót bóng 5cm', 20, 500000, 699000)
INSERT SanPham  ( MaSP ,  MaNCC ,  TenSP ,  SoLuong ,  DonGiaNhap ,  DonGiaBan ) VALUES (N'03        ', N'3         ', N'Cao gót nhũ 12cm', 10, 350000, 499000)
INSERT SanPham  ( MaSP ,  MaNCC ,  TenSP ,  SoLuong ,  DonGiaNhap ,  DonGiaBan ) VALUES (N'04        ', N'2         ', N'Cao gót nhung lì 3cm',25, 200000, 399000)
GO
ALTER TABLE ChiTietHoaDon   WITH CHECK ADD  CONSTRAINT  FK_ChiTietHoaDon_HoaDon  FOREIGN KEY( MaHD )
REFERENCES HoaDon  ( MaHD )
GO
ALTER TABLE ChiTietHoaDon  CHECK CONSTRAINT  FK_ChiTietHoaDon_HoaDon 
GO
ALTER TABLE ChiTietHoaDon   WITH CHECK ADD  CONSTRAINT  FK_ChiTietHoaDon_SanPham  FOREIGN KEY( MaSP )
REFERENCES SanPham  ( MaSP )
GO
ALTER TABLE ChiTietHoaDon  CHECK CONSTRAINT  FK_ChiTietHoaDon_SanPham 
GO
ALTER TABLE HoaDon   WITH CHECK ADD  CONSTRAINT  FK_HoaDon_KhachHang  FOREIGN KEY( MaKH )
REFERENCES KhachHang  ( MaKH )
GO
ALTER TABLE HoaDon  CHECK CONSTRAINT  FK_HoaDon_KhachHang 
GO
ALTER TABLE HoaDon   WITH CHECK ADD  CONSTRAINT  FK_HoaDon_NhanVien  FOREIGN KEY( MaNV )
REFERENCES NhanVien  ( MaNV )
GO
ALTER TABLE HoaDon  CHECK CONSTRAINT  FK_HoaDon_NhanVien 
GO
ALTER TABLE SanPham   WITH CHECK ADD  CONSTRAINT  FK_SanPham_NhaCungCap  FOREIGN KEY( MaNCC )
REFERENCES NhaCungCap  ( MaNCC )
GO
ALTER TABLE SanPham  CHECK CONSTRAINT  FK_SanPham_NhaCungCap 
GO


-- Cập nhật số lượng sản phẩm và tổng tiền của hóa đơn sau khi thêm chi tiết hóa đơn 
CREATE TRIGGER trg_ThemChiTietHoaDon ON ChiTietHoaDon AFTER INSERT AS 
BEGIN
	UPDATE SanPham
	SET SoLuong = SanPham.SoLuong - (
		SELECT SoLuong
		FROM inserted
		WHERE MaSP = SanPham.MaSP
	)
	FROM SanPham
	JOIN inserted ON SanPham.MaSP = inserted.MaSP

	UPDATE HoaDon
	SET TongTien = HoaDon.TongTien + (
		SELECT ThanhTien
		FROM inserted
		WHERE MaHD = HoaDon.MaHD
	)
	FROM HoaDon
	JOIN inserted ON HoaDon.MaHD = inserted.MaHD
END

GO

--Cập nhật số lượng sản phẩm và tổng tiền của hóa đơn sau khi cập nhật chi tiết hóa đơn 
CREATE TRIGGER trg_CapNhatChiTietHoaDon ON ChiTietHoaDon AFTER UPDATE AS
BEGIN
   UPDATE SanPham SET SoLuong = SanPham.SoLuong -
	   (SELECT SoLuong FROM inserted WHERE MaSP = SanPham.MaSP) +
	   (SELECT SoLuong FROM deleted WHERE MaSP = SanPham.MaSP)
   FROM SanPham 
   JOIN deleted ON SanPham.MaSP = deleted.MaSP

   UPDATE HoaDon SET TongTien = HoaDon.TongTien +
	   (SELECT ThanhTien FROM inserted WHERE MaHD = HoaDon.MaHD) -
	   (SELECT ThanhTien FROM deleted WHERE MaHD = HoaDon.MaHD)
   FROM HoaDon 
   JOIN deleted ON HoaDon.MaHD = deleted.MaHD
END

GO

/* Cập nhật số lượng sản phẩm và tổng tiền của hóa đơn sau khi xóa chi tiết hóa đơn */
CREATE TRIGGER trg_XoaChiTietHoaDon ON ChiTietHoaDon FOR DELETE AS 
BEGIN
	UPDATE SanPham
	SET SoLuong = SanPham.SoLuong + 
		(SELECT SoLuong FROM deleted WHERE MaSP = SanPham.MaSP)
	FROM SanPham
	JOIN deleted ON SanPham.MaSP = deleted.MaSP

	UPDATE HoaDon
	SET TongTien = HoaDon.TongTien - 
		(SELECT ThanhTien FROM deleted WHERE MaHD = HoaDon.MaHD)
	FROM HoaDon
	JOIN deleted ON HoaDon.MaHD = deleted.MaHD
END

GO

/* Tạo bảng tài khoản */
CREATE TABLE TaiKhoan (
	TenDangNhap varchar(20) primary key not null,
	MatKhau varchar(20) not null,
)

GO
INSERT INTO TaiKhoan VALUES ('admin', '123');