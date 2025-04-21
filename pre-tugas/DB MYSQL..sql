CREATE DATABASE IF NOT EXISTS bioskop_db;
USE bioskop_db;

SET FOREIGN_KEY_CHECKS = 0;
		
DROP TABLE IF EXISTS rumah_produksi;
DROP TABLE IF EXISTS studio;
DROP TABLE IF EXISTS film;

-- Aktifkan kembali foreign key check
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE film (
    id_film INT PRIMARY KEY,
    judul_film VARCHAR(255),
    di_putar TEXT,
    tanggal_rilis INT
);

INSERT INTO film VALUES
(1, 'Petualangan Si Kucing', 'Studio 1', 2022),
(2, 'Cinta di Musim Hujan', 'Studio 2', 2023);

CREATE TABLE studio (
    nama VARCHAR(255) PRIMARY KEY,
    kapasitas INT,
    id_film INT,
    FOREIGN KEY (id_film) REFERENCES film(id_film)
);

INSERT INTO studio VALUES
('Studio 1', 100, 1),
('Studio 2', 150, 2);


CREATE TABLE rumah_produksi (
    no_hp VARCHAR(20) PRIMARY KEY,
    alamat VARCHAR(255),
    jumlah_film INT,
    nama_studio VARCHAR(255),
    FOREIGN KEY (nama_studio) REFERENCES studio(nama)
);

INSERT INTO rumah_produksi VALUES
('081234567890', 'Jakarta', 10, 'Studio 1'),
('089876543210', 'Bandung', 5, 'Studio 2')