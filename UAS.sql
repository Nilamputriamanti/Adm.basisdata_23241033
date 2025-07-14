	-- Nama : Nilam  Putri Amanti
    -- Nim  : 23241033
    -- Kelas: A
    -- Mata Kuliah : Administrasi Basis Data
    
    USE pti_smart;
    -- Soal 1
    -- Munculkan Kode pelanggan,nama produk,harga dan total harga dari semua produk yang pernah di 
    -- Di transaksikan namun outputnya yang diminta adalah total harga minimal 200,00 dan diurutkan berdasarkan total harganya 
    SELECT 
    t.kode_pelanggan AS 'Kode Pelanggan',
    p.nama_produk AS 'Nama Produk',
    p.harga AS 'Harga Satuan',
    (p.harga * dt.jumlah) AS 'Total Harga'
  
	
    JOIN detail_transaksi dt ON t.id_transaksi = dt.id_transaksi
    WHERE (p.harga * dt.jumlah) >= 200.00
    ORDER BY total_harga ASC;
    
    -- Soal 2
    -- Tampilkan nama pelanggan  dan nilai transaksinya dengan nilai transaksi terbanyak 
    
    
    -- Soal 3
    -- tampilkan nama produk,kategori,dan harga dari produk yang tidak pernah terjual  