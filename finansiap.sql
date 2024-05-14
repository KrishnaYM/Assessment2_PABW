-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 14 Bulan Mei 2024 pada 21.22
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finansiap`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `subjudul` varchar(255) NOT NULL,
  `isi` varchar(300) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tgl_post` timestamp NOT NULL DEFAULT current_timestamp(),
  `tgl_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `subjudul`, `isi`, `gambar`, `tgl_post`, `tgl_update`) VALUES
(3, 'Panduan Keuangan untuk Mahasiswa: Mengelola Uang dengan Bijak', 'Tips, Trik, dan Strategi untuk Meraih Keuangan yang Sehat di Masa Kuliah', 'Sebagai mahasiswa, mengelola uang jajan merupakan tantangan yang nyata. Dengan keterbatasan sumber pendapatan, seringkali mahasiswa harus mempertimbangkan pilihan dan prioritas mereka dengan cermat. Langkah pertama dalam mengelola uang jajan adalah membuat anggaran bulanan yang realistis\r\n', 'finansial.png', '2024-05-09 19:43:27', '2024-05-09 19:43:27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
