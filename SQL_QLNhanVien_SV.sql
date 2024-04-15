---tao csdl QLNhanVie
create database QLNhanVien

create database QLNhanVien

----tao bang PhongBan
create table PhongBan
(
MaPB nvarchar(10) not null,
TenPB nvarchar(50),
TruongPhong nvarchar(10),
NgayNhanChuc date,
primary key(MaPB)
)
----tao bang NhanVien
create table NhanVien
(
MaNV nvarchar(10) not null,
HoNV nvarchar(50),
TenNV nvarchar(50),
NgaySinh date,
DiaChi nvarchar(50),
QQuan nvarchar(50),
Phai nvarchar(10),
Luong int,
MaNQL nvarchar(10),
MaPB nvarchar(10),
primary key(MaNV)
)
----tao lien ket giua bang NhanVien va PhongBan qua thuoc tinh MaPB
alter table NhanVien
add constraint RB_NV_PB_MaPB
foreign key (MaPB)
references PhongBan(MaPB)

---tao lien ket giua bang NhanVien va PhongBan qua thuoc tinh MaNV va TruongPhong
alter table PhongBan
add constraint RB_NV_PB_TruongPhong
foreign key (TruongPhong)
references NhanVien(MaNV)

---tao lien ket giua MaNV va MaNQL tai bang NhanVien
alter table NhanVien
add constraint RB_NhanVien_MaNV_MaNQL
foreign key (MaNQL)
references NhanVien(MaNV)

--- tao bang diadiem_phong
create table Diadiem_Phong
(
MaPB nvarchar(10) not null,
DiaDiem nvarchar(50) not null,
primary key(MaPB,DiaDiem)
)

---tao lien ket giua bang diadiem_phong va phongban qua thuoc tinh MaPB
alter table DiaDiem_Phong
add constraint FK_DDP_PhongBan_MaPB
foreign key ( MaPB)
references PhongBan(MaPB)

--- tao bang thannhan
create table ThanNhan
(
MaNV nvarchar(10) not null,
HoTN nvarchar(50) not null,
TenTN nvarchar(50) not null,
Phai nvarchar(50),
NgaySinh date,
QuanHe nvarchar(50)
primary key (MaNV,HoTN,TenTN)
)

--- tao lien ket giua bang Nhanvien va thannhan qua thuoc tinh MaNV
alter table Thannhan
add constraint FK_NV_TN_MaNV
foreign key(MaNV)
references NhanVien(MaNV)

--- tao bang DeAn
create table DeAn
(
MaDA nvarchar(10) not null,
TenDA nvarchar(50),
DiaDiem nvarchar(50),
MaPB nvarchar(10),
primary key(MaDA)
)

--- tao lien ket giua bang DeAn va PhongBan thong qua thuoc  tinh MaPhong
alter table DeAn
add constraint FK_PhongBan_DeAn_MaPB
foreign key (MaPB)
references PhongBan(MaPB)

--- tao bang phancong
create table PhanCong
(
MaNV nvarchar(10) not null,
MaDA nvarchar(10) not null,
ThoiGian float,
primary key (MaNV,MaDA)
)

-- tao lien ket giua bang phancong va dean qua thuoc tinh MaDA
alter table PhanCong
add constraint FK_PhanCong_DeAn_MaDA
foreign key (MaDA)
references DeAn(MaDA)

--- tao lien ket giua bang PhanCong va nhan vien qua thuoc tinh MaNV
alter table PhanCong
add constraint FK_PhanCong_NhanVien_MaNV
foreign key (MaNV)
references NhanVien(MaNV)
-------------------------------------------------------------------------------------------------------
----Them du lieu vao cac bang 
set dateformat dmy
go
----------------------------------------------------------------------------------------------------------
----Them du lieu vao bang PhongBan
insert into PhongBan(MaPB, TenPB,TruongPhong, NgayNhanChuc)
values('1', N'Quản lý', null, '1/1/2010')
go
insert into PhongBan(MaPB, TenPB,TruongPhong, NgayNhanChuc)
values('2', N'Nghiên cứu', null, '2/2/2010')
GO
insert into PhongBan(MaPB, TenPB,TruongPhong, NgayNhanChuc)
values('3', N'Điều hành', null, null)
GO
insert into PhongBan(MaPB, TenPB,TruongPhong, NgayNhanChuc)
values('4', N'Kinh doanh', null, '5/1/2010')
go
---------------------------------------------------------------------------------
-- Them du lieu vao bang NhanVien

