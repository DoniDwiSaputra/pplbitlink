-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Bulan Mei 2024 pada 12.54
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppl_bitlink`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akundinasnganjuk`
--

CREATE TABLE `akundinasnganjuk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nama_instansi` varchar(255) NOT NULL,
  `alamat_lengkap` varchar(255) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akundinasnganjuk`
--

INSERT INTO `akundinasnganjuk` (`id`, `id_user`, `nama_instansi`, `alamat_lengkap`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 2, 'Dinas Kabupaten Nganjuk', 'jl kalimantan', '324152', '2024-05-14 01:59:11', '2024-05-15 07:41:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akundinasnonnganjuk`
--

CREATE TABLE `akundinasnonnganjuk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nama_instansi` varchar(255) NOT NULL,
  `alamat_lengkap` varchar(255) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akundinasnonnganjuk`
--

INSERT INTO `akundinasnonnganjuk` (`id`, `id_user`, `nama_instansi`, `alamat_lengkap`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dinas Kabupaten Kediri', 'Jl Ahmad Yani', '082266784455', '2024-05-14 01:59:11', '2024-05-14 01:59:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `benih_data`
--

CREATE TABLE `benih_data` (
  `id_benih` bigint(20) UNSIGNED NOT NULL,
  `varietas` varchar(255) NOT NULL,
  `jenis_benih` varchar(50) NOT NULL,
  `stok_benih` int(11) NOT NULL,
  `kualitas_benih` varchar(100) NOT NULL,
  `harga_benih` decimal(10,0) NOT NULL,
  `foto_benih` text NOT NULL,
  `tgl_masuk` date NOT NULL,
  `turun_gudang` int(11) NOT NULL,
  `jemur_kering` int(11) NOT NULL,
  `blower1` int(11) NOT NULL,
  `benih_susut` int(11) NOT NULL,
  `biji_kecil` int(11) NOT NULL,
  `jumlah_benih` int(11) NOT NULL,
  `id_akunp` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `benih_data`
--

INSERT INTO `benih_data` (`id_benih`, `varietas`, `jenis_benih`, `stok_benih`, `kualitas_benih`, `harga_benih`, `foto_benih`, `tgl_masuk`, `turun_gudang`, `jemur_kering`, `blower1`, `benih_susut`, `biji_kecil`, `jumlah_benih`, `id_akunp`, `created_at`, `updated_at`) VALUES
(1, 'Edamame', 'kedelai', 200, 'Benih Pokok', 15000, 'http://localhost:8000/img/benih/b9e7fcfc246e42259850a9449ba1db0f.png', '2024-05-14', 10, 10, 10, 10, 10, 10, 3, '2024-05-14 01:59:12', '2024-05-14 01:59:12'),
(2, 'Logawa', 'padi', 170, 'Benih Pokok', 20000, '/img/benih/1715893419.jpg', '2024-05-14', 10, 10, 10, 10, 10, 10, 3, '2024-05-14 01:59:12', '2024-05-16 14:03:40'),
(3, 'Kedelai Putih', 'kedelai', 200, 'Benih Pokok', 20000, 'http://localhost:8000/img/benih/b9e7fcfc246e42259850a9449ba1db0f.png', '2024-05-14', 10, 10, 10, 10, 10, 10, 4, '2024-05-14 01:59:12', '2024-05-14 01:59:12'),
(4, 'Padi Ketan', 'padi', 150, 'Benih Pokok', 35000, 'http://localhost:8000/img/benih/b9e7fcfc246e42259850a9449ba1db0f.png', '2024-05-14', 10, 10, 10, 10, 10, 10, 4, '2024-05-14 01:59:12', '2024-05-14 01:59:12'),
(5, 'Kedelai Kuning', 'kedelai', 200, 'Benih Pokok', 12000, 'http://localhost:8000/img/benih/b9e7fcfc246e42259850a9449ba1db0f.png', '2024-05-14', 10, 10, 10, 10, 10, 10, 5, '2024-05-14 01:59:12', '2024-05-14 01:59:12'),
(6, 'Padi Merah', 'padi', 150, 'Benih Pokok', 25000, 'http://localhost:8000/img/benih/b9e7fcfc246e42259850a9449ba1db0f.png', '2024-05-14', 10, 10, 10, 10, 10, 10, 5, '2024-05-14 01:59:12', '2024-05-14 01:59:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataedukasi`
--

