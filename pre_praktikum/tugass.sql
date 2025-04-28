USE Bioskop_cinemaxx;
CREATE TABLE kategori (
    id_kategori INT PRIMARY KEY AUTO_INCREMENT,
    nama_kategori VARCHAR(100)
);

CREATE TABLE toko (
    id_toko INT PRIMARY KEY AUTO_INCREMENT,
    nama_toko VARCHAR(100)
);

CREATE TABLE produk (
    id_produk INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(255),
    deskripsi TEXT,
    harga FLOAT,
    id_toko INT,
    id_kategori INT,
    FOREIGN KEY (id_toko) REFERENCES toko(id_toko),
    FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori)
);

CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100),
    no_telp VARCHAR(20),
    email VARCHAR(100),
    alamat VARCHAR(255),
    password VARCHAR(100)
);

CREATE TABLE membeli (
    id_pelanggan INT,
    id_produk INT,
    PRIMARY KEY (id_pelanggan, id_produk),
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);

CREATE TABLE mengulas (
    id_pelanggan INT,
    id_produk INT,
    ulasan TEXT,
    PRIMARY KEY (id_pelanggan, id_produk),
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);
-- Tabel : kategori
INSERT INTO rumah_produksi (no_hp, alamat, umur, nama, id_flim) VALUES
(628123456789, 'Jl. Melati No.10', 25, 'Galaxy Pictures', 1),
(628987654321, 'Jl. Mawar No.5', 30, 'Sunrise Studio', 2);

-- Tabel : studio
INSERT INTO Studio (nama, kapasitas, tanggal_rilis) VALUES
('Studio 1', 100, 20240401),
('Studio 2', 150, 20240405);

-- Tabel : flim
INSERT INTO flim (judul_flim, di_putar, tanggal_rilis, id_flim) VALUES
('Avengers: Beyond', 'Ya', 20240401, 1),
('The Silent Sea', 'Tidak', 20240405, 2);

-- Tabel : Pengunjung
INSERT INTO pengunjung (nama, alamat, umur, no_hp, id_jadwal) VALUES
('Dimas', 'Jl. Kenanga No.7', 22, 628135791357, 1),
('Rina', 'Jl. Dahlia No.3', 24, 628198765432, 2);

-- Tabel jadwal tayang
INSERT INTO jadwal_tayang (id_jadwal, tanggal_tayang_waktu) VALUES
(1, '2024-04-10 19:00:00'),
(2, '2024-04-11 21:00:00');



