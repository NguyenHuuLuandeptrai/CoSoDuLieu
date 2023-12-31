--TRUY VẤN QUẢN LÝ ĐỀ ÁN 
--1/TÌm những nhân viên sinh từ năm 1965 đến 1970
SELECT *
FROM NhanVien 
WHERE YEAR(NgSinh) BETWEEN 1965 AND 1970
--2/Tìm họ tên NV và tên phòng ban NV đó trực thuộc có mức lương từ 2tr đến 2tr rưỡi

SELECT NhanVien.HoNV, NhanVien.TenLot, NhanVien.TenNv 
FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB
WHERE NhanVien.Luong BETWEEN 2000000 AND 2500000

--3/có họ nguyễn hoặc bắt đầu t
SELECT *
FROM NhanVien
WHERE HoNV = 'Nguyen' OR TenNv LIKE 'T%'

--4/TÌm nhân viên thuộc phòng ban có mã là NC hoặc QL
SELECT *
FROM NhanVien
WHERE Phong = 'NC' OR Phong = 'QL' 

--5/Lập danh sách thân nhân dưới 18 tuổi 
SELECT *
FROM ThanNhan
WHERE 2020-YEAR(NgSinh) < 18

--6/In DSNV nữ trên 30 tuổi
SELECT *
FROM NhanVien
WHERE Phai = N'Nữ' AND 2020 - YEAR(NgSinh)>30

--7/TÌm tên và địa chỉ của nhân viên thuộc phòng nghiên cứu 
SELECT NhanVien.HoNV, NhanVien.TenLot, NhanVien.TenNv, NhanVien.Dchi
FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB
WHERE PhongBan.TenPB = N'Nghiên cứu'

--8/Tìm mã số và tên những nhân viên thuộc phòng 'Nghiên cứu' tham gia đề án 'Tin học hóa' với thời gian làm việc trên 20 giờ/tuần
SELECT NhanVien.MaNV , NhanVien.HoNV, NhanVien.TenLot, NhanVien.TenNv
FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB 
INNER JOIN PhanCong ON NhanVien.MaNV = PhanCong.MaNV 
INNER JOIN DeAn ON PhanCong.MaDA = DeAn.MaDA
WHERE PhongBan.TenPB = N'Nghiên cứu'
 AND DeAn.TenDA LIKE N'Tin học hóa _' 
 AND PhanCong.ThoiGian = 20
 
 --9/Tìm họ tên trưởng phòng đã chủ trì các đề án ở hà nội
 SELECT NhanVien.HoNV, NhanVien.TenLot, NhanVien.TenNv
 FROM NhanVien INNER JOIN PhanCong ON NhanVien.MaNV = PhanCong.MaNV 
 INNER JOIN DeAn ON PhanCong.MaDA = DeAn.MaDA
 WHERE DeAn.DiaDiemDA = N'Hà Nội'
 
 --10/Tìm những nhân viên được 'Nguyễn Thanh Tùng' trực tiếp phụ trách
 SELECT *
 FROM NhanVien
 WHERE MaNQL = (
	SELECT MaNV
	FROM NhanVien
	WHERE HoNV = 'Nguyen' AND TenLot = 'Thanh' AND TenNv = 'Tung'
 )
 
 --11/Tính thời gian thấp nhất, cao nhất, trung bình, tổng giờ làm việc trong tuần của tất cả nhân vien
 SELECT Min(PhanCong.ThoiGian) AS ThapNhat, MAX(PhanCong.ThoiGian) AS CaoNhat,
  AVG(PhanCong.ThoiGian) AS TrungBinh, SUM(PhanCong.ThoiGian) AS Tong
 FROM NhanVien INNER JOIN PhanCong ON NhanVien.MaNV = PhanCong.MaNV 
 
 --13/Tìm họ tên nhân viên có mức lương trên mức lương trung bình của phòng 'Nghiên cứu'
 SELECT HoNV, TenLot, TenNv
 FROM NhanVien
 WHERE Luong > (
	SELECT AVG(NhanVien.Luong)
	FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB
    WHERE PhongBan.TenPB = N'Nghiên cứu'
 )
 
 --14/Tìm số lượng nhân viên của tất cả các phòng ban
 SELECT DISTINCT PhongBan.TenPB, COUNT(NhanVien.MaNV)
 FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB
 GROUP BY PhongBan.TenPB
--15/Tính số lượng nhân viên chịu sự quản lý trực tiếp của người khác
SELECT COUNT(NhanVien.MaNV) AS CoQuanLy
FROM NhanVien
WHERE MaNQL != ' '

--16/ Tìm số lượng nhân viên quản lý nhân viên khác
SELECT COUNT(DISTINCT MaNQL)
FROM NhanVien 
WHERE MaNQL != ' '

--17/Tính số lượng nhân viên từng phòng
--18/Tính thời gian tham gia đề án cao nhất, thấp nhất, trung bình của tất cả các nhân viên trong từng phòng ban
SELECT PhongBan.TenPB, MAX(PhanCong.ThoiGian) AS caonhat, MIN(PhanCong.ThoiGian) AS thapnhat, AVG(PhanCong.ThoiGian) AS Trungbinh
FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB 
INNER JOIN PhanCong ON NhanVien.MaNV = PhanCong.MaNV
GROUP BY PhongBan.TenPB

--19/Liệt kê tên phòng và số lượng nhân viên của các phòng ban có mức lương tb trên 2200000
SELECT PhongBan.TenPB, COUNT(NhanVien.MaNV) AS slnv
FROM PhongBan INNER JOIN NhanVien ON NhanVien.Phong = PhongBan.MaPB
GROUP BY PhongBan.TenPB
HAVING AVG(NhanVien.Luong) > 2200000

-- Luong trung binh tung phong
SELECT PhongBan.TenPB, AVG(NhanVien.Luong)
FROM NhanVien INNER JOIN PhongBan ON NhanVien.Phong = PhongBan.MaPB
GROUP BY PhongBan.TenPB