
CREATE TABLE ViTri (
    IDVitri INT NOT NULL,
    TenViTri VARCHAR(45),
    PRIMARY KEY (IDViTri)
);

CREATE TABLE TrinhDo (
    IDTrinhDo INT NOT NULL,
    TrinhDo VARCHAR(45),
    PRIMARY KEY (IDTrinhDo)
);

CREATE TABLE BoPhan (
    IDBoPhan INT NOT NULL,
    TenBoPhan VARCHAR(45),
    PRIMARY KEY (IDBoPhan)
);

CREATE TABLE NhanVien (
    IDNhanVien INT,
    HoTen VARCHAR(45),
    IDViTri INT,
    IDTrinhDo INT,
    IDBoPhan INT,
    NgaySinh DATE,
    SoCMND VARCHAR(45),
    Luong VARCHAR(45),
	SDT VARCHAR(45),
    Email VARCHAR(45),
    DiaChi VARCHAR(45),
    PRIMARY KEY (IDNhanVien),
    FOREIGN KEY (IDViTri) REFERENCES ViTri(IDViTri),
    FOREIGN KEY (IDTrinhDo) REFERENCES TrinhDo(IDTrinhDo),
    FOREIGN KEY (IDBoPhan) REFERENCES BoPhan(IDBoPhan)
);

CREATE TABLE LoaiKhach (
    IDLoaiKhach INT,
    TenLoaiKhach VARCHAR(45),
    PRIMARY KEY (IDLoaiKhach)
);

CREATE TABLE KhachHang (
    IDKhachHang INT NOT NULL,
    IDLoaiKhach INT,
    HoTen VARCHAR(45),
    NgaySinh DATE,
    SoCMND VARCHAR(45),
    SDT VARCHAR(45),
    Email VARCHAR(45),
    DiaChi VARCHAR(45),
    PRIMARY KEY (IDKhachHang),
    FOREIGN KEY (IDLoaiKhach) REFERENCES LoaiKhach(IDLoaiKhach)
);

CREATE TABLE KieuThue (
    IDKieuThue INT,
    TenKieuThue VARCHAR(45),
    Gia INT,
    PRIMARY KEY (IDKieuThue)
);

CREATE TABLE LoaiDichVu (
    IDLoaiDichVu INT,
    TenLoaiDichVu VARCHAR(45),
    PRIMARY KEY (IDLoaiDichVu)
);

CREATE TABLE DichVu (
    IDDichVu INT,
    TenDichVu VARCHAR(45),
    DienTich INT,
    SoTang INT,
    SoNguoiToiDa VARCHAR(45),
    ChiPhiThue VARCHAR(45),
    IDKieuThue INT,
    IDLoaiDichVu INT,
    TrangThai VARCHAR(45),
    PRIMARY KEY (IDDichVu),
    FOREIGN KEY (IDKieuThue) REFERENCES KieuThue(IDKieuThue),
    FOREIGN KEY (IDLoaiDichVu) REFERENCES LoaiDichVu(IDLoaiDichVu)
);

CREATE TABLE DichVuDiKem (
    IDDichVuDiKem INT,
    TenDichVuDiKem VARCHAR(45),
    Gia INT,
    DonVi INT,
    TrangThaiKhaDung VARCHAR(45),
    PRIMARY KEY (IDDichVuDiKem)
);

CREATE TABLE HopDong (
    IDHopDong INT,
    IDNhanVien INT,
    IDKhachHang INT,
    IDDichVu INT,
    NgayLamHopDong DATE,
    NgayKetThuc DATE,
    TienDatCoc INT,
    TongTien INT,
    PRIMARY KEY (IDHopDong),
    FOREIGN KEY (IDNhanVien) REFERENCES NhanVien(IDNhanVien),
    FOREIGN KEY (IDKhachHang) REFERENCES KhachHang(IDKhachHang),
    FOREIGN KEY (IDDichVu) REFERENCES DichVu(IDDichVu)
);

CREATE TABLE HopDongChiTiet (
    IDHopDongChiTiet INT,
    IDHopDong INT,
    IDDichVuDiKem INT,
    SoLuong INT,
    PRIMARY KEY (IDHopDongChiTiet),
    FOREIGN KEY (IDDichVuDiKem) REFERENCES DichVuDiKem(IDDichVuDiKem),
    FOREIGN KEY (IDHopDong) REFERENCES HopDong(IDHopDong)
);

INSERT INTO ViTri VALUES 
("1","Lễ Tân"),
("2","Phục Vụ"),
("3","Chuyên Viên"),
("4","Giám Sát"),
("5","Quản Lý"),
("6","Giám Đốc");

