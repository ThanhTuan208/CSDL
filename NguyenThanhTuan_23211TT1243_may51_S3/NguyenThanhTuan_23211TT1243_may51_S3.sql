create database NguyenThanhTuan_23211TT1243_may51_S3
-- tao bang KHACHHANG
create table KHACHHANG
(
MaKH char (4) not null,
HoTen varchar(40),
DiaChi varchar(50),
SDT varchar(20),
NgaySinh date,
DoanhSo float,
NgDK date,
primary key (MaKH)
)
-- tao bang NHANVIEN	
create table NHANVIEN
(
MaNV nvarchar (10) not null,
HoTen nvarchar (50),
NgVL nvarchar(30),
SDT int,
primary key(MaNV)
)	
-- tao bang SANPHAM
create table SANPHAM
(
MaSP nvarchar (10) not null,
tenSP nvarchar (50),
DVT int,
NuocSX nvarchar(30),
Gia float,
primary key(MaSP)
)
-- Tao bang HOADON
create table HOADON
(
SoHD int not null,
NgayHD date,
MaKH nvarchar(10) not null,
MaNV nvarchar (10) not null,
TriGia float,
primary key(SoHD)
)
-- tao bang CTHD
create table CTHD
(
SoHD int not null,
MaSP nvarchar(10) not null,
SoLuong int,
primary key(SoHD, MaSP)
)
-- nhap du lieu KHACHHANG
insert into KHACHHANG(MaKH, HoTen, DiaChi,SDT,NgaySinh,DoanhSo,NgDK)
values('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM', 035653543, '2005/08/20',12.2,'2020/04/03')
insert into KHACHHANG(MaKH, HoTen, DiaChi,SDT,NgaySinh,DoanhSo,NgDK)
values('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM', 035653543, '2005/08/20',12.2,'2020/04/03')
insert into KHACHHANG(MaKH, HoTen, DiaChi,SDT,NgaySinh,DoanhSo,NgDK)
values('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM', 035653543, '2005/08/20',12.2,'2020/04/03')
insert into KHACHHANG(MaKH, HoTen, DiaChi,SDT,NgaySinh,DoanhSo,NgDK)
values('KH04','Tran Minh Long','34 Truong Dinh, Q3, TpHCM', 035653543, '2005/08/20',12.2,'2020/04/03')
insert into KHACHHANG(MaKH, HoTen, DiaChi,SDT,NgaySinh,DoanhSo,NgDK)
values('KH05','Le Nhat Minh','227 Nguyen Van C, Q5, TpHCM', 035653543, '2005/08/20',12.2,'2020/04/03')
insert into KHACHHANG(MaKH, HoTen, DiaChi,SDT,NgaySinh,DoanhSo,NgDK)
values('KH06',N'Le hoai Thuong','32/3 Tran Binh Phong, Q5, TpHCM', 035653543, '2005/08/20',12.2,'2020/04/03')
insert into KHACHHANG(MaKH, HoTen, DiaChi,SDT,NgaySinh,DoanhSo,NgDK)
values('KH07',N'Nguyen VanTam','45/2 An Duong Vuong, Q5, TpHCM', 035653543, '2005/08/20',12.2,'2020/04/03')
insert into KHACHHANG(MaKH, HoTen, DiaChi,SDT,NgaySinh,DoanhSo,NgDK)
values('KH08',N'Phan Thi Thanh','873 Le Hong Phong, Q5, TpHCM', 035653543, '2005/08/20',12.2,'2020/04/03')
insert into KHACHHANG(MaKH, HoTen, DiaChi,SDT,NgaySinh,DoanhSo,NgDK)
values('KH09',N'Le Ha Vinh','34/34B Nguyen Trai, Q1, TPHCM', 035653543, '2005/08/20',12.2,'2020/04/03')
insert into KHACHHANG(MaKH, HoTen, DiaChi,SDT,NgaySinh,DoanhSo,NgDK)
values('KH10',N'Ha Duy Lap','Hai Ba Trung', 035653543, '2005/08/20',12.2,'2020/04/03')


