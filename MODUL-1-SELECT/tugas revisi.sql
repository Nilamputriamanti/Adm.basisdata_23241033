USE Bioskop;

-- SELECT 1 Kolom
-- 1. Flim
SELECT film.judul_film AS judul FROM film;

-- 2. rumah_produksi
SELECT rumah_produksi.nama AS produser FROM rumah_produksi;


-- 3. studio
SELECT Studio.nama AS nama_studio FROM Studio;


-- 4. jadwal tayang
SELECT jadwal_tayang.tanggal_tayang_waktu AS waktu_tayang FROM jadwal_tayang;

-- 5. pengunjung
SELECT pengunjung.nama AS nama_pengunjung FROM pengunjung;


-- SELECT 2 Kolom 

-- 1. flim
SELECT film.judul_film AS judul, film.tanggal_rilis AS rilis FROM film;


-- 2. rumah_produksi
SELECT rumah_produksi.nama AS produser FROM rumah_produksi;


-- 3. studio
SELECT Studio.nama AS nama_studio, Studio.kapasitas AS kapasitas_studio FROM Studio;


-- 4. jadwal_tayang
SELECT jadwal_tayang.id_jadwal AS id, jadwal_tayang.tanggal_tayang_waktu AS waktu_tayang FROM jadwal_tayang;


-- 5. pengunjung
SELECT pengunjung.nama AS nama_pengunjung, pengunjung.umur AS umur_pengunjung FROM pengunjung;