SELECT * FROM ViTri;

INSERT INTO TrinhDo VALUES 
("1","Trung cấp"),
("2","Cao đẳng"),
("3","Đại học"),
("4","Sau Đại học");

SELECT * FROM TrinhDo;

INSERT INTO BoPhan VALUES 
("1","Sale - Marketing"),
("2","Hành Chính"),
("3","Phục vụ"),
("4","Quản lý");

SELECT * FROM BoPhan;

INSERT INTO NhanVien VALUES 
("1","Tạ Thị Phi Hiền","5","3","1","1995-03-28","192070544","8000000","0905118793","hien@gmail.com", "K112/15/5 Trần Cao Vân, Đà Nẵng"),
("2","Hoàng Văn Thanh Huy","4","2","2","1993-03-11","192031412","1000000","0935259952","huy@gmail.com", "60 Văn Cao, Đà Nẵng"),
("3","Trần Văn Quang","3","3","4","1997-09-18","191203198","7000000","0793121411","quang@gmail.com", "90 Hoàng Hoa Thám"),
("4","Đỗ Thanh Toàn","2","3","3","1999-03-07","192134123","6000000","0905118731","toando@gmail.com", "100 Trần Cao Vân, Đà Nẵng"),
("5","Đặng Văn Tính","1","2","2","1990-09-06","192012341","7000000","0912421124","tinhdang@gmail.com", "801 Trần Cao Vân, Đà Nẵng");


SELECT * FROM NhanVien;

INSERT INTO LoaiKhach VALUES 
("1","Diamond"),
("2","Platinium"),
("3","Gold"),
("4","Silver"),
("5","Member");

SELECT * FROM LoaiKhach;

INSERT INTO KhachHang VALUES 
("1","1","Lý Đắc Thành Đạt","2000-07-11","192072699","0796525838","lydacthanhdat0709@gmail.com","K58/H01/44 Võ Văn Tần, Đà Nẵng"),
("2","2","Lê Duy","2000-12-28","192092099","0905118735","duyle2812@gmail.com","59 Nguyễn Sinh Sắc, Đà Nẵng"),
("3","3","Lê Nam","2000-08-09","192098099","0905112705","namle2812@gmail.com","10 Nguyễn Sinh Sắc, Đà Nẵng"),
("4","4","Trần Văn Sơn","2000-01-09","192088899","0905224735","sontran@gmail.com","20 Hoàng Diệu, Quảng Trị"),
("5","2","Nguyễn Thị Hồng Ngân","2000-02-11","192098099","0905910735","hongngan@gmail.com","20 Quang Trung, Quảng Trị");

SELECT * FROM KhachHang;

INSERT INTO KieuThue VALUES 
("1","Năm","3000000"),
("2","Tháng","1000000"),
("3","Ngày","500000"),
("4","Giờ","90000");

SELECT * FROM KieuThue;

INSERT INTO LoaiDichVu VALUES 
("1","Spa"),
("2","Xe đưa đón sân bay"),
("3","Fitness center"),
("4","Nhà hàng");

SELECT * FROM LoaiDichVu;

INSERT INTO DichVu VALUES 
("1","Villa","50000","3","10","5000000","3","2","Còn trống"),
("2","House","60000","3","10","8000000","2","1","Còn trống"),
("3","Room","10000","3","10","500000","1","2","Còn trống");

SELECT * FROM DichVu;

INSERT INTO DichVuDiKem VALUES 
("1","Massage","300000","3","Còn"),
("2","Karaoke","200000","1","Còn"),
("3","Thức ăn","100000","2","Còn"),
("4","Nước uống","15000","20","Còn");

SELECT * FROM DichVuDiKem;

INSERT INTO HopDong VALUES 
("1","1","1","1","2021-04-15","2022-08-15","10000000","25000000"),
("2","2","2","2","2021-03-05","2021-09-12","8000000","30000000"),
("3","4","3","1","2021-02-02","2021-01-09","5000000","24000000"),
("4","5","4","3","2021-03-03","2021-12-12","6000000","20000000");

SELECT * FROM HopDong;

INSERT INTO HopDongChiTiet VALUES 
("1","1","1","3"),
("2","2","1","2"),
("3","3","1","2"),
("4","2","2","1"),
("5","2","3","4"),
("6","4","2","1"),
("7","3","1","1"),
("8","3","2","4"),
("9","4","4","1"),
("10","1","1","1");

SELECT * FROM HopDongChiTiet;

