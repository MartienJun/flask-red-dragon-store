DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS barang;
DROP TABLE IF EXISTS pembelian;

CREATE TABLE user (
    id INTEGER PRIMARY KEY ASC AUTOINCREMENT,
    email TEXT NOT NULL,
    password TEXT NOT NULL,
    login_status BOOLEAN NOT NULL DEFAULT (false),
    nama TEXT NOT NULL,
    role STRING (10) NOT NULL DEFAULT Karyawan
);

CREATE TABLE barang (
    id_barang INTEGER PRIMARY KEY ASC AUTOINCREMENT NOT NULL,
    nama_barang TEXT NOT NULL,
    tipe_barang TEXT NOT NULL,
    harga INTEGER NOT NULL,
    stock INTEGER NOT NULL
);

CREATE TABLE pembelian (
    id_pembelian INTEGER PRIMARY KEY ASC AUTOINCREMENT NOT NULL,
    tgl_pembelian DATETIME NOT NULL,
    id_produk REFERENCES barang (id_barang) ON DELETE NO ACTION ON UPDATE NO ACTION NOT NULL,
    bayar INTEGER NOT NULL,
    id_karyawan REFERENCES user (id) ON DELETE NO ACTION ON UPDATE NO ACTION NOT NULL
);