CREATE TABLE `dataedukasi` (
  `id_edukasi` bigint(20) UNSIGNED NOT NULL,
  `tanggal_edukasi` date NOT NULL,
  `judul_edukasi` text NOT NULL,
  `isi_edukasi` text NOT NULL,
  `id_akunp` bigint(20) UNSIGNED DEFAULT NULL,
  `id_akun_dinas` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dataedukasi`
--

INSERT INTO `dataedukasi` (`id_edukasi`, `tanggal_edukasi`, `judul_edukasi`, `isi_edukasi`, `id_akunp`, `id_akun_dinas`, `created_at`, `updated_at`) VALUES
(1, '2023-09-02', 'Pelatihan Pemilihan Benih Unggul', 'Program pelatihan yang dilakukan oleh Dinas Pertanian di berbagai daerah untuk mengedukasi petani tentang cara memilih benih unggul yang sesuai dengan kondisi tanah dan iklim setempat.', 3, NULL, '2024-05-14 02:06:44', '2024-05-14 02:06:44'),
(2, '2024-01-01', 'Demonstrasi Penanganan Benih', 'Demonstrasi langsung di lapangan mengenai cara penyimpanan benih yang benar untuk menjaga viabilitas dan kualitas benih.', 3, NULL, '2024-05-14 02:07:07', '2024-05-14 02:07:07'),
(3, '2024-04-05', 'Workshop Teknik Perkecambahan Benih', 'Workshop yang diadakan oleh perguruan tinggi atau lembaga penelitian untuk mengajarkan teknik-teknik perkecambahan benih yang efektif.', 4, NULL, '2024-05-14 02:07:54', '2024-05-14 02:07:54'),
(4, '2024-04-04', 'Pembentukan Kelompok Tani', 'Pembentukan dan pendampingan kelompok tani yang berfokus pada manajemen benih.', NULL, 2, '2024-05-14 02:09:19', '2024-05-14 02:09:19'),
(5, '2024-05-15', 'Cara menanam benih', 'u1heih1uwyeu2yue2y3gueygu31yegu3yegu23yege', NULL, 2, '2024-05-15 07:50:59', '2024-05-15 07:50:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataevaluasi`
--

CREATE TABLE `dataevaluasi` (
  `id_evaluasi` bigint(20) UNSIGNED NOT NULL,
  `id_akunp` bigint(20) UNSIGNED NOT NULL,
  `tgl_evaluasi` date NOT NULL,
  `kinerja_produksi` text NOT NULL,
  `kualitas_benih` varchar(50) NOT NULL,
  `kendala_produksi` text NOT NULL,
  `saran_produksi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dataevaluasi`
--

INSERT INTO `dataevaluasi` (`id_evaluasi`, `id_akunp`, `tgl_evaluasi`, `kinerja_produksi`, `kualitas_benih`, `kendala_produksi`, `saran_produksi`, `created_at`, `updated_at`) VALUES
(1, 5, '2023-09-09', 'Peningkatan permintaan', 'Baik', 'Cuaca tidak menentu', 'Ditambah SDM pengelolaan', '2024-05-14 02:01:42', '2024-05-14 02:01:42'),
(2, 5, '2022-07-08', 'Sangat variatif', 'Sangat Baik', 'Jam kerja terlalu over', 'Penambahan SDM', '2024-05-14 02:03:52', '2024-05-14 02:03:52'),
(3, 3, '2024-02-02', 'Mencapai target harian', 'Sangat Baik', 'Harga tidak menentu', 'Melakukan riset pasar', '2024-05-14 02:05:23', '2024-05-14 02:05:23'),
(4, 3, '2024-05-15', 'ya', 'Baik', 'aman kok', '-', '2024-05-15 08:04:50', '2024-05-15 08:04:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datatracking`
--

CREATE TABLE `datatracking` (
  `id_tracking` bigint(20) UNSIGNED NOT NULL,
  `Status` varchar(50) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_akun_produsen`
--

CREATE TABLE `data_akun_produsen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `nomor_legalitas_usaha` varchar(50) NOT NULL,
  `id_kemitraan` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_akun_produsen`
--

INSERT INTO `data_akun_produsen` (`id`, `id_user`, `nama_perusahaan`, `nomor_legalitas_usaha`, `id_kemitraan`, `created_at`, `updated_at`) VALUES
(1, 3, 'PT Gudang Garam Merah', '9120106570390', 1, '2024-05-14 01:59:12', '2024-05-14 06:07:52'),
(2, 4, 'PT HM Sampoerna', '9120106577843', 2, '2024-05-14 01:59:12', '2024-05-14 01:59:12'),
(3, 5, 'PT Djarum Indonesia', '9120106574387', 3, '2024-05-14 01:59:12', '2024-05-14 01:59:12'),
(4, 6, 'alief perkasa', '1234', 1, '2024-05-15 07:45:44', '2024-05-15 07:45:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_kontrak_pembelian`
--

CREATE TABLE `detail_kontrak_pembelian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_benih` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kemitraan_data`
--

CREATE TABLE `kemitraan_data` (
  `id_kemitraan` bigint(20) UNSIGNED NOT NULL,
  `nama_mitra` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kemitraan_data`
--

INSERT INTO `kemitraan_data` (`id_kemitraan`, `nama_mitra`, `created_at`, `updated_at`) VALUES
(1, 'Kelompok Tani Jaya Berkah', '2024-05-14 01:59:12', '2024-05-14 01:59:12'),
(2, 'Kelompok Tani Indonesia Maju', '2024-05-14 01:59:12', '2024-05-14 01:59:12'),
(3, 'Kelompok Subur Abadi', '2024-05-14 01:59:12', '2024-05-14 01:59:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontrak_pembelian`
--

CREATE TABLE `kontrak_pembelian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_kontrak` date NOT NULL,
  `id_akunm` bigint(20) UNSIGNED NOT NULL,
  `alamat_lengkap` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `tgl_pengiriman` date NOT NULL,
  `pembayaran` varchar(50) NOT NULL,
  `status_kontrak` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_06_153231_create_data_mitra_table', 1),
(5, '2024_04_06_153327_create_data_akun_produsen_table', 1),
(6, '2024_04_06_153359_create_data_pencatatan_benih_table', 1),
(7, '2024_04_14_000006_create_akundinasnganjuk_table', 1),
(8, '2024_04_14_000007_create_akundinasnonnganjuk_table', 1),
(9, '2024_04_14_000008_create_data_kontrak_pembelian_table', 1),
(10, '2024_04_14_000009_create_kontrakpembelian_table', 1),
(11, '2024_04_14_074710_create_tracking_table', 1),
(12, '2024_04_14_074729_create_dataevaluasi_table', 1),
(13, '2024_04_14_074744_create_dataedukasi_table', 1),
(14, '2024_04_24_072239_create_pesanans_table', 1),
(15, '2024_04_25_090618_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_benih` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `alamat_lengkap` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `tgl_pengiriman` date DEFAULT NULL,
  `tgl_diterima` date DEFAULT NULL,
  `status_pembayaran` enum('SUKSES','BELUM DIBAYAR','DIBATALKAN') NOT NULL DEFAULT 'BELUM DIBAYAR',
  `status_pengiriman` enum('PROSES','SEDANG DIKIRIM','DITERIMA') NOT NULL DEFAULT 'PROSES',
  `snap_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `id_benih`, `id_user`, `quantity`, `harga`, `nama_penerima`, `alamat_lengkap`, `telepon`, `tgl_pengiriman`, `tgl_diterima`, `status_pembayaran`, `status_pengiriman`, `snap_token`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 10, 50000, 'Joko', 'Jl. Papua', '082318471623', NULL, NULL, 'BELUM DIBAYAR', 'PROSES', NULL, '2024-05-14 01:59:12', '2024-05-14 01:59:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('B2iTm0q75HWkZxbVKKRpxVIhE6obbQ8ICtRtDF05', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidml3SHBIUkk2NEJLbVRmdzRJWWRmZXpoeHpKaDJkNG9TUXExbWdmcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715860340),
('GCeA2GnI5POVYaJV50afcpLW5ZP3qgBRguucm0EQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUV1bUhORDY1c2gySENUbG9ad2loVFpoOUgzZ0Z6dkRNc0VtOXNLNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715893049),
('Gq1B1ebyc7dw1GsQEy1Q9PzPBl3N8c6y6Yhnr2uc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHRwN1J3OThZSjJQZ0ZoWlBnTjdXNVIxRm5xemh5R3hoTFRCejZyYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715860723),
('HK8Lqwny5TJKtOWNXsCuIGUprwjQePMty6kZf8HX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzJBQjJzenVETG1wMGp0ak1UTGZ3NHFiRmp5cW5NbDZvckRHREZCbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715893134),
('qExsNwNTc82fkNlbrhPGKi24IMBSEux1L5Ud43Yp', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicGQ3WGhXeXFHaU5zNGFSWmM0bFdDYVk0clFweXpsb25KU2JNVWJpZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kZXRhaWwvMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1715893421),
('QuqzP3threz8IT6EXbW5EPOtDhqXsnEVf0J2oZgZ', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia2NZUTJ4QktZMVlNSXBKUGFIWE9CSkp5eFR4TnNZRmV6a1ROQ2JUaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tb25pdG9yaW5nLWVkdWthc2kvc2hvdy80Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzt9', 1715861229),
('RdEZmJXwxR2cGFLqlIQtGndCG2AVtax1ghpov97C', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGFxYlBZb1NDZXFFVXpMME5FMzRNZEpQbXM4STI5akpCOGc0ZzAxOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1715860425),
('To1b5zCunBs7pXuheNW5G51m8sH7RB6uK4XkTmJT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmZSNDhYbW5jOEh6QjRDMDl2ZWoyMVNEcG9FOHA3MG55OVJFUUsxViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcmVzZXQtcGFzc3dvcmQvNThiZTcwMDNhYWU4OThlZjM0YzMzNGE0NmYzMDIwYjk5ODczMzIzZTYyNjQxN2ViOWNmNTlkZjNhMjMwYjc5MD9lbWFpbD1kb25pZHdpMTUxMjE4JTQwZ21haWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1715861099);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `role` enum('AKUN DINAS','AKUN DINAS NON NGANJUK','PRODUSEN') NOT NULL DEFAULT 'AKUN DINAS NON NGANJUK',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `alamat_lengkap`, `telepon`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akun Dinas Non Nganjuk', 'akunnondinas@mail.com', 'AKUN NON DINAS', NULL, NULL, 'AKUN DINAS NON NGANJUK', '2024-05-14 01:59:11', '$2y$12$ANVFFoetmN7P20Ye04L00.tVlhkjSTKVHTv60XGay85g4TPAHgSMC', 'TgXFI8BFtn', '2024-05-14 01:59:11', '2024-05-14 01:59:11'),
(2, 'Akun Dinas Nganjuk', 'akundinas@mail.com', 'AKUN DINAS', 'jl kalimantan', '324152', 'AKUN DINAS', '2024-05-14 01:59:11', '$2y$12$uhOy.QDY4qRBOp.uhKNtXe4Ak.jOmUTItxgkbykAIuoVHHKY/7Jle', 'yDiHyda7ZYyXEBPpn2E73KNqkO3NTtw8ySRRlkURL7kGAWsSVLbJvjKSR2GW', '2024-05-14 01:59:11', '2024-05-15 07:41:54'),
(3, 'Produsen 1', 'produsen1@mail.com', 'produsen1', 'i', '8', 'PRODUSEN', '2024-05-14 01:59:11', '$2y$12$Dw/krD1TYiA/OyQWYV5Fl.IE.ZDrJB74BT5vUhNE7k3aOx0Vy5Fi.', '5Ye10YMGfvr7KubFSp4CozRrKWBtTg2yZvZzkgA8t2wZttx4hp13m1MlAQw8', '2024-05-14 01:59:11', '2024-05-14 06:07:52'),
(4, 'Produsen 2', 'produsen2@mail.com', 'produsen2', NULL, NULL, 'PRODUSEN', '2024-05-14 01:59:12', '$2y$12$oJryX1PjfM417k5u4c/quOtIvTUldKO5yocwhL8B4WaAT3gKzihlS', 'rrQYZQQlhQbc7zN8wIvRTp4ONF0iz7RerjkV4pAbVTm9BXoxRTnDx69AhvYJ', '2024-05-14 01:59:12', '2024-05-14 01:59:12'),
(5, 'Produsen 3', 'produsen3@mail.com', 'produsen3', NULL, NULL, 'PRODUSEN', '2024-05-14 01:59:12', '$2y$12$x.jwzJPuxHh38XwdCnCBm.TnkvdfAkjJD.9Tth6ZGIDeWPOwwy9Ei', 'IYsSoUFbWBOCgx2E7sqILAVgEIMoMZlz4Zfoaz8LWs3odk15AviwSX2iQzdk', '2024-05-14 01:59:12', '2024-05-14 01:59:12'),
(6, 'Alief', 'alif@mail.com', 'aliefperkasa', 'jl kalimantan', '0821', 'PRODUSEN', NULL, '$2y$12$p1AApCaklQsKklOeTl8DBOOSJ/fD0cZ4DWaqHsTnkjoaiAEGdk5qS', NULL, '2024-05-15 07:45:44', '2024-05-15 07:45:44'),
(7, 'Doni Dwi Saputra', 'doni@gmail.com', 'Doni', NULL, NULL, 'AKUN DINAS NON NGANJUK', NULL, '$2y$12$qvUEIEoY2fSjw43jAd/R4enGvHeuiMjrDyrALoU8MFGmtGIgM/6Xa', NULL, '2024-05-15 07:55:00', '2024-05-15 07:55:00'),
(8, 'Dino', 'donidwi151218@gmail.com', 'Dino Dewi S', NULL, NULL, 'AKUN DINAS NON NGANJUK', NULL, '$2y$12$WdNgm.U.v1HmrAs5ufOZWOZCJuu9NZHlEMrbEV/Dz.bwYpcd72lvK', 'eg8gkpKg9WOkfO7GOTXMMKcDqZU9b6nMloPc57qz6S0BWcyYkHzhQ13LFwxl', '2024-05-16 04:42:32', '2024-05-16 13:59:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akundinasnganjuk`
--
ALTER TABLE `akundinasnganjuk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `akundinasnganjuk_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `akundinasnonnganjuk`
--
ALTER TABLE `akundinasnonnganjuk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `akundinasnonnganjuk_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `benih_data`
--
ALTER TABLE `benih_data`
  ADD PRIMARY KEY (`id_benih`),
  ADD KEY `benih_data_id_akunp_foreign` (`id_akunp`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `dataedukasi`
--
ALTER TABLE `dataedukasi`
  ADD PRIMARY KEY (`id_edukasi`),
  ADD KEY `dataedukasi_id_akunp_foreign` (`id_akunp`),
  ADD KEY `dataedukasi_id_akun_dinas_foreign` (`id_akun_dinas`);

--
-- Indeks untuk tabel `dataevaluasi`
--
ALTER TABLE `dataevaluasi`
  ADD PRIMARY KEY (`id_evaluasi`),
  ADD KEY `dataevaluasi_id_akunp_foreign` (`id_akunp`);

--
-- Indeks untuk tabel `datatracking`
--
ALTER TABLE `datatracking`
  ADD PRIMARY KEY (`id_tracking`),
  ADD KEY `datatracking_id_foreign` (`id`);

--
-- Indeks untuk tabel `data_akun_produsen`
--
ALTER TABLE `data_akun_produsen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_akun_produsen_id_kemitraan_foreign` (`id_kemitraan`),
  ADD KEY `data_akun_produsen_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `detail_kontrak_pembelian`
--
ALTER TABLE `detail_kontrak_pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_kontrak_pembelian_id_benih_foreign` (`id_benih`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kemitraan_data`
--
ALTER TABLE `kemitraan_data`
  ADD PRIMARY KEY (`id_kemitraan`);

--
-- Indeks untuk tabel `kontrak_pembelian`
--
ALTER TABLE `kontrak_pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kontrak_pembelian_id_akunm_foreign` (`id_akunm`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akundinasnganjuk`
--
ALTER TABLE `akundinasnganjuk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `akundinasnonnganjuk`
--
ALTER TABLE `akundinasnonnganjuk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `benih_data`
--
ALTER TABLE `benih_data`
  MODIFY `id_benih` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `dataedukasi`
--
ALTER TABLE `dataedukasi`
  MODIFY `id_edukasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `dataevaluasi`
--
ALTER TABLE `dataevaluasi`
  MODIFY `id_evaluasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `datatracking`
--
ALTER TABLE `datatracking`
  MODIFY `id_tracking` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_akun_produsen`
--
ALTER TABLE `data_akun_produsen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `detail_kontrak_pembelian`
--
ALTER TABLE `detail_kontrak_pembelian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kemitraan_data`
--
ALTER TABLE `kemitraan_data`
  MODIFY `id_kemitraan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kontrak_pembelian`
--
ALTER TABLE `kontrak_pembelian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akundinasnganjuk`
--
ALTER TABLE `akundinasnganjuk`
  ADD CONSTRAINT `akundinasnganjuk_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `akundinasnonnganjuk`
--
ALTER TABLE `akundinasnonnganjuk`
  ADD CONSTRAINT `akundinasnonnganjuk_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `benih_data`
--
ALTER TABLE `benih_data`
  ADD CONSTRAINT `benih_data_id_akunp_foreign` FOREIGN KEY (`id_akunp`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dataedukasi`
--
ALTER TABLE `dataedukasi`
  ADD CONSTRAINT `dataedukasi_id_akun_dinas_foreign` FOREIGN KEY (`id_akun_dinas`) REFERENCES `akundinasnganjuk` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dataedukasi_id_akunp_foreign` FOREIGN KEY (`id_akunp`) REFERENCES `data_akun_produsen` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dataevaluasi`
--
ALTER TABLE `dataevaluasi`
  ADD CONSTRAINT `dataevaluasi_id_akunp_foreign` FOREIGN KEY (`id_akunp`) REFERENCES `data_akun_produsen` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `datatracking`
--
ALTER TABLE `datatracking`
  ADD CONSTRAINT `datatracking_id_foreign` FOREIGN KEY (`id`) REFERENCES `kontrak_pembelian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_akun_produsen`
--
ALTER TABLE `data_akun_produsen`
  ADD CONSTRAINT `data_akun_produsen_id_kemitraan_foreign` FOREIGN KEY (`id_kemitraan`) REFERENCES `kemitraan_data` (`id_kemitraan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `data_akun_produsen_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_kontrak_pembelian`
--
ALTER TABLE `detail_kontrak_pembelian`
  ADD CONSTRAINT `detail_kontrak_pembelian_id_benih_foreign` FOREIGN KEY (`id_benih`) REFERENCES `benih_data` (`id_benih`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kontrak_pembelian`
--
ALTER TABLE `kontrak_pembelian`
  ADD CONSTRAINT `kontrak_pembelian_id_akunm_foreign` FOREIGN KEY (`id_akunm`) REFERENCES `akundinasnonnganjuk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