insert into NhanVien(MaNV, HoNV, TenNV, NgaySinh, DiaChi,QQuan,Phai,LUONG, MaPB, MaNQL)
values ('NV0001', N'ĐINH VĂN',N'TRỌNG','15/1/1987', N'47 NGUYỂN HUỆ, Q1.TPHC,', N'ĐÀ NẲNG',N'NAM', 2500000,'2',NULL)

Go
insert into NhanVien(MaNV, HoNV, TenNV, NgaySinh, DiaChi,QQuan,Phai,LUONG, MaPB, MaNQL)
values ('NV0002', N'NGUYỄN THỊ THANH',N'THUY','26/4/1986', N'145 ĐỒNG KHỞI, Q1.TPHCM,', N'LÂM ĐỒNG',N'NỮ', 2700000,'2',NULL)

Go
insert into NhanVien(MaNV, HoNV, TenNV, NgaySinh, DiaChi,QQuan,Phai,LUONG, MaPB, MaNQL)
values ('NV0003', N'NGUYỄN NGỌC',N'THỲY','5/12/1988', N'45 HAI BA TRƯNG, Q3.TPHCM,', N'ĐÀ NẲNG',N'NỮ', 2700000,'2',NULL)

Go
insert into NhanVien(MaNV, HoNV, TenNV, NgaySinh, DiaChi,QQuan,Phai,LUONG, MaPB, MaNQL)
values ('NV0004', N'TRẦN THANH',N'TÙNG','15/6/1990', N'36 NGUYỄN THỊ MINH KHAI, QBT.TPHCM,', N'TPHCM',N'NAM', 31500000,'2',NULL)
Go
insert into NhanVien(MaNV, HoNV, TenNV, NgaySinh, DiaChi,QQuan,Phai,LUONG, MaPB, MaNQL)
values ('NV0005', N'TRẦN HỒNG',N'QUANG','03/9/1986', N'24 ĐỒNG KHỞI, Q1.TPHCM,', N'ĐÀ NẴNG',N'NAM', 2900000,'4',NULL)

Go
insert into NhanVien(MaNV, HoNV, TenNV, NgaySinh, DiaChi,QQuan,Phai,LUONG, MaPB, MaNQL)
values ('NV0006', N'TRẦN NGỌC',N'ĐIỆP','5/6/1984', N'07 TRẦN HƯNG ĐẠO, Q5.TPHCM,', N'TPHCM',N'NAM', 2700000,'4',NULL)
Go
insert into NhanVien(MaNV, HoNV, TenNV, NgaySinh, DiaChi,QQuan,Phai,LUONG, MaPB, MaNQL)
values ('QL0001', N'NGUYỄN THANH',N'TÙNG','12/1/1984', N'125 TRẦN HƯNG ĐẠO Q1.TPHCM,', N'TPHCM',N'NAM', 5000000,'1',NULL)
Go
insert into NhanVien(MaNV, HoNV, TenNV, NgaySinh, DiaChi,QQuan,Phai,LUONG, MaPB, MaNQL)
values ('QL0002', N'LÝ KIM',N'THỦY','22/7/1984', N'324 NGUYỄN THỊ MINH KHAI, QBT.TPHCM,', N'TPHCM',N'NỮ', 4000000,'2',NULL)
Go
insert into NhanVien(MaNV, HoNV, TenNV, NgaySinh, DiaChi,QQuan,Phai,LUONG, MaPB, MaNQL)
values ('QL0003', N'TRẦN THANH',N'NGÂN','05/9/1986', N'34 KỲ ĐỒNG, Q3.TPHCM,', N'LÂM ĐỒNG',N'NỮ', 4000000,'4',NULL)
Go
-------------------------------------------------------------------------------------------------------------
----Cập nhật lại bảng PhongBan sau khi có MaNV, Truong Phong
UPDATE PhongBan
SET TruongPhong='QL0001'
WHERE MaPB='1'
GO
UPDATE PhongBan
SET TruongPhong='QL0002'
WHERE MaPB='2'
GO
UPDATE PhongBan
SET TruongPhong='QL0003'
WHERE MaPB='4'
---------------------------------------------------------------------------------------------------------------
-- Cập nhật dữ liệu cho bảng nhân viên
GO
UPDATE NhanVien
SET MaNQL = 'QL0001'
WHERE MaNV = 'QL0002' OR MaNV = 'QL0003'