------------
-- Use basic
-- task 1 
-- Thêm dữ liệu
-- task 2
-- Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là 
-- một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 ký tự.

SELECT * FROM NhanVien
WHERE (HoTen LIKE "T%")	OR (HoTen LIKE "H%") OR (HoTen LIKE "K%") AND length(HoTen) <= 15;

-- task 3
-- Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.

SELECT * 
FROM KhachHang 
WHERE 18 <= DATEDIFF(CURDATE(), NgaySinh) <= 50 
AND (DiaChi LIKE "%Đà Nẵng") OR (DiaChi LIKE "%Quảng Trị");

-- task 4
-- Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. 
-- Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.

SELECT KhachHang.IDKhachHang, KhachHang.HoTen ,LoaiKhach.TenLoaiKhach, COUNT(HopDong.IDHopDong) AS SoLanDat
FROM KhachHang
INNER JOIN HopDong ON KhachHang.IDKhachHang = HopDong.IDKhachHang
INNER JOIN LoaiKhach ON KhachHang.IDLoaiKhach = LoaiKhach.IDLoaiKhach
WHERE LoaiKhach.TenLoaiKhach = "Diamond"
GROUP BY KhachHang.HoTen
ORDER BY SoLanDat ASC;

-- task 5
-- Hiển thị IDKhachHang, HoTen, TenLoaiKhach, IDHopDong, TenDichVu, NgayLamHopDong, NgayKetThuc, TongTien (Với
-- TongTien được tính theo công thức như sau: ChiPhiThue +
-- SoLuong*Gia, với SoLuong và Giá là từ bảng DichVuDiKem) cho tất cả các Khách hàng đã từng đặt phỏng. 
-- (Những Khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).

SELECT KhachHang.IDKhachHang, KhachHang.HoTen, Loaikhach.TenLoaiKhach, HopDong.IDHopDong, HopDong.NgayLamHopDong, HopDong.NgayKetThuc, (DichVu.ChiPhiThue + (HopDongChiTiet.SoLuong * DichVuDiKem.Gia)) as TongTien
FROM LoaiKhach 
INNER JOIN KhachHang ON LoaiKhach.IDLoaiKhach = KhachHang.IDLoaiKhach
INNER JOIN HopDong ON KhachHang.IDKhachHang = HopDong.IDKhachHang
INNER JOIN DichVu ON HopDong.IDDichVu = DichVu.IDDichvu
INNER JOIN HopDongChiTiet ON HopDong.IDHopDong = HopDongChiTiet.IDHopDongChiTiet
INNER JOIN DichVuDiKem ON HopDongChiTiet.IDDichVuDiKem = DichVuDiKem.IDDichVuDiKem;

-- task 6
-- Hiển thị IDDichVu, TenDichVu, DienTich, ChiPhiThue,
-- TenLoaiDichVu của tất cả các loại Dịch vụ chưa từng được Khách hàng 
-- thực hiện đặt từ quý 1 của năm 2019 (Quý 1 là tháng 1, 2, 3).

SELECT DichVu.IDDichVu, dv.TenDichVu, dv.DienTich, dv.ChiPhiThue, hopdong.NgayKetThuc, loaidichvu.TenLoaiDichVu FROM dichvu as dv
INNER JOIN hopdong on dv.IDDichVu = hopdong.IDDichVu
INNER JOIN loaidichvu on dv.IDLoaiDichVu = loaidichvu.IDLoaiDichVu
WHERE NOT (MONTH(hopdong.NgayKetThuc) IN (1,2,3) AND YEAR(hopdong.NgayKetThuc) = 2019);

-- task 7
-- Hiển thị thông tin IDDichVu, TenDichVu, DienTich, SoNguoiToiDa,
-- ChiPhiThue, TenLoaiDichVu của tất cả các loại dịch vụ đã từng được
-- Khách hàng đặt phòng trong năm 2018 nhưng chưa từng được Kháchhàng đặt phòng trong năm 2019.

SELECT DichVu.IDDichVu, DichVu.TenDichVu, DichVu.DienTich, DichVu.SoNguoiToiDa, DichVu.ChiPhiThue, 
       HopDong.NgayLamHopDong, HopDong.NgayKetThuc, LoaiDichVu.TenLoaiDichVu 
FROM DichVu
INNER JOIN HopDong ON DichVu.IDDichVu = HopDong.IDDichVu
INNER JOIN LoaiDichVu ON DichVu.IDLoaiDichVu = LoaiDichVu.IDLoaiDichVu
WHERE (YEAR(HopDong.NgayLamHopDong) = 2018 AND YEAR(HopDong.NgayKetThuc) = 2018) 
AND NOT (YEAR(HopDong.NgayLamHopDong) = 2019 AND YEAR(HopDong.NgayKetThuc) = 2019);