-- nhap du lieu NHANVIEN
insert into NHANVIEN(MaNV, HoTen,NgVL,SDT)
values('NV01',N'Nguyen Nhu Nhut', '2020/03/05',030342234)
insert into NHANVIEN(MaNV, HoTen,NgVL,SDT)
values('NV02',N'Le Thi Phi Yen', '2020/03/05',030342234)
insert into NHANVIEN(MaNV, HoTen,NgVL,SDT)
values('NV03',N'NGuyen Van B', '2020/03/05',030342234)
insert into NHANVIEN(MaNV, HoTen,NgVL,SDT)
values('NV04',N'Ngo Thanh Tuan', '2020/03/05',030342234)
insert into NHANVIEN(MaNV, HoTen,NgVL,SDT)
values('NV05',N'Nguyen Thi Truc Thanh', '2020/03/05',030342234)

-- nhap du lieu SANPHAM
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('S01',N'Nuoc Hoa plus', 1,N'Viet Nam',200000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('S02',N'Nuoc Hoa', 2,N'Viet Nam',210000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('S03',N'Nuoc Hoa premium', 1,N'Viet Nam',220000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('S04',N'Nuoc Hoa luxury', 3,N'Viet Nam',230000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('S05',N'Nuoc Hoa limited', 2,N'Viet Nam',240000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('T01',N'Nuoc Hoa plus', 1,N'UK',200000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('T02',N'Nuoc Hoa', 2,N'UK',210000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('T03',N'Nuoc Hoa premium', 1,N'UK',220000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('T04',N'Nuoc Hoa luxury', 3,N'UK',230000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('T05',N'Nuoc Hoa limited', 2,N'UK',240000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('E01',N'Nuoc Hoa plus', 1,N'Thai Lan',200000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('E02',N'Nuoc Hoa', 2,N'Thai Lan',210000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('E03',N'Nuoc Hoa premium', 1,N'Thai Lan',220000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('E04',N'Nuoc Hoa luxury', 3,N'Thai Lan',230000)
insert into SANPHAM(MaSP,tenSP, DVT,NuocSX,Gia)
values('E05',N'Nuoc Hoa limited', 2,N'Thai Lan',240000)
-- nhap du lieu HOADON
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(1,'2024/05/04','KH01','NV01',960.054)
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(2,'2024/05/04','KH02','NV02',960.054)
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(4,'2024/05/04','KH03','NV03',960.054)
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(3,'2024/05/04','KH04','NV04',960.054)
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(5,'2024/05/04','KH05','NV05',960.054)
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(1,'2024/05/04','KH06','NV01',960.054)
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(2,'2024/05/04','KH07','NV02',960.054)
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(4,'2024/05/04','KH08','NV03',960.054)
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(3,'2024/05/04','KH09','NV04',960.054)
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(5,'2024/05/04','KH010','NV05',960.054)
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(3,'2024/05/04',null,'NV04',960.054)
insert into HOADON(SoHD, NgayHD, MaKH, MaNV, TriGia)
values(5,'2024/05/04',null,'NV05',960.054)

-- nhap du lieu CTHD
insert into CTHD(SoHD,MaSP,SoLuong)
values(1, 'S01', 2)
insert into CTHD(SoHD,MaSP,SoLuong)
values(2, 'S02', 1)
insert into CTHD(SoHD,MaSP,SoLuong)
values(4, 'S03', 0)
insert into CTHD(SoHD,MaSP,SoLuong)
values(3, 'S04', 5)
insert into CTHD(SoHD,MaSP,SoLuong)
values(5, 'S05', 4)
insert into CTHD(SoHD,MaSP,SoLuong)
values(1, 'T01', 2)
insert into CTHD(SoHD,MaSP,SoLuong)
values(2, 'T02', 1)
insert into CTHD(SoHD,MaSP,SoLuong)
values(4, 'T03', 0)
insert into CTHD(SoHD,MaSP,SoLuong)
values(3, 'T04', 5)
insert into CTHD(SoHD,MaSP,SoLuong)
values(5, 'T05', 4)
insert into CTHD(SoHD,MaSP,SoLuong)
values(1, 'E01', 2)
insert into CTHD(SoHD,MaSP,SoLuong)
values(2, 'E02', 1)
insert into CTHD(SoHD,MaSP,SoLuong)
values(4, 'E03', 0)
insert into CTHD(SoHD,MaSP,SoLuong)
values(3, 'E04', 5)
insert into CTHD(SoHD,MaSP,SoLuong)
values(5, 'E05', 4)