GO
UPDATE NhanVien
SET MaNQL = 'QL0002'
WHERE MaNV = 'NV0001' OR MaNV = 'NV0002' OR MaNV = 'NV0003' OR MaNV = 'NV0004' OR MaNV = 'NV0006'

GO
UPDATE NhanVien
SET MaNQL = 'QL0003'
WHERE MaNV = 'NV0005'

---------------------------------------------------------------------------------------------------------------
-- Thêm dữ liệu cho bảng Thân Nhân
GO
INSERT INTO ThanNhan(MaNV, HoTN, TenTN, Phai, NgaySinh,QuanHe)
VALUES(N'NV0001', N' ĐINH VĂN', N'TIẾN', N'NAM' ,'5/5/2007',N'CON')
GO
INSERT INTO ThanNhan(MaNV, HoTN, TenTN, Phai, NgaySinh,QuanHe)
VALUES(N'NV0001', N'ĐINH HOÀNG', N'THÚY', N'NỮ', '6/2/2009', N'CON')
GO
INSERT INTO ThanNhan(MaNV, HoTN, TenTN, Phai, NgaySinh,QuanHe)
VALUES(N'NV0002', N'TRẦN VĂN MINH', N'TÂM', N'NAM', '9/4/2005',N'CON')
GO
INSERT INTO ThanNhan(MaNV, HoTN, TenTN, Phai, NgaySinh,QuanHe)
VALUES(N'NV0001', N'TRẦN THÚY', N'VY',N'NỮ','6/9/1987',N'VỢ')
GO
INSERT INTO ThanNhan(MaNV, HoTN, TenTN, Phai, NgaySinh,QuanHe)
VALUES(N'NV0002',N'LÊ NGỌC',N'CHÂU', N'NỮ','4/12/1983', N'CHỒNG')
--------------------------------------------------------------------------------------------------------------
-----Thêm dữ liệu vào bảng DiaDiem_Phong
GO
INSERT INTO Diadiem_Phong(MaPB, DiaDiem)
VALUES('1', N'TPHCM')
GO
INSERT INTO Diadiem_Phong(MaPB, DiaDiem)
VALUES('2', N'ĐÀ NẲNG')
GO
INSERT INTO Diadiem_Phong(MaPB, DiaDiem)
VALUES('2', N'LÂM ĐỒNG')
GO
INSERT INTO Diadiem_Phong(MaPB, DiaDiem)
VALUES('3', N'TPHCM')
GO
INSERT INTO Diadiem_Phong(MaPB, DiaDiem)
VALUES('4', N'LÂM ĐỒNG')
GO
INSERT INTO Diadiem_Phong(MaPB, DiaDiem)
VALUES('4', N'TPHCM')
--------------------------------------------------------------------------------------------------------------
---Thêm dữ liệu vào bảng DeAn
go
INSERT INTO DeAn(MaDA, TenDA, DiaDiem,MaPB)
VALUES('1', N'Sản phẩm x',N'LÂM ĐỒNG', '4' )
go
INSERT INTO DeAn(MaDA, TenDA, DiaDiem,MaPB)
VALUES('2', N'Sản phẩm Y',N'TPHCM', '2')
go
INSERT INTO DeAn(MaDA, TenDA, DiaDiem,MaPB)
VALUES('3', N'ĐÀO TẠO', N'TPHCM', '2')
go
INSERT INTO DeAn(MaDA, TenDA, DiaDiem,MaPB)
VALUES('4', N'Sản phẩm Z',N'ĐÀ NẴNG', '2')
go
INSERT INTO DeAn(MaDA, TenDA, DiaDiem,MaPB)
VALUES('5', N'QUI TRÌNH SẢN XUẤT',N'TPHCM', '4')
go
INSERT INTO DeAn(MaDA, TenDA, DiaDiem,MaPB)
VALUES('6', N'TIẾP THỊ',N'TPHCM', '4')
go
INSERT INTO DeAn(MaDA, TenDA, DiaDiem,MaPB)
VALUES('12', N'MUA MAY TINH',N'LÂM ĐỒNG', '4')
go
INSERT INTO DeAn(MaDA, TenDA, DiaDiem,MaPB)
VALUES('20', N'TIN HỌC HÓA',N'Đà Nẵng', '2')
go
INSERT INTO DeAn(MaDA, TenDA, DiaDiem,MaPB)
VALUES('30', N'QUẢNG CÁO',N'Đà Nẵng', '2')
go
INSERT INTO DeAn(MaDA, TenDA, DiaDiem,MaPB)
VALUES('123', N'QUẢNG CÁO',N'Đà Nẵng', '2')
go

