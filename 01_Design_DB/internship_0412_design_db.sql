
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
    TenLoaiDichVuDiKem VARCHAR(45),
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
("2","Nguyễn Văn Nam","4","2","2","1993-03-11","192031412","1000000","0935259952","nam@gmail.com", "60 Văn Cao, Đà Nẵng"),
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
("2","2","Lê Duy","2000-12-28","192092099","0905118735","duyle2812@gmail.com","59 Nguyễn Sinh Sắc, Đà Nẵng");

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
("1","1","1","1","2021-04-15","2022-08-15","10000000","5000000");

SELECT * FROM HopDong;

INSERT INTO HopDongChiTiet VALUES 
("1","1","1","3");

SELECT * FROM HopDongChiTiet;

------------



