-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2024 at 01:06 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mplmsc`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint UNSIGNED NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_seksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_matkul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `koneksi` enum('online','offline') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `tahun`, `nama_jadwal`, `jadwal`, `hari`, `jam`, `sks`, `kode_seksi`, `kode_matkul`, `dosen`, `koneksi`, `created_at`, `updated_at`) VALUES
(4, '2021', 'Sistem Informasi Manajemen (SIM)', '', 'Senin', '10.00 - 11.50', '3', '1523400001/1523400002', '15230533', '217', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(5, '2021', 'Hukum Laut & Pengangkutan', '', 'Selasa', '13.00 - 14.50', '2', '1523400003/1523400004', '15230542', '221', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(6, '2021', 'Manajemen Logistik', '', 'Selasa', '10.00 - 11.50', '2', '1523400005/1523400006', '15230682', '219', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(7, '2021', 'Tarif Jasa Transportasi', '', 'Jumat', '13.00 - 14.50', '2', '1523400007/1523400008', '15230732', '215', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(8, '2021', 'Teaching Factory', '', 'Selasa', '08.00 - 09.50', '2', '1523400009/1523400010', '15230032', '217', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(9, '2021', 'Pemrograman Bidang Pelabuhan & Logistik', '', 'Senin', '08.00 - 09.50', '3', '1523400011/1523400012', '15230123', '219', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(10, '2021', 'Sistem Jaringan Transportasi', '', 'Rabu', '13.00 - 14.50', '3', '1523400013/1523400014', '15230133', '215', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(11, '2021', 'Sistem & Bisnis Pelabuhan', '', 'Senin', '13.00 - 14.50', '3', '1523400015/1523400016', '15230143', '219', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(12, '2021', 'Marine Polution', '', 'Rabu', '10.00 - 11.50', '3', '1523400017/1523400018', '15230163', '220', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(13, '2022', 'Operasi Pelayaran', '', 'Jumat', '13.00 - 14.50', '2', '1523400019/1523400020', '15230602', '217', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(14, '2022', 'Statistika Terapan', '', 'Rabu', '10.00 - 11.50', '3', '1523400021/1523400022', '15230573', '214', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(15, '2022', 'Pergudangan', '', 'Selasa', '08.00 - 09.50', '2', '1523400023/1523400024', '15230612', '219', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(16, '2022', 'Pengetahuan Kapal', '', 'Selasa', '15.00 - 16.50', '2', '1523400025/1523400026', '15230622', '221', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(17, '2022', 'Pelayanan Pelanggan', '', 'Rabu', '13.00 - 14.50', '2', '1523400027/1523400028', '15230702', '219', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(18, '2022', 'Perawatan Fasilitas Pelabuhan', '', 'Kamis', '13.00 - 14.50', '3', '1523400029/1523400030', '15230073', '215', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(19, '2022', 'Akuntansi Manajemen', '', 'Selasa', '13.00 - 14.50', '2', '1523400031/1523400032', '15230672', '218', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(20, '2022', 'Supply Chain Management', '', 'Jumat', '08.00 - 09.50', '3', '1523400033/1523400034', '15230083', '221', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(21, '2023', 'Hinterland Pelabuhan', '', 'Rabu', '10.00 - 11.50', '2', '1523400035/1523400036', '15230682', '218', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(22, '2023', 'Manajemen Mutu', '', 'Jumat', '10.00 - 11.50', '2', '1523400037/1523400038', '15230732', '216', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(23, '2023', 'Port Performance Indicator', '', 'Jumat', '08.00 - 09.50', '2', '1523400039/1523400040', '15230252', '215', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(24, '2023', 'K3 dan HSSE Pelabuhan', '', 'Rabu', '08.00 - 09.50', '3', '1523400041/1523400042', '15230432', '217', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(25, '2023', 'Matematika Terapan', '', 'Senin', '13.00 - 14.50', '2', '1523400043/1523400044', '15230692', '221', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(26, '2023', 'Manajemen Logistik', '', 'Rabu', '10.00 - 11.50', '2', '1523400035 / 1523400036', '15230682', '219', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38'),
(27, '2023', 'Tarif Jasa Transportasi', '', 'Jumat', '10.00 - 11.50', '2', '1523400037 / 1523400038', '15230732', '216', 'offline', '2024-05-15 10:30:38', '2024-05-15 10:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `list_link`
--

CREATE TABLE `list_link` (
  `id` bigint UNSIGNED NOT NULL,
  `id_jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('bukti_perkuliahan','absensi','form_pj','form_5_6','record_perkuliahan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_link`
--

INSERT INTO `list_link` (`id`, `id_jadwal`, `link`, `type`, `created_at`, `updated_at`) VALUES
(3, '4', 'https://drive.google.com/drive/folders/1GjdKiLtD9cP7TY3zT-YBYscXIWpypabe?usp=drive_link', 'absensi', NULL, NULL),
(4, '4', 'https://drive.google.com/drive/folders/1GjdKiLtD9cP7TY3zT-YBYscXIWpypabe?usp=drive_link', 'bukti_perkuliahan', NULL, NULL),
(5, '4', 'https://drive.google.com/drive/folders/1GjdKiLtD9cP7TY3zT-YBYscXIWpypabe?usp=drive_link', 'record_perkuliahan', NULL, NULL),
(6, '4', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(7, '4', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(8, '5', 'https://drive.google.com/drive/folders/1kehniFuhXSwK1Garoqq0skzUov7jHxhv', 'bukti_perkuliahan', NULL, NULL),
(9, '5', 'https://drive.google.com/drive/folders/1kehniFuhXSwK1Garoqq0skzUov7jHxhv', 'absensi', NULL, NULL),
(10, '5', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(11, '5', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye?usp=sharing', 'form_5_6', NULL, NULL),
(12, '5', 'https://drive.google.com/drive/folders/1kehniFuhXSwK1Garoqq0skzUov7jHxhv', 'record_perkuliahan', NULL, NULL),
(13, '6', 'https://drive.google.com/drive/folders/1QS7rb-4k7me1L5txUzBF7hqbnL59I3y6', 'bukti_perkuliahan', NULL, NULL),
(14, '6', 'https://drive.google.com/drive/folders/1QS7rb-4k7me1L5txUzBF7hqbnL59I3y6', 'absensi', NULL, NULL),
(15, '6', 'https://drive.google.com/drive/folders/1QS7rb-4k7me1L5txUzBF7hqbnL59I3y6', 'record_perkuliahan', NULL, NULL),
(16, '6', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(17, '6', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(18, '7', 'https://drive.google.com/drive/folders/1FaWAxfrP0sFBZ6wU4_6XIiYbGYmQodZU', 'bukti_perkuliahan', NULL, NULL),
(19, '7', 'https://drive.google.com/drive/folders/1FaWAxfrP0sFBZ6wU4_6XIiYbGYmQodZU', 'absensi', NULL, NULL),
(20, '7', 'https://drive.google.com/drive/folders/1FaWAxfrP0sFBZ6wU4_6XIiYbGYmQodZU', 'record_perkuliahan', NULL, NULL),
(21, '7', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(22, '7', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(23, '8', 'https://drive.google.com/drive/folders/1gK1KiYJuu2GkLeZGNHrFYKwxHVBL_y1A', 'bukti_perkuliahan', NULL, NULL),
(24, '8', 'https://drive.google.com/drive/folders/1gK1KiYJuu2GkLeZGNHrFYKwxHVBL_y1A', 'absensi', NULL, NULL),
(25, '8', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(26, '8', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8yehttps://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(27, '8', 'https://drive.google.com/drive/folders/1gK1KiYJuu2GkLeZGNHrFYKwxHVBL_y1A', 'record_perkuliahan', NULL, NULL),
(28, '9', 'https://drive.google.com/drive/folders/1KiSpvZCSdUNJZgYqT1E3Axj-bOw9cWv3', 'bukti_perkuliahan', NULL, NULL),
(29, '9', 'https://drive.google.com/drive/folders/1KiSpvZCSdUNJZgYqT1E3Axj-bOw9cWv3', 'absensi', NULL, NULL),
(30, '9', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(31, '9', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(32, '9', 'https://drive.google.com/drive/folders/1KiSpvZCSdUNJZgYqT1E3Axj-bOw9cWv3', 'record_perkuliahan', NULL, NULL),
(33, '10', 'https://drive.google.com/drive/folders/1L1mnXGMifMNH638k28yJqYhtSx4Sm7c0https://drive.google.com/drive/folders/1L1mnXGMifMNH638k28yJqYhtSx4Sm7c0', 'bukti_perkuliahan', NULL, NULL),
(34, '10', 'https://drive.google.com/drive/folders/1L1mnXGMifMNH638k28yJqYhtSx4Sm7c0', 'absensi', NULL, NULL),
(35, '10', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(36, '10', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(37, '10', 'https://drive.google.com/drive/folders/1L1mnXGMifMNH638k28yJqYhtSx4Sm7c0', 'record_perkuliahan', NULL, NULL),
(38, '11', 'https://drive.google.com/drive/folders/1DrcXLTAuK_ggHnHHm5-VrWHpTlt4VRBT', 'bukti_perkuliahan', NULL, NULL),
(39, '11', 'https://drive.google.com/drive/folders/1DrcXLTAuK_ggHnHHm5-VrWHpTlt4VRBT', 'absensi', NULL, NULL),
(40, '11', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(41, '11', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(42, '11', 'https://drive.google.com/drive/folders/1DrcXLTAuK_ggHnHHm5-VrWHpTlt4VRBT', 'record_perkuliahan', NULL, NULL),
(43, '12', 'https://drive.google.com/drive/folders/1zl0b_G5wCz4mIOIee7eDkzFE2dcDijzN', 'bukti_perkuliahan', NULL, NULL),
(44, '12', 'https://drive.google.com/drive/folders/1zl0b_G5wCz4mIOIee7eDkzFE2dcDijzN', 'absensi', NULL, NULL),
(45, '12', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(46, '12', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(47, '12', 'https://drive.google.com/drive/folders/1zl0b_G5wCz4mIOIee7eDkzFE2dcDijzN', 'record_perkuliahan', NULL, NULL),
(48, '13', 'https://drive.google.com/drive/folders/1YuzbbHSubLOS92od1rV8F9QiKfnTFRt4', 'bukti_perkuliahan', NULL, NULL),
(49, '13', 'https://drive.google.com/drive/folders/1YuzbbHSubLOS92od1rV8F9QiKfnTFRt4', 'absensi', NULL, NULL),
(50, '13', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(51, '13', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(52, '13', 'https://drive.google.com/drive/folders/1YuzbbHSubLOS92od1rV8F9QiKfnTFRt4', 'record_perkuliahan', NULL, NULL),
(53, '14', 'https://drive.google.com/drive/folders/1fFVKPjx0Ku6JBg2CUgEacTeYXYlWvgld', 'bukti_perkuliahan', NULL, NULL),
(54, '14', 'https://drive.google.com/drive/folders/1fFVKPjx0Ku6JBg2CUgEacTeYXYlWvgld', 'absensi', NULL, NULL),
(55, '14', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(56, '14', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(57, '14', 'https://drive.google.com/drive/folders/1fFVKPjx0Ku6JBg2CUgEacTeYXYlWvgld', 'record_perkuliahan', NULL, NULL),
(58, '15', 'https://drive.google.com/drive/folders/1N24yLBqOstyED-kHimYQzDKk97g_X7Mw', 'bukti_perkuliahan', NULL, NULL),
(59, '15', 'https://drive.google.com/drive/folders/1N24yLBqOstyED-kHimYQzDKk97g_X7Mw', 'absensi', NULL, NULL),
(60, '15', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(61, '15', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(62, '15', 'https://drive.google.com/drive/folders/1N24yLBqOstyED-kHimYQzDKk97g_X7Mw', 'record_perkuliahan', NULL, NULL),
(63, '16', 'https://drive.google.com/drive/folders/1qxhnnKiOYF78d3vov2_xINZZkpBrKHTG', 'bukti_perkuliahan', NULL, NULL),
(64, '16', 'https://drive.google.com/drive/folders/1qxhnnKiOYF78d3vov2_xINZZkpBrKHTG', 'absensi', NULL, NULL),
(65, '16', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(66, '16', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(67, '16', 'https://drive.google.com/drive/folders/1qxhnnKiOYF78d3vov2_xINZZkpBrKHTG', 'record_perkuliahan', NULL, NULL),
(68, '17', 'https://drive.google.com/drive/folders/1axnoNE3HgHo4K8Z5qjTZ1Q7dbDGfjg9K', 'bukti_perkuliahan', NULL, NULL),
(69, '17', 'https://drive.google.com/drive/folders/1axnoNE3HgHo4K8Z5qjTZ1Q7dbDGfjg9K', 'absensi', NULL, NULL),
(70, '17', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(71, '17', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(72, '17', 'https://drive.google.com/drive/folders/1axnoNE3HgHo4K8Z5qjTZ1Q7dbDGfjg9K', 'record_perkuliahan', NULL, NULL),
(73, '18', 'https://drive.google.com/drive/folders/1jS-9n0qjYRUhXdt_UCis7WkI_DDmHsdx', 'bukti_perkuliahan', NULL, NULL),
(74, '18', 'https://drive.google.com/drive/folders/1jS-9n0qjYRUhXdt_UCis7WkI_DDmHsdx', 'absensi', NULL, NULL),
(75, '18', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(76, '18', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(77, '18', 'https://drive.google.com/drive/folders/1jS-9n0qjYRUhXdt_UCis7WkI_DDmHsdx', 'record_perkuliahan', NULL, NULL),
(78, '19', 'https://drive.google.com/drive/folders/18aruyQJBfyLu6TBPRgW06u97h1tsU_7t', 'bukti_perkuliahan', NULL, NULL),
(79, '19', 'https://drive.google.com/drive/folders/18aruyQJBfyLu6TBPRgW06u97h1tsU_7t', 'absensi', NULL, NULL),
(80, '19', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(81, '19', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(82, '19', 'https://drive.google.com/drive/folders/18aruyQJBfyLu6TBPRgW06u97h1tsU_7t', 'record_perkuliahan', NULL, NULL),
(83, '20', 'https://drive.google.com/drive/folders/1a11YeDlVL87XU_SqfwtDcz_3LCK8xZ2P', 'bukti_perkuliahan', NULL, NULL),
(84, '20', 'https://drive.google.com/drive/folders/1a11YeDlVL87XU_SqfwtDcz_3LCK8xZ2P', 'absensi', NULL, NULL),
(85, '20', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(86, '20', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(87, '20', 'https://drive.google.com/drive/folders/1a11YeDlVL87XU_SqfwtDcz_3LCK8xZ2P', 'record_perkuliahan', NULL, NULL),
(88, '26', 'https://drive.google.com/drive/folders/1eaPoMd-mSPIHF5nN2-skaIPOadFn8P_g', 'bukti_perkuliahan', NULL, NULL),
(89, '26', 'https://drive.google.com/drive/folders/1eaPoMd-mSPIHF5nN2-skaIPOadFn8P_g', 'absensi', NULL, NULL),
(90, '26', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(91, '26', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(92, '26', 'https://drive.google.com/drive/folders/1eaPoMd-mSPIHF5nN2-skaIPOadFn8P_g', 'record_perkuliahan', NULL, NULL),
(93, '27', 'https://drive.google.com/drive/folders/12Eoc_xlICdNO_wtIXcObokwXhK8tt2Rt', 'bukti_perkuliahan', NULL, NULL),
(94, '27', 'https://drive.google.com/drive/folders/12Eoc_xlICdNO_wtIXcObokwXhK8tt2Rt', 'absensi', NULL, NULL),
(95, '27', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(96, '27', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(97, '27', 'https://drive.google.com/drive/folders/12Eoc_xlICdNO_wtIXcObokwXhK8tt2Rt', 'record_perkuliahan', NULL, NULL),
(98, '21', 'https://drive.google.com/drive/folders/1lJfHj2fXkz8d61s4gfo-HXbV0vCiFyEM', 'bukti_perkuliahan', NULL, NULL),
(99, '21', 'https://drive.google.com/drive/folders/1lJfHj2fXkz8d61s4gfo-HXbV0vCiFyEM', 'absensi', NULL, NULL),
(100, '21', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(101, '21', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(102, '21', 'https://drive.google.com/drive/folders/1lJfHj2fXkz8d61s4gfo-HXbV0vCiFyEM', 'record_perkuliahan', NULL, NULL),
(103, '22', 'https://drive.google.com/drive/folders/1rKOMrLyZsqlIN2keclte_ncGFqx7zXcB', 'bukti_perkuliahan', NULL, NULL),
(104, '22', 'https://drive.google.com/drive/folders/1rKOMrLyZsqlIN2keclte_ncGFqx7zXcB', 'absensi', NULL, NULL),
(105, '22', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(106, '22', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(107, '22', 'https://drive.google.com/drive/folders/1rKOMrLyZsqlIN2keclte_ncGFqx7zXcB', 'record_perkuliahan', NULL, NULL),
(108, '23', 'https://drive.google.com/drive/folders/15GUB4qKghrtv-G4DxcBu0EskfeXPErm1', 'bukti_perkuliahan', NULL, NULL),
(109, '23', 'https://drive.google.com/drive/folders/15GUB4qKghrtv-G4DxcBu0EskfeXPErm1', 'absensi', NULL, NULL),
(110, '23', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(111, '23', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(112, '23', 'https://drive.google.com/drive/folders/15GUB4qKghrtv-G4DxcBu0EskfeXPErm1', 'record_perkuliahan', NULL, NULL),
(113, '24', 'https://drive.google.com/drive/folders/1twKfffq3Scu9qnxy7R0die1SzklOikqN', 'bukti_perkuliahan', NULL, NULL),
(114, '24', 'https://drive.google.com/drive/folders/1twKfffq3Scu9qnxy7R0die1SzklOikqN', 'absensi', NULL, NULL),
(115, '24', 'https://drive.google.com/drive/folders/15GUB4qKghrtv-G4DxcBu0EskfeXPErm1', 'form_pj', NULL, NULL),
(116, '24', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(117, '24', 'https://drive.google.com/drive/folders/1twKfffq3Scu9qnxy7R0die1SzklOikqN', 'record_perkuliahan', NULL, NULL),
(118, '25', 'https://drive.google.com/drive/folders/149JCLQrdPFKQLdeZr7W4IAqLDe7blu_7', 'bukti_perkuliahan', NULL, NULL),
(119, '25', 'https://drive.google.com/drive/folders/149JCLQrdPFKQLdeZr7W4IAqLDe7blu_7', 'absensi', NULL, NULL),
(120, '25', 'https://sites.google.com/view/siapmasukkelas/home', 'form_pj', NULL, NULL),
(121, '25', 'https://drive.google.com/drive/folders/12N0RPaRHkMoTsSyLNq7w75Fio6Roh8ye', 'form_5_6', NULL, NULL),
(122, '25', 'https://drive.google.com/drive/folders/149JCLQrdPFKQLdeZr7W4IAqLDe7blu_7', 'record_perkuliahan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `list_pj`
--

CREATE TABLE `list_pj` (
  `id` bigint UNSIGNED NOT NULL,
  `id_jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mahasiswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_pj`
--

INSERT INTO `list_pj` (`id`, `id_jadwal`, `id_mahasiswa`, `created_at`, `updated_at`) VALUES
(1, '4', '42', NULL, NULL),
(2, '4', '47', NULL, NULL),
(3, '4', '12', NULL, NULL),
(4, '4', '38', NULL, NULL),
(5, '5', '34', NULL, NULL),
(6, '5', '39', NULL, NULL),
(7, '5', '63', NULL, NULL),
(8, '5', '57', NULL, NULL),
(9, '6', '33', NULL, NULL),
(10, '6', '23', NULL, NULL),
(11, '6', '40', NULL, NULL),
(12, '6', '15', NULL, NULL),
(13, '7', '32', NULL, NULL),
(14, '7', '48', NULL, NULL),
(15, '7', '67', NULL, NULL),
(16, '7', '25', NULL, NULL),
(17, '8', '56', NULL, NULL),
(18, '8', '63', NULL, NULL),
(19, '8', '26', NULL, NULL),
(20, '8', '50', NULL, NULL),
(21, '9', '53', NULL, NULL),
(22, '9', '62', NULL, NULL),
(23, '9', '65', NULL, NULL),
(24, '9', '55', NULL, NULL),
(25, '10', '39', NULL, NULL),
(26, '10', '35', NULL, NULL),
(27, '10', '54', NULL, NULL),
(28, '10', '61', NULL, NULL),
(29, '11', '73', NULL, NULL),
(30, '11', '44', NULL, NULL),
(31, '11', '37', NULL, NULL),
(32, '11', '19', NULL, NULL),
(33, '12', '75', NULL, NULL),
(34, '12', '41', NULL, NULL),
(35, '12', '56', NULL, NULL),
(36, '12', '16', NULL, NULL),
(37, '13', '92', NULL, NULL),
(38, '13', '122', NULL, NULL),
(39, '14', '90', NULL, NULL),
(40, '14', '133', NULL, NULL),
(41, '15', '102', NULL, NULL),
(42, '15', '104', NULL, NULL),
(43, '16', '88', NULL, NULL),
(44, '16', '135', NULL, NULL),
(45, '17', '100', NULL, NULL),
(46, '17', '124', NULL, NULL),
(47, '18', '97', NULL, NULL),
(48, '18', '108', NULL, NULL),
(49, '19', '94', NULL, NULL),
(50, '19', '114', NULL, NULL),
(51, '20', '98', NULL, NULL),
(52, '20', '117', NULL, NULL),
(53, '21', '218', NULL, NULL),
(54, '21', '', NULL, NULL),
(55, '26', '168', NULL, NULL),
(56, '26', '170', NULL, NULL),
(57, '26', '191', NULL, NULL),
(58, '26', '166', NULL, NULL),
(59, '27', '158', NULL, NULL),
(60, '27', '142', NULL, NULL),
(61, '27', '150', NULL, NULL),
(62, '27', '199', NULL, NULL),
(63, '21', '180', NULL, NULL),
(64, '21', '198', NULL, NULL),
(65, '21', '161', NULL, NULL),
(66, '21', '173', NULL, NULL),
(67, '22', '164', NULL, NULL),
(68, '22', '193', NULL, NULL),
(69, '22', '178', NULL, NULL),
(70, '22', '197', NULL, NULL),
(71, '23', '176', NULL, NULL),
(72, '23', '183', NULL, NULL),
(73, '23', '201', NULL, NULL),
(74, '23', '143', NULL, NULL),
(75, '24', '185', NULL, NULL),
(76, '24', '171', NULL, NULL),
(77, '24', '188', NULL, NULL),
(78, '24', '202', NULL, NULL),
(79, '25', '187', NULL, NULL),
(80, '25', '172', NULL, NULL),
(81, '25', '146', NULL, NULL),
(82, '25', '204', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_07_093810_jadwal', 1),
(5, '2024_05_07_093821_notifikasi', 1),
(6, '2024_05_13_192332_list_pj', 1),
(7, '2024_05_13_192336_list_link', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` bigint UNSIGNED NOT NULL,
  `id_jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` enum('1','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('c5gQXilFtmNynmOegjGlJIOIf5FOxPZp2Xxcs7kG', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOUFCQm9RYTFUMGFYdmNhTnNpejYwbkhpY3RGUmhidW5VS2E4WW1SViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQvbG9nb3V0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZC9ub3RpZmljYXRpb24iO319', 1715694041),
('xXg0L4XOi39BnDGSdFbbgiywJndJgKdoiieuJ8KZ', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3Y1NEI5eHlFa3BMRDhBeWdpTzlSS0hJUERJZVNUOUcyRG9kajRTZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQvbG9nb3V0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1715774925);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` enum('mahasiswa','dosen') COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `angkatan`, `email`, `nim`, `password`, `usertype`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'Arsad Rifki Adhawi Farezan', '2021', NULL, '1511521001', '$2y$12$l7qI776jY5/x8MCl4qif4uIsBNOTPeo3cenSF5CHNGPSFIVNJtqpq', 'mahasiswa', '', NULL, '2024-05-15 09:11:57', '2024-05-15 09:11:57'),
(11, 'Taufik Nurochman', '2021', NULL, '1511521002', '$2y$12$ltKNXJiKqJmJx6FeWDSg8udcTqUXp8IeAZRPlhU1kk1CkJA/OMBAK', 'mahasiswa', '', NULL, '2024-05-15 09:11:57', '2024-05-15 09:11:57'),
(12, 'Arief Hardi Rahman', '2021', NULL, '1511521003', '$2y$12$XoJIFmkpMfxR.gBetpU47OI/BYtfzj/WGwgBorCeOHpCq1NICofea', 'mahasiswa', '', NULL, '2024-05-15 09:11:57', '2024-05-15 09:11:57'),
(13, 'Sevia Dwi Astuti', '2021', NULL, '1511521004', '$2y$12$ruYECjTWjroGgOPsOsc/QeMP2.xRo0GVpKoPpNRKkQB/eE1PgmDFK', 'mahasiswa', '', NULL, '2024-05-15 09:11:57', '2024-05-15 09:11:57'),
(14, 'Erlisa Aulia', '2021', NULL, '1511521005', '$2y$12$2Nbqji9qBDlD9fcJbjZ0F.UarDMje6xS0xGNmghf5gvE/mYwYdD0y', 'mahasiswa', '', NULL, '2024-05-15 09:11:58', '2024-05-15 09:11:58'),
(15, 'Nabila Farraha Isha', '2021', NULL, '1511521006', '$2y$12$oieGeHIUAF7u3w6jwY.RuujFZVuuR2kVUnkIydCBJfUN/4c/dRQs6', 'mahasiswa', '', NULL, '2024-05-15 09:11:58', '2024-05-15 09:11:58'),
(16, 'Monica Wulandari', '2021', NULL, '1511521007', '$2y$12$rQKmAKKXH9Jutj514ssdNOGTO/3OLtMwup2szMVbNioyC.RNMxc32', 'mahasiswa', '', NULL, '2024-05-15 09:11:58', '2024-05-15 09:11:58'),
(17, 'Alya Nurjanah', '2021', NULL, '1511521008', '$2y$12$X2x9g2VkIOqxirvGWwQxf.caeZVAc5X3inp1jlU9oEqdTJ6hTsr.u', 'mahasiswa', '', NULL, '2024-05-15 09:11:59', '2024-05-15 09:11:59'),
(18, 'Bagas Pragat Pamungkas', '2021', NULL, '1511521009', '$2y$12$XT64EJw45ufngDibbuykB.ePMViRmtwKldddz2iiCpbs2fW22HgSa', 'mahasiswa', '', NULL, '2024-05-15 09:11:59', '2024-05-15 09:11:59'),
(19, 'Putri Wulandari', '2021', NULL, '1511521010', '$2y$12$pEM7j06sXSq.bBANjTwKJuE5PanZGpLuvrxsalRhjwVYrHD43Re2O', 'mahasiswa', '', NULL, '2024-05-15 09:11:59', '2024-05-15 09:11:59'),
(20, 'Safira', '2021', NULL, '1511521011', '$2y$12$pUfLadqZqJtZvTMwj0GzQ.Kvprl.bFi.zsI2CgYnLUAut8PXpgvrW', 'mahasiswa', '', NULL, '2024-05-15 09:12:00', '2024-05-15 09:12:00'),
(21, 'Widyanur Handari', '2021', NULL, '1511521012', '$2y$12$ADNKm9AxfoQEqYPyuueh0uMdfv5t8lxReUe5tb.Exi5jrRTtLG9ku', 'mahasiswa', '', NULL, '2024-05-15 09:12:00', '2024-05-15 09:12:00'),
(22, 'Dafa Arga Narendra', '2021', NULL, '1511521013', '$2y$12$1AjIKLIQfUrP1i/37/IFP.cwu3MJXxEjW8H2EjgvDoSy61oJehQnm', 'mahasiswa', '', NULL, '2024-05-15 09:12:00', '2024-05-15 09:12:00'),
(23, 'Sabila Cintania Yamanda', '2021', NULL, '1511521014', '$2y$12$IbcxCmYv3ju5XM6Je0xMfetdj.BVsO3zi3eb75L2eN0axOYvYKx2O', 'mahasiswa', '', NULL, '2024-05-15 09:12:01', '2024-05-15 09:12:01'),
(24, 'Faqih Dimas Suryadi', '2021', NULL, '1511521015', '$2y$12$KXnsMliZTtxG7V/tMkbpH.RGY3rqjzjiPcOxcH.QT/UUAkoRgbRim', 'mahasiswa', '', NULL, '2024-05-15 09:12:01', '2024-05-15 09:12:01'),
(25, 'Muhammad Wildan Dzikri', '2021', NULL, '1511521016', '$2y$12$LnU3ByRVc/f7m2wXRV.n5.59oUO/SiQ/lwUeN.DmCtRMAbUUAh3UW', 'mahasiswa', '', NULL, '2024-05-15 09:12:01', '2024-05-15 09:12:01'),
(26, 'Muhammad Irsad Syafiq', '2021', NULL, '1511521017', '$2y$12$NvF2YG.GlfTPsNnTyipf.uHRjUTQa7shFDdTdWd9eQJNzppeUdzZW', 'mahasiswa', '', NULL, '2024-05-15 09:12:01', '2024-05-15 09:12:01'),
(27, 'Dhiyananda Haniifah Putri', '2021', NULL, '1511521018', '$2y$12$ulKzIdhcOHjSip30asZjkuAgPopAyNAnXNX.nOZH9jJ5BzBtCi9bK', 'mahasiswa', '', NULL, '2024-05-15 09:12:02', '2024-05-15 09:12:02'),
(28, 'Rizky Yudi Prasetyo', '2021', NULL, '1511521019', '$2y$12$2EgUiGeIdeXDz0SsWTzsA.p6Y3VokLcTRrThjvGJhkdg8D//MNwFW', 'mahasiswa', '', NULL, '2024-05-15 09:12:02', '2024-05-15 09:12:02'),
(29, 'Bintang Ramadhan', '2021', NULL, '1511521020', '$2y$12$0P8vAlkrdbBQIRGl.Gc4sugDu7qiJ4q1AdqCm2p7OOaVhVYWo4TM6', 'mahasiswa', '', NULL, '2024-05-15 09:12:02', '2024-05-15 09:12:02'),
(30, 'Faiz Ilham Mumtaz', '2021', NULL, '1511521021', '$2y$12$a/nHRnK1jQU.Lmtf5e0RRe/4/SXSvY6nqNwePpBDe0SGaBlCAVjxK', 'mahasiswa', '', NULL, '2024-05-15 09:12:03', '2024-05-15 09:12:03'),
(31, 'Gaizka Aqshal Razzandi Suryaningrat', '2021', NULL, '1511521022', '$2y$12$agl/hg1MGROgWG7fIUbqju0CQpWeRjfh/p8OXs7COXBcj9wr1Chgy', 'mahasiswa', '', NULL, '2024-05-15 09:12:03', '2024-05-15 09:12:03'),
(32, 'Yulia Putri Wulandari', '2021', NULL, '1511521023', '$2y$12$2iSy41.9GbeFq5l7kDgW8eVR1J6nYgnaktlyLgqIs5t.0K3.yjwfe', 'mahasiswa', '', NULL, '2024-05-15 09:12:03', '2024-05-15 09:12:03'),
(33, 'Ahmad Maulana', '2021', NULL, '1511521024', '$2y$12$h9o0lf/jBmBKampnfsv3PuVquOjRTH6lbKmy9vbjQcQ7zx6fiS59e', 'mahasiswa', '', NULL, '2024-05-15 09:12:03', '2024-05-15 09:12:03'),
(34, 'Putra Fajar Aditya', '2021', NULL, '1511521025', '$2y$12$AE2SQdapWDR6JFQjt0dxYezC/VLRLwMDtXHCEOBqF9CDZmN2wvoZW', 'mahasiswa', '', NULL, '2024-05-15 09:12:04', '2024-05-15 09:12:04'),
(35, 'Erika Dian Maharani', '2021', NULL, '1511521026', '$2y$12$gZRdlYH00b6tvaGYNd/gRuL8CzWNJcz6crgLsV5gni4KRtm.9Nntu', 'mahasiswa', '', NULL, '2024-05-15 09:12:04', '2024-05-15 09:12:04'),
(36, 'Nicholas Dwinovan', '2021', NULL, '1511521027', '$2y$12$FyjopPhDbwghUV0.As2YS.ebmDOJz/jeGVIKob98qW.ZcE66/cnpS', 'mahasiswa', '', NULL, '2024-05-15 09:12:04', '2024-05-15 09:12:04'),
(37, 'Fakhri Najmuddin', '2021', NULL, '1511521028', '$2y$12$rUlY18wd3ptOKXm/VG4tpetkRLqw.0n7bEtYqtynBsyzvz24Sp6Xi', 'mahasiswa', '', NULL, '2024-05-15 09:12:05', '2024-05-15 09:12:05'),
(38, 'Wahyu Adila Pratama', '2021', NULL, '1511521029', '$2y$12$UY1R6/1CtjiMhcNyGJtT9usYUc7k0WlpFFY/Krtxw.ukW0r2S8Yva', 'mahasiswa', '', NULL, '2024-05-15 09:12:05', '2024-05-15 09:12:05'),
(39, 'Banu Radyto Dwi Satrio', '2021', NULL, '1511521030', '$2y$12$.tvD2WGUDqX/P8uctStBhuntWAx6T6LuQYp4/ks/kj0UExKB.67fO', 'mahasiswa', '', NULL, '2024-05-15 09:12:05', '2024-05-15 09:12:05'),
(40, 'Rizki Alim Novianto', '2021', NULL, '1511521031', '$2y$12$4JOftEThphEzUA.BXGl/oO9ik2Slsd1btUyKwmuAZ5j5qSSKUQ3rK', 'mahasiswa', '', NULL, '2024-05-15 09:12:05', '2024-05-15 09:12:05'),
(41, 'Muhamad Irfan Kresnadi', '2021', NULL, '1511521032', '$2y$12$VJx7ls0fyUdaA0ECYgAbl.5jO99SAX130IVFK/1XUhL4QZNUj/OXW', 'mahasiswa', '', NULL, '2024-05-15 09:12:06', '2024-05-15 09:12:06'),
(42, 'Na\'ajla Andiza Putri', '2021', NULL, '1511521033', '$2y$12$Ryf22CS7ILfyBH6zqPWLhODCOlb9piHdvIlFjcokjLtnfo650uT1W', 'mahasiswa', '', NULL, '2024-05-15 09:12:06', '2024-05-15 09:12:06'),
(43, 'Yohan Ananda Cahyono', '2021', NULL, '1511521034', '$2y$12$eWmjl/qPDMDxfXie781Jq.JSVEUcXpPGceKYxBVxNwg.6oz41Do1e', 'mahasiswa', '', NULL, '2024-05-15 09:12:06', '2024-05-15 09:12:06'),
(44, 'Bintang Arya Mahasyahputra', '2021', NULL, '1511521035', '$2y$12$.A7jZ80qcJ/KsJNiZ1bYJeo4qMJc2RrabW5ssnuRMNCVoFDhTjqGa', 'mahasiswa', '', NULL, '2024-05-15 09:12:07', '2024-05-15 09:12:07'),
(45, 'Tiara Nur Angraini', '2021', NULL, '1511521036', '$2y$12$lkvGB6OkF8bDThiBC/uQbeDcknH0QqjpZk68.wIdUCXDLqM2bMFp.', 'mahasiswa', '', NULL, '2024-05-15 09:12:07', '2024-05-15 09:12:07'),
(46, 'Rafida Rahma Aulia', '2021', NULL, '1511521037', '$2y$12$hgzznFQM7OU4Gea5ZlVyfuAEed9kOquLzoZQ5ZePpf0E9PskmVQLi', 'mahasiswa', '', NULL, '2024-05-15 09:12:07', '2024-05-15 09:12:07'),
(47, 'Bagas Permana', '2021', NULL, '1511521038', '$2y$12$kt54ShNAapVIqCb2hCmvsumHF8oiuwqr5sR0mWdSE4UrsnR5d/4AS', 'mahasiswa', '', NULL, '2024-05-15 09:12:07', '2024-05-15 09:12:07'),
(48, 'Surya Alam', '2021', NULL, '1511521039', '$2y$12$eLt3zWgcuevp8MCVLbN8uuBTYzllA4.4Wau12QsD7uks3zCbmNk32', 'mahasiswa', '', NULL, '2024-05-15 09:12:08', '2024-05-15 09:12:08'),
(49, 'Muhamad Ghufron', '2021', NULL, '1511521040', '$2y$12$0A2hgmFpikOizMxuNdxb/OxJACuEtrbt/EAxMKWaatqmMzJViDFNu', 'mahasiswa', '', NULL, '2024-05-15 09:12:08', '2024-05-15 09:12:08'),
(50, 'Ikram Maulana Firdaus', '2021', NULL, '1511521041', '$2y$12$zdKvPjDnQAO1.EvgcaP39.cYP59Nohe4FxKzVN4N4suGNr5O61tku', 'mahasiswa', '', NULL, '2024-05-15 09:12:08', '2024-05-15 09:12:08'),
(51, 'Annisa Nurliza', '2021', NULL, '1511521042', '$2y$12$SvO1.Pq.L0eQTezVfhpsN.GzcIxjbYnlmDI/qw9gVxOWbZHDHQHme', 'mahasiswa', '', NULL, '2024-05-15 09:12:09', '2024-05-15 09:12:09'),
(52, 'Muhammad Rangga Hidayat', '2021', NULL, '1511521043', '$2y$12$fwekRAHBaSutNmJxq/0hyO4umkcMIsC9zoYAHJiOAaVh61SoiCHCW', 'mahasiswa', '', NULL, '2024-05-15 09:12:09', '2024-05-15 09:12:09'),
(53, 'Zaldi Sultani Zain', '2021', NULL, '1511521044', '$2y$12$Z55IL6P8Gj/EfrA0gg1o2ek6eC.U9B8VfaUv4lG4I0SS2Qa7Qkvu6', 'mahasiswa', '', NULL, '2024-05-15 09:12:09', '2024-05-15 09:12:09'),
(54, 'Muhammad Viki Baihaki', '2021', NULL, '1511521045', '$2y$12$A2NYMG2rfjjKYrmHeWH7w.gzN4RAI1FJHla5X2K.fdquWGIuYixj.', 'mahasiswa', '', NULL, '2024-05-15 09:12:10', '2024-05-15 09:12:10'),
(55, 'Ridho Tito Panigoro', '2021', NULL, '1511521046', '$2y$12$76MJGhvM/TgY5E.7pY7lp.h7VuZDuOtZhzAGNo13eamxy.idcP1Wq', 'mahasiswa', '', NULL, '2024-05-15 09:12:10', '2024-05-15 09:12:10'),
(56, 'Muftiana Wildiansah', '2021', NULL, '1511521047', '$2y$12$xRJgSFd5Abh7KecbNiASNu1upuSKuXRz3oDaamq225/fEunp6lo4y', 'mahasiswa', '', NULL, '2024-05-15 09:12:10', '2024-05-15 09:12:10'),
(57, 'Jerremy Vincen Errol', '2021', NULL, '1511521048', '$2y$12$l0rPoHa4fffDOTgGlbOADeR6Phko9qNllCoGy/0ygL2hegkOUagia', 'mahasiswa', '', NULL, '2024-05-15 09:12:10', '2024-05-15 09:12:10'),
(58, 'Dhiwa Humairah Ninvika', '2021', NULL, '1511521049', '$2y$12$FGAcjf9/Xvuiauh80p3vP.X11avjoBgIDS/zZwxKhsnkquynD9iRK', 'mahasiswa', '', NULL, '2024-05-15 09:12:11', '2024-05-15 09:12:11'),
(59, 'Raissa Azaria Andini', '2021', NULL, '1511521050', '$2y$12$8nsqpRPKacP77lPTTcPk0Ow3l3dUAx62DIdzrqsNDHFFTy9ThO3dG', 'mahasiswa', '', NULL, '2024-05-15 09:12:11', '2024-05-15 09:12:11'),
(60, 'Hendra Zulfikar', '2021', NULL, '1511521051', '$2y$12$o8zPOrgWnoGfuCKotUSfnua3JGHC31NZk.0DU0jO5zJ9vzR5sPe0G', 'mahasiswa', '', NULL, '2024-05-15 09:12:11', '2024-05-15 09:12:11'),
(61, 'Najla Saifana', '2021', NULL, '1511521052', '$2y$12$sS4KBh/9QfUf6MpddXk0y.wgCQnLwasqV7bygNnqTcb25rHazaNxy', 'mahasiswa', '', NULL, '2024-05-15 09:12:12', '2024-05-15 09:12:12'),
(62, 'Tesar Agnia Arifian', '2021', NULL, '1511521053', '$2y$12$akGC7qvcgrE8504.BIv0TOTWyyujWvj3CifxGl6lAKLj5RwH5Qe2y', 'mahasiswa', '', NULL, '2024-05-15 09:12:12', '2024-05-15 09:12:12'),
(63, 'Farasabila Angeli Purnomo', '2021', NULL, '1511521054', '$2y$12$MVLbSA.W4FHHyq6sMAOBW..sGXwyYKx.63ab0OMrweKOC9GhGG4A2', 'mahasiswa', '', NULL, '2024-05-15 09:12:12', '2024-05-15 09:12:12'),
(64, 'Miftaah Bagus Hartawan', '2021', NULL, '1511521055', '$2y$12$FjGga19LoAW9esCb9mJi8uHFs6q0l.ldHmIGemkH1WxTFN09nXPOy', 'mahasiswa', '', NULL, '2024-05-15 09:12:12', '2024-05-15 09:12:12'),
(65, 'Billy Hendrawan', '2021', NULL, '1511521056', '$2y$12$IZXlprGyu95AwN14pRnRt.zAQqLgV2VjngSeKA9wJwtRMiTSlf91y', 'mahasiswa', '', NULL, '2024-05-15 09:12:13', '2024-05-15 09:12:13'),
(66, 'Maulana Ikhsan Yazid', '2021', NULL, '1511521057', '$2y$12$3kCJRHf/DJgskHD2X9MZdulJXo7VNVojAWX3RT7BmvFmfY5snclbi', 'mahasiswa', '', NULL, '2024-05-15 09:12:13', '2024-05-15 09:12:13'),
(67, 'Yolanda Junitasari', '2021', NULL, '1511521058', '$2y$12$JUEIX6J4TmCapmDNCHiVt.qWp1Lut/wSO/ygXi7gkhoMxHivMApwG', 'mahasiswa', '', NULL, '2024-05-15 09:12:13', '2024-05-15 09:12:13'),
(68, 'Zahra Namiya Fitri', '2021', NULL, '1511521059', '$2y$12$hoAI.7BCJEEANyaFXDmdzOC9isAFMBClKpeQ0XAGucmflvORbUypm', 'mahasiswa', '', NULL, '2024-05-15 09:12:14', '2024-05-15 09:12:14'),
(69, 'Arif Rachman Dillah', '2021', NULL, '1511521060', '$2y$12$sUrKXgkes04bqsKWtaXI2eQdkJcoMsGnHga0pwbEPWpsc2TWaSFqq', 'mahasiswa', '', NULL, '2024-05-15 09:12:14', '2024-05-15 09:12:14'),
(70, 'Fitri Khairunnisa', '2021', NULL, '1511521061', '$2y$12$gh/w0J4.B/UTJKLpb5OSsu8hcSxsSvgY/hCdx2xgQ44gv3aet4gKK', 'mahasiswa', '', NULL, '2024-05-15 09:12:14', '2024-05-15 09:12:14'),
(71, 'Citra Amalia Riyadlul Jannah', '2021', NULL, '1511521062', '$2y$12$yBRVcv9C34gm6OAGJ6djbeoA9DH/EJFkuyLWvdju6LQLITCU3ZMOC', 'mahasiswa', '', NULL, '2024-05-15 09:12:14', '2024-05-15 09:12:14'),
(72, 'Indah Apsari Asmana Nurfitriani', '2021', NULL, '1511521063', '$2y$12$cYtpYOIUHwWkGrmqTiUHguYo1jPaSIfyV.dgac8vX2Mtel/BY6JHK', 'mahasiswa', '', NULL, '2024-05-15 09:12:15', '2024-05-15 09:12:15'),
(73, 'Dimas Rizki Saputra', '2021', NULL, '1511521064', '$2y$12$5DM7jLB8uhKqooe6Pe/6T.xshNTX2W.xrhtFCZ2JKllq9ihEyUj.2', 'mahasiswa', '', NULL, '2024-05-15 09:12:15', '2024-05-15 09:12:15'),
(74, 'Satria Akbar Gumilang', '2021', NULL, '1511521065', '$2y$12$V3OxC87aH5jB1O/QEbbLT.gLM7GcOcCDemVxv7dSEZUZAud6wf9CS', 'mahasiswa', '', NULL, '2024-05-15 09:12:15', '2024-05-15 09:12:15'),
(75, 'Bungaran Adi Prama', '2021', NULL, '1511521066', '$2y$12$O3vposGgQh1bCjsNmwaXkeqLT7Z4b78Kt9ZbLvepaEvp06E.513je', 'mahasiswa', '', NULL, '2024-05-15 09:12:16', '2024-05-15 09:12:16'),
(76, 'Fatwa Pujangga Islami', '2021', NULL, '1511521067', '$2y$12$71UPrjjqZTnrO./pb/1IbOf4MNv8GyI41L2W6b/A2DnA8POFlpUSm', 'mahasiswa', '', NULL, '2024-05-15 09:12:16', '2024-05-15 09:12:16'),
(77, 'Rayhan Dhevano Aufaa', '2022', NULL, '1523422001', '$2y$12$XYUp/zgf6bGGcIUxzOTTkuITYUjsc07D50I2WL861174Q/SJitOPS', 'mahasiswa', '', NULL, '2024-05-15 09:15:53', '2024-05-15 09:15:53'),
(78, 'Kutaibah Al Muharrir', '2022', NULL, '1523422002', '$2y$12$9ogRbQCjqCjELQ3zQIFd/ugBsL3fWjxreXdHiwBNtw0GxaafwYk5i', 'mahasiswa', '', NULL, '2024-05-15 09:15:53', '2024-05-15 09:15:53'),
(79, 'Rizki Hamdallah Habel', '2022', NULL, '1523422003', '$2y$12$ljp94M/EoJSIk6o8ku2.CO3w3KnD5rJS3EK0TmtupniLy6PIq7Buy', 'mahasiswa', '', NULL, '2024-05-15 09:15:54', '2024-05-15 09:15:54'),
(80, 'Dewa Dwi Putra', '2022', NULL, '1523422004', '$2y$12$oHGYVAJH0RMbrhYDnxoStuo5NfYasuLYAHS9SWhshuYYEJEfvtnBC', 'mahasiswa', '', NULL, '2024-05-15 09:15:54', '2024-05-15 09:15:54'),
(81, 'Omega Trifena Laurenz Piyd', '2022', NULL, '1523422005', '$2y$12$BXZAwIy6UBXMruQumS/zV.46SsiqEVD8Q1Bb8r83UxQjpS.6EjELi', 'mahasiswa', '', NULL, '2024-05-15 09:15:54', '2024-05-15 09:15:54'),
(82, 'Elang Alifian Marvin', '2022', NULL, '1523422006', '$2y$12$2UjW0vWYNzoBoGrkTFVPD.bip.snnEcVcwfl9Od3ry9i2x91DFScO', 'mahasiswa', '', NULL, '2024-05-15 09:15:55', '2024-05-15 09:15:55'),
(83, 'Argirinata Pristanto', '2022', NULL, '1523422007', '$2y$12$1xvHIBoFv4.HDly2yBdcPuQhLexYhZPgFja.J5JaJztMNUsviBgTK', 'mahasiswa', '', NULL, '2024-05-15 09:15:55', '2024-05-15 09:15:55'),
(84, 'Alphonsus Christian Gavrie', '2022', NULL, '1523422008', '$2y$12$5IBN.yYPrBxQDU3HJd56F.zNq.0XZh.IddzyD0.vjx.J6SHzDjFEm', 'mahasiswa', '', NULL, '2024-05-15 09:15:55', '2024-05-15 09:15:55'),
(85, 'Dimas Bayu Maulana', '2022', NULL, '1523422009', '$2y$12$bRN4psMkDu7n.DTAImxTIeiUB91exxZssK3TAtMqnZUMvHQeDFytm', 'mahasiswa', '', NULL, '2024-05-15 09:15:56', '2024-05-15 09:15:56'),
(86, 'Danisa Aryani', '2022', NULL, '1523422010', '$2y$12$tQ7jBhdX3vS4xuB3ZU4RZ.HZqurNMFoR5oLHQ2z9NpR8MA7l16iRW', 'mahasiswa', '', NULL, '2024-05-15 09:15:56', '2024-05-15 09:15:56'),
(87, 'Adelio Shatara Nugraha', '2022', NULL, '1523422011', '$2y$12$eRZwNy3MfmyXtAaVJcfPNez0ClIm3MlyrAPpU17qvx8nif2lqlXay', 'mahasiswa', '', NULL, '2024-05-15 09:15:57', '2024-05-15 09:15:57'),
(88, 'Reina Mayang Dhenarisa', '2022', NULL, '1523422012', '$2y$12$lEFCpiG2V6qEqHe9FZ5W7.KzQQaBrFWfulzhQUQwGJMSGGxRieZ/S', 'mahasiswa', '', NULL, '2024-05-15 09:15:57', '2024-05-15 09:15:57'),
(89, 'Lewi Barkah', '2022', NULL, '1523422013', '$2y$12$yXEX3jdv7M918.cGPqu/9O1OM5mAavNMzXcuHj.IjNG4D7kH2sqdq', 'mahasiswa', '', NULL, '2024-05-15 09:15:57', '2024-05-15 09:15:57'),
(90, 'Muhammad Zidan', '2022', NULL, '1523422014', '$2y$12$daCWFOunVgraE6dyTabX8eXLGbfIBtW3Ua5PflmwNisRi9eiw4Jxy', 'mahasiswa', '', NULL, '2024-05-15 09:15:58', '2024-05-15 09:15:58'),
(91, 'Rizky Ramadhani Putri', '2022', NULL, '1523422015', '$2y$12$qW3.tukVXxV8JhqeJmZGZevcYwFIr/ZDzXkq7iN9KW31dRDu46rU6', 'mahasiswa', '', NULL, '2024-05-15 09:15:58', '2024-05-15 09:15:58'),
(92, 'Muhammad Nanda Gymnastiar', '2022', NULL, '1523422016', '$2y$12$XcwHlBFAmLJUDUWGCERPGuyM29/DLUxc3y/03AEYA45wARwLJipV6', 'mahasiswa', '', NULL, '2024-05-15 09:15:58', '2024-05-15 09:15:58'),
(93, 'Pangeran Eduardo Haloho', '2022', NULL, '1523422017', '$2y$12$.QBk1Jl9kxLQq3OI6e2Qp.6gTXr4k5LsThA4OjZvauVN3S8UpvtAi', 'mahasiswa', '', NULL, '2024-05-15 09:15:58', '2024-05-15 09:15:58'),
(94, 'Mohammad Farhan Appliansyach', '2022', NULL, '1523422018', '$2y$12$Dg6S/GYuhsyAYDSltTtj0ONPpu4ygGg1uATdWatBtg1cS2/DBXxo6', 'mahasiswa', '', NULL, '2024-05-15 09:15:59', '2024-05-15 09:15:59'),
(95, 'Mukhammad Alginat Romadhon', '2022', NULL, '1523422019', '$2y$12$V2LrBdxdor0awDI/c8pGpu3nrKuhMJsEnSwpZ./vtf46ZPWetq18W', 'mahasiswa', '', NULL, '2024-05-15 09:15:59', '2024-05-15 09:15:59'),
(96, 'Topan Adi Saputra', '2022', NULL, '1523422020', '$2y$12$4zwGrwqZhnefOL1PEDM3l.PzLp0YWPlnK0R.B.qR3Op.UMqlKaTjq', 'mahasiswa', '', NULL, '2024-05-15 09:15:59', '2024-05-15 09:15:59'),
(97, 'Nabil Shafwan', '2022', NULL, '1523422021', '$2y$12$qrSszAdh628rI4JRmI3WmOTxnvNP18fLrb2uEKLTtHupB3WjBxBnS', 'mahasiswa', '', NULL, '2024-05-15 09:16:00', '2024-05-15 09:16:00'),
(98, 'Ariel Leonard Jefferson Lumalesil', '2022', NULL, '1523422022', '$2y$12$/m7dReDaturbaYY.fjC3XuThe38RRQ5fzCdv1wixBwJqmz9ioqJhO', 'mahasiswa', '', NULL, '2024-05-15 09:16:00', '2024-05-15 09:16:00'),
(99, 'Qian Nugraha s', '2022', NULL, '1523422023', '$2y$12$EmZmGuD6gvsRgOAucDL9uuOe/RwZroc8ZowZcGdznwkFT8wW.j86G', 'mahasiswa', '', NULL, '2024-05-15 09:16:00', '2024-05-15 09:16:00'),
(100, 'Novia Triningsih', '2022', NULL, '1523422024', '$2y$12$aT1.qFudbRxgbfBxLP3PEuVzj4cyJliuk3CxZpXHd9FXgkluMrYRK', 'mahasiswa', '', NULL, '2024-05-15 09:16:01', '2024-05-15 09:16:01'),
(101, 'Fikri Aditya Mahendra', '2022', NULL, '1523422025', '$2y$12$VPCdyQQnZDruCa0/IFNYYOmkvHv9/XPNOPbfZRs3CCqq5.p.rUioO', 'mahasiswa', '', NULL, '2024-05-15 09:16:01', '2024-05-15 09:16:01'),
(102, 'Imam Faishal Zailani', '2022', NULL, '1523422026', '$2y$12$F.NW6kOO7Lpv60SNnNNRfOiAAwD104m0XdNaeQPGoHIur6YECu8zm', 'mahasiswa', '', NULL, '2024-05-15 09:16:01', '2024-05-15 09:16:01'),
(103, 'Meliana Dwi Ayuningtias', '2022', NULL, '1523422027', '$2y$12$iqYafE8bKs9XkC39MD6/bu3uC0SJHOZMxq4OmsdH3cxXJY3jnzEay', 'mahasiswa', '', NULL, '2024-05-15 09:16:02', '2024-05-15 09:16:02'),
(104, 'Muhammad Khalish Al-Viqri', '2022', NULL, '1523422028', '$2y$12$ZusAuthfEvx3AKa10yzg5OIkRcHwCawFnODm6bfsiqoBNsyYkkU2C', 'mahasiswa', '', NULL, '2024-05-15 09:16:02', '2024-05-15 09:16:02'),
(105, 'Marini Andriyani Putri', '2022', NULL, '1523422029', '$2y$12$NUqLQui9ZZ77bxdHdutPFOnBIK7dInOto/7hihJUHD/5/O4t3I4pW', 'mahasiswa', '', NULL, '2024-05-15 09:16:02', '2024-05-15 09:16:02'),
(106, 'Marchel Antonio Sinaga', '2022', NULL, '1523422030', '$2y$12$j6ya8u/Pndq.JwJhYS0g5.kwyScRvyvMylXl8D7VCsaKQQSL6lpeG', 'mahasiswa', '', NULL, '2024-05-15 09:16:02', '2024-05-15 09:16:02'),
(107, 'Tramaditya Kustiawan', '2022', NULL, '1523422031', '$2y$12$3mSzLd5QvbUBjP/GXt7ixOxVY8kAxgI13Dp2XAaPJnZvobokeSkxC', 'mahasiswa', '', NULL, '2024-05-15 09:16:03', '2024-05-15 09:16:03'),
(108, 'Keisha Yudhistira', '2022', NULL, '1523422032', '$2y$12$OClz7OFnjOk7JtDu8kIiFesaiJeHOVLcI3UtEetdTRIu0n/EyTzHi', 'mahasiswa', '', NULL, '2024-05-15 09:16:03', '2024-05-15 09:16:03'),
(109, 'Hilmy Yaskur', '2022', NULL, '1523422033', '$2y$12$NqqcZ4gkyY/BbjrgmVtyUO/tg48fp1j.2zOM5735bEHeJ.ZAjgg5G', 'mahasiswa', '', NULL, '2024-05-15 09:16:03', '2024-05-15 09:16:03'),
(110, 'Haura Luthfiyah', '2022', NULL, '1523422034', '$2y$12$8Sdhv4M40tM5wBWJiDRIsONKu7G1qJVUgEInrJSEZci5gIfj6OJIG', 'mahasiswa', '', NULL, '2024-05-15 09:16:04', '2024-05-15 09:16:04'),
(111, 'Amanda Farliany Hidayat', '2022', NULL, '1523422035', '$2y$12$2DFehEvnbhZ95ZhuAl2niuwdJcKv.TsRg7UvzOeyCd4d7eO4GJT/W', 'mahasiswa', '', NULL, '2024-05-15 09:16:04', '2024-05-15 09:16:04'),
(112, 'Fitri Anggraeni Puspitaningrum', '2022', NULL, '1523422036', '$2y$12$RTZpzWx7E4IfZYJfJs1Xg.CXvKonVHGVygSis8RKFsPow5An580Xy', 'mahasiswa', '', NULL, '2024-05-15 09:16:04', '2024-05-15 09:16:04'),
(113, 'Muhammad Fathur Rizki', '2022', NULL, '1523422037', '$2y$12$mo5lRqq3XeF3/j/KqdTcyOxsKHqDzsZ24r3xDuZyEhlxWZX4Ijnwq', 'mahasiswa', '', NULL, '2024-05-15 09:16:04', '2024-05-15 09:16:04'),
(114, 'Fahri Akbar Kurniawan', '2022', NULL, '1523422038', '$2y$12$GlDvfGSD9QGd6zPUKasOVO7en4gt3hnFRNI.I6el.040nOS9EftP2', 'mahasiswa', '', NULL, '2024-05-15 09:16:05', '2024-05-15 09:16:05'),
(115, 'Fadila Fanifia', '2022', NULL, '1523422039', '$2y$12$qPdeFjQZdlEdOFHHfEGEHeJE.B1mcYPTRUOkLaTc32Dxdxx9BO6rG', 'mahasiswa', '', NULL, '2024-05-15 09:16:05', '2024-05-15 09:16:05'),
(116, 'Muhamad Nur Fajar', '2022', NULL, '1523422040', '$2y$12$laRhHsGGVtbwzXGwVZIfyOCwwOT1sjqLNDoUH1zy71y.2cR.pfPwa', 'mahasiswa', '', NULL, '2024-05-15 09:16:05', '2024-05-15 09:16:05'),
(117, 'Alia Ingrid Pradina', '2022', NULL, '1523422041', '$2y$12$JuQiw8is5FXaboi0IioINeJGAOhPp76J2ocmOczmetw1x1aG8Hn.y', 'mahasiswa', '', NULL, '2024-05-15 09:16:06', '2024-05-15 09:16:06'),
(118, 'Bella Trisya Almira', '2022', NULL, '1523422042', '$2y$12$CMsKUt.rffvj1ZrnluwQdego/Ihd.h4A.OQTjY3.HuB7lUPaC4P0C', 'mahasiswa', '', NULL, '2024-05-15 09:16:06', '2024-05-15 09:16:06'),
(119, 'Miftahul Arzaq', '2022', NULL, '1523422043', '$2y$12$Oz6HpHgazXCJ7jvU052VXO1q1yfkDnCWFJAVwBW.J6Z5NdYFW1vfa', 'mahasiswa', '', NULL, '2024-05-15 09:16:06', '2024-05-15 09:16:06'),
(120, 'Natasya Putri Khalistia', '2022', NULL, '1523422044', '$2y$12$.6XNbohPc9HctsCbP8O.SOh.sDEfCq2p421khd/t92WXD9KxzGUJK', 'mahasiswa', '', NULL, '2024-05-15 09:16:06', '2024-05-15 09:16:06'),
(121, 'Leonardus Panggih Yudanto', '2022', NULL, '1523422045', '$2y$12$VVl5bjKYO3SP7jPMJyZru.PPtGWGIJYSziJWpna08i8Nst04Sq.Vi', 'mahasiswa', '', NULL, '2024-05-15 09:16:07', '2024-05-15 09:16:07'),
(122, 'Adam Fikri', '2022', NULL, '1523422046', '$2y$12$2D2CYd0aYZD4VC0IHTuAn.o4jSrRMAi7yuSdhOQzoecBhCu.egevW', 'mahasiswa', '', NULL, '2024-05-15 09:16:07', '2024-05-15 09:16:07'),
(123, 'Dewi Setianingsih', '2022', NULL, '1523422047', '$2y$12$qI.9.Yntf3gUz/ZOXvl3BOxnKA7Hten0wHUVtEN4qM.jrbXBk/7ge', 'mahasiswa', '', NULL, '2024-05-15 09:16:07', '2024-05-15 09:16:07'),
(124, 'Rifaldi Faturrahman', '2022', NULL, '1523422048', '$2y$12$vkscgEq1EJOign78j.4F5O.XHTxnh0UDPPOuYzyFD.97L0lJv75qq', 'mahasiswa', '', NULL, '2024-05-15 09:16:08', '2024-05-15 09:16:08'),
(125, 'Angga Dwi Ardiansyah', '2022', NULL, '1523422049', '$2y$12$QwnPYkUUejTrofpFf89LGeMMg2vt2tf1ytiPBrgHaEXyZabqo8DZq', 'mahasiswa', '', NULL, '2024-05-15 09:16:08', '2024-05-15 09:16:08'),
(126, 'Muhammad thoriq arkan', '2022', NULL, '1523422050', '$2y$12$Rl6X8ct9zHXTJxUDzg/tw..sBq0CVVtL8vgJTeGDSZ3m7phOg6Dka', 'mahasiswa', '', NULL, '2024-05-15 09:16:08', '2024-05-15 09:16:08'),
(127, 'Kaysar Wahyu Darmawan', '2022', NULL, '1523422051', '$2y$12$h9fUd.gjeT1bgRwcqgDX.umwlD1pgxO/iP3H0YUv9KChpo9ql6aGq', 'mahasiswa', '', NULL, '2024-05-15 09:16:08', '2024-05-15 09:16:08'),
(128, 'Naya Rahmauliya Syahputri', '2022', NULL, '1523422052', '$2y$12$vty532TnZKNJqBlLFott7eaxy.371ImF0gKBH3RFImWdApWG0hKy6', 'mahasiswa', '', NULL, '2024-05-15 09:16:09', '2024-05-15 09:16:09'),
(129, 'Muhammad Raihan Palevi', '2022', NULL, '1523422053', '$2y$12$RojTzkdR6f624j.vV1qEYO5ZrhMAmjt3nb5wajvdvYuymNcxlNCBm', 'mahasiswa', '', NULL, '2024-05-15 09:16:09', '2024-05-15 09:16:09'),
(130, 'Muhammad azzi rasha', '2022', NULL, '1523422054', '$2y$12$gFSd8s1AZDHUEjhGVgoMvemBsUErCahGgOcLDxPWRDDPrnNMQQ.U6', 'mahasiswa', '', NULL, '2024-05-15 09:16:09', '2024-05-15 09:16:09'),
(131, 'Dollar Ledgard Galaska', '2022', NULL, '1523422055', '$2y$12$adSPlfhVTcE65tKSKN9P.uKqHi.a2mDQFFQ0wMYEsmRyQ.eoglzQG', 'mahasiswa', '', NULL, '2024-05-15 09:16:10', '2024-05-15 09:16:10'),
(132, 'Tazkia Mutiara Dewanti', '2022', NULL, '1523422056', '$2y$12$j5lZAn361V8yqOxdSdQRaO61oLPrFhLC6HGG1AV8xlXtR/Ayg5McK', 'mahasiswa', '', NULL, '2024-05-15 09:16:10', '2024-05-15 09:16:10'),
(133, 'Christian Gomgom Nathanael Siallagan', '2022', NULL, '1523422057', '$2y$12$K5QGhEv.sKVSqYyQTOmeEuO7Xo5U6o2ZNtHN2ZAqgAr6UoiOjyOam', 'mahasiswa', '', NULL, '2024-05-15 09:16:10', '2024-05-15 09:16:10'),
(134, 'Duta Rizky Lawangga', '2022', NULL, '1523422058', '$2y$12$8cchZrua0JQZ65j.QQfC8.UNjBl8aedPALcPZuK.OE.ecZMOc7nza', 'mahasiswa', '', NULL, '2024-05-15 09:16:10', '2024-05-15 09:16:10'),
(135, 'Narul Hiqmal Fadzry', '2022', NULL, '1523422059', '$2y$12$suGe9iVHccCNw003ETB4bu/Fv7RcLH0SyxJ6l8rKLDf7zM6SvexlW', 'mahasiswa', '', NULL, '2024-05-15 09:16:11', '2024-05-15 09:16:11'),
(136, 'Muhammad Reza Alim Pratama', '2022', NULL, '1523422060', '$2y$12$IULw6E4SMXlnyuai1Y9V7ueLd43xWDbifuIwtg5flEbueROBAizMK', 'mahasiswa', '', NULL, '2024-05-15 09:16:11', '2024-05-15 09:16:11'),
(137, 'Muhammad Saddam Widodo', '2022', NULL, '1523422061', '$2y$12$gTO2upwA8DjSzJZgM/6M/.x0dsj1toT6Py0VJfNb.TW/l1RHaUlam', 'mahasiswa', '', NULL, '2024-05-15 09:16:11', '2024-05-15 09:16:11'),
(138, 'Ilham Wiyata Dewandana', '2022', NULL, '1523422062', '$2y$12$YrcETY6FGKP1zEGvqz67yecLEB9OVaVVCZUHwz/BgCX6/qTYZ0Nie', 'mahasiswa', '', NULL, '2024-05-15 09:16:11', '2024-05-15 09:16:11'),
(139, 'Dwi Wahyu Salsabila', '2022', NULL, '1523422063', '$2y$12$ANQfKuIrB5/Xq5AB5uAlcOL49ne0lkLGa673HQl2q3NELsJ6L7gjm', 'mahasiswa', '', NULL, '2024-05-15 09:16:12', '2024-05-15 09:16:12'),
(140, 'Lamro Benediktus', '2022', NULL, '1523422064', '$2y$12$jVB6CB6pkd.uTHNIReZjp.KZU.8dqrMXGpP0PqKe9/GO89mcRq6KC', 'mahasiswa', '', NULL, '2024-05-15 09:16:12', '2024-05-15 09:16:12'),
(141, 'Prima Junior Seven Manalu', '2023', NULL, '1523423001', '$2y$12$gWWz06RJpXO81sC461CpNO5TTBJf6JIzuMc6JtpBrpRRvB51BAkFq', 'mahasiswa', '', NULL, '2024-05-15 09:21:41', '2024-05-15 09:21:41'),
(142, 'Pradnya Paramitha', '2023', NULL, '1523423002', '$2y$12$P5G7638cGn.5kMfh8DvwDuLMBgK3ICgvSx2B1bNVlgJRGWsLC./qG', 'mahasiswa', '', NULL, '2024-05-15 09:21:41', '2024-05-15 09:21:41'),
(143, 'Inaayah Prada Banowati', '2023', NULL, '1523423003', '$2y$12$EamB9YwJv/wyCv8uyWpTKu6t373EGQxl16hfr6FbcCH3N3nqAsn3G', 'mahasiswa', '', NULL, '2024-05-15 09:21:41', '2024-05-15 09:21:41'),
(144, 'Reno Susetyo Bambang Nugroho', '2023', NULL, '1523423004', '$2y$12$ctenY3wJCsMuCBhE3gBK2uyIgUBk/5Eq/yApZVLnYem/XTY0Hd.rS', 'mahasiswa', '', NULL, '2024-05-15 09:21:42', '2024-05-15 09:21:42'),
(145, 'Vinka Lestari', '2023', NULL, '1523423005', '$2y$12$iwOZVYwvTejP71gdibW0YuVBXUdY74oo8SLBhLwxJ5Xfc4p7MmLW6', 'mahasiswa', '', NULL, '2024-05-15 09:21:42', '2024-05-15 09:21:42'),
(146, 'Talitha Evania', '2023', NULL, '1523423006', '$2y$12$l96zY9tErCQZfwlPtxnTJ.WUcq9QHaCr6RiO1d0LNgGyx7Jy..lBG', 'mahasiswa', '', NULL, '2024-05-15 09:21:42', '2024-05-15 09:21:42'),
(147, 'Fitri Amalia', '2023', NULL, '1523423007', '$2y$12$jaU.MuL8RtsrGAeCYfVVL..8RtTLxxqjrmfzu0ahfcVQ0FAp.rjYS', 'mahasiswa', '', NULL, '2024-05-15 09:21:43', '2024-05-15 09:21:43'),
(148, 'Abel Jackson Revano', '2023', NULL, '1523423008', '$2y$12$YNHULuyJEd4Lf3wtAT5K3.GxhukjZut8ePasPkCeVoUB0F7CzLbcC', 'mahasiswa', '', NULL, '2024-05-15 09:21:43', '2024-05-15 09:21:43'),
(149, 'Rendy Siddiq', '2023', NULL, '1523423009', '$2y$12$kYr6H6mTeICijvu7YCW1OuonpwiHv.MP3DCNX0cyy2cWBIHsxTIye', 'mahasiswa', '', NULL, '2024-05-15 09:21:43', '2024-05-15 09:21:43'),
(150, 'Raisya Kanahaya Achmad', '2023', NULL, '1523423010', '$2y$12$CTo/yh2AEt.Fx2w69wp06uj9yeOtFGY8fV4rpUEoOo4xetNPNRbaq', 'mahasiswa', '', NULL, '2024-05-15 09:21:43', '2024-05-15 09:21:43'),
(151, 'Suparsa Briliantara', '2023', NULL, '1523423011', '$2y$12$Hl.9vmvxrrF.16bON8Mhz.XlT3Ii4PDixEuoPpYQbcsPUtdBkp.rW', 'mahasiswa', '', NULL, '2024-05-15 09:21:44', '2024-05-15 09:21:44'),
(152, 'Rizki Kurnia Rohman', '2023', NULL, '1523423012', '$2y$12$QvkF/h04i8T769KGtkm9PenoLFhHzEMzHupxR2whpL8Heae0d7iF.', 'mahasiswa', '', NULL, '2024-05-15 09:21:44', '2024-05-15 09:21:44'),
(153, 'Eky Setiawati', '2023', NULL, '1523423013', '$2y$12$Wt9PP8M2ue1hNdsh2JHHK.gTbeKXlypdw6AfIk4UtuZKm3qYKFI/e', 'mahasiswa', '', NULL, '2024-05-15 09:21:44', '2024-05-15 09:21:44'),
(154, 'Destia Widya Putri', '2023', NULL, '1523423014', '$2y$12$QhEpSax6J1wSAkTu0wfzJO.9ewAKy7wsHyXt39HLficWNYxdM5t9u', 'mahasiswa', '', NULL, '2024-05-15 09:21:45', '2024-05-15 09:21:45'),
(155, 'Kayla Azizia Patricia Litiloli', '2023', NULL, '1523423015', '$2y$12$OA0Y6ik6U4.rW.EbdJ7qCOCSugWnuXYmkfpkF5WS/TVCkvCniaM.K', 'mahasiswa', '', NULL, '2024-05-15 09:21:45', '2024-05-15 09:21:45'),
(156, 'Elsha Angelita', '2023', NULL, '1523423016', '$2y$12$0Cy2Zg1ueOUT6qS2AcSXAOsZ2YgkNX26Kwneg7yLD7agztvx7y6km', 'mahasiswa', '', NULL, '2024-05-15 09:21:45', '2024-05-15 09:21:45'),
(157, 'Ararya Athaya Wicaksana', '2023', NULL, '1523423017', '$2y$12$Hvxq/yDfCWJxUVrH6zKvlOwEouAdFKAmU0R0NEvNGFibXK10rARpS', 'mahasiswa', '', NULL, '2024-05-15 09:21:46', '2024-05-15 09:21:46'),
(158, 'Raudhah Nur Azizah', '2023', NULL, '1523423018', '$2y$12$rOQoeokYkMVjOpZdhY7Mu.yUmnFw51l/FWRPMTCfjCoAwPQGmkhvm', 'mahasiswa', '', NULL, '2024-05-15 09:21:46', '2024-05-15 09:21:46'),
(159, 'Asti Artika Putri', '2023', NULL, '1523423019', '$2y$12$HrMforwcb64QazWM4UwEOuiLBzl5vMqH6DGEUtR8m4QW7v5wfJAbm', 'mahasiswa', '', NULL, '2024-05-15 09:21:46', '2024-05-15 09:21:46'),
(160, 'Aulia Rofika Dewi', '2023', NULL, '1523423020', '$2y$12$ZAMkRQ.kUZKrRnElHX/Dxu3Zko57gD603e0h/lr5WlI8RsMlytLZy', 'mahasiswa', '', NULL, '2024-05-15 09:21:46', '2024-05-15 09:21:46'),
(161, 'Adela Netania Sihotang', '2023', NULL, '1523423021', '$2y$12$dV3uv3V3YgOMu3FrmMErLuF29ALu/T5SanNvCChXLo7z0p79Rl.7q', 'mahasiswa', '', NULL, '2024-05-15 09:21:47', '2024-05-15 09:21:47'),
(162, 'Muhammad Rendy Kurniawan', '2023', NULL, '1523423022', '$2y$12$e1wiKkgBkjsM/3z0oHEg1.fpei7IA/XrvfjjOyvNVgPGXCXiO8.uK', 'mahasiswa', '', NULL, '2024-05-15 09:21:47', '2024-05-15 09:21:47'),
(163, 'Muhammad Riva\'i', '2023', NULL, '1523423023', '$2y$12$QU2.zDkb6xH.TxFCFUiFxea7TL3gVJ6BFFcrAjTpAm3lPHCAu2nB.', 'mahasiswa', '', NULL, '2024-05-15 09:21:47', '2024-05-15 09:21:47'),
(164, 'Dya Anggun Yunita Arifin', '2023', NULL, '1523423024', '$2y$12$g1VM8Ig7RDf5g8WUZrPZ/u77yc87fzIsfWUf9blHWTiMyXu5hYIJO', 'mahasiswa', '', NULL, '2024-05-15 09:21:48', '2024-05-15 09:21:48'),
(165, 'Radityo Farrelyno', '2023', NULL, '1523423025', '$2y$12$PEjzsCyBiRlZU/p73jLbOuditOTXNXoqrWKJUFg/gwFExk2v9JSjO', 'mahasiswa', '', NULL, '2024-05-15 09:21:48', '2024-05-15 09:21:48'),
(166, 'Garneza Asqar Fauzi', '2023', NULL, '1523423026', '$2y$12$6eMfdMVRmKKTrFiGoPuEte8f91Y3Jff/Ob5upKoqlA3R9kZZKsPDC', 'mahasiswa', '', NULL, '2024-05-15 09:21:48', '2024-05-15 09:21:48'),
(167, 'Ichlasul Amal', '2023', NULL, '1523423027', '$2y$12$lvPhbuZ/8LjaYqoDmnKA3OEL7wFjwUinbEso2qgEtIDs3lpoVueP2', 'mahasiswa', '', NULL, '2024-05-15 09:21:49', '2024-05-15 09:21:49'),
(168, 'Asha Ayu Valmaida', '2023', NULL, '1523423028', '$2y$12$FRL4XbfkuoI0va8lYip2zuh7lwFR/J/HMTNiKqFbHEErwPNsF.koy', 'mahasiswa', '', NULL, '2024-05-15 09:21:49', '2024-05-15 09:21:49'),
(169, 'Ahmad Fauzan Thahir', '2023', NULL, '1523423029', '$2y$12$KlEL3YtxvRMjyaTaAfrFWuPj6UxkTbdayEUxqku65l8OPiJd0oP4O', 'mahasiswa', '', NULL, '2024-05-15 09:21:49', '2024-05-15 09:21:49'),
(170, 'Yoseva Ilona Viska', '2023', NULL, '1523423030', '$2y$12$8MjUvBZ01BOb3D3XT/iJIu2WyNKIGgBeC/8kuuGpFOM9WTnRB/HAm', 'mahasiswa', '', NULL, '2024-05-15 09:21:50', '2024-05-15 09:21:50'),
(171, 'Awwal Ghaniy Putra Siswanto', '2023', NULL, '1523423031', '$2y$12$fwNAdSIPkcMS6yA4LZaUzO3VxgRSz1wHRhYgNLq99LZePt6Sfzt7y', 'mahasiswa', '', NULL, '2024-05-15 09:21:50', '2024-05-15 09:21:50'),
(172, 'Matthew Natanael Riung', '2023', NULL, '1523423032', '$2y$12$De20SXBtYdrBwOFxqKJutO1CWnvh/0JMnuTjCf.hVnEi0bNc3gBpG', 'mahasiswa', '', NULL, '2024-05-15 09:21:51', '2024-05-15 09:21:51'),
(173, 'Irma Damayanti', '2023', NULL, '1523423033', '$2y$12$k1dH3vC5iTgjwDmCU9O7Me2DrELLGWTaInNowMIln0Nkd.RXjizcK', 'mahasiswa', '', NULL, '2024-05-15 09:21:51', '2024-05-15 09:21:51'),
(174, 'Azfairul Mudzaqy', '2023', NULL, '1523423034', '$2y$12$.9Vi4Bx6jdLARmVN1wP0duqHWcXYqvzQ/u3IDU34dB4ZOs2g7JKoW', 'mahasiswa', '', NULL, '2024-05-15 09:21:51', '2024-05-15 09:21:51'),
(175, 'Bilmark Nicolas Sidabutar', '2023', NULL, '1523423035', '$2y$12$NXiKlmc.IXewhegGiWOT5.nrGKReKHzADIY2TdBTAroogZEe5HLgW', 'mahasiswa', '', NULL, '2024-05-15 09:21:52', '2024-05-15 09:21:52'),
(176, 'Siti Ballis Nihayatuzzain', '2023', NULL, '1523423036', '$2y$12$rWIq38P23lIhRtPF9MyFmeVZCh78qLWS16VREVm54aDu8XG2jYjGK', 'mahasiswa', '', NULL, '2024-05-15 09:21:52', '2024-05-15 09:21:52'),
(177, 'Audy Adriani', '2023', NULL, '1523423037', '$2y$12$em3rzPvuAS9w63tmhrNC0u3/1Kc.6hIWYL6tIsKcyNQEZkEZwIL9S', 'mahasiswa', '', NULL, '2024-05-15 09:21:52', '2024-05-15 09:21:52'),
(178, 'Dita Salsabilla Putri', '2023', NULL, '1523423038', '$2y$12$76sQKLSEUqzSM2jNRqW3nOrp1JpMf5eJMir.Pt.x3eyFOumKsnXOC', 'mahasiswa', '', NULL, '2024-05-15 09:21:53', '2024-05-15 09:21:53'),
(179, 'Muhammad Rajesh Siddiq', '2023', NULL, '1523423039', '$2y$12$YOKNZEthseQ7Hrf.i8SEJOGF8S0qiQjcVqbyBh1y4rV3TNVS5HQ46', 'mahasiswa', '', NULL, '2024-05-15 09:21:53', '2024-05-15 09:21:53'),
(180, 'Muhammad Rafi Albani', '2023', NULL, '1523423040', '$2y$12$.VHanMDh29QyjP1XCsL0HeTAIFCW8JY8KXP70sontfFfIM5u/cEeu', 'mahasiswa', '', NULL, '2024-05-15 09:21:53', '2024-05-15 09:21:53'),
(181, 'Muhammad Farhan', '2023', NULL, '1523423041', '$2y$12$VhbhiT09DRySY.P.8xX1pOf1QvJYck.Kx9mBXB5.UgUUPz81fT0ke', 'mahasiswa', '', NULL, '2024-05-15 09:21:54', '2024-05-15 09:21:54'),
(182, 'Veryna Dewi Handayani', '2023', NULL, '1523423042', '$2y$12$cEWYn8FFd3VOnAOpJdUFtOd0EYntfr9.4CdDjHHjAi4XD9sDZ3gbq', 'mahasiswa', '', NULL, '2024-05-15 09:21:54', '2024-05-15 09:21:54'),
(183, 'Dinda Citra Azzahra', '2023', NULL, '1523423043', '$2y$12$dbcq9cXRkpbgnxLDfWdcZe/L4.6dHAySqCt30JyqvrBHd..fBrm6C', 'mahasiswa', '', NULL, '2024-05-15 09:21:54', '2024-05-15 09:21:54'),
(184, 'Shafa Az Zahra Diantra', '2023', NULL, '1523423044', '$2y$12$CrkDtDX5Xegolky6pDgwGu1YZl8hg9TR8Ys5sUwNugjxCxfEwmR1i', 'mahasiswa', '', NULL, '2024-05-15 09:21:55', '2024-05-15 09:21:55'),
(185, 'Baghas Luis Shaputra', '2023', NULL, '1523423045', '$2y$12$2A6btYX9VAtL4.CB9TwnZ.vz9Qd9N.1Zj.bR8E5o9n41YiYrJnvsK', 'mahasiswa', '', NULL, '2024-05-15 09:21:55', '2024-05-15 09:21:55'),
(186, 'Muhammad Aditya Putra Hartanto', '2023', NULL, '1523423046', '$2y$12$8kPF9OD1ZfWM18XDthk6y.BPGTkz.kfrET8WrVfO/VPibYAeUGlt2', 'mahasiswa', '', NULL, '2024-05-15 09:21:55', '2024-05-15 09:21:55'),
(187, 'Fahrani Aulia Rahmi', '2023', NULL, '1523423047', '$2y$12$IBFWveJjqPTdp3uDaw1OyO6bEnjZkXNjExgZ.XExKUlgnaXj0hTg6', 'mahasiswa', '', NULL, '2024-05-15 09:21:55', '2024-05-15 09:21:55'),
(188, 'Mochamad Dimas Bagus Panji Astiko', '2023', NULL, '1523423048', '$2y$12$C0v3VUE54odJpHrC51A.AeiTttBjU8i9J.nWQxE6i3Hc.2BrbFiMS', 'mahasiswa', '', NULL, '2024-05-15 09:21:56', '2024-05-15 09:21:56'),
(189, 'Wenang Sajiwo Lihare', '2023', NULL, '1523423049', '$2y$12$bfzNwze1qFtGg7pCC2wg0OqUEdkGKPiHyQWlYSpf8SwV6xwCrhJvG', 'mahasiswa', '', NULL, '2024-05-15 09:21:56', '2024-05-15 09:21:56'),
(190, 'Muhamad Fauz Jahfal', '2023', NULL, '1523423050', '$2y$12$0AMHyxEHtdGzFYEUbdKHG.K3ytNrLRcUkAEbRlqKnCYB5vzERdyF.', 'mahasiswa', '', NULL, '2024-05-15 09:21:57', '2024-05-15 09:21:57'),
(191, 'Panca Adjie Pamungkas', '2023', NULL, '1523423051', '$2y$12$Uvd61bXfOFgNhnZ.Z84oVO6jT53oNFXNJl4P9qBbCcFdmlBRTwhea', 'mahasiswa', '', NULL, '2024-05-15 09:21:57', '2024-05-15 09:21:57'),
(192, 'Jonatan Steven Simamora', '2023', NULL, '1523423052', '$2y$12$ZxdUGHjNLftD8KQXkv.bCOWjpAtNMIqKgW0G7PbK6J8.5EZnv0hoe', 'mahasiswa', '', NULL, '2024-05-15 09:21:57', '2024-05-15 09:21:57'),
(193, 'Bugi Alifya', '2023', NULL, '1523423053', '$2y$12$.oUBDhbcSXMsZ6UKPeIV.uy71sxkCBC3blcdku6.zGwMWrEBv/tnG', 'mahasiswa', '', NULL, '2024-05-15 09:21:58', '2024-05-15 09:21:58'),
(194, 'Benedictus Rainhard Hamonangan', '2023', NULL, '1523423054', '$2y$12$3XbKMgBl4hup3Tx5Gv6XqeaAdWoQ9cwlLLJ.Y3gjeOjPDWmTo9er.', 'mahasiswa', '', NULL, '2024-05-15 09:21:58', '2024-05-15 09:21:58'),
(195, 'Anandito Varell Ekaputra Maghfirdy', '2023', NULL, '1523423055', '$2y$12$qEUzsTk4f5didOEJaWFTBO/dHF3JLj7tLTXvoqLdq6DZKWjWqxYme', 'mahasiswa', '', NULL, '2024-05-15 09:21:58', '2024-05-15 09:21:58'),
(196, 'Muhammad Raffi Fahrezi', '2023', NULL, '1523423056', '$2y$12$a7xk4IWZi1s6OnLihv6lNOYm1sYeH0O55s4LKPsfxEQh6lCgq04ia', 'mahasiswa', '', NULL, '2024-05-15 09:21:59', '2024-05-15 09:21:59'),
(197, 'Audrey Nabil Abhista', '2023', NULL, '1523423057', '$2y$12$8.fgYin.yekYq4z0gERi1.QWxKSOW5DsK7ML82J0gAY9gHgZTYsqq', 'mahasiswa', '', NULL, '2024-05-15 09:21:59', '2024-05-15 09:21:59'),
(198, 'Sabrina Ahmad', '2023', NULL, '1523423058', '$2y$12$pMtOMiXm1EfbBH.nNzq3c.P0SDt9tRgktiNf38dm9FO6c1pno9Y/q', 'mahasiswa', '', NULL, '2024-05-15 09:21:59', '2024-05-15 09:21:59'),
(199, 'Aura Salsabillah Dwi Clandestine', '2023', NULL, '1523423059', '$2y$12$owE01PdT5/.R.IiLWSyMHOUvAa955Wnn06/45Y.yLHcy73RdCmKYe', 'mahasiswa', '', NULL, '2024-05-15 09:22:00', '2024-05-15 09:22:00'),
(200, 'Devi Puspita Sari', '2023', NULL, '1523423060', '$2y$12$RzXfoDQmYUuz/cuI9do4j.06LzFNgH2NQL0S2xzHO2halFJMAv2Ju', 'mahasiswa', '', NULL, '2024-05-15 09:22:00', '2024-05-15 09:22:00'),
(201, 'Nabila Calista', '2023', NULL, '1523423061', '$2y$12$iYk7JwyzghcRsBItYyOt2erIhDaC62QmCiDXOrGaIFEmbbAsQSE3C', 'mahasiswa', '', NULL, '2024-05-15 09:22:01', '2024-05-15 09:22:01'),
(202, 'Chiara Zahra Maulani', '2023', NULL, '1523423062', '$2y$12$/s0o.lSsuC.XkoNDYkJYGuCR0Sa.YtU.11tK6W7RNOymezc9gZ6C.', 'mahasiswa', '', NULL, '2024-05-15 09:22:01', '2024-05-15 09:22:01'),
(203, 'Muhammad Naufal Mulya Pratama', '2023', NULL, '1523423063', '$2y$12$Gl7GnN4FoAxAxWMYGLZZm.Hz.Uds6HxCSixrKeOeNp45gm1fLC8J2', 'mahasiswa', '', NULL, '2024-05-15 09:22:01', '2024-05-15 09:22:01'),
(204, 'Dian Panca Rachmawati', '2023', NULL, '1523423064', '$2y$12$Y8gYvfaixKA0OyXyXjHaL.wJbvFz.h9nbPGGmAg4w5Oi8qOC3f5hW', 'mahasiswa', '', NULL, '2024-05-15 09:22:02', '2024-05-15 09:22:02'),
(205, 'Na\'il Javier Giwandew Febrian', '2023', NULL, '1523423065', '$2y$12$XPuAU8J2Nl2kLxiI7rmDDuCi4L24v.pHHjmqD8de0donp4iYwGRxS', 'mahasiswa', '', NULL, '2024-05-15 09:22:02', '2024-05-15 09:22:02'),
(214, 'Drs. Dadang Suyadi S., MS', '', 'dosen1@example.com', NULL, '$2y$12$qMi7XWJJp1/Fmc/rQuT.5u/K3OBPsCQK5VkefVDmEBWrUc1r4PWqa', 'dosen', '', NULL, '2024-05-15 10:11:36', '2024-05-15 10:11:36'),
(215, 'Ir. Tri Mulyono, MT', '', 'dosen2@example.com', NULL, '$2y$12$/3I9IoZLFTkA.nKSNUG6SeoTPrKLVOZ/x9.ROZE0XYmCr.GS.y0MK', 'dosen', '', NULL, '2024-05-15 10:11:36', '2024-05-15 10:11:36'),
(216, 'Dr. Ir. Sylvira Ananda Azwar, M.Sc', '', 'dosen3@example.com', NULL, '$2y$12$.sYTHY2F7Aq7YwrZ/vAvauRVa3M9xPkOY11tc22gIUOy3Nkg7rMaW', 'dosen', '', NULL, '2024-05-15 10:11:37', '2024-05-15 10:11:37'),
(217, 'Siti Sahara, S.Pd., M.Pd', '', 'dosen4@example.com', NULL, '$2y$12$A5wMXDLGnomYH4RtJUz4aOYneeG0typIvYVzSYyxO1z2Bt3SUY24W', 'dosen', '', NULL, '2024-05-15 10:11:37', '2024-05-15 10:11:37'),
(218, 'Kencana Verawati, S.S.T., M.M. Tr', '', 'dosen5@example.com', NULL, '$2y$12$aMTQTWcWRpugZb1q0VLiluu/h/YDx1ZJuLcWG/qA2WrrgiJt.DQcy', 'dosen', '', NULL, '2024-05-15 10:11:37', '2024-05-15 10:11:37'),
(219, 'Dr. Winoto Hadi, ST., MT', '', 'dosen6@example.com', NULL, '$2y$12$BJQ14QxZUIK0Pvm1F1A2..9quujrSn0to0Gkp6GTbX1Z8jLSwPGL.', 'dosen', '', NULL, '2024-05-15 10:11:38', '2024-05-15 10:11:38'),
(220, 'Prof. Dr. Henita Rahmayanti, M.Si', '', 'dosen7@example.com', NULL, '$2y$12$thp9WH0g585WBqYy5X6VTepxubFBLT/KU9t34hEBL4Fvhs29AhDVa', 'dosen', '', NULL, '2024-05-15 10:11:38', '2024-05-15 10:11:38'),
(221, 'Vivian Karim Ladesi, ST., MT', '', 'dosen8@example.com', NULL, '$2y$12$Hlyx5.cv0wyAouha.u5J7.Xb9QE0t.rEOUSW9qvIIf3h1LiENBL/i', 'dosen', '', NULL, '2024-05-15 10:11:38', '2024-05-15 10:11:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_link`
--
ALTER TABLE `list_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_pj`
--
ALTER TABLE `list_pj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nim_unique` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_link`
--
ALTER TABLE `list_link`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `list_pj`
--
ALTER TABLE `list_pj`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