insert into DeAn(MaDA,TenDA,DiaDiem,MaPB)
values ('31', N'QUẢNG CÁO',N'Đà Nẵng', '3')
go
-------------------------------------------------------------------------------
-- Thêm dữ liệu vào bảng phân công
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0001','1',4)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0001','2',12.5)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0001','3',29)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0001','4',12)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0001','5',4)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0001','6',12)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0001','20',3)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0001','30',15)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0001','2',13)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0002','30',4)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0003','3',21)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0003','20',19)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0003','30',13)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0004','3',20)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0004','4',24)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0004','30',12)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0005','1',25)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0005','6',12)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0006','12',5)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'QL0002','1',2)
GO
INSERT INTO PhanCong(MaNV,MaDA,ThoiGian)
VALUES(N'NV0008','8',8)
GO

insert into PhanCong(MaNV,MaDA,ThoiGian)
values (N'NV0006','1',9)
go
----------------------------------------------------------------------------------------------------------
---------------------Truy vấn dữ liệu-----------------------------------------------------------------------------
----1. Cho biết danh sách các nhân viên làm việc ở phòng số 4



----2. Cho biết danh sách các nhân viên có mức lương trên 3.000.000


----3. Cho biết danh sách các nhân viên có mức lương trên 2.800.000 ở
----phòng 4 hoặc các nhân viên có mức lương trên 3.000.000 ở phòng 2


----4. Cho biết danh sách các nhân viên có họ tên đầy đủ của các nhân viên có quê quán ở TP.HCM


----5. Cho biết danh sách các nhân viên có họ tên đầy đủ của các nhân viên có họ bắt đầu bằng ký tự ‘N’


----6. Cho biết danh sách các nhân viên có họ là họ ‘Nguyễn’


----7. Cho biết danh sách các nhân viên có tên bắt đầu là chữ ‘T’ hoặc chữ ‘N’


----8. Cho biết ngày sinh và địa chỉ của nhân viên ‘Trần Hồng Quang’



----9. Cho biết họ tên và năm sinh của các nhân viên



----10.Cho biết các nhân viên có năm sinh trong khoảng 1984 đến 1986


----11.Cho biết các nhân viên có năm sinh trong năm 1984 hoac 1986


----12.Cho biết họ tên và tuổi của các nhân viên.


----13.Cho biết các nhân viên không sinh trong năm 1986


----14.Với mỗi phòng ban, cho biết tên phòng ban và địa điểm phòng


----15.Tìm họ và tên những người trưởng phòng của từng phòng ban


----16.Tìm tên và địa chỉ của tất cả các nhân viên của phòng ‘Nghiên cứu’