-- task 8
-- Hiển thị thông tin HoTenKhachHang có trong hệ thống, với yêu cầu HoThenKhachHang không trùng nhau.
-- Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên.

-- Cách 1:  Sử dụng DISTINCT ( Loại bỏ dữ liệu trùng lặp )
SELECT DISTINCT HoTen
FROM KhachHang; 
-- Cách 2: Sử dụng GROUP BY
SELECT HoTen 
FROM KhachHang
GROUP BY HoTen;
-- Cách 3: Sử dụng UNION để kết hợp các kết quả của hai hoặc nhiều câu lệnh SELECT 
-- mà không cần trả về bất kỳ hàng trùng lặp nào.
SELECT HoTen FROM KhachHang 
UNION
SELECT HoTen FROM KhachHang;

-- task 9 
-- Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi
-- tháng trong năm 2019 thì sẽ có bao nhiêu khách hàng thực hiện đặt
-- phòng.



-- task 10
-- Hiển thị thông tin tương ứng với từng Hợp đồng thì đã sử dụng bao nhiêu Dịch vụ đi kèm.
-- Kết quả hiển thị bao gồm IDHopDong, NgayLamHopDong, NgayKetthuc, TienDatCoc, SoLuongDichVuDiKem 
-- (được tính dựa trên việc count các IDHopDongChiTiet).

SELECT HopDong.IDHopDong, HopDong.NgayLamHopDong, HopDong.NgayKetThuc, HopDong.TienDatCoc, COUNT(IDHopDongChiTiet) AS SoLuongDichVuDiKem
FROM HopDong 
INNER JOIN HopDongChiTiet ON HopDong.IDHopDong = HopDongChiTiet.IDHopDong; 

-- task 11
-- Hiển thị thông tin các Dịch vụ đi kèm đã được sử dụng bởi những Khách
-- hàng có TenLoaiKhachHang là “Diamond” và có địa chỉ là “Vinh” hoặc “Quảng Ngãi”.

SELECT KhachHang.IDKhachHang, KhachHang.HoTen, LoaiKhach.TenLoaiKhach, KhachHang.DiaChi 
FROM DichVuDiKem
INNER JOIN HopDongChiTiet ON dichvudikem.IDDichVuDiKem = HopDongChiTiet.IDDichVuDiKem
INNER JOIN HopDong ON HopDongChiTiet.IDHopDong = hopdong.IDHopDong
INNER JOIN KhachHang ON HopDong.IDKhachHang = KhachHang.IDKhachHang
INNER JOIN LoaiKhach ON khachhang.IDLoaiKhach = LoaiKhach.IDLoaiKhach
WHERE LoaiKhach.TenLoaiKhach = "Diamond" AND KhachHang.DiaChi IN ("Vinh", "Quảng Ngãi");

-- task 12
-- Hiển thị thông tin IDHopDong, TenNhanVien, TenKhachHang,
-- SoDienThoaiKhachHang, TenDichVu, SoLuongDichVuDikem (được tính dựa trên tổng Hợp đồng chi tiết), 
-- TienDatCoc của tất cả các dịch vụ.
-- đã từng được khách hàng đặt vào 3 tháng cuối năm 2019 nhưng chưa
-- từng được khách hàng đặt vào 6 tháng đầu năm 2019. 

SELECT hopdong.IDHopDong, hopdong.NgayLamHopDong , nhanvien.HoTen as TenNhanVien, khachhang.HoTen as TenKhachHang, khachhang.SDT as SDTKhachHang, dichvu.TenDichVu, hopdong.TienDatCoc FROM hopdong
INNER JOIN nhanvien ON hopdong.IDNhanVien = nhanvien.IDNhanVien
INNER JOIN khachhang ON hopdong.IDKhachHang = khachhang.IDKhachHang
INNER JOIN dichvu ON hopdong.IDDichVu = dichvu.IDDichVu
INNER JOIN hopdongchitiet ON hopdong.IDHopDong = hopdongchitiet.IDHopDong 
INNER JOIN dichvudikem ON hopdongchitiet.IDHopDongChiTiet = hopdongchitiet.IDHopDongChiTiet
WHERE (month(hopdong.NgayLamHopDong) IN (10,11,12) and year(hopdong.NgayLamHopDong) = 2019)
GROUP BY hopdong.IDHopDong;

-- task 13
-- Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các
-- Khách hàng đã đặt phòng. (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).

