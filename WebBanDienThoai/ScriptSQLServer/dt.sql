USE [WebBanDienThoai]
GO
/****** Object:  Table [dbo].[BINHLUAN]    Script Date: 5/14/2021 7:38:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BINHLUAN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](255) NULL,
	[ngay] [datetime2](7) NULL,
	[noiDung] [nvarchar](255) NULL,
	[tenBinhLuan] [nvarchar](255) NULL,
	[id_DienThoai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 5/14/2021 7:38:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[id_DienThoai] [int] NOT NULL,
	[id_HoaDon] [int] NOT NULL,
	[soLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_DienThoai] ASC,
	[id_HoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 5/14/2021 7:38:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenDanhMuc] [nvarchar](255) NULL,
 CONSTRAINT [PK__DANHMUC__3213E83FE8F11F95] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIENTHOAI]    Script Date: 5/14/2021 7:38:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIENTHOAI](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenDT] [nvarchar](255) NULL,
	[baoHanh] [nvarchar](255) NOT NULL,
	[giaDT] [float] NOT NULL,
	[giamGia] [float] NOT NULL,
	[soLuongTon] [int] NOT NULL,
	[thue] [float] NOT NULL,
	[trongLuong] [float] NOT NULL,
	[kichThuoc] [nvarchar](255) NOT NULL,
	[mauSac] [nvarchar](255) NULL,
	[anhURL] [nvarchar](255) NULL,
	[id_ThuongHieu] [int] NULL,
	[id_DanhMuc] [int] NULL,
	[id_ThongSo] [int] NULL,
 CONSTRAINT [PK__DIENTHOA__3213E83F2949C0CB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 5/14/2021 7:38:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ngayLap] [date] NOT NULL,
	[hoTenKhachHang] [nvarchar](255) NOT NULL,
	[soDienThoaiGiaoHang] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[diaChiGiaoHang] [nvarchar](255) NOT NULL,
	[id_ThanhToan] [int] NOT NULL,
	[id_NguoiDung] [int] NOT NULL,
 CONSTRAINT [PK__HOADON__3213E83FA6912D16] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 5/14/2021 7:38:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[diaChi] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[matKhau] [nvarchar](255) NULL,
	[ngayTao] [date] NULL,
	[soDienThoai] [varchar](255) NULL,
	[tenDangNhap] [nvarchar](255) NULL,
	[tenNguoiDung] [nvarchar](255) NULL,
	[vaiTro] [nvarchar](255) NULL,
 CONSTRAINT [PK__NGUOIDUN__3213E83F7650F0E2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NGUOIDUNGS_ROLES]    Script Date: 5/14/2021 7:38:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNGS_ROLES](
	[nguoiDung_id] [int] NOT NULL,
	[role_id] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHUONGTHUCTHANHTOAN]    Script Date: 5/14/2021 7:38:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHUONGTHUCTHANHTOAN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phuongThuc] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__PHUONGTH__3213E83F9F7C0E2A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 5/14/2021 7:38:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ROLE](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THONGSO]    Script Date: 5/14/2021 7:38:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGSO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heDieuHanh] [nvarchar](255) NULL,
	[manHinh] [nvarchar](255) NULL,
	[boNho] [nvarchar](255) NULL,
	[camera] [nvarchar](255) NULL,
	[pin] [nvarchar](255) NOT NULL,
	[ram] [nvarchar](255) NULL,
	[sim] [nvarchar](255) NULL,
 CONSTRAINT [PK__THONGSO__3213E83F9F70EB26] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 5/14/2021 7:38:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenTH] [nvarchar](255) NULL,
	[xuatXu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CHITIETHOADON] ([id_DienThoai], [id_HoaDon], [soLuong]) VALUES (2, 3, 1)
INSERT [dbo].[CHITIETHOADON] ([id_DienThoai], [id_HoaDon], [soLuong]) VALUES (3, 4, 2)
INSERT [dbo].[CHITIETHOADON] ([id_DienThoai], [id_HoaDon], [soLuong]) VALUES (7, 6, 1)
INSERT [dbo].[CHITIETHOADON] ([id_DienThoai], [id_HoaDon], [soLuong]) VALUES (8, 5, 1)
SET IDENTITY_INSERT [dbo].[DANHMUC] ON 

INSERT [dbo].[DANHMUC] ([id], [tenDanhMuc]) VALUES (1, N'IPHONE')
INSERT [dbo].[DANHMUC] ([id], [tenDanhMuc]) VALUES (2, N'SAMSUNG')
INSERT [dbo].[DANHMUC] ([id], [tenDanhMuc]) VALUES (3, N'VSMART')
INSERT [dbo].[DANHMUC] ([id], [tenDanhMuc]) VALUES (4, N'OPPO')
INSERT [dbo].[DANHMUC] ([id], [tenDanhMuc]) VALUES (5, N'XIAOMI')
INSERT [dbo].[DANHMUC] ([id], [tenDanhMuc]) VALUES (6, N'HUAWEI')
INSERT [dbo].[DANHMUC] ([id], [tenDanhMuc]) VALUES (18, N'a')
SET IDENTITY_INSERT [dbo].[DANHMUC] OFF
SET IDENTITY_INSERT [dbo].[DIENTHOAI] ON 

INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (1, N'Iphone 12', N'1 năm', 15900000, 5, 20, 10, 150, N'Dài 138.4 mm - Ngang 67.3 mm', N'Trắng', N'ip11trang.png', 1, 1, 1)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (2, N'Iphone 12 Pro', N'1 năm', 17100000, 5, 20, 10, 170, N'DÃ i 138.4 mm - Ngang 67.3 mm', N'Trắng', N'ip11trang.png', 1, 1, 2)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (3, N'Iphone 12 Pro Max', N'1 năm', 19900000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Trắng', N'ip11maxtrang.jpg', 1, 1, 3)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (4, N'Iphone 11 ', N'1 năm', 12990000, 5, 20, 10, 150, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đỏ', N'ip11do.jpg', 1, 1, 1)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (5, N'Iphone 11 Pro', N'1 năm', 14990000, 5, 20, 10, 170, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đỏ', N'ip11prodo.jpg', 1, 1, 2)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (6, N'Iphone 11 Pro Max', N'1 năm', 16990000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đỏ', N'ip11maxdo.jpg', 1, 1, 3)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (7, N'Iphone X', N'1 năm', 9990000, 5, 20, 10, 150, N'DÃ i 138.4 mm - Ngang 67.3 mm', N'Xanh rêu', N'ip11maxdo.jpg', 1, 1, 1)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (8, N'Iphone XS', N'1 năm', 10990000, 5, 20, 10, 170, N'Dài 138.4 mm - Ngang 67.3 mm', N'Xanh rêu', N'ip11proxanh.jpg', 1, 1, 2)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (9, N'Iphone XSMAX', N'1 năm', 11990000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Xanh rêu', N'ip11maxxanh.jpg', 1, 1, 3)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (10, N'Samsung Galaxy Note 20', N'1 năm', 20990000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đen', N'note20den.jpg', 2, 2, 4)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (11, N'Samsung Galaxy S21', N'1 năm', 15990000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đen', N's21den.jpg', 2, 2, 5)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (12, N'Samsung Galaxy Z Fold2 5G', N'1 năm', 20990000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đen', N'zden.jpg', 2, 2, 6)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (13, N'Vsmart Aris', N'1 năm', 5100000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đen', N'vden.jpg', 3, 3, 7)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (14, N'Vsmart Aris Pro', N'1 năm', 7100000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đen', N'vproden.jpg', 3, 3, 8)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (15, N'Xiaomi Mi 11 Lite', N'1 năm', 7900000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đen', N'xaomixanh.jpg', 5, 5, 8)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (16, N'OPPO Reno5 5G', N'1 năm', 11900000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đen', N'oppo5gden.jpg', 4, 4, 7)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (17, N'OPPO Reno4 Pro', N'1 năm', 10900000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đen', N'oppoden.jpg', 4, 4, 4)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (18, N'Huawei Y6p', N'1 năm', 2900000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đen', N'huaden.jpg', 6, 6, 6)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (19, N'Huawei Y6p', N'1 năm', 2900000, 5, 20, 10, 190, N'Dài 138.4 mm - Ngang 67.3 mm', N'Đen', N'huaden.jpg', 6, 6, 6)
INSERT [dbo].[DIENTHOAI] ([id], [tenDT], [baoHanh], [giaDT], [giamGia], [soLuongTon], [thue], [trongLuong], [kichThuoc], [mauSac], [anhURL], [id_ThuongHieu], [id_DanhMuc], [id_ThongSo]) VALUES (20, N'iphone 11', N'1 năm', 15000, 5, 10, 10, 150, N'2', N'Trắng', NULL, NULL, 18, 15)
SET IDENTITY_INSERT [dbo].[DIENTHOAI] OFF
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([id], [ngayLap], [hoTenKhachHang], [soDienThoaiGiaoHang], [email], [diaChiGiaoHang], [id_ThanhToan], [id_NguoiDung]) VALUES (3, CAST(N'2021-05-05' AS Date), N'cat luynh', N'0903589164', N'a', N'a', 1, 10)
INSERT [dbo].[HOADON] ([id], [ngayLap], [hoTenKhachHang], [soDienThoaiGiaoHang], [email], [diaChiGiaoHang], [id_ThanhToan], [id_NguoiDung]) VALUES (4, CAST(N'2021-05-05' AS Date), N'cat luynh', N'0903589164', N'a', N'a', 2, 8)
INSERT [dbo].[HOADON] ([id], [ngayLap], [hoTenKhachHang], [soDienThoaiGiaoHang], [email], [diaChiGiaoHang], [id_ThanhToan], [id_NguoiDung]) VALUES (5, CAST(N'2021-05-05' AS Date), N'cat luynh', N'0903589164', N'a', N'a', 1, 7)
INSERT [dbo].[HOADON] ([id], [ngayLap], [hoTenKhachHang], [soDienThoaiGiaoHang], [email], [diaChiGiaoHang], [id_ThanhToan], [id_NguoiDung]) VALUES (6, CAST(N'2021-05-05' AS Date), N'cat luynh', N'0903589164', N'a', N'a', 2, 9)
SET IDENTITY_INSERT [dbo].[HOADON] OFF
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] ON 

INSERT [dbo].[NGUOIDUNG] ([id], [diaChi], [email], [matKhau], [ngayTao], [soDienThoai], [tenDangNhap], [tenNguoiDung], [vaiTro]) VALUES (4, N'123 Lạc long Quân', N'tluynh@gmail.com', N'123', CAST(N'2021-05-05' AS Date), N'0903589164', N'catluynh', N'luynh', N'ROLE_USER')
INSERT [dbo].[NGUOIDUNG] ([id], [diaChi], [email], [matKhau], [ngayTao], [soDienThoai], [tenDangNhap], [tenNguoiDung], [vaiTro]) VALUES (6, N'123 Lạc long Quân', N'tluynh@gmail.com', N'$2a$10$4fRHpwpU/VRJW3LbRjKrfepXgwA0dWQA.Phn75b/1KjExA7bmndS2', CAST(N'2021-05-05' AS Date), N'0903589164', N'luynh', N'luynh', N'ROLE_ADMIN')
INSERT [dbo].[NGUOIDUNG] ([id], [diaChi], [email], [matKhau], [ngayTao], [soDienThoai], [tenDangNhap], [tenNguoiDung], [vaiTro]) VALUES (7, N'123 Lạc long Quân', N'tluynh@gmail.com', N'123', CAST(N'2021-05-05' AS Date), N'0903589164', N'catluynh', N'luynh', N'ROLE_USER')
INSERT [dbo].[NGUOIDUNG] ([id], [diaChi], [email], [matKhau], [ngayTao], [soDienThoai], [tenDangNhap], [tenNguoiDung], [vaiTro]) VALUES (8, N'123 Lạc long Quân', N'tluynh@gmail.com', N'123', CAST(N'2021-05-05' AS Date), N'0903589164', N'catluynh', N'luynh', N'ROLE_USER')
INSERT [dbo].[NGUOIDUNG] ([id], [diaChi], [email], [matKhau], [ngayTao], [soDienThoai], [tenDangNhap], [tenNguoiDung], [vaiTro]) VALUES (9, N'123 Lạc long Quân', N'tluynh@gmail.com', N'123', CAST(N'2021-05-05' AS Date), N'0903589164', N'catluynh', N'luynh', N'ROLE_USER')
INSERT [dbo].[NGUOIDUNG] ([id], [diaChi], [email], [matKhau], [ngayTao], [soDienThoai], [tenDangNhap], [tenNguoiDung], [vaiTro]) VALUES (10, N'123 Lạc long Quân', N'tluynh@gmail.com', N'123', CAST(N'2021-05-05' AS Date), N'0903589164', N'catluynh', N'luynh', N'ROLE_USER')
INSERT [dbo].[NGUOIDUNG] ([id], [diaChi], [email], [matKhau], [ngayTao], [soDienThoai], [tenDangNhap], [tenNguoiDung], [vaiTro]) VALUES (11, N'123 Nguyá»n ChÃ­ Thanh', N'thanh@gmail.com', N'123', CAST(N'2021-05-05' AS Date), N'0903589164', N'Thanh', N'thanh', N'ROLE_USER')
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] OFF
INSERT [dbo].[NGUOIDUNGS_ROLES] ([nguoiDung_id], [role_id]) VALUES (6, 2)
SET IDENTITY_INSERT [dbo].[PHUONGTHUCTHANHTOAN] ON 

INSERT [dbo].[PHUONGTHUCTHANHTOAN] ([id], [phuongThuc]) VALUES (1, N'COD')
INSERT [dbo].[PHUONGTHUCTHANHTOAN] ([id], [phuongThuc]) VALUES (2, N'Thẻ nội địa ATM')
SET IDENTITY_INSERT [dbo].[PHUONGTHUCTHANHTOAN] OFF
SET IDENTITY_INSERT [dbo].[ROLE] ON 

INSERT [dbo].[ROLE] ([id], [name]) VALUES (1, N'ROLE_USER')
INSERT [dbo].[ROLE] ([id], [name]) VALUES (2, N'ROLE_ADMIN')
SET IDENTITY_INSERT [dbo].[ROLE] OFF
SET IDENTITY_INSERT [dbo].[THONGSO] ON 

INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (1, N'IOS 14', N'OLED', N'64 GB', N'12 MP', N'3110 mAh', N'4 GB', N' 1 Nano SIM')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (2, N'IOS 14', N'OLED', N'256 GB', N'24 MP', N'3346 mAh', N'4 GB', N'1 Nano SIM')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (3, N'IOS 14', N'OLED', N'512 GB', N'36 MP', N'3510 mAh', N'4 GB', N'1 Nano SIM')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (4, N'Android 10', N'IPS LCD', N'256 GB', N'30 MP', N'4110 mAh', N'12 GB', N' 2 SIM (Nano-SIM)')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (5, N'Android 11', N'IPS LCD', N'128 GB', N'30 MP', N'4000 mAh', N'8 GB', N' 2 SIM (Nano-SIM)')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (6, N'Android 11', N'IPS LCD', N'256 GB', N'36 MP', N'4500 mAh', N'12 GB', N'2 SIM (Nano-SIM)')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (7, N'Android 11', N'IPS LCD', N'128 GB', N' 20 MP', N'4000 mAh', N'12 GB', N'2 SIM (Nano-SIM)')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (8, N'Android 11', N'IPS LCD', N'128 GB', N'20 MP', N'4000 mAh', N'12 GB', N'2 SIM (Nano-SIM)')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (9, N'IOS 14', N'OLED', N'256 GB', N'36 MP', N'4000 mAh', N'12 GB', N'1 Nano SIM')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (10, N'Android 11', N'OLED', N'16GB', N'16MP', N'3510 mAh', N'12GB', N'1 Nano SIM')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (11, N'Android 11', N'IPS LCD', N'512GB', N'48MB', N'4000 mAh', N'16GB', N'2 SIM (Nano-SIM)')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (12, N'Android 11', N'OLED', N'64 GB', N'16MP', N'4110 mAh', N'12 GB', N'2 SIM (Nano-SIM)')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (13, N'Android 11', N'IPS LCD', N'128 GB', N'48MB', N'3510 mAh', N'4GB', N'2 SIM (Nano-SIM)')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (14, N'Android 11', N'IPS LCD', N'64 GB', N'48MB', N'4110 mAh', N'4GB', N'2 SIM (Nano-SIM)')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (15, N'ios', N'ECt', N'128GB', N'16MP', N'4110 mAh', N'12GB', N'2 SIM (Nano-SIM)')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (25, N'', N'', N'16GB', N'select', N'', N'4GB', N'')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (26, N'', N'', N'16GB', N'select', N'', N'4GB', N'')
INSERT [dbo].[THONGSO] ([id], [heDieuHanh], [manHinh], [boNho], [camera], [pin], [ram], [sim]) VALUES (27, N'q', N'Aq', N'16GB', N'select', N'q', N'4GB', N'q')
SET IDENTITY_INSERT [dbo].[THONGSO] OFF
SET IDENTITY_INSERT [dbo].[THUONGHIEU] ON 

INSERT [dbo].[THUONGHIEU] ([id], [tenTH], [xuatXu]) VALUES (1, N'IPHONE', N'USA')
INSERT [dbo].[THUONGHIEU] ([id], [tenTH], [xuatXu]) VALUES (2, N'SAMSUNG', N'HÀN QUỐC')
INSERT [dbo].[THUONGHIEU] ([id], [tenTH], [xuatXu]) VALUES (3, N'VSMART', N'VIỆT NAM')
INSERT [dbo].[THUONGHIEU] ([id], [tenTH], [xuatXu]) VALUES (4, N'OPPO', N'VIỆT NAM')
INSERT [dbo].[THUONGHIEU] ([id], [tenTH], [xuatXu]) VALUES (5, N'XIAOMI', N'TRUNG QUỐC')
INSERT [dbo].[THUONGHIEU] ([id], [tenTH], [xuatXu]) VALUES (6, N'HUAWEI', N'TRUNG QUỐC')
SET IDENTITY_INSERT [dbo].[THUONGHIEU] OFF
ALTER TABLE [dbo].[BINHLUAN]  WITH CHECK ADD  CONSTRAINT [FK_BINHLUAN_DIENTHOAI] FOREIGN KEY([id_DienThoai])
REFERENCES [dbo].[DIENTHOAI] ([id])
GO
ALTER TABLE [dbo].[BINHLUAN] CHECK CONSTRAINT [FK_BINHLUAN_DIENTHOAI]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_DIENTHOAI] FOREIGN KEY([id_DienThoai])
REFERENCES [dbo].[DIENTHOAI] ([id])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_DIENTHOAI]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK53l1oacq3sgimvx4j6qklhy27] FOREIGN KEY([id_HoaDon])
REFERENCES [dbo].[HOADON] ([id])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK53l1oacq3sgimvx4j6qklhy27]
GO
ALTER TABLE [dbo].[DIENTHOAI]  WITH CHECK ADD  CONSTRAINT [FK_DIENTHOAI_DANHMUC] FOREIGN KEY([id_DanhMuc])
REFERENCES [dbo].[DANHMUC] ([id])
GO
ALTER TABLE [dbo].[DIENTHOAI] CHECK CONSTRAINT [FK_DIENTHOAI_DANHMUC]
GO
ALTER TABLE [dbo].[DIENTHOAI]  WITH CHECK ADD  CONSTRAINT [FK_DIENTHOAI_THONGSO] FOREIGN KEY([id_ThongSo])
REFERENCES [dbo].[THONGSO] ([id])
GO
ALTER TABLE [dbo].[DIENTHOAI] CHECK CONSTRAINT [FK_DIENTHOAI_THONGSO]
GO
ALTER TABLE [dbo].[DIENTHOAI]  WITH CHECK ADD  CONSTRAINT [FK25x46sdojaesh2o17qw6kgcwc] FOREIGN KEY([id_ThuongHieu])
REFERENCES [dbo].[THUONGHIEU] ([id])
GO
ALTER TABLE [dbo].[DIENTHOAI] CHECK CONSTRAINT [FK25x46sdojaesh2o17qw6kgcwc]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK9p1epu2pqjnfyu3tukdmpjff8] FOREIGN KEY([id_NguoiDung])
REFERENCES [dbo].[NGUOIDUNG] ([id])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK9p1epu2pqjnfyu3tukdmpjff8]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FKo49tpy40k83fk5lr25omb3hkv] FOREIGN KEY([id_ThanhToan])
REFERENCES [dbo].[PHUONGTHUCTHANHTOAN] ([id])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FKo49tpy40k83fk5lr25omb3hkv]
GO
ALTER TABLE [dbo].[NGUOIDUNGS_ROLES]  WITH CHECK ADD  CONSTRAINT [FKhmrgsbq6wx3idtva3p3x92qoj] FOREIGN KEY([role_id])
REFERENCES [dbo].[ROLE] ([id])
GO
ALTER TABLE [dbo].[NGUOIDUNGS_ROLES] CHECK CONSTRAINT [FKhmrgsbq6wx3idtva3p3x92qoj]
GO
ALTER TABLE [dbo].[NGUOIDUNGS_ROLES]  WITH CHECK ADD  CONSTRAINT [FKmwpv81lmatoc6rso3h9kvqjy3] FOREIGN KEY([nguoiDung_id])
REFERENCES [dbo].[NGUOIDUNG] ([id])
GO
ALTER TABLE [dbo].[NGUOIDUNGS_ROLES] CHECK CONSTRAINT [FKmwpv81lmatoc6rso3h9kvqjy3]
GO