----17.Với mỗi đề án ở TP.HCM, cho biết tên đề án, tên phòng ban, họ tên và ngày nhận chức của trưởng phòng của phòng ban chủ trì đề án đó.


----18.Cho biết danh sách gồm họ, tên, ngày sinh của các nhân viên nữ và tênn người thân của họ


----19.Với mỗi nhân viên, cho biết họ tên nhân viên và họ tên người quản lý trực tiếp của nhân viên đó


----20.Với mỗi nhân viên, cho biết họ tên của nhân viên đó, họ tên người trưởng phòng và họ tên người quản lý trực tiếp của nhân viên đó.


----21.Tên những nhân viên phòng số 4 có tham gia vào đề án ‘TIẾP THỊ’ và nhân viên này do ‘Trần Thanh Ngân’ quản lý trực tiếp.


--21.Ten nhung nhan vien phong so 4 tham gia vao de an "TIEP THI" va nhan vien nay do "Tran Thanh Ngan" quan ly truc tiep


--22.Cho biet ten cac de an ma nhan vien "Dinh Van Trong" da tham gia

--23.Cho biet danh sach cac nhan vien khong thuoc phong "Quan Ly"


--24.Cho biet so luong de an cua cong ty


--25.Cho biet so luong de an do phong "Nghien Cuu" thuc hien


--26.Cho biet luong trung binh cua cac nu nhan vien



--27.Cho biet so nhan than cua nhan vien "Dinh Van Trong"



--28.Voi moi de an, liet ke ten de an va tong so gio lam viec mot tuan cua tat ca nhan vien tham gia de an do


--29.Voi moi de an cho biet bao nhieu nhan vien tham gia de an do




--30.Voi moi nhan vien, cho biet ho va ten nhan vien co nhan than va so luong nhan than cua nhan vien do




--31.Voi moi nhan vien, cho biet ho ten va so luong de an ma nhan vien do da tham gia



--32.Voi moi phong ban, liet ke phong ban va luong trung binh cua nhung nhan vien lam viec trong phong ban do



--33.Voi cac phong ban co muc luong trung minh tren 3.100.000, liet ke ten phong ban va so luong nhan vien cua phong ban do


--34.Voi moi phong ban cho biet ten phong ban va so luong de an ma phong ban do thuc hien



--35.Voi moi phong ban cho biet ten phong ban va ho ten cua nguoi truong phong va so luong de an ma phong ban da thuc hien




--36.Cho biet so de an thuc hien tai tung thoi diem



--37.Trong de an co ma de an la 30, cho biet so luong nhan vien duoc phan cong



--38.Trong de an co ten la "DAO TAO", cho biet so luong nhan vien duoc phan cong



--39.Cho biet danh sach cac nhan vien co luong lon hon luong cua nhan vien co ma nhan vien la NV0001



--40.Danh sach nhung nhan vien (HONV, TENNV) khong co nhan than nao



--41.Danh sach nhung truong phong (HONV, TENNV) co toi thieu mot than nhan
--42.Tim ho ten (HONV, TENNV) cua nhung truong phong chua co gia dinh
--43.Cho biet ho ten nhan vien, ngay sinh (HONV, TENNV, NGSINH) cua nhung nhan vien co muc luong tren muc luong trung binh cua phong "Nghien Cuu"
--44.Cho biet ten phong ban va ten truong phong cua phong ban co dong nhan vien nhat
--45.Cho biet danh sach cac ma de an ma nhan vien co ma la NV0004 khong than gia
--46.Cho biet ho ten va dia chi(HONV, TENNV, DCHI) cua nhung nhan vien lam viec cho mot de an o "TP.HCM" nhung phong ban ma ho truc thuoc lai khong toa lac o thanh pho "TP.HCM"
--47.Cho biet danh sach cac nhan vien co muc luong cao hon muc luong trung binh o cung mot phong ban

--Thêm cột Thuclanh vào bảng NhanVien

--Xóa cột Thuclanh khỏi bảng NhanVien

--Thêm cột BacLuong vào  bảng NhanVien

--Thay đổi kiểu dữ liệu cột BacLuong tu float sang integer





