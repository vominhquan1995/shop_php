-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2017 at 07:15 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_it`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `prarent_id` int(11) NOT NULL,
  `keyworks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `alias`, `order`, `prarent_id`, `keyworks`, `discription`, `created_at`, `updated_at`) VALUES
(4, 'Ram', 'ram', 0, 0, 'Ram', 'Ram', '2016-02-03 22:53:36', '2017-03-20 17:32:56'),
(5, 'Mitsubisi', 'mitsubisi', 1, 6, 'Mitsubisi', 'Mitsubisi', '2016-02-03 22:53:55', '2017-03-20 17:38:22'),
(6, 'Chuột', 'chuot', 0, 0, 'Chuột', 'Chuột', '2016-02-03 22:54:24', '2017-03-20 17:32:09'),
(7, 'Keyboard', 'keyboard', 0, 0, 'Keyboard', 'Keyboard', '2016-02-03 22:54:37', '2017-03-20 17:31:27'),
(8, 'Dell', 'dell', 2, 10, 'Dell', 'Dell', '2016-02-03 22:55:06', '2017-03-20 17:35:44'),
(9, 'Intel', 'intel', 2, 13, 'Intel', 'Intel', '2016-02-03 23:31:46', '2017-03-20 17:36:21'),
(10, 'Desktop', 'desktop', 0, 0, 'Desktop', 'Desktop', '2016-02-03 23:32:09', '2017-03-20 17:30:19'),
(11, 'Asus', 'asus', 1, 13, 'Asus', 'Asus', '2016-02-03 23:32:26', '2017-03-20 17:33:48'),
(12, 'Sound', 'sound', 0, 0, 'Sound', 'Sound', '2016-02-04 02:02:25', '2017-03-21 22:42:08'),
(13, 'Mainboard', 'mainboard', 0, 0, 'Mainboard', 'Mainboard', '2016-08-05 01:49:50', '2017-03-20 17:28:41'),
(14, 'Apple', 'apple', 1, 7, 'Apple', 'Apple', '2017-03-21 22:23:58', '2017-03-21 22:24:08'),
(15, 'Anker', 'anker', 2, 7, 'Anker', 'Anker', '2017-03-21 22:24:27', '2017-03-21 22:24:27'),
(16, 'DDR3', 'ddr3', 1, 4, 'DDR3', 'DDR3', '2017-03-21 22:33:04', '2017-03-21 22:33:04'),
(17, 'Loa di động', 'loa-di-dong', 1, 12, 'Loa di động', 'Loa di động', '2017-03-21 22:43:15', '2017-03-21 22:43:15'),
(18, 'Tai nghe', 'tai-nghe', 2, 12, 'Tai nghe', 'Tai nghe', '2017-03-21 22:43:32', '2017-03-21 22:43:32'),
(19, 'Loa gia đình', 'loa-gia-dinh', 3, 12, 'Loa gia đình', 'Loa gia đình', '2017-03-21 22:44:00', '2017-03-21 22:44:00'),
(20, 'DDR2', 'ddr2', 2, 4, 'DDR2', 'DDR2', '2017-03-21 22:50:38', '2017-03-21 22:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadons`
--

CREATE TABLE `chitiethoadons` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_hoadon` int(10) UNSIGNED NOT NULL,
  `id_sanpham` int(10) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `giasp` int(11) NOT NULL,
  `tong_giasp` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiethoadons`
--

INSERT INTO `chitiethoadons` (`id`, `id_hoadon`, `id_sanpham`, `soluong`, `giasp`, `tong_giasp`, `created_at`, `updated_at`) VALUES
(8, 7, 24, 2, 90000, 180000, '2016-02-07 18:12:13', '2016-02-07 18:12:13'),
(9, 7, 17, 1, 55000, 55000, '2016-02-07 18:12:13', '2016-02-07 18:12:13'),
(10, 7, 15, 3, 30000, 90000, '2016-02-07 18:12:13', '2016-02-07 18:12:13'),
(11, 8, 15, 1, 30000, 30000, '2016-02-07 18:48:50', '2016-02-07 18:48:50'),
(22, 14, 24, 3, 90000, 270000, '2016-02-08 03:03:21', '2016-02-08 03:03:21'),
(23, 15, 23, 2, 4500, 9000, '2016-08-12 07:21:26', '2016-08-12 07:21:26'),
(24, 16, 23, 2, 4500, 9000, '2016-08-12 07:24:15', '2016-08-12 07:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `content`, `created_at`, `updated_at`) VALUES
(8, 'HOang Ty', '12313@gmail.com', 'chào bạn!! hihi\nminh muốn mua sản phẩm áo thun thì phải làm sao', '2016-02-08 02:43:21', '2016-02-08 02:43:21'),
(9, 'HOang', 'hoagnty1403@gmail.com', 'hiv cxvcv vcxvxcvcxvxvxvxcxcvxcvxcvxcvcxvxcvcxv', '2016-02-09 18:23:05', '2016-02-09 18:23:05'),
(10, 'Loc', 'teo@gmail.com', '<script type="text/javascript">window.location = ''http:://vlxx.com'';</script>', '2016-02-12 18:17:58', '2016-02-12 18:17:58'),
(11, 'aaa', 'loc.pnv@gmail.com', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2016-08-12 07:32:08', '2016-08-12 07:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `danhgias`
--

CREATE TABLE `danhgias` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `numberstar` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhgias`
--

INSERT INTO `danhgias` (`id`, `name`, `email`, `content`, `numberstar`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 'hoang ty', 'hoagnty1403@gmail.com', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 5, 15, '2016-02-08 18:22:28', '2016-02-08 18:22:28'),
(8, 'loc', 'teo@gmail.com', '&amp;lt;script type=&amp;quot;text/javascript&amp;quot;&amp;gt;window.location = ''http:/vlxx.com'';&amp;lt;/script&amp;gt;', 5, 26, '2016-02-12 18:24:20', '2016-02-12 18:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `hoadons`
--

CREATE TABLE `hoadons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `addreass` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadons`
--

INSERT INTO `hoadons` (`id`, `name`, `email`, `phone`, `addreass`, `status`, `total_qty`, `total_price`, `created_at`, `updated_at`) VALUES
(7, 'HOang TY', '123@gmail.com', '01688912317', 'Le duẩn', 0, 6, 325000, '2016-02-07 18:12:13', '2016-02-09 04:50:51'),
(8, 'HOang Ty', 'Hoangty1403@gmail.com', '0688912317', 'đống đa', 1, 2, 69000, '2016-02-07 18:48:50', '2016-02-09 04:50:52'),
(14, 'loc', 'locnb.pnvc@gmail.com', '01688912317', 'Đống đa', 1, 5, 348000, '2016-02-08 03:03:21', '2016-02-09 04:50:48'),
(15, 'LOL', 'locnb@gmail.com', '01214057905', 'DĐ', 0, 2, 9000, '2016-08-12 07:21:26', '2016-08-12 07:21:26'),
(16, 'LOL', 'locnb@gmail.com', '01214057905', 'DĐ', 0, 2, 9000, '2016-08-12 07:24:15', '2016-08-12 07:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_01_31_144139_create_categories_table', 1),
('2015_08_12_034038_create_products_table', 2),
('2015_08_12_035337_create_product_images_table', 3),
('2016_02_01_142308_create_danhgias_table', 3),
('2016_02_07_070516_create_hoadons_table', 4),
('2016_02_07_070856_create_chitiethoadons_table', 5),
('2016_02_08_081735_create_contacts_table', 6),
('2016_02_09_014105_create_tintucs_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `pricesale` int(11) NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywork` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `price`, `pricesale`, `intro`, `content`, `image`, `keywork`, `discription`, `user_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(15, 'Ram DDR2 Samsung_Kingston_Hynix 2gb - Ram laptop 2gb - DDR22gb', 'ram-ddr2-samsung-kingston-hynix-2gb-ram-laptop-2gb-ddr22gb', 500000, 450000, '<p style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	<span style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; font-size: 14pt;">Ram DDR2 Samsung_Kingston_Hynix 2gb</span></p>\r\n<p style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	D&ugrave;ng cho loại m&aacute;y: Tất cả</p>\r\n<p style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	Loại ram:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DDR2</p>\r\n<p style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	Dung lượng:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2GB</p>\r\n<p style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	Bus:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 667 - 800Mhz</p>\r\n', '<p>\r\n	<img alt="Ram Laptop 2Gb-DDR2 Samsung. 1" src="https://media3.scdn.vn/img2/2016/9_12/ram-laptop-2gb-ddr2-samsung-1m4G3-lFjsBa_simg_d0daf0_800x1200_max.jpg" style="border: 0px;" /></p>\r\n<p>\r\n	<br />\r\n	<img alt="Ram Laptop 2Gb-DDR2 Samsung. 2" src="https://media3.scdn.vn/img2/2016/9_12/ram-laptop-2gb-ddr2-samsung-1m4G3-VWGWHU_simg_d0daf0_800x1200_max.png" style="border:0px;" /><br />\r\n	<br />\r\n	<img alt="Ram Laptop 2Gb-DDR2 Samsung. 3" src="https://media3.scdn.vn/img2/2016/9_12/ram-laptop-2gb-ddr2-samsung-1m4G3-uSnDNr_simg_d0daf0_800x1200_max.jpg" style="border:0px;" /><br />\r\n	<br />\r\n	&nbsp;</p>\r\n<table style="width:719px;">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2" style="width:574px;height:20px;">\r\n				<p>\r\n					M&ocirc; tả chi tiết</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:131px;height:24px;">\r\n				<p>\r\n					Thương hiệu</p>\r\n			</td>\r\n			<td style="width:443px;height:24px;">\r\n				<p>\r\n					Samsung.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:131px;height:23px;">\r\n				<p>\r\n					Chủng loại</p>\r\n			</td>\r\n			<td style="width:443px;height:23px;">\r\n				<p>\r\n					DDR2 Laptop</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:131px;height:25px;">\r\n				<p>\r\n					Dung lượng</p>\r\n			</td>\r\n			<td style="width:443px;height:25px;">\r\n				<p>\r\n					2GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:131px;height:33px;">\r\n				<p>\r\n					Kiểu RAM</p>\r\n			</td>\r\n			<td style="width:443px;height:33px;">\r\n				<p>\r\n					DDR2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:131px;height:23px;">\r\n				<p>\r\n					Bus hỗ trợ</p>\r\n			</td>\r\n			<td style="width:443px;height:23px;">\r\n				<p>\r\n					533/ 667/ 800Mhz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:131px;height:24px;">\r\n				<p>\r\n					Độ trễ</p>\r\n			</td>\r\n			<td style="width:443px;height:24px;">\r\n				<p>\r\n					11-11-11</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:131px;height:33px;">\r\n				<p>\r\n					Tản nhiệt</p>\r\n			</td>\r\n			<td style="width:443px;height:33px;">\r\n				<p>\r\n					Kh&ocirc;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:131px;height:27px;">\r\n				<p>\r\n					Điện &aacute;p</p>\r\n			</td>\r\n			<td style="width:443px;height:27px;">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', '52.jpg', 'Ram DDR2 Samsung_Kingston', 'Ram DDR2 Samsung_Kingston', 2, 20, '2016-02-03 23:57:03', '2017-03-21 22:55:16'),
(17, 'Tai nghe cao cấp WangMing WM9300 âm thanh 7.1 có rung (Đen)  ', 'tai-nghe-cao-cap-wangming-wm9300-am-thanh-71-co-rung-den', 400000, 350000, '<ul class="prd-attributesList ui-listBulleted js-short-description" style="margin: 0px; padding-right: 0px; padding-left: 0px; list-style-position: initial; list-style-image: initial; column-count: 2; color: rgb(58, 67, 70); font-family: Helvetica, Arial, sans-serif;">\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Thiết kế đẹp &ocirc;m trọn đầu gi&uacute;p cố định tai v&agrave; kh&ocirc;ng x&ecirc; dịch khi sử dụng.</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">D&acirc;y cao su d&agrave;y chống nhiễu giao tiếp USB (lấy nguồn led &acirc;m thanh rung)</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Hệ thống Led 7 m&agrave;u tự biến đổi tr&aacute;nh cảm gi&aacute;c nh&agrave;m ch&aacute;n về Led</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Kiểu D&aacute;ng Phong C&aacute;ch &Acirc;m thanh 7.1 cực đỉnh Rất độc lạ</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Tai nghe bọc nhựa cao cấp tạo cảm gi&aacute;c &ecirc;m tai khi đeo thời gian d&agrave;i &ocirc;m s&aacute;t tai gi&uacute;p c&aacute;ch &acirc;m cực tốt.</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Chế độ rung theo bass c&oacute; thế tắt mở</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Mic si&ecirc;u nhỏ lọc &acirc;m giảm tiếng ồn gi&uacute;p Voice chat trở n&ecirc;n ho&agrave;n hảo</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Bảo h&agrave;nh v&agrave;ng 1 đổi 1 trong v&ograve;ng 30 ng&agrave;y</span></li>\r\n</ul>\r\n', '<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<span style="margin: 0px; padding: 0px; font-weight: 700;">ai Nghe WangMing WM9300 &acirc;m thanh 7.1 c&oacute; chế độ rung theo bass, LED đổi m&agrave;u, giao tiếp USB</span><br style="margin: 0px; padding: 0px;" />\r\n	<br style="margin: 0px; padding: 0px;" />\r\n	<img alt="image" class="productlazyimage" data-original="https://img.alicdn.com/imgextra/i2/1894791126/TB2OOygtpXXXXbSXXXXXXXXXXXX_!!1894791126.jpg" src="https://img.alicdn.com/imgextra/i2/1894791126/TB2OOygtpXXXXbSXXXXXXXXXXXX_!!1894791126.jpg" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; height: auto; color: rgb(0, 0, 0); font-family: tahoma, arial, &quot;Hiragino Sans GB&quot;, sans-serif; font-size: 14px; display: inline;" /><br style="margin: 0px; padding: 0px;" />\r\n	<br style="margin: 0px; padding: 0px;" />\r\n	- Thiết kề đẹp &ocirc;m trọn đầu , gi&uacute;p cố định tai v&agrave; kh&ocirc;ng x&ecirc; dịch khi sử dụng.<br style="margin: 0px; padding: 0px;" />\r\n	- D&acirc;y cao su d&agrave;y, chống nhiễu, giao tiếp USB (lấy nguồn led + &acirc;m thanh + rung).<br style="margin: 0px; padding: 0px;" />\r\n	- Hệ thống Led 7 m&agrave;u tự biến đổi, tr&aacute;nh cảm gi&aacute;c nh&agrave;m ch&aacute;n về Led.<br style="margin: 0px; padding: 0px;" />\r\n	- Kiểu D&aacute;ng Phong C&aacute;ch - Mang Đậm Chất Game Thủ - Rất độc v&agrave; lạ.<br style="margin: 0px; padding: 0px;" />\r\n	- Tai nghe bọc nhựa cao cấp, tạo cảm gi&aacute;c &ecirc;m tai khi đeo thời gian d&agrave;i, &ocirc;m s&aacute;t tai gi&uacute;p c&aacute;ch &acirc;m cực tốt.<br style="margin: 0px; padding: 0px;" />\r\n	- Chế độ rung theo bass, c&oacute; thế tắt mở.<br style="margin: 0px; padding: 0px;" />\r\n	- Mic si&ecirc;u nhỏ lọc &acirc;m, giảm tiếng ồn, gi&uacute;p Voice chat trở n&ecirc;n ho&agrave;n hảo.<br style="margin: 0px; padding: 0px;" />\r\n	- C&oacute; 2 m&agrave;u: V&agrave;ng - Đen</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<span style="margin: 0px; padding: 0px; font-weight: 700;">Tai Nghe WangMing WM9300 &acirc;m thanh 7.1 c&oacute; chế độ rung theo bass, LED đổi m&agrave;u, giao tiếp USB v&agrave; đ&acirc;y l&agrave; h&igrave;nh ảnh thực của em n&oacute;, cực tuyệt vời</span><br style="margin: 0px; padding: 0px;" />\r\n	<br style="margin: 0px; padding: 0px;" />\r\n	<img alt="image" class="productlazyimage" data-original="https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-9/14666269_1140602899364043_3403432349636986145_n.jpg?oh=cd86be816fbf071e51bf8c366621e9e2&amp;oe=58A22961" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;, Zawgyi-One; font-size: 13px; width: 800px; height: 533px;" /><br style="margin: 0px; padding: 0px; font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;, Zawgyi-One; font-size: 13px;" />\r\n	<br style="margin: 0px; padding: 0px; font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;, Zawgyi-One; font-size: 13px;" />\r\n	<img alt="image" class="productlazyimage" data-original="https://scontent-sin6-1.xx.fbcdn.net/t31.0-8/14681998_1140603206030679_592003554428235583_o.jpg" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;, Zawgyi-One; font-size: 13px; width: 800px; height: 534px;" /><br style="margin: 0px; padding: 0px; font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;, Zawgyi-One; font-size: 13px;" />\r\n	<br style="margin: 0px; padding: 0px; font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;, Zawgyi-One; font-size: 13px;" />\r\n	<img alt="image" class="productlazyimage" data-original="https://scontent-sin6-1.xx.fbcdn.net/t31.0-8/14680890_1140603356030664_4379254172207205398_o.jpg" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;, Zawgyi-One; font-size: 13px; width: 800px; height: 534px;" /><br style="margin: 0px; padding: 0px; font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;, Zawgyi-One; font-size: 13px;" />\r\n	<br style="margin: 0px; padding: 0px;" />\r\n	<br style="margin: 0px; padding: 0px;" />\r\n	<span style="margin: 0px; padding: 0px; font-weight: 700;">Lưu &yacute;: Tai nghe sử dụng giao tiếp USB, chỉ sử dụng cho PC, laptop, tai nghe kh&ocirc;ng c&oacute; jack 3.5mm cho &acirc;m thanh v&agrave; ghi &acirc;m v&igrave; phải cấp nguồn cho đ&egrave;n LED, &acirc;m thanh v&agrave; chế độ rung, xin qu&yacute; kh&aacute;ch lưu &yacute; kỹ.</span></p>\r\n', 'tai nghe.png', 'Tai nghe WangMing', 'Tai nghe WangMing', 2, 18, '2016-02-04 00:01:25', '2017-03-21 22:50:10'),
(19, 'Loa máy tính Ebus 818  ', 'loa-may-tinh-ebus-818', 287000, 280000, '<ul class="prd-attributesList ui-listBulleted js-short-description" style="margin: 0px; padding-right: 0px; padding-left: 0px; list-style-position: initial; list-style-image: initial; column-count: 2; color: rgb(58, 67, 70); font-family: Helvetica, Arial, sans-serif;">\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Kiểu loa 2.1</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">C&ocirc;ng suất 80W</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Sử dụng điện 220V</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Chất lượng &acirc;m thanh vượt trội</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Thiết kế sang trọng</span></li>\r\n</ul>\r\n', '<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	Những chiếc laptop d&ugrave; cao cấp đến mấy vẫn lu&ocirc;n kh&ocirc;ng thể c&oacute; được hệ thống &acirc;m thanh ho&agrave;n hảo. Do đ&oacute;, laptop v&agrave; đặc biệt l&agrave; PC lu&ocirc;n cần sự hỗ trợ từ c&aacute;c bộ loa b&ecirc;n ngo&agrave;i để c&oacute; thể l&agrave;m sinh động th&ecirc;m c&aacute;c tiện &iacute;ch y&ecirc;u th&iacute;ch như nghe nhạc, xem phim, chơi game...cho người sử dụng. V&agrave; kh&ocirc;ng c&oacute; g&igrave; phải ph&agrave;n n&agrave;n khi bạn lựa chọn loa m&aacute;y t&iacute;nh&nbsp;<span style="margin: 0px; padding: 0px; font-weight: 700;">Ebus 818</span>. Loa m&aacute;y t&iacute;nh&nbsp;<span style="margin: 0px; padding: 0px; font-weight: 700;">Ebus 818</span>&nbsp;kh&ocirc;ng chỉ mang lại chất lượng &acirc;m thanh mượt m&agrave;, &ecirc;m tai chẳng kh&aacute;c g&igrave; loa chuy&ecirc;n nghiệp m&agrave; c&ograve;n mang đến n&eacute;t sang trọng v&agrave; tinh tế ri&ecirc;ng cho kh&ocirc;ng gian ph&ograve;ng của bạn.&nbsp;<span style="margin: 0px; padding: 0px; font-weight: 700;">Ebus 818</span>&nbsp;tự tin sẽ mang đến cho bạn những &acirc;m thanh tuyệt hảo nhất.</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; text-align: center;">\r\n	<img alt="image" class="productlazyimage" data-original="http://review.websosanh.net/Uploads/Store/1/157/40/loa-nghe-nhac-ebus-gs818-gs-818-2-11.jpg" src="http://review.websosanh.net/Uploads/Store/1/157/40/loa-nghe-nhac-ebus-gs818-gs-818-2-11.jpg" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; height: 218px; width: 400px; display: inline;" /></p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	&nbsp;</p>\r\n<h2 style="margin: 0px 0px 17px; padding: 0px; font-size: 16px; line-height: 2.4rem; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<span style="margin: 0px; padding: 0px;">ĐẶC ĐIỂM NỔI BẬT</span></h2>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);">\r\n	<br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="margin: 0px; padding: 0px; font-weight: 700; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Gồm loa trầm v&agrave; loa vệ tinh</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Loa&nbsp;</span><span style="margin: 0px; padding: 0px; font-weight: 700; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Ebus 818</span><span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">&nbsp;l&agrave; bộ loa 2.1 gồm 1 loa trầm v&agrave; 2 loa vệ tinh. B&ecirc;n cạnh đ&oacute;, với gam m&agrave;u thu h&uacute;t, sang trọng, sản phẩm c&ograve;n mang đến n&eacute;t h&agrave;i h&ograve;a v&agrave; tinh tế m&agrave; kh&ocirc;ng phải sản phẩm loa m&aacute;y t&iacute;nh n&agrave;o cũng c&oacute; thể đem lại. Loa trầm được thiết kế khối hộp với 3 n&uacute;t điều chỉnh volume, &acirc;m bass... được bố tr&iacute; ở mặt trước rất tiện lợi. Ngo&agrave;i ra, hai loa vệ tinh c&ograve;n c&oacute; thiết kế ho&agrave;n to&agrave;n giống nhau với phần lớn diện t&iacute;ch d&agrave;nh cho m&agrave;ng loa cỡ lớn được thiết kế đường viền m&agrave;u sắc nổi bật. Đặc biệt, phần ch&acirc;n đế được thiết kế c&aacute;ch điệu với tiết diện mảnh v&agrave; d&agrave;i đủ để l&agrave;m điểm tựa cho một chiếc loa vệ tinh kh&aacute; mỏng manh v&agrave; nhỏ nhắn n&agrave;y.</span></p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	&nbsp;</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; text-align: center;">\r\n	<img alt="Loa máy tính Ebus 818" class="productlazyimage" data-original="http://xuanvinh.vn/images/home/Loa_GS-818_2.1_CH_.jpg" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; width: 450px;" /></p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; text-align: center;">\r\n	<span style="margin: 0px; padding: 0px;">Loa m&aacute;y t&iacute;nh Ebus 818</span></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);">\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">&nbsp;</span></p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<span style="margin: 0px; padding: 0px; font-weight: 700;">C&ocirc;ng suất 80W</span><br style="margin: 0px; padding: 0px;" />\r\n	Kh&ocirc;ng chỉ đẹp v&agrave; hiện đại về thiết kế, loa&nbsp;<span style="margin: 0px; padding: 0px; font-weight: 700;">Ebus 818</span>&nbsp;c&ograve;n mang đến hệ thống &acirc;m thanh sống động với tổng c&ocirc;ng suất l&ecirc;n đến 80W. Với c&aacute;c loại loa vi t&iacute;nh kh&aacute;c th&igrave; Ebus GS-818 tỏ ra vượt trội hơn hẳn về c&ocirc;ng suất thể hiện, n&oacute; c&oacute; thể được so s&aacute;nh với c&aacute;c bộ loa chuy&ecirc;n nghiệp kh&aacute;c.</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; text-align: center;">\r\n	<img alt="image" class="productlazyimage" data-original="http://redeal.vn/Upload/image/DSC03059.JPG" src="http://redeal.vn/Upload/image/DSC03059.JPG" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; height: 338px; width: 450px; display: inline;" /></p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<span style="margin: 0px; padding: 0px; font-weight: 700;">Chất lượng &acirc;m thanh vượt trội</span><br style="margin: 0px; padding: 0px;" />\r\n	Chất lượng &acirc;m thanh của&nbsp;<span style="margin: 0px; padding: 0px; font-weight: 700;">Ebus 818</span>&nbsp;cũng sẽ thật sự khiến bạn phải kinh ngạc. &Acirc;m thanh kh&aacute; &ecirc;m v&agrave; mượt, đối với &acirc;m vực cao, &acirc;m thanh ph&aacute;t ra vẫn rất ấm, kh&ocirc;ng hề ch&oacute;i hay r&egrave;. Thiết kế sang trọng, &acirc;m thanh trầm ấm, loa Ebus GS-818 sẽ l&agrave; sự lựa chọn tuyệt vời d&agrave;nh cho những bạn đam m&ecirc; &acirc;m thanh trung thực.</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; text-align: center;">\r\n	<img alt="image" class="productlazyimage" data-original="http://www.redeal.vn/Upload/image/DSC03063.JPG" src="http://www.redeal.vn/Upload/image/DSC03063.JPG" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; height: 338px; width: 450px; display: inline;" /></p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<span style="margin: 0px; padding: 0px; font-weight: 700;">Thiết kế tiện lợi</span><br style="margin: 0px; padding: 0px;" />\r\n	Loa c&oacute; thể kết hợp với MP3/MP4, iPod, iPad, iPhone, DVD, m&aacute;y nghe đĩa CD, PC, laptop...&nbsp;</p>\r\n', '31.jpg', 'Loa máy tính Ebus 818  ', 'Loa máy tính Ebus 818  ', 2, 19, '2016-02-04 02:01:41', '2017-03-21 22:48:19'),
(20, 'Loa máy tính 2.1 Fenda A110 - Fenda A110', 'loa-may-tinh-21-fenda-a110-fenda-a110', 489000, 0, '<table class="specification-table mceItemTable" style="box-sizing: border-box; padding: 0px; margin: 0px; border-width: 4px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(242, 242, 242); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-collapse: collapse; border-spacing: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; width: 928px; background: rgb(250, 250, 250);">\r\n	<tbody style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">\r\n		<tr style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">\r\n			<td class="specification-table__property" style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; min-width: 100px; line-height: 24px;">\r\n				SKU</td>\r\n			<td class="specification-table__value" style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				FE267ELAW1DQVNAMZ-565637</td>\r\n		</tr>\r\n		<tr style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">\r\n			<td class="bold" style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				Gi&aacute;</td>\r\n			<td style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				579.000 VND</td>\r\n		</tr>\r\n		<tr style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">\r\n			<td class="bold" style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				M&agrave;u</td>\r\n			<td style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				Đen</td>\r\n		</tr>\r\n		<tr style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">\r\n			<td class="bold" style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				Model</td>\r\n			<td style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				A110</td>\r\n		</tr>\r\n		<tr style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">\r\n			<td class="bold" style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				K&iacute;ch thước sản phẩm (D x R x C cm)</td>\r\n			<td style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				19.8x21x18.8</td>\r\n		</tr>\r\n		<tr style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">\r\n			<td class="bold" style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				Bảo h&agrave;nh</td>\r\n			<td style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				12 th&aacute;ng bằng phiếu bảo h&agrave;nh</td>\r\n		</tr>\r\n		<tr style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">\r\n			<td class="bold" style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				Trọng lượng (KG)</td>\r\n			<td style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				3.7</td>\r\n		</tr>\r\n		<tr style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">\r\n			<td class="bold" style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				Sản xuất tại</td>\r\n			<td style="box-sizing: border-box; padding: 0px 15px; margin: 0px; border-style: solid; border-color: rgb(242, 242, 242); vertical-align: top; line-height: 24px;">\r\n				Trung Quốc</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', '<h2 class="product-de ion__title" style="box-sizing: border-box; padding: 0px; margin: 0px 0px 17px; border: 0px; font-size: 16px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; line-height: 2.4rem;">\r\n	Chi tiết sản phẩm</h2>\r\n<p style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; line-height: 1.9rem;">\r\n	Thỏa th&iacute;ch thưởng thức &acirc;m nhạc với loa&nbsp;<strong style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">Fenda A110</strong>, thiết kế kiểu d&aacute;ng trẻ trung v&agrave; bắt mắt, k&iacute;ch thước nhỏ gọn sẽ l&agrave;m đẹp th&ecirc;m kh&ocirc;ng gian giải tr&iacute; c&aacute; nh&acirc;n của bạn. Loa<strong style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">Fenda A110</strong>&nbsp;với tổng c&ocirc;ng suất 35W, đ&aacute;p ứng dải tần rộng, th&iacute;ch hợp cho PC, laptop, smartphone, tablet v&agrave; c&aacute;c thiết bị nghe nhạc m&aacute;y MP3, đầu DVD, nhờ đ&oacute; bạn c&oacute; thể tha hồ tận hưởng kh&ocirc;ng gian giải tr&iacute; đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; line-height: 1.9rem;">\r\n	<strong style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">T&Iacute;NH NĂNG NỔI BẬT</strong></p>\r\n<p style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; line-height: 1.9rem;">\r\n	<strong style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">Ho&agrave;n hảo cho giải tr&iacute;</strong><br style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;" />\r\n	Hệ thống loa 2.1 hỗ trợ kết nối với&nbsp;<a href="https://www.sendo.vn/may-tinh.htm" style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; background-color: transparent; color: rgb(51, 51, 51); text-decoration: none;">m&aacute;y t&iacute;nh</a>, smartphone, m&aacute;y t&iacute;nh bảng v&agrave; thậm ch&iacute; l&agrave; đầu đĩa DVD để bạn thoải th&iacute;ch nghe nhạc, xem phim v&agrave; chơi game từ nhiều nguồn ph&aacute;t kh&aacute;c nhau. Ngo&agrave;i ra, với thiết kế bắt mắt v&agrave; sang trọng,&nbsp;<strong style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">Fenda A110</strong>&nbsp;sẽ l&agrave; điểm nhấn th&uacute; vị cho kh&ocirc;ng gian nội thất trong ph&ograve;ng.</p>\r\n<p style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; line-height: 1.9rem;">\r\n	<strong style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">&Acirc;m thanh chất lượng cao</strong><br style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;" />\r\n	Mạch khuếch đại t&iacute;ch hợp v&agrave; c&aacute;c thuật to&aacute;n th&ocirc;ng minh gi&uacute;p t&aacute;i tạo &acirc;m thanh ho&agrave;n chỉnh hơn trong dải tần rộng 65Hz &ndash; 20kHz. Tỷ số n&eacute;n nhiễu được mạch lọc tối ưu h&oacute;a tốt hơn cho &acirc;m thanh to r&otilde; m&agrave; vẫn đảm bảo được độ trong trẻo cần thiết v&agrave; dải &acirc;m trầm đầy đặn, kh&ocirc;ng k&eacute;m phần mạnh mẽ.</p>\r\n<p style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; line-height: 1.9rem;">\r\n	<strong style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;">Thiết kế tiện dụng</strong><br style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;" />\r\n	Sử dụng kết nối ng&otilde; v&agrave;o &acirc;m thanh RCA v&agrave; cấp nguồn qua nguồn điện trực tiếp c&oacute; thể tương th&iacute;ch với nhiều thiết bị chơi nhạc. N&uacute;m điều khiển &acirc;m lượng ngay tr&ecirc;n loa sub kh&ocirc;ng chỉ tiện lợi m&agrave; c&ograve;n được thiết kế bắt mắt. Ngo&agrave;i ra, loa c&ograve;n được trang bị n&uacute;t điều chỉnh &acirc;m bass, n&uacute;t bật tắng nguồn cho ph&eacute;p ngắt điện khi kh&ocirc;ng sử dụng gi&uacute;p tiết kiệm năng lượng hiệu quả. Sản phẩm sẽ l&agrave; sự bổ sung ho&agrave;n hảo cho sở th&iacute;ch &acirc;m nhạc của bạn.</p>\r\n<h2 class="product-de ion__title" style="box-sizing: border-box; padding: 0px; margin: 0px 0px 17px; border: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; font-size: 16px; line-height: 2.4rem;">\r\n	<img alt="Loa máy tính 2.1 Fenda A110 1" src="https://media3.scdn.vn/img1/2015/10_5/loa-may-tinh-21-fenda-a110-1m4G3-cb5c5f.jpg" style="box-sizing: border-box; padding: 0px; margin: 0px auto; border: 0px; max-width: 100%; display: block;" /></h2>\r\n', 'CAMBOUOBCASI5QD3CA75RRZICA5NYO3RCAV7VJ2ICAKM1AS6CANRMIOCCAJ4PI1HCA2HN1LICA6R82KLCA4V6HDACAYYBES4CA9HQSJ5CAHNFJJ2CAQU5DBOCAGXIO00CA1452QLCAQ6X43ICAZBCHOQ.jpg', 'Loa máy tính 2.1 Fenda A110', 'Loa máy tính 2.1 Fenda A110', 2, 17, '2016-02-04 02:03:37', '2017-03-21 22:46:24'),
(21, 'MAINBOARD _ BO MẠCH CHỦ Asus H81-M-K Socket ', 'mainboard-bo-mach-chu-asus-h81-m-k-socket', 1255000, 0, '<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	MAINBOARD _ BO MẠCH CHỦ Asus H81-M-K Socket 1150</div>\r\n<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	Intel H81 Express S/p Intel Core i7+i5+i3 &nbsp;SNB/Evy S/p Turbo Boost (V 2.0),&nbsp;</div>\r\n<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	2x DDR3-1600/1333/ 1066 (D.C), VGA on board ( GPU) S/p D-Sub &amp; DVI, 1x&nbsp;</div>\r\n<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	PCIe (16x), 2x PCI(1x), 2x SATA 6Gb/s, 2 SATA 3Gb/s, &nbsp;Sound 8CH (ALC887-</div>\r\n<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	8), Gigabit LAN (RTL8111G), 2 USB (3.0) Boost, 6 &nbsp;USB (2.0), Anti Surge&nbsp;</div>\r\n<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	Protection 3.0, EPU, GPU Boost, &nbsp;UEFI Bios, &nbsp;CrashFree Bios 3, Ai Suite 3,&nbsp;</div>\r\n<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	Asus ESD, AI Charger, GPU boost, Fan Expert&nbsp;</div>\r\n<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n	Bảo h&agrave;nh : 3 năm</div>\r\n', '<div class="des-des" itemprop="description" style="box-sizing: border-box; margin-top: 15px; padding-left: 10px; overflow: hidden; font-family: Arial, Helvetica, sans-serif; color: rgba(0, 0, 0, 0.870588); line-height: 18px;">\r\n	<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n		MAINBOARD _ BO MẠCH CHỦ Asus H81-M-K Socket 1150</div>\r\n	<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n		Intel H81 Express S/p Intel Core i7+i5+i3 &nbsp;SNB/Evy S/p Turbo Boost (V 2.0),&nbsp;</div>\r\n	<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n		2x DDR3-1600/1333/ 1066 (D.C), VGA on board ( GPU) S/p D-Sub &amp; DVI, 1x&nbsp;</div>\r\n	<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n		PCIe (16x), 2x PCI(1x), 2x SATA 6Gb/s, 2 SATA 3Gb/s, &nbsp;Sound 8CH (ALC887-</div>\r\n	<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n		8), Gigabit LAN (RTL8111G), 2 USB (3.0) Boost, 6 &nbsp;USB (2.0), Anti Surge&nbsp;</div>\r\n	<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n		Protection 3.0, EPU, GPU Boost, &nbsp;UEFI Bios, &nbsp;CrashFree Bios 3, Ai Suite 3,&nbsp;</div>\r\n	<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n		Asus ESD, AI Charger, GPU boost, Fan Expert&nbsp;</div>\r\n	<div style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Roboto, Helvetica, Arial, sans-senif; font-size: 13px;">\r\n		Bảo h&agrave;nh : 3 năm</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '5.jpg', 'BO MẠCH CHỦ Asus H81-M-K', 'BO MẠCH CHỦ Asus H81-M-K', 2, 11, '2016-02-04 02:05:12', '2017-03-21 22:40:09'),
(22, 'Bo mạch chủ Giga H61 DS2  ', 'bo-mach-chu-giga-h61-ds2', 1490000, 1039000, '<ul class="prd-attributesList ui-listBulleted js-short-description" style="margin: 0px; padding-right: 0px; padding-left: 0px; list-style-position: initial; list-style-image: initial; column-count: 2; color: rgb(58, 67, 70); font-family: Helvetica, Arial, sans-serif;">\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Mainboard GIGABYTE&trade; H61M</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Chipset&nbsp;Intel&reg; H61</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">DDR3 1333/1066/800 MHz</span></li>\r\n</ul>\r\n', '<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);">\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">DS2 V 5.0</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">CPU hỗ trợ</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Support for Intel&reg; Core&trade; i7 processors/Intel&reg; Core&trade; i5 processors/ Intel&reg; Core&trade; i3 processors/Intel&reg; Pentium&reg; processors/Intel&reg; Celeron&reg; processors in the LGA1155 package</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Chipset</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Intel&reg; H61</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Bộ nhớ trong</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">2 x DDR3 1333/1066/800 MHz, Un</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">-buffered Memory up to 16GB</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Duad Channel Memory Architecture</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">VGA onboard</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Integrated Graphics Processor</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">- Intel&reg; HD Graphics support</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Multi</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">-VGA output</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">&Acirc;m thanh</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Realtek ALC887 audio codec</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">High Definition Audio</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">2/4/5.1/7.1</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">-channel</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Mạng</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Intel&reg;, 1 x Gigabit LAN Controller(s)</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Khe mở rộng</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">1 x PCI Express x16 slot, running at x16</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">(The PCI Express x16 slot conforms to PCI Express 3.0 standard.)</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">* Whether PCI Express 3.0 is supported depends on CPU and graphics card compatibility.</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">2 x PCI Express x1 slots</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Chuẩn lưu trữ</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">4 x SATA 3Gb/s connectors supporting up to 4 SATA 3Gb/s devices</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Cổng giao tiếp trước v&agrave; sau</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">1 x PS/2 keyboard port</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">1 x PS/2 mouse port</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">1 x D-Sub port</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">1 x parallel port</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">1 x serial port</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">4 x USB 2.0/1.1 ports</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">1 x RJ-45 port</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">3 x audio jacks (Line In, Line Out, Microphone)</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">C&ocirc;ng nghệ t&iacute;ch hợp</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Support for @BIOS</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Support for Q</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">-Flash</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Support for Smart Recovery2</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Support for EasyTune</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">* Available functions in EasyTune may differ by motherboard model.</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Support for ON/OFF Charge</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">K&iacute;ch thước</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">M-ATX Form Factor</span></p>\r\n', 'imagesfrererere.jpg', 'Bo mạch chủ Giga', 'Bo mạch chủ Giga', 2, 9, '2016-02-04 02:09:26', '2017-03-21 22:38:12');
INSERT INTO `products` (`id`, `name`, `alias`, `price`, `pricesale`, `intro`, `content`, `image`, `keywork`, `discription`, `user_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(23, 'Ram Kingmax DDR3 8Gb 1600  ', 'ram-kingmax-ddr3-8gb-1600', 1595000, 1450000, '<ul class="prd-attributesList ui-listBulleted js-short-description" style="margin: 0px; padding-right: 0px; padding-left: 0px; list-style-position: initial; list-style-image: initial; column-count: 2; color: rgb(58, 67, 70); font-family: Helvetica, Arial, sans-serif;">\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Ram kingmax ch&iacute;nh h&atilde;ng</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Dung lượng : 8GB</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Bus ram : 1600</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Loại ram : DDR3</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Ram M&aacute;y t&iacute;nh để b&agrave;n.</span></li>\r\n</ul>\r\n', '<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<span style="margin: 0px; padding: 0px; font-weight: 700;">GIỚI THIỆU</span></p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	Ram Kingmax - 8GB 1600 l&agrave; loại RAM được thiết kế d&agrave;nh ri&ecirc;ng cho người d&ugrave;ng muốn n&acirc;ng cấp chiếc Desktop của m&igrave;nh. Bộ nhớ DDR3 mới nhất c&oacute; tốc độ truyền tải với tốc độ tối đa l&ecirc;n đến 1600Mhz sẽ đ&aacute;p ứng nhu cầu Sử dụng m&aacute;y t&iacute;nh để b&agrave;n của bạn cho c&aacute;c ứng dụng nặng như chỉnh sửa h&igrave;nh ảnh, video với y&ecirc;u cầu bộ nhớ cao. Với Kingmax - 8GB m&aacute;y t&iacute;nh của bạn sẽ trở n&ecirc;n mạnh mẽ, r&uacute;t ngắn thời gian bộ nhớ đệm gi&uacute;p xử l&yacute; dữ liệu nhanh v&agrave; ổn định hơn rất nhiều.</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<span style="margin: 0px; padding: 0px; font-weight: 700;">T&Iacute;NH NĂNG NỔI BẬT</span></p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	- Ram kingmax ch&iacute;nh h&atilde;ng</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	- Dung lượng : 8GB</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	- Bus ram : 1600</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	- Loại ram : DDR3</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	- Ram desktop</p>\r\n', '4.jpg', 'Ram  Kingmax DDR3', ' Kingmax DDR3', 2, 16, '2016-02-04 02:10:59', '2017-03-21 22:35:45'),
(24, ' Chuột có dây Gaming IKONEMI GM02', 'chuot-co-day-gaming-ikonemi-gm02', 84000, 0, '<ul class="prd-attributesList ui-listBulleted js-short-description" style="margin: 0px; padding-right: 0px; padding-left: 0px; list-style-position: initial; list-style-image: initial; column-count: 2; color: rgb(58, 67, 70); font-family: Helvetica, Arial, sans-serif;">\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Độ ph&acirc;n giải 800/1200/1600/2400 DPI.</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">N&uacute;t Bấm Tuổi Thọ 5 triệu lần click.</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">C&oacute; Th&ecirc;m 2 N&uacute;t Back/Forward.</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">D&acirc;y D&ugrave; C&oacute; T&iacute;nh Năng Chống Nhiễu</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Chỉ cần cắm l&agrave; hoạt động &ndash; Plug and Play</span></li>\r\n</ul>\r\n', '<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	Lấy cảm hứng từ bộ phim &ldquo;Chiến Tranh Giửa C&aacute;c V&igrave; Sao &ndash; Star War&rdquo;, thiết kế chuột GM02 mang phong c&aacute;ch hầm hố như c&aacute;c chiếc phi thuyền kh&ocirc;ng gian.</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; text-align: center;">\r\n	<img alt="image" class="productlazyimage" data-original="http://i1156.photobucket.com/albums/p568/tinh-anh/Ikonemi/GM02/GM02_Content_1_zpsgvebybi9.jpg" src="http://i1156.photobucket.com/albums/p568/tinh-anh/Ikonemi/GM02/GM02_Content_1_zpsgvebybi9.jpg" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; display: inline;" /></p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	Cảm gi&aacute;c cầm vừa s&aacute;t v&agrave;o l&ograve;ng b&agrave;n tay. Nếu bạn c&oacute; l&ograve;ng b&agrave;n tay nhỏ th&igrave; y&ecirc;n t&acirc;m với kiểu cầm &ldquo;C&agrave;o &ndash; Claw&rdquo; v&igrave; GM02 được thiết kế cho cả hai kiểu cầm nắm.</p>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	Cầm GM02 c&oacute; cảm gi&aacute;c trọng lượng chuột hơi nặng chắc do c&oacute; t&iacute;ch hợp khối kim loại cố định b&ecirc;n trong để giử đầm tay khi di chuột, chỉ tiếc l&agrave; kh&ocirc;ng thay đổi được c&aacute;c vi&ecirc;n bi trọng lượng để cảm gi&aacute;c ph&ugrave; hợp hơn với từng người d&ugrave;ng m&agrave; thường thấy ở hầu hết c&aacute;c Mouse Gaming cao cấp.<br style="margin: 0px; padding: 0px;" />\r\n	Gần con lăn chuột c&oacute; n&uacute;t DPI để điều chỉnh độ ph&acirc;n giải cảm biến để di chuột nhanh hay chậm tuỳ thuộc v&agrave;o m&ocirc;i trường chơi game m&agrave; kh&ocirc;ng bị lag. C&oacute; 4 chế độ lựa chọn 800/1200/1600/2400 DPI, vừa đủ để bạn chọn lựa trong ngữ cảnh Game như chơi tr&ograve; điều chỉnh cần ch&iacute;nh x&aacute;c cao như bắn s&uacute;ng th&igrave; ch&uacute;ng ta chọn thấp nhất như 800 DPI v&agrave; khi chơi tr&ograve; nhập vai đa người chơi th&igrave; chọn độ ph&acirc;n giải cao nhất 2400 DPI để di chuột nhanh hơn để chọn đối tượng (hoặc rất hữu &iacute;ch cho người thiết kế độ hoạ cần ch&iacute;nh x&aacute;c cao trong m&agrave;n h&igrave;nh độ ph&acirc;n giải cao). Chỉ tiếc khi nhấn chọn tr&ecirc;n Mouse kh&ocirc;ng phản hồi ch&uacute;ng ta đang ở chế độ n&agrave;o m&agrave; phải cảm nhận khi di chuột.<br style="margin: 0px; padding: 0px;" />\r\n	Ngo&agrave;i ra b&ecirc;n cạnh chuột c&ograve;n c&oacute; th&ecirc;m 2 n&uacute;t &ldquo;n&oacute;ng&rdquo; để điều hướng trang web trước v&agrave; sau trong chương tr&igrave;nh duyệt web<br style="margin: 0px; padding: 0px;" />\r\n	GM02 được trau chuốt độ bền từ d&acirc;y c&aacute;p được phủ lớp đan sợi, sử dụng l&acirc;u năm m&agrave; kh&ocirc;ng bị hư d&acirc;y. Tr&ecirc;n th&acirc;n d&acirc;y c&oacute; cục chống nhiễu s&oacute;ng do đ&oacute; bạn kh&ocirc;ng bị mất t&iacute;n hiệu n&agrave;o truyền về m&aacute;y t&iacute;nh khi c&oacute; s&oacute;ng điện thoại g&acirc;y nhiễu.<br style="margin: 0px; padding: 0px;" />\r\n	Tuổi thọ n&uacute;t nhấn phải v&agrave; tr&aacute;i được sử dụng l&ecirc;n tới 5 triệu lần nhất trong v&ograve;ng đời. Th&ecirc;m v&agrave;o đ&oacute; con lăn được thiết kế gia cố độ ổn định cao hơn khi c&oacute; va chạm mạnh.<br style="margin: 0px; padding: 0px;" />\r\n	Lời kết, GM02 c&oacute; thể l&agrave; lựa chọn đầu ti&ecirc;n cho Game Thủ chuy&ecirc;n nghiệp m&agrave; quan t&acirc;m về chi ph&iacute; đầu tư, tất cả t&iacute;nh năng Game được trang bị đầy đủ như c&aacute;c d&ograve;ng mouse cao cấp.</p>\r\n', '44.jpg', 'Chuột có dây', 'Chuột có dây', 2, 5, '2016-02-04 02:12:43', '2017-03-21 22:58:59'),
(25, ' Bàn phím chơi game Logitech G310 Atlas Dawn (Đen) ', 'ban-phim-choi-game-logitech-g310-atlas-dawn-den', 1449000, 995000, '<ul class="prd-attributesList ui-listBulleted js-short-description" style="margin: 0px; padding-right: 0px; padding-left: 0px; list-style-position: initial; list-style-image: initial; column-count: 2; color: rgb(58, 67, 70); font-family: Helvetica, Arial, sans-serif;">\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">hiết kế đặc biệt với loại Switch Romer-G với lực nhấn 45g</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Keycap ABS được thiết kế với h&igrave;nh d&aacute;ng đặc biệt</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Đ&egrave;n nền LED xanh dương đầy phong c&aacute;ch</span></li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n		<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Giao tiếp USB; d&acirc;y d&agrave;i 1.8m</span></li>\r\n</ul>\r\n', '<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<span style="margin: 0px; padding: 0px; font-weight: 700;">Logitech G310</span>&nbsp;l&agrave; d&ograve;ng b&aacute;n ph&iacute;m cơ được thiết kế nhỏ gọn cho ph&eacute;p người d&ugrave;ng tiết kiệm kh&ocirc;ng gian diện t&iacute;ch b&agrave;n l&agrave;m việc trong khi vẫn đảm bảo đầy đủ khả năng tương t&aacute;c với m&aacute;y t&iacute;nh. B&agrave;n ph&iacute;m&nbsp;<span style="margin: 0px; padding: 0px; font-weight: 700;">Logitech G310</span>&nbsp;sử dụng switch Romer-G được sản xuất bởi sự hợp t&aacute;c giữa Logitech v&agrave; h&atilde;ng sản xuất Switch nổi tiếng tr&ecirc;n thế giới &ndash; Omron. Ch&iacute;nh v&igrave; vậy b&agrave;n ph&iacute;m chịu được cường độ sử dụng cao đặc biệt l&agrave; khi chơi game, cho tuổi thọ l&ecirc;n đến 70 triệu lần g&otilde;, tức nhiều hơn 40% so với b&agrave;n ph&iacute;m th&ocirc;ng thường. Bạn l&agrave; một game thủ thực thụ? B&agrave;n ph&iacute;m chơi game&nbsp;<span style="margin: 0px; padding: 0px; font-weight: 700;">Logitech G310</span>&nbsp;chắc chắn l&agrave; sự lựa chọn tuyệt vời cho sở th&iacute;ch v&agrave; phong c&aacute;ch của bạn.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);">\r\n	&nbsp;</p>\r\n<p align="center" style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<img alt="Logitech-G310" class="productlazyimage" data-original="http://hcm.lazada.vn/static/content/Accessories/Logitech-G310-01.jpg" src="http://hcm.lazada.vn/static/content/Accessories/Logitech-G310-01.jpg" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; display: inline;" /></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);">\r\n	&nbsp;</p>\r\n<div style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<span style="margin: 0px; padding: 0px; font-weight: 700;">T&Iacute;NH NĂNG NỔI BẬT</span></div>\r\n<p style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	&bull; Với sự lược bỏ c&aacute;c ph&iacute;m macro, điều khiển media v&agrave; b&agrave;n ph&iacute;m số, G310 được thiết kế cho nhu cầu mang đi, phục vụ c&aacute;c trận so t&agrave;i b&ecirc;n ngo&agrave;i.<br style="margin: 0px; padding: 0px;" />\r\n	&bull; Logitech G310 l&agrave; b&agrave;n ph&iacute;m cơ nhỏ gọn, c&oacute; trọng lượng nhẹ nhưng rất bền v&agrave; thoải m&aacute;i khi du đấu.</p>\r\n<p align="center" style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<img alt="Logitech-G310" class="productlazyimage" data-original="http://hcm.lazada.vn/static/content/Accessories/Logitech-G310-02.jpg" src="http://hcm.lazada.vn/static/content/Accessories/Logitech-G310-02.jpg" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; display: inline;" /></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);">\r\n	<br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">&bull; Logitech G310 sử dụng switch Romer-G. Loại switch n&agrave;y được Logitech v&agrave; h&atilde;ng sản xuất switch nổi tiếng thế giới Omron hợp t&aacute;c sản xuất.</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">&bull; D&agrave;n ph&iacute;m cơ Romer-G tr&ecirc;n sản phẩm c&oacute; thể chịu được sự hao m&ograve;n v&agrave; cường độ chơi game cao, l&agrave; lựa chọn ho&agrave;n hảo cho c&aacute;c game thủ eSport.</span></p>\r\n<p align="center" style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<img alt="Logitech-G310" class="productlazyimage" data-original="http://hcm.lazada.vn/static/content/Accessories/Logitech-G310-03.jpg" src="http://hcm.lazada.vn/static/content/Accessories/Logitech-G310-03.jpg" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; display: inline;" /></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);">\r\n	<br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">&bull; D&agrave;n switch cơ học Romer-G sử dụng trong b&agrave;n ph&iacute;m G310 c&oacute; tuổi thọ l&ecirc;n đến 70 triệu lần nhấn, nhiều hơn 40% so với c&aacute;c loại ph&iacute;m kh&aacute;c c&oacute; tr&ecirc;n thị trường.</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">&bull; H&agrave;nh tr&igrave;nh ph&iacute;m ngắn (3mm), đồng thời c&oacute; tốc độ nhấn nhanh hơn khoảng 25% so với c&aacute;c đối thủ.</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">&bull; Keycap tr&ecirc;n G310 l&agrave; profile OEM với phần bề mặt được thiết kế đặc biệt tập trung v&agrave;o vị tr&iacute; đặt ng&oacute;n tay, gi&uacute;p người d&ugrave;ng thoải m&aacute;i hơn khi sử dụng.</span></p>\r\n<p align="center" style="margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">\r\n	<img alt="Logitech-G310" class="productlazyimage" data-original="http://hcm.lazada.vn/static/content/Accessories/Logitech-G310-04.jpg" src="http://hcm.lazada.vn/static/content/Accessories/Logitech-G310-04.jpg" style="margin: 0px; padding: 0px; border: 0px; vertical-align: middle; max-width: 100%; display: inline;" /></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);">\r\n	<br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">&bull; B&agrave;n ph&iacute;m G310 c&ograve;n c&oacute; hệ thống đ&egrave;n nền trung t&acirc;m, hỗ trợ t&ugrave;y chỉnh được độ s&aacute;ng.&bull; Ph&iacute;a tr&ecirc;n b&agrave;n ph&iacute;m c&oacute; khung để đặt điện thoại di động chạy Android/iOS.</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">&bull; Với ứng dụng Arx Control, game thủ c&oacute; thể sử dụng m&agrave;n h&igrave;nh điện thoại như m&agrave;n h&igrave;nh thứ hai, hiển thị c&aacute;c th&ocirc;ng tin trong game hoặc số liệu thống k&ecirc; của hệ thống.</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">&bull; B&agrave;n ph&iacute;m c&oacute; thể được c&agrave;i đặt t&ugrave;y chỉnh th&ecirc;m nhiều chức năng khi người d&ugrave;ng c&agrave;i đặt tại phần mềm Logitech.</span></p>\r\n', 'banphim.jpg', ' Bàn phím chơi game Logitech', ' Bàn phím chơi game Logitech', 2, 15, '2016-02-04 02:14:08', '2017-03-21 22:29:39'),
(26, 'Chuột không dây dùng pin sạc AZZOR', 'chuot-khong-day-dung-pin-sac-azzor', 279000, 129000, '<p>\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">T&Iacute;NH NĂNG NỔI BẬT</span></p>\r\n<div class="prod_content" style="margin: 0px 0px 10px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(221, 221, 221);">\r\n	<div class="prod_details" style="margin: 0px; padding: 0px;">\r\n		<ul class="prd-attributesList ui-listBulleted js-short-description" style="margin: 0px; padding-right: 0px; padding-left: 0px; list-style-position: initial; list-style-image: initial; column-count: 2;">\r\n			<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n				<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Chất liệu cao cấp</span></li>\r\n			<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n				<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Thiết kế hiện đại</span></li>\r\n			<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n				<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Kết nối : Wireless 2.4GHz =</span></li>\r\n			<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n				<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Khoảng c&aacute;ch kết nối : 10m</span></li>\r\n			<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n				<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Loại pin : sạc lại</span></li>\r\n			<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n				<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Tương th&iacute;ch : Mac OS; Windows</span></li>\r\n			<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n				<span style="margin: 0px 0px 0px 10px; padding: 0px; display: block; color: rgb(84, 83, 81);">Chức năng : 6 n&uacute;t bấm; chuy&ecirc;n game</span></li>\r\n			<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n				<div>\r\n					&nbsp;</div>\r\n			</li>\r\n			<li style="margin: 0px; padding: 0px; list-style: none; line-height: 16px; font-size: 13px; break-inside: initial; overflow: hidden;">\r\n				&nbsp;</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n<div class="prod_pricebox price_details" id="product-price-box" property="gr:hasPriceSpecification" style="margin: 10px 0px 15px; padding: 0px;">\r\n	<div class="prod_pricebox_price" itemprop="offers" itemscope="" itemtype="//schema.org/Offer" style="margin: 0px; padding: 0px;">\r\n		<div class="js-bundle-sample-gift" style="margin: 0px; padding: 0px; color: rgb(58, 67, 70); font-family: Helvetica, Arial, sans-serif;">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n<div class="prod_grouped isEmpty" style="margin: 0px; padding: 0px; height: 0px; visibility: hidden; overflow: hidden;">\r\n	&nbsp;</div>\r\n', '<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(247, 245, 245);">\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">T&Iacute;NH NĂNG NỔI BẬT</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Sử dụng pin sạc</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Bạn kh&ocirc;ng cần t&oacute;m tiền mua pin nửa ,chỉ cần sạc đầy pin cho chuột l&agrave; c&oacute; thể sử dụng ,kh&ocirc;ng lo khi sử dụng hết pin ,bạn chỉ cần cắm d&acirc;y sạc qua cổng USB l&agrave; c&oacute; thể vừa sạc vừa l&agrave;m việc .</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Ph&iacute;m kh&ocirc;ng ph&aacute;t tiếng ồn</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">C&aacute;c n&uacute;t nhấn tr&ecirc;n chuột kh&ocirc;ng ph&aacute;t ra &acirc;m thanh khi bấm n&uacute;t .bạn c&oacute; thể y&ecirc;n t&acirc;m l&agrave;m việc m&agrave; kh&ocirc;ng ảnh hưởng đến người kh&aacute;c</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Thiết kế nhỏ gọn</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Chuột kh&ocirc;ng d&acirc;y AZZOR c&oacute; thiết kế đơn giản, ph&ugrave; hợp cho cả người thuận tay phải hoặc tay tr&aacute;i. Độ cong th&acirc;n chuột vừa phải gi&uacute;p &ocirc;m s&aacute;t v&agrave;o l&ograve;ng b&agrave;n tay, tạo cảm gi&aacute;c thoải m&aacute;i cho bạn khi l&agrave;m việc trong khoảng thời gian d&agrave;i.Tối đa h&oacute;a hiệu quả c&ocirc;ng việcVới khả năng kết nối kh&ocirc;ng d&acirc;y 2.4 GHz c&ugrave;ng với khoảng c&aacute;ch hoạt động l&ecirc;n tới 10m, chuột kh&ocirc;ng d&acirc;y AZZOR cho ph&eacute;p bạn l&agrave;m việc nhanh, linh hoạt v&agrave; đạt hiệu quả c&ocirc;ng việc cao.</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Tương th&iacute;ch với nhiều thiết bị</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">Chuột kh&ocirc;ng d&acirc;y AZZOR c&oacute; khả năng tương th&iacute;ch với nhiều thiết bị v&agrave; hệ điều h&agrave;nh th&ocirc;ng dụng, gi&uacute;p bạn dễ d&agrave;ng l&agrave;m việc hơn. B&ecirc;n cạnh đ&oacute;, khe cắm USB của chuột gi&uacute;p việc di chuyển thuận tiện v&agrave; dễ d&agrave;ng hơn.</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">TH&Ocirc;NG SỐ KỸ THUẬT</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">- Model: AZZOR EAGLE</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">- Loại chuột: Chuột kh&ocirc;ng d&acirc;y</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">- Số n&uacute;t: 6</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">- Hệ điều h&agrave;nh tương th&iacute;ch: Windows: XP; Vista; Windows 7; Mac OS x 10.5; Linux Kernel 2.6</span><br style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">- Nguồn pin: sử dụng pin sạc b&ecirc;n trong</span></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; background-color: rgb(247, 245, 245);">\r\n	<span style="color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;">- On/ Off nguồn mỗi khi kh&ocirc;ng sử dụng l&acirc;u hoặc hết giờ l&agrave;m việc</span></p>\r\n', '44.jpg', 'Chuột', 'Chuột không dây dùng pin sạc AZZOR', 2, 5, '2016-02-04 02:15:32', '2017-03-21 22:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(65, '3.jpg', 26, '2017-03-21 22:20:42', '2017-03-21 22:20:42'),
(66, '20.jpg', 26, '2017-03-21 22:20:42', '2017-03-21 22:20:42'),
(67, 'banphim (5).jpg', 25, '2017-03-21 22:26:36', '2017-03-21 22:26:36'),
(68, 'banphim (6).jpg', 25, '2017-03-21 22:26:36', '2017-03-21 22:26:36'),
(69, 'banphim (8).jpg', 25, '2017-03-21 22:26:36', '2017-03-21 22:26:36'),
(70, 'banphim (11).jpg', 25, '2017-03-21 22:26:36', '2017-03-21 22:26:36'),
(71, 'banphim (18).jpg', 25, '2017-03-21 22:26:36', '2017-03-21 22:26:36'),
(72, '3.jpg', 24, '2017-03-21 22:28:15', '2017-03-21 22:28:15'),
(73, '20.jpg', 24, '2017-03-21 22:28:15', '2017-03-21 22:28:15'),
(74, '40.jpg', 24, '2017-03-21 22:28:15', '2017-03-21 22:28:15'),
(75, '2.jpg', 21, '2017-03-21 22:40:09', '2017-03-21 22:40:09'),
(76, '5.jpg', 21, '2017-03-21 22:40:09', '2017-03-21 22:40:09'),
(77, '7.jpg', 21, '2017-03-21 22:40:09', '2017-03-21 22:40:09'),
(78, '8.jpg', 19, '2017-03-21 22:48:19', '2017-03-21 22:48:19'),
(79, '32.jpg', 19, '2017-03-21 22:48:19', '2017-03-21 22:48:19'),
(80, '57.jpg', 19, '2017-03-21 22:48:19', '2017-03-21 22:48:19'),
(81, '4.jpg', 15, '2017-03-21 22:55:16', '2017-03-21 22:55:16'),
(82, '13.jpg', 15, '2017-03-21 22:55:16', '2017-03-21 22:55:16'),
(83, 'CAC3XBNJCAS8M6QFCAJQ750WCAF67XKTCAXDPNSCCAN04LSLCAWQZAENCARWX7XTCA2N1BOWCADL69U5CACDT81NCARU4IAXCAG02D0XCAY3ZMJHCAVU07RXCAU3H6C2CARXKOMHCAC9104ICAQ1K98C.jpg', 15, '2017-03-21 22:55:16', '2017-03-21 22:55:16'),
(84, 'CAC96AM7CAVR3XJTCADNV7M9CAAKNZH1CAUV4IDECAGK7C5ICAYW3X1PCA066MGPCA80WLMSCAY3468MCAZ2FK46CA27YIY3CAHDIE67CA562K2KCAHMFHL4CA7BK0J6CAANEBE8CAH3YAS2CAKK3C47.jpg', 15, '2017-03-21 22:55:16', '2017-03-21 22:55:16'),
(85, 'CAXXCFNZCA1WKEMTCAQQ16MWCAW07EQ7CA6LK1DBCAQBPB3BCAV9M5HUCACBCKDZCAA7ZM62CA744HV3CAGE6TYHCA17D39ZCA6GUB72CADEX107CADVJ91VCA47Z237CA1Q6YS3CAW24M3ECAU3XVVV.jpg', 15, '2017-03-21 22:55:16', '2017-03-21 22:55:16'),
(86, 'CAYNL110CA5M03ESCAZTAL2JCAY9GEE0CA4C6DMZCAHI1QP7CA2CM2L7CAFA7XJGCAAZ052NCA2I16Q1CABT5AFCCA0215V9CA4R6UAACAAN6HZFCAFD3VJHCA13WN37CAGOSVZHCAR6LZN1CA6QTEHB.jpg', 15, '2017-03-21 22:55:16', '2017-03-21 22:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `tintucs`
--

CREATE TABLE `tintucs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `phone`, `address`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', '$2y$10$50lyn89bon8ChpuU90pvReDqMXEcweiwvr.nawCxpzsJbiKujSDUu', 'hoagnty1403@gmail.com', '', '', '', 1, 'VBHZpS3zptvhsUKIQSWBTR81vMwHlf5SALrwbHNfmjLuIxbCrL8wQRtLFcmw', '2016-02-04 01:54:02', '2016-02-04 03:21:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `chitiethoadons`
--
ALTER TABLE `chitiethoadons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitiethoadons_id_hoadon_foreign` (`id_hoadon`),
  ADD KEY `chitiethoadons_id_sanpham_foreign` (`id_sanpham`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhgias`
--
ALTER TABLE `danhgias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhgias_product_id_foreign` (`product_id`);

--
-- Indexes for table `hoadons`
--
ALTER TABLE `hoadons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `tintucs`
--
ALTER TABLE `tintucs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintucs_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `chitiethoadons`
--
ALTER TABLE `chitiethoadons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `danhgias`
--
ALTER TABLE `danhgias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hoadons`
--
ALTER TABLE `hoadons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `tintucs`
--
ALTER TABLE `tintucs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadons`
--
ALTER TABLE `chitiethoadons`
  ADD CONSTRAINT `chitiethoadons_id_hoadon_foreign` FOREIGN KEY (`id_hoadon`) REFERENCES `hoadons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitiethoadons_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `danhgias`
--
ALTER TABLE `danhgias`
  ADD CONSTRAINT `danhgias_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tintucs`
--
ALTER TABLE `tintucs`
  ADD CONSTRAINT `tintucs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
