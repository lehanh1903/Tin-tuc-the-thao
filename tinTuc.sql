-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 04:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluans`
--

CREATE TABLE `binhluans` (
  `id` int(10) UNSIGNED NOT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaydang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_tintuc` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `binhluans`
--

INSERT INTO `binhluans` (`id`, `noidung`, `ngaydang`, `id_user`, `id_tintuc`, `created_at`, `updated_at`, `trangthai`) VALUES
(12, 'tuyet voi', '2022-06-10', 2, 84, '2022-06-10 06:59:01', '2022-06-12 09:30:03', 2),
(13, 'df', '2022-06-12', 2, 87, '2022-06-12 01:32:07', '2022-06-12 01:32:07', 1),
(14, 'đf', '2022-06-12', 2, 80, '2022-06-12 01:48:16', '2022-06-12 01:48:27', 2),
(15, 'hay', '2022-06-12', 1, 81, '2022-06-12 09:19:25', '2022-06-12 09:19:35', 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `chubien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`, `chubien`) VALUES
(14, 'BÓNG ĐÁ VIỆT NAM', 'bong-da-viet-nam', '2022-06-10 05:04:06', '2022-06-10 05:04:06', 2),
(15, 'BÓNG ĐÁ QUỐC TẾ', 'bong-da-quoc-te', '2022-06-10 05:04:25', '2022-06-10 05:04:25', 2),
(16, 'THỂ THAO', 'the-thao', '2022-06-10 05:04:37', '2022-06-10 05:04:37', 2),
(17, 'CHUYỂN NHƯỢNG', 'chuyen-nhuong', '2022-06-10 05:04:51', '2022-06-10 05:04:51', 2),
(18, 'ESPORTS', 'esports', '2022-06-10 05:05:14', '2022-06-10 05:05:14', 2),
(19, 'XE', 'xe', '2022-06-10 05:05:20', '2022-06-10 05:05:20', 2),
(20, 'VÕ', 'vo', '2022-06-10 05:05:26', '2022-06-10 05:05:26', 2),
(21, 'KHỎE VÀ ĐẸP', 'khoe-va-dep', '2022-06-10 05:05:45', '2022-06-10 05:05:45', 2);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `like` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_tintuc` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `like`, `id_user`, `id_tintuc`, `created_at`, `updated_at`) VALUES
(13, 1, 2, 80, '2022-06-12 00:33:24', '2022-06-12 00:33:24'),
(14, 1, 2, 87, '2022-06-12 01:31:57', '2022-06-12 01:31:57'),
(15, 1, 4, 82, '2022-06-12 03:59:43', '2022-06-12 03:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_28_130631_create_categories_table', 1),
(6, '2022_04_28_134857_create_permission_tables', 1),
(7, '2022_04_29_080906_create_properti_categories_table', 1),
(8, '2022_04_29_081106_create_tintucs_table', 1),
(9, '2022_05_03_011956_create_tintucs_table', 2),
(10, '2022_05_03_100857_create_binhluans_table', 3),
(11, '2022_05_03_104202_create_likes_table', 4),
(12, '2022_05_03_104422_create_likes_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properti_categories`
--

CREATE TABLE `properti_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properti_categories`
--