SELECT SUM(SoLuong) AS SoLannSuDungDichVuDiKem, DichVuDiKem.IDDichVuDiKem, DichVuDiKem.Gia, DichVuDiKem.DonVi
FROM DichVuDiKem 
INNER JOIN HopDongChiTiet ON DichVuDiKem.IDDichVuDiKem = HopDongChiTiet.IDDichVuDiKem
INNER JOIN HopDong ON HopDong.IDHopDong = HopDongChiTiet.IDHopDong 
GROUP BY DichVu.TenDichVu;

-- task 14
-- Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một
-- lần duy nhất. Thông tin hiển thị bao gồm IDHopDong, TenLoaiDichVu,TenDichVuDiKem, SoLanSuDung.

SELECT DichVuDiKem.IDDichVuDiKem, DichVuDiKem.TenDichVuDiKem, DichVuDiKem.Gia, DichVuDiKem.DonVi, DichVuDiKem.TrangThai 
FROM DichVuDiKem 
INNER JOIN HopDongChiTiet ON DichVuDiKem.IDDichVuDiKem = HopDongChiTiet.IDDichVuDiKem
INNER JOIN HopDong ON HopDong.IDHopDong = HopDongChiTiet.IDHopDongChiTiet
GROUP BY (DichVuDiKem.IDDichVuDiKem) 
HAVING COUNT(DichVuDiKem.IDDichVuDiKem) = 1 ;


-- task 16
-- Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2017 đến năm 2019.

DELETE FROM NhanVien 
WHERE IDNhanVien NOT IN (SELECT IDNhanVien FROM HopDong WHERE YEAR(NgayLamHopDong) BETWEEN 2017 AND 2019);

-- task 17
-- Cập nhật thông tin những khách hàng có TenLoaiKhachHang từ
-- Platinium lên Diamond, chỉ cập nhật những khách hàng đã từng đặt phòng với 
-- tổng Tiền thanh toán trong năm 2019 là lớn hơn 10.000.000 VNĐ.

UPDATE KhachHang 
INNER JOIN HopDong 
ON KhachHang.IDKhachHang = HopDong.IDKhachHang 
SET Loaikhach = 1 
WHERE YEAR(NgayLamHopDong) = 2019 AND HopDong.TongTien > 10000000;

SELECT * FROM KhachHang 
INNER JOIN HopDong 
ON KhachHang.IDKhachHang = HopDong.IDKhachHang 
WHERE YEAR(NgayLamHopDong) = 2019  
	AND HopDong.TongTien > 10000000;

-- task 18
-- Xóa những khách hàng có hợp đồng trước năm 2016 (chú ý ràng buộc giữa các bảng).



-- task 19
-- Cập nhật giá cho các Dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2019 lên gấp đôi.

UPDATE DichVuDiKem 
INNER JOIN 
HopDongChiTiet ON DichVuDiKem.IDDichVuDiKem = HopDongChiTiet.IDDichVuDiKem
INNER JOIN HopDong ON HopDong.IDHopDong = HopDongChiTiet.IDHopDongChiTiet 
SET DichVuDiKem.Gia = DichVudiKem.Gia *2 
WHERE YEAR(NgayLam) = 2019  
AND SUM(HopDongChiTiet.SoLuong) > 10; 

SELECT * 
FROM DichVuDiKem 
INNER JOIN HopDongChiTiet on DichVuDiKem.IDDichVuDiKem = HopDongChiTiet.IDDichVuDiKem
INNER JOIN HopDong ON HopDong.IDHopDong = HopDongChiTiet.IDHopDongChiTiet
WHERE YEAR(NgayLamHopDong) = 2019  
HAVING SUM(HopDongChiTiet.SoLuong) > 10;

-- task 20
-- Hiển thị thông tin của tất cả các Nhân viên và Khách hàng có trong hệ
-- thống, thông tin hiển thị bao gồm ID (IDNhanVien, IDKhachHang),
-- HoTen, Email, SoDienThoai, NgaySinh, DiaChi.

SELECT NhanVien.IDNhanVien, NhanVien.HoTen, NhanVien.Email, NhanVien.SDT, NhanVien.NgaySinh, NhanVien.DiaChi, 
	   KhachHang.IDKhachHang, KhachHang.HoTen, KhachHang.Email, KhachHang.SDT, KhachHang.NgaySinh, KhachHang.DiaChi
FROM HopDong 
INNER JOIN KhachHang ON HopDong.IDKhachHang = KhachHang.IDKhachHang
INNER JOIN NhanVien ON HopDong.IDNhanVien = NhanVien.IDNhanVien;

  