INSERT INTO `properti_categories` (`id`, `title`, `slug`, `id_category`, `created_at`, `updated_at`) VALUES
(103, 'Đội tuyển quốc gia', 'doi-tuyen-quoc-gia', 14, '2022-06-10 05:06:12', '2022-06-10 05:06:12'),
(104, 'Vòng loại World Cup 2022', 'vong-loai-world-cup-2022', 14, '2022-06-10 05:06:42', '2022-06-10 05:06:42'),
(105, 'U23 Đông Nam Á', 'u23-dong-nam-a', 14, '2022-06-10 05:07:01', '2022-06-10 05:07:01'),
(106, 'Bóng đá nữ', 'bong-da-nu', 14, '2022-06-10 05:07:11', '2022-06-10 05:07:11'),
(107, 'Sự kiện - Bình luận bóng đá', 'su-kien-binh-luan-bong-da', 14, '2022-06-10 05:07:29', '2022-06-10 05:07:29'),
(109, 'AFF cup 2021', 'aff-cup-2021', 14, '2022-06-10 05:07:57', '2022-06-10 05:07:57'),
(110, 'Bóng đá Anh', 'bong-da-anh', 15, '2022-06-10 06:31:17', '2022-06-10 06:31:17'),
(111, 'Bóng đá Tây Ban Nha', 'bong-da-tay-ban-nha', 15, '2022-06-10 06:31:31', '2022-06-10 06:31:31'),
(112, 'Bóng đá Ý', 'bong-da-y', 15, '2022-06-10 06:31:36', '2022-06-10 06:31:36'),
(113, 'Bóng đá Đức', 'bong-da-duc', 15, '2022-06-10 06:31:47', '2022-06-10 06:31:47'),
(114, 'Bóng đá Pháp', 'bong-da-phap', 15, '2022-06-10 06:31:52', '2022-06-10 06:31:52'),
(115, 'Cúp c1', 'cup-c1', 15, '2022-06-10 06:31:56', '2022-06-10 06:31:56'),
(116, 'World Cup 2022', 'world-cup-2022', 15, '2022-06-10 06:32:10', '2022-06-10 06:32:10'),
(117, 'Quần vợt', 'quan-vot', 16, '2022-06-10 06:41:54', '2022-06-10 06:41:54'),
(118, 'Goft', 'goft', 16, '2022-06-10 06:41:58', '2022-06-10 06:41:58'),
(119, 'Bóng Chuyền', 'bong-chuyen', 16, '2022-06-10 06:42:02', '2022-06-10 06:42:02'),
(120, 'Các môn khác', 'cac-mon-khac', 16, '2022-06-10 06:42:10', '2022-06-10 06:42:10'),
(121, 'Cầu thủ Việt Nam', 'cau-thu-viet-nam', 17, '2022-06-10 06:42:27', '2022-06-10 06:42:27'),
(122, 'Cầu thủ thế giới', 'cau-thu-the-gioi', 17, '2022-06-10 06:42:33', '2022-06-10 06:42:33'),
(123, 'Huấn luyện viên', 'huan-luyen-vien', 17, '2022-06-10 06:42:39', '2022-06-10 06:42:39'),
(124, 'Liên minh huyền thoại', 'lien-minh-huyen-thoai', 18, '2022-06-10 06:42:50', '2022-06-10 06:42:50'),
(125, 'Liên quân', 'lien-quan', 18, '2022-06-10 06:42:55', '2022-06-10 06:42:55'),
(126, 'valorant', 'valorant', 18, '2022-06-10 06:43:04', '2022-06-10 06:43:04'),
(127, 'Genshin impact', 'genshin-impact', 18, '2022-06-10 06:43:21', '2022-06-10 06:43:21'),
(128, 'PUBG', 'pubg', 18, '2022-06-10 06:43:30', '2022-06-10 06:43:30'),
(129, 'Kĩ thuật - tập luyện', 'ki-thuat-tap-luyen', 20, '2022-06-10 06:43:47', '2022-06-10 06:43:47'),
(130, 'Nhân vật - võ sĩ', 'nhan-vat-vo-si', 20, '2022-06-10 06:43:58', '2022-06-10 06:43:58'),
(131, 'Đua xe', 'dua-xe', 19, '2022-06-10 06:44:18', '2022-06-10 06:44:18'),
(132, 'Ô tô', 'o-to', 19, '2022-06-10 06:44:24', '2022-06-10 06:44:24'),
(133, 'Bảng giá xe', 'bang-gia-xe', 19, '2022-06-10 06:44:36', '2022-06-10 06:44:36'),
(134, 'Kinh nghiệm xe cộ', 'kinh-nghiem-xe-co', 19, '2022-06-10 06:44:46', '2022-06-10 06:44:46'),
(135, 'Tư vấn', 'tu-van', 19, '2022-06-10 06:44:56', '2022-06-10 06:44:56'),
(136, 'Yoga', 'yoga', 21, '2022-06-10 06:45:03', '2022-06-10 06:45:03'),
(137, 'Chạy bộ', 'chay-bo', 21, '2022-06-10 06:45:08', '2022-06-10 06:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', NULL, NULL),
(2, 'Người duyệt bài', 'web', '2022-05-02 04:52:07', '2022-05-02 04:52:07'),
(3, 'Người viết bài', 'web', '2022-05-02 04:52:39', '2022-05-02 04:52:39'),
(4, 'Chủ biên', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tintucs`
--

CREATE TABLE `tintucs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tacgia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayguibai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayduyet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `danhgia` int(11) NOT NULL DEFAULT 0,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 0,
  `id_properticategory` int(10) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tintucs`
--

INSERT INTO `tintucs` (`id`, `title`, `slug`, `tomtat`, `noidung`, `tacgia`, `ngayguibai`, `ngayduyet`, `luotxem`, `danhgia`, `tag`, `hinhanh`, `video`, `trangthai`, `id_properticategory`, `id_category`, `created_at`, `updated_at`) VALUES
(80, 'việt nam vô địch', 'viet-nam-vo-dich', 'ádasd', '<p>ádasd</p>', '3', '2022-06-10', '2022-06-10', 15, 0, 'Bóng đá việt nam', 'AAAABfewvEi2aEykXO1TtTxya-wkWxB1NJMmcty3w1vXdQ0MqeIigpjM6-hfjK5SF8krH8d-q8W-gByANazif6QoJdTMoOFq59.jpg', NULL, 1, 109, 14, '2022-06-10 06:37:23', '2022-06-12 18:17:41'),
(81, 'test', 'test', 'test', '<p>sdfasdfasdf</p>', '3', '2022-06-10', '2022-06-10', 7, 0, 'dsd', 'Rừng mộng mơ_ (15)96.jpg', NULL, 1, 114, 15, '2022-06-10 06:41:02', '2022-06-20 18:13:13'),
(82, 'test2', 'test2', 'test', '<p>ádasd</p>', '3', '2022-06-10', '2022-06-10', 8, 0, 'test', 'unnamed-file-14061.jpg', NULL, 1, 119, 16, '2022-06-10 06:46:22', '2022-06-12 03:59:43'),
(83, 'test3', 'test3', 'ád', '<p>ádasdasd</p>', '3', '2022-06-10', '2022-06-10', 4, 0, 'test', '109706728_2623878971212545_2898972693504696471_n96.png', 'https://www.youtube.com/watch?v=5qap5aO4i9A', 1, 122, 17, '2022-06-10 06:46:42', '2022-06-20 06:37:39'),
(84, 'test4', 'test4', 'test', '<p>zxvzxv</p>', '3', '2022-06-10', '2022-06-10', 6, 0, 'test', 'z2826478125307_1305742b28ec7a1c3ae089aee32822ff27.jpg', NULL, 1, 127, 18, '2022-06-10 06:47:02', '2022-06-12 09:30:03'),
(85, 'test5', 'test5', 'test', '<p>ádasd</p>', '3', '2022-06-10', '2022-06-24', 7, 0, 'test', 'HN34.png', NULL, 1, 134, 19, '2022-06-10 06:47:18', '2022-06-27 09:05:40'),
(87, 'test', 'test', 'ád', 'Song khoe', '3', '2022-06-12', '2022-06-12', 7, 0, 'test', '498bf0f1bd74278c3191eb44b5635c2245.png', 'https://zingnews.vn/video-canh-binh-si-ukraine-dau-hang-tai-phao-dai-cuoi-cung-o-mariupol-post1318589.html', 3, 137, 21, '2022-06-10 06:48:01', '2022-06-12 09:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vaitro` int(11) NOT NULL DEFAULT 5,
  `sodienthoai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `vaitro`, `sodienthoai`) VALUES
(1, 'Le Van Hanh', 'johnhanh2000@gmail.com', NULL, '$2y$10$7PobJJEYLleIRUiWnKB9eO70Q52.Y2H8LQ3Vsh9D0qMFDN5E7Y32W', NULL, '2022-05-02 04:46:07', '2022-05-02 04:46:07', 0, 0),
(2, 'Người duyệt bài', 'nguoiduyetbai@gmail.com', NULL, '$2y$10$8AX95HvFBIk81jfM/RuVAOT6eKJ3YB9Zp.t5gFq.xVkna6KIiFX1y', 'MyqrwAxcJe0sBLcTxLS4S4Egk7mtAK0GToD1ihez4qd0fIuoT6XrcsYXgRog', '2022-05-02 04:53:38', '2022-05-02 04:53:38', 1, 986758477),
(3, 'Người viết bài', 'nguoivietbai@gmail.com', NULL, '$2y$10$ZV0Lt3mbRQSi2k5Q.c0mqeXEFrx1hG89wthnPcsfOybE.dldeEqBS', 'WuiZgra9GQ7ilbvANSvHLbQ9obMALr43ArvDD93cexj3hykU0RFjo9lproYr', '2022-05-02 04:54:11', '2022-05-02 04:54:11', 2, 879688765),
(4, 'Chủ biên', 'chubien@gmail.com', NULL, '$2y$10$brsX9eMxmrQFMDoBGzytMeMihWW7wjNnsnpNOMW2oP5i9pYyZmRRC', NULL, '2022-05-03 05:45:16', '2022-05-03 05:45:16', 3, 957688574),
(5, 'Lâm Thùy Linh', 'ltlinh@gmail.com', NULL, '$2y$10$/TYHOHXvRBcqMOGHGClXdegLyOxToogYnFSxu17YyJMOcqq7bohde', NULL, '2022-05-03 06:38:35', '2022-05-03 06:38:35', 2, 957466483),
(6, 'Nguyễn Thị Nhiều', 'ntnhieu@gmail.com', NULL, '$2y$10$G4lnqFFFIm3lXlxyjTRbY.bWERIH7BZBtqFHVCdDz17nh6p6tRBku', NULL, '2022-05-03 06:42:08', '2022-05-03 06:55:41', 5, 123),
(7, 'Trần Ngọc Thái Nguyên', 'tntn@gmail.com', NULL, '$2y$10$lJdrL90r7212fMd0UEDjh.CwrjldIwXC.agvS/69MyvRHMZcyMwQ.', NULL, '2022-05-10 07:07:36', '2022-05-10 07:07:36', 2, 987675876),
(8, 'Lê Hiền Dương', 'lhd@gmail.com', NULL, '$2y$10$qHOzkD9E7.y/4M8XmzRbzesLuXYfKJ1wd.bRA16mz8FowWGfCeLZ6', NULL, '2022-05-10 07:10:39', '2022-05-10 07:10:39', 1, 768577364);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluans`
--
ALTER TABLE `binhluans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluans_id_tintuc_foreign` (`id_tintuc`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_id_tintuc_foreign` (`id_tintuc`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properti_categories`
--
ALTER TABLE `properti_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properti_categories_id_category_foreign` (`id_category`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `tintucs`
--
ALTER TABLE `tintucs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintucs_id_properticategory_foreign` (`id_properticategory`),
  ADD KEY `tintucs_id_category_foreign` (`id_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluans`
--
ALTER TABLE `binhluans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properti_categories`
--
ALTER TABLE `properti_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tintucs`
--
ALTER TABLE `tintucs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluans`
--
ALTER TABLE `binhluans`
  ADD CONSTRAINT `binhluans_id_tintuc_foreign` FOREIGN KEY (`id_tintuc`) REFERENCES `tintucs` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_id_tintuc_foreign` FOREIGN KEY (`id_tintuc`) REFERENCES `tintucs` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `properti_categories`
--
ALTER TABLE `properti_categories`
  ADD CONSTRAINT `properti_categories_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tintucs`
--
ALTER TABLE `tintucs`
  ADD CONSTRAINT `tintucs_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `tintucs_id_properticategory_foreign` FOREIGN KEY (`id_properticategory`) REFERENCES `properti_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
