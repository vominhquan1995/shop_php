-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 20, 2017 lúc 06:36 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_it`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
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
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `alias`, `order`, `prarent_id`, `keyworks`, `discription`, `created_at`, `updated_at`) VALUES
(4, 'Ram', 'ram', 0, 0, 'Ram', 'Ram', '2016-02-03 22:53:36', '2017-03-20 08:56:59'),
(5, 'Loa', 'loa', 0, 0, 'Loa', 'Loa', '2016-02-03 22:53:55', '2017-03-20 09:08:51'),
(6, 'Chuột', 'chuot', 0, 0, 'Chuột', 'Chuột', '2016-02-03 22:54:24', '2017-03-20 08:57:32'),
(7, 'Desktop', 'desktop', 0, 0, 'Desktop', 'Desktop', '2016-02-03 22:54:37', '2017-03-20 08:56:12'),
(8, 'Intel', 'intel', 2, 10, 'Intel', 'Intel', '2016-02-03 22:55:06', '2017-03-20 09:05:51'),
(9, 'Dell', 'dell', 1, 7, 'Dell', 'Dell', '2016-02-03 23:31:46', '2017-03-20 09:06:47'),
(10, 'CPU', 'cpu', 0, 0, 'CPU', 'CPU', '2016-02-03 23:32:09', '2017-03-20 08:55:50'),
(11, 'Asus', 'asus', 1, 13, 'Asus', 'Asus', '2016-02-03 23:32:26', '2017-03-20 09:05:30'),
(12, 'Bộ Nguồn', 'bo-nguon', 0, 0, 'Bộ Nguồn', 'Bộ Nguồn', '2016-02-04 02:02:25', '2017-03-20 08:55:02'),
(13, 'Mainbadrd', 'mainbadrd', 0, 0, 'Mainbadrd', 'Mainbadrd', '2016-08-05 01:49:50', '2017-03-20 08:54:38'),
(14, 'Keyboard', 'keyboard', 0, 0, 'Keyboard', 'Keyboard', '2017-03-20 09:04:31', '2017-03-20 09:04:31'),
(15, 'Mitsumi', 'mitsumi', 1, 6, 'Mitsumi', 'Mitsumi', '2017-03-20 09:07:26', '2017-03-20 09:07:26'),
(16, 'Huyndai', 'huyndai', 1, 5, 'Huyndai', 'Huyndai', '2017-03-20 09:08:02', '2017-03-20 09:08:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadons`
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
-- Đang đổ dữ liệu cho bảng `chitiethoadons`
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
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadons`
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
-- Đang đổ dữ liệu cho bảng `hoadons`
--

INSERT INTO `hoadons` (`id`, `name`, `email`, `phone`, `addreass`, `status`, `total_qty`, `total_price`, `created_at`, `updated_at`) VALUES
(7, 'HOang TY', '123@gmail.com', '01688912317', 'Le duẩn', 0, 6, 325000, '2016-02-07 18:12:13', '2016-02-09 04:50:51'),
(8, 'HOang Ty', 'Hoangty1403@gmail.com', '0688912317', 'đống đa', 1, 2, 69000, '2016-02-07 18:48:50', '2016-02-09 04:50:52'),
(14, 'loc', 'locnb.pnvc@gmail.com', '01688912317', 'Đống đa', 1, 5, 348000, '2016-02-08 03:03:21', '2016-02-09 04:50:48'),
(15, 'LOL', 'locnb@gmail.com', '01214057905', 'DĐ', 0, 2, 9000, '2016-08-12 07:21:26', '2016-08-12 07:21:26'),
(16, 'LOL', 'locnb@gmail.com', '01214057905', 'DĐ', 0, 2, 9000, '2016-08-12 07:24:15', '2016-08-12 07:24:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
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
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `price`, `pricesale`, `intro`, `content`, `image`, `keywork`, `discription`, `user_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(15, 'Giấy gói bánh Cupcake hoa văn', 'giay-goi-banh-cupcake-hoa-van', 25000, 20000, '<p>\r\n	<span style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px; text-align: justify;\">Sản phẩm được thực hiện trong 3 ng&agrave;y, với mẫu Giấy g&oacute;i b&aacute;nh Cupcake hoa văn hoa cao cấp.</span><br style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px; text-align: justify;\" />\r\n	<span style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px; text-align: justify;\">Ph&ugrave; hợp với b&aacute;nh Cupcake trong tiệc cưới, sinh nhật,...</span></p>\r\n', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<span style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px;\">Sản phẩm được thực hiện trong 3 ng&agrave;y, với mẫu Giấy g&oacute;i b&aacute;nh Cupcake hoa văn hoa cao cấp.</span><br style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px;\" />\r\n	<span style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px;\">Ph&ugrave; hợp với b&aacute;nh Cupcake trong tiệc cưới, sinh nhật,...</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<img src=\"https://www.pmhandmade.com/images/catgiay_khachhang/cupcake_lace.jpg\" style=\"color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px;\" /></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<img src=\"https://www.pmhandmade.com/images/catgiay_khachhang/cupcake_lace_2.jpg\" /></p>\r\n', 'cupcake_lace.jpg', 'Giấy gói bánh', 'Giấy gói bánh Cupcake hoa văn', 2, 4, '2016-02-03 23:57:03', '2016-08-05 01:58:08'),
(17, 'Khung tranh lơ lững', 'khung-tranh-lo-lung', 80000, 75000, '<p>\r\n	<span style=\"font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px; text-align: justify;\">Shop xin giới thiệu đến c&aacute;c bạn dịch vụ cắt giấy mỹ thuật tạo n&ecirc;n khung tranh lơ lửng.</span><br style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px; text-align: justify;\" />\r\n	<span style=\"font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px; text-align: justify;\">Nội dung được t&ugrave;y chọn theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.</span><br style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px; text-align: justify;\" />\r\n	<span style=\"font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px; text-align: justify;\">Giấy cắt từ giấy mỹ thuật &aacute;nh kim nhập từ Ch&acirc;u &Acirc;u.</span></p>\r\n', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<span style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px;\">giới thiệu đến c&aacute;c bạn dịch vụ cắt giấy mỹ thuật tạo n&ecirc;n khung tranh lơ lửng.</span><br style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px;\" />\r\n	<span style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px;\">Nội dung được t&ugrave;y chọn theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.</span><br style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px;\" />\r\n	<span style=\"color: rgb(62, 62, 62); font-family: Lato-regular, Arial, sans-serif; font-size: 15px; line-height: 21px;\">Giấy cắt từ giấy mỹ thuật &aacute;nh kim nhập từ Ch&acirc;u &Acirc;u.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<img alt=\"PM Handmade\" src=\"https://www.pmhandmade.com/images/catgiay/DSC05605.jpg\" style=\"color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px;\" /></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<img src=\"https://www.pmhandmade.com/images/catgiay/il_570xN.596755031_gmg5.jpg\" /></p>\r\n', 'DSC05605.jpg', 'Khung tranh', 'Khung tranh lơ lững', 2, 4, '2016-02-04 00:01:25', '2016-08-05 01:55:36'),
(19, 'Đồng hồ treo tường kết hợp khung hình', 'dong-ho-treo-tuong-ket-hop-khung-hinh', 10000, 90000, '<p>\r\n	<span style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.870588); font-family: Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; font-size: 16px;\">Nếu bạn l&agrave; người th&iacute;ch những m&agrave;u sắc đơn giản nhưng ấn tượng th&igrave; sản phẩm&nbsp;<em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\">đồng hồ treo tường k&egrave;m khung h&igrave;nh</strong></em>&nbsp;với 2 m&agrave;u đen trắng l&agrave; lựa chọn th&iacute;ch hợp nhất cho ng&ocirc;i nh&agrave; của bạn. Được l&agrave;m từ chất liệu gỗ cao cấp n&ecirc;n sản phẩm c&oacute; độ b&oacute;ng mịn cao, chất liệu nhẹ gi&uacute;p bạn c&oacute; thể thoải m&aacute;i treo h&igrave;nh m&agrave; kh&ocirc;ng sợ bị trầy xước hoặc rơi vỡ.</span><span style=\"color: rgba(0, 0, 0, 0.870588); font-family: Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify;\">&nbsp;</span><span style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.870588); font-family: Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; font-size: 16px;\">Th&iacute;ch hợp trang tr&iacute; ph&ograve;ng kh&aacute;ch, ph&ograve;ng ngủ v&agrave; những nơi trang tr&iacute; trong nh&agrave;.</span></p>\r\n', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<span style=\"font-size:11px;\"><span style=\"box-sizing: border-box; font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">Nếu bạn l&agrave; người th&iacute;ch những m&agrave;u sắc đơn giản nhưng ấn tượng th&igrave; sản phẩm&nbsp;<em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\">đồng hồ treo tường k&egrave;m khung h&igrave;nh</strong></em>&nbsp;với 2 m&agrave;u đen trắng l&agrave; lựa chọn th&iacute;ch hợp nhất cho ng&ocirc;i nh&agrave; của bạn. Được l&agrave;m từ chất liệu gỗ cao cấp n&ecirc;n sản phẩm c&oacute; độ b&oacute;ng mịn cao, chất liệu nhẹ gi&uacute;p bạn c&oacute; thể thoải m&aacute;i treo h&igrave;nh m&agrave; kh&ocirc;ng sợ bị trầy xước hoặc rơi vỡ.</span><span style=\"font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">&nbsp;</span><span style=\"box-sizing: border-box; font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">Th&iacute;ch hợp trang tr&iacute; ph&ograve;ng kh&aacute;ch, ph&ograve;ng ngủ v&agrave; những nơi trang tr&iacute; trong nh&agrave;.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<img src=\"http://bookbuy.vn/kcfinder/upload/images/Vat%20dung%20gia%20dinh/vat%20dung%20gia%20dinh/dong%20ho/dong%20ho%20treo%20tuong%20kem%20khung%20hinh_01.jpg\" style=\"color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px;\" /></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<img src=\"http://bookbuy.vn/kcfinder/upload/images/Vat%20dung%20gia%20dinh/vat%20dung%20gia%20dinh/dong%20ho/dong%20ho%20treo%20tuong%20kem%20khung%20hinh_02.jpg\" /></p>\r\n', 'dong-ho-treo-tuong-kem-khung-hinh_27525_1.jpg', 'Đồng hồ', 'Đồng hồ treo tường kết hợp khung hình', 2, 13, '2016-02-04 02:01:41', '2016-08-05 01:52:08'),
(20, 'Đá làm dây chuyền', 'da-lam-day-chuyen', 48000, 0, '<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	Chuỗi đ&aacute; l&agrave;m d&acirc;y&nbsp;chuyền&nbsp;hoặc trang tr&iacute;&nbsp;cổ &aacute;o</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	&nbsp;</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	Chất&nbsp;li&ecirc;u:&nbsp;hợp&nbsp;kim+ đ&aacute;</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	M&agrave;u&nbsp;sắc:&nbsp;kim loại m&agrave;u v&agrave;ng+ đ&aacute; m&agrave;u xanh</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	Gi&aacute; b&aacute;n:loại&nbsp;l&agrave;m d&acirc;y chuyền 25cm gi&aacute; 70K , B&aacute;n theo m&eacute;t 1 m&eacute;t 250K/m&eacute;t&nbsp;(c&oacute;&nbsp;b&aacute;n theo k&iacute;ch thước y&ecirc;u cầu của kh&aacute;ch)</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	Chuỗi đ&aacute; sử&nbsp;dụng l&agrave;&nbsp;d&acirc;y chuyền &nbsp;hoặc trang tr&iacute;&nbsp;cổ&nbsp;&aacute;o&nbsp;&nbsp;thời&nbsp;trang,&nbsp;c&aacute;c&nbsp;kiểu&nbsp;&aacute;o&nbsp;đầm ...</p>\r\n', '<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	Chuỗi đ&aacute; l&agrave;m d&acirc;y&nbsp;chuyền&nbsp;hoặc trang tr&iacute;&nbsp;cổ &aacute;o</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	&nbsp;</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	Chất&nbsp;li&ecirc;u:&nbsp;hợp&nbsp;kim+ đ&aacute;</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	M&agrave;u&nbsp;sắc:&nbsp;kim loại m&agrave;u v&agrave;ng+ đ&aacute; m&agrave;u xanh</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	Gi&aacute; b&aacute;n:loại&nbsp;l&agrave;m d&acirc;y chuyền 25cm gi&aacute; 70K , B&aacute;n theo m&eacute;t 1 m&eacute;t 250K/m&eacute;t&nbsp;(c&oacute;&nbsp;b&aacute;n theo k&iacute;ch thước y&ecirc;u cầu của kh&aacute;ch)</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	Chuỗi đ&aacute; sử&nbsp;dụng l&agrave;&nbsp;d&acirc;y chuyền &nbsp;hoặc trang tr&iacute;&nbsp;cổ&nbsp;&aacute;o&nbsp;&nbsp;thời&nbsp;trang,&nbsp;c&aacute;c&nbsp;kiểu&nbsp;&aacute;o&nbsp;đầm ...</p>\r\n', '2016060606413370967663.jpg', 'Đá làm dây chuyền', 'Đá làm dây chuyền', 2, 10, '2016-02-04 02:03:37', '2016-08-05 01:48:44'),
(21, 'Băng Keo Hoa Văn', 'bang-keo-hoa-van', 20000, 0, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgba(0, 0, 0, 0.870588); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">\r\n	Chỉ trong t&iacute;ch tắt chiếc notebook, hay dế y&ecirc;u v&agrave; những vật dụng nhỏ xinh của bạn sẽ được thay &quot;&aacute;o mới&quot; nhờ băng keo hoa văn lạ mắt n&agrave;y đấy .</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgba(0, 0, 0, 0.870588); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">\r\n	Với băng keo hoa văn tiện lợi n&agrave;y, những m&oacute;n qu&agrave; do bạn trang tr&iacute; sẽ mang phong c&aacute;ch ri&ecirc;ng của ch&iacute;nh bạn đấy nh&eacute;!</p>\r\n', '<div class=\"des-des\" itemprop=\"description\" style=\"box-sizing: border-box; margin-top: 15px; padding-left: 10px; overflow: hidden; font-family: Arial, Helvetica, sans-serif; color: rgba(0, 0, 0, 0.870588); line-height: 18px;\">\r\n	<p style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		Chỉ trong t&iacute;ch tắt chiếc notebook, hay dế y&ecirc;u v&agrave; những vật dụng nhỏ xinh của bạn sẽ được thay &quot;&aacute;o mới&quot; nhờ băng keo hoa văn lạ mắt n&agrave;y đấy .</p>\r\n	<p style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		Với băng keo hoa văn tiện lợi n&agrave;y, những m&oacute;n qu&agrave; do bạn trang tr&iacute; sẽ mang phong c&aacute;ch ri&ecirc;ng của ch&iacute;nh bạn đấy nh&eacute;!</p>\r\n	<p style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		&nbsp;</p>\r\n	<b style=\"box-sizing: border-box;\">Th&ocirc;ng chi tiết sản phẩm:</b><br style=\"box-sizing: border-box;\" />\r\n	<br style=\"box-sizing: border-box;\" />\r\n	<p style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		- Chất liệu: nhựa</p>\r\n	<p style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		- D&aacute;n được tr&ecirc;n nhiều bề mặt</p>\r\n	<p style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		- C&oacute; 3 m&agrave;u: đen, hồng, v&agrave;ng</p>\r\n	<p align=\"center\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		<img alt=\"\" src=\"http://vuongquocdochoi.vn/pictures/tapec.jpg\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 910px;\" /></p>\r\n	<p style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		&nbsp;</p>\r\n	<div>\r\n		&nbsp;</div>\r\n</div>\r\n<div class=\"cl\" style=\"box-sizing: border-box; clear: both; color: rgba(0, 0, 0, 0.870588); font-family: Arial, Helvetica, sans-serif; line-height: 18px;\">\r\n	&nbsp;</div>\r\n', 'bang-keo-hoa-van-(lace-tape)-mau-den_16988_15021.jpg', 'Băng Keo Hoa Văn', 'Băng Keo Hoa Văn', 2, 10, '2016-02-04 02:05:12', '2016-08-05 01:43:58'),
(22, 'Len cuộn, Len sợi', 'len-cuon-len-soi', 20000, 15000, '<p>\r\n	<span style=\"font-family: \'Segoe UI\', \'lucida grande\', tahoma, verdana, arial, sans-serif; font-size: 16px; line-height: 25.6px; background-color: rgba(255, 255, 255, 0.701961);\">B&aacute;n len sợi, len sợi gi&aacute; rẻ, len sợi, len chỉ, len cotton milk...</span></p>\r\n', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<span style=\"font-family: \'Segoe UI\', \'lucida grande\', tahoma, verdana, arial, sans-serif; font-size: 16px; line-height: 25.6px; background-color: rgba(255, 255, 255, 0.701961);\">B&aacute;n len sợi, len sợi gi&aacute; rẻ, len sợi, len chỉ, len cotton milk...</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<img alt=\"LEN CUỘN, LEN SỢI\" src=\"http://marketonline.vn/attachment/2015/08/23/offer-5475-1934.jpg\" style=\"color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px;\" /></p>\r\n', 'offer-5475-1934.jpg', 'Len ', 'Len cuộn, Len sợi', 2, 10, '2016-02-04 02:09:26', '2016-08-05 01:40:03'),
(23, 'Giấy quilling', 'giay-quilling', 5000, 4500, '<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	N&oacute;i về quilling th&igrave; c&aacute;c bạn kh&ocirc;ng c&ograve;n xa lạ g&igrave; rồi.</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	Giấy m&igrave;nh b&aacute;n chất lượng nhiều bạn đ&atilde; mua sử dụng.</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	M&igrave;nh b&aacute;n 4k/bịch 50 sợi 3mm</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	C&aacute;c bạn mua số lượng nhiều cứ inbox cho m&igrave;nh. T&ugrave;y số lượng m&agrave; m&igrave;nh b&aacute;n 3000đ / bịch hoặc 3500 đồng/ bịch nhe</p>\r\n', '<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	N&oacute;i về quilling th&igrave; c&aacute;c bạn kh&ocirc;ng c&ograve;n xa lạ g&igrave; rồi.</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	Giấy m&igrave;nh b&aacute;n chất lượng nhiều bạn đ&atilde; mua sử dụng.</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	M&igrave;nh b&aacute;n 4k/bịch 50 sợi 3mm</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	C&aacute;c bạn mua số lượng nhiều cứ inbox cho m&igrave;nh.&nbsp;</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	&nbsp;</p>\r\n<p style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	<img src=\"http://g02.a.alicdn.com/kf/HTB1aMLxHVXXXXXqXpXXq6xXFXXXg/DIY-font-b-Hobby-b-font-Craft-Scrapbooking-Home-Decoration-5mm-42cm-Long-120-font-b.jpg\" /></p>\r\n', 'Dung_cu_Quilling_7.jpg', 'Giấy quilling', 'Giấy quilling', 2, 10, '2016-02-04 02:10:59', '2016-08-05 01:35:13'),
(24, 'In sổ tay - Handmake', 'in-so-tay-handmake', 55000, 0, '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 13px; line-height: 20px;\">Sổ tay handmade l&agrave; qu&agrave; tặng độc đ&aacute;o v&agrave; ng&agrave;y một thịnh h&agrave;nh trong giới trẻ hiện nay. Tại sao vậy? Sổ tay handmade mang đậm phong c&aacute;ch của từng người, đa dang mẫu m&atilde; v&agrave; đậm t&iacute;nh nh&acirc;n văn. Mỗi quyển sổ tay handmake&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 13px; line-height: 20px;\">lu&ocirc;n chất chứa cả t&acirc;m hồn, t&acirc;m huyết của người l&agrave;m.&nbsp;</span></p>\r\n', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">Sổ tay handmade l&agrave; qu&agrave; tặng độc đ&aacute;o v&agrave; ng&agrave;y một thịnh h&agrave;nh trong giới trẻ hiện nay. Tại sao vậy? Sổ tay handmade mang đậm phong c&aacute;ch của từng người, đa dang mẫu m&atilde; v&agrave; đậm t&iacute;nh nh&acirc;n văn. Mỗi quyển&nbsp;</span><a href=\"http://sotayhandmade.vn/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: baseline; text-decoration: none; color: rgb(0, 102, 153); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\" target=\"_blank\">sổ tay handmade</a><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&nbsp;lu&ocirc;n chất chứa cả t&acirc;m hồn, t&acirc;m huyết của người l&agrave;m.&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">Ch&uacute;ng m&igrave;nh cũng l&agrave; những con người y&ecirc;u nghệ thuật, th&iacute;ch đồ handmade, v&agrave; mong muốn được cung cấp cho c&aacute;c bạn những sản phẩm cực độc, lạ, v&agrave; đầy &yacute; nghĩa m&agrave; ch&uacute;ng m&igrave;nh tự tay sản xuất. C&aacute;c sản phẩm ở shop</span><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&nbsp;được l&agrave;m ho&agrave;n to&agrave;n thủ c&ocirc;ng, v&agrave; những m&aacute;y m&oacute;c th&ocirc; sơ nhất, cho bạn những quyển sổ tay c&oacute; 1 kh&ocirc;ng 2.</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">Ch&uacute;ng m&igrave;nh chuy&ecirc;n cung cấp dịch vụ l&agrave;m&nbsp;</span><a href=\"http://sotayhandmade.vn/in-so-tay-theo-yeu-cau\" style=\"margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: baseline; text-decoration: none; color: rgb(0, 102, 153); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\" target=\"_blank\">sổ tay handmade&nbsp;theo y&ecirc;u cầu</a><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&nbsp;của c&aacute;c bạn, phong c&aacute;ch sổ tay vintage g&aacute;y l&ograve; xo cực chất, cực cổ điển. Chỉ cần gửi ảnh cho ch&uacute;ng m&igrave;nh, 2-3 ng&agrave;y sau bạn sẽ c&oacute; ngay 1 quyển sổ tay độc lạ, của ri&ecirc;ng bạn.</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">Với th&agrave;nh vi&ecirc;n l&agrave; những sinh vi&ecirc;n trẻ, đầy nhiệt huyết, lu&ocirc;n đặt uy t&iacute;n v&agrave; lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đ&acirc;u, ch&uacute;ng m&igrave;nh cam kết với c&aacute;c bạn về chất lượng v&agrave; gi&aacute; cả cạnh tranh nhất. B&ecirc;n cạnh đ&oacute; l&agrave; chất lượng phụ vụ tốt nhất m&agrave; bạn kh&ocirc;ng thể t&igrave;m thấy ở bất cứ đ&acirc;u.</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">M&ocirc; tả sản phẩm&nbsp;</span><a href=\"http://sotayhandmade.vn/so-tay-handmade-vintage/\" style=\"margin: 0px; padding: 0px; border: 0px; outline: none; vertical-align: baseline; text-decoration: none; color: rgb(0, 102, 153); font-family: Arial, sans-serif; line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\" target=\"_blank\">sổ tay handmade</a><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&nbsp;của ch&uacute;ng m&igrave;nh:</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&middot; Số tờ: 80 (160 trang)</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&middot; Khổ: A5 hoặc A6</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&middot; G&aacute;y l&ograve; xo</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&middot; B&igrave;a cứng d&agrave;y 2mm</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&middot; Ruột sổ kẻ d&ograve;ng</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">CHỈ VỚI 55K CHO 1 QUYỂN SỔ A5 NHƯ THẾ. Thực sự l&agrave; qu&aacute; rẻ đ&uacute;ng kh&ocirc;ng n&agrave;o!</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">H&atilde;y gửi ảnh đến ngay gmail cho bọn m&igrave;nh tại: info@handmake.com</span><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&nbsp;c&ugrave;ng những y&ecirc;u cầu kh&aacute;c (nếu c&oacute;). Để ch&uacute;ng m&igrave;nh c&oacute; thể gi&uacute;p bạn l&agrave;m một quyển sổ tay handmade si&ecirc;u dễ thương, m&oacute;n qu&agrave; tặng thật độc đ&aacute;o cho bạn v&agrave; bạn b&egrave; nh&eacute;.</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">Ngo&agrave;i dịch vụ tr&ecirc;n, ch&uacute;ng m&igrave;nh c&ograve;n nhận:</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&middot; Đặt in sổ tay số lượng lớn</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&middot; Đặt in sổ tay số lượng &iacute;t</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&middot; Đặt in sổ tay b&igrave;a bồi</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&middot; Đặt in sổ tay b&igrave;a mica</span><br style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\" />\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; line-height: 20px;\">&middot; Đặt in sổ tay quảng c&aacute;o</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<img alt=\"In sổ tay theo yêu cầu, sổ handmade phong cách vintage\" src=\"http://www.lola.vn/data/201621/resize_612x816_img201602131116431189.jpg\" style=\"color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px;\" /></p>\r\n', 'img20160105160756522.jpg', 'In sổ tay', 'In sổ tay - Handmake', 2, 12, '2016-02-04 02:12:43', '2016-08-05 01:32:03'),
(25, 'Chuột quang không dây Logitech B175 (Đen)  ', 'chuot-quang-khong-day-logitech-b175-den', 219000, 0, '<p>\r\n	<span style=\"color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">Chuột quang kh&ocirc;ng d&acirc;y&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-weight: 700; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">Logitech B175</span><span style=\"color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">&nbsp;với thiết kế đơn giản, th&acirc;n uốn lượn theo l&ograve;ng b&agrave;n tay tạo cảm gi&aacute;c cầm nắm thoải m&aacute;i.</span></p>\r\n', '<h2 class=\"product-description__title\" style=\"margin: 0px 0px 17px; padding: 0px; font-size: 16px; line-height: 2.4rem; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">\r\n	Giới thiệu sản phẩm Chuột quang kh&ocirc;ng d&acirc;y Logitech B175 (Đen)</h2>\r\n<div class=\"product-description__webyclip-thumbnails\" style=\"margin: 0px 0px 15px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">\r\n	<div class=\"webyclip-thumbnails\" id=\"webyclip_thumbnails\" style=\"margin: 0px; padding: 0px;\">\r\n		&nbsp;</div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	<span style=\"color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">Chuột quang kh&ocirc;ng d&acirc;y&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-weight: 700; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">Logitech B175</span><span style=\"color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">&nbsp;với thiết kế đơn giản, th&acirc;n uốn lượn theo l&ograve;ng b&agrave;n tay tạo cảm gi&aacute;c cầm nắm thoải m&aacute;i. C&ocirc;ng nghệ kết nối kh&ocirc;ng d&acirc;y 2.4Ghz ti&ecirc;n tiến kh&ocirc;ng g&acirc;y ngắt qu&atilde;ng hoặc m&acirc;́t tín hi&ecirc;̣u đ&ocirc;̣t ng&ocirc;̣t trong qu&aacute; tr&igrave;nh sử dụng v&agrave; c&oacute; thể d&ugrave;ng trong khoảng c&aacute;ch l&ecirc;n đến 10m. Bạn c&oacute; thể trang bị chuột kh&ocirc;ng d&acirc;y&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-weight: 700; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">Logitech B175</span><span style=\"color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">&nbsp;với b&agrave;n ph&iacute;m kh&ocirc;ng d&acirc;y Logitech K270, để mọi thao t&aacute;c tr&ecirc;n m&aacute;y t&iacute;nh của bạn được thoải m&aacute;i hơn cũng như thỏa sức trải nghiệm c&ocirc;ng nghệ kh&ocirc;ng d&acirc;y to&agrave;n vẹn.</span></p>\r\n<div style=\"margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-weight: 700;\">T&Iacute;NH NĂNG NỔI BẬT</span></div>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Kết nối kh&ocirc;ng d&acirc;y 2.4GHz tốc độ cao</span><br style=\"margin: 0px; padding: 0px;\" />\r\n	C&ocirc;ng nghệ s&oacute;ng kh&ocirc;ng d&acirc;y ti&ecirc;n tiến 2.4GHz, cho tốc độ tryền dữ liệu nhanh v&agrave; mạnh, gi&uacute;p t&iacute;n hiệu kh&ocirc;ng bị chập chờn, ngắt qu&atilde;ng, nhờ đ&oacute; bạn c&oacute; thể sử dụng b&agrave;n ph&iacute;m với khoảng c&aacute;ch tối đa l&ecirc;n đến 10m.</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Đầu thu s&oacute;ng si&ecirc;u nhỏ</span><br style=\"margin: 0px; padding: 0px;\" />\r\n	Đầu thu s&oacute;ng nhỏ gọn, kết nối dễ d&agrave;ng với m&aacute;y t&iacute;nh th&ocirc;ng qua cổng USB. C&ocirc;ng nghệ Unifying cho ph&eacute;p thiết bị c&oacute; thể kết nối c&ugrave;ng l&uacute;c 6 thiết bị tương th&iacute;ch. Bằng c&aacute;ch đ&oacute; bạn sẽ thoải m&aacute;i kết nối m&aacute;y t&iacute;nh với c&aacute;c thiết bị ngoại vi kh&aacute;c một c&aacute;ch đơn giản v&agrave; tiện lợi.</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif;\">\r\n	<span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Thiết kế thời trang sử dụng dễ d&agrave;ng</span><br style=\"margin: 0px; padding: 0px;\" />\r\n	Thiết kế mềm mại, th&acirc;n chuột c&oacute; k&iacute;ch thước 96(L) x 55(W) x 44 (H) mm, &ocirc;m s&aacute;t v&agrave;o l&ograve;ng b&agrave;n tay gi&uacute;p điều khiển dễ d&agrave;ng v&agrave; thoải m&aacute;i. Sử dụng pin AA, kh&ocirc;ng cần phần mềm, chỉ cần cắm đầu thu kh&ocirc;ng d&acirc;y v&agrave;o cổng USB của m&aacute;y t&iacute;nh l&agrave; bạn đ&atilde; c&oacute; thể sử dụng chuột ngay tức th&igrave;.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(137, 137, 137); font-family: Roboto, sans-serif; font-size: 13px; line-height: 18.5714px; text-align: justify; background-color: rgb(247, 245, 245);\">\r\n	&nbsp;</p>\r\n', '26.jpg', 'Chuột quang không dây', 'Chuột quang không dây', 2, 6, '2016-02-04 02:14:08', '2017-03-20 10:21:04'),
(26, 'Core2 Duo-F5000', 'core2-duo-f5000', 2000000, 0, '<p>\r\n	<span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify; background-color: rgb(204, 204, 204);\">Socket775-Bus800-3Ghz-2M-2Core</span></p>\r\n', '', 'imagesfrererere.jpg', 'Cpu Core', 'Socket775-Bus800-3Ghz-2M-2Core', 2, 10, '2016-02-04 02:15:32', '2017-03-20 10:02:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(62, '3.jpg', 25, '2017-03-20 10:18:46', '2017-03-20 10:18:46'),
(63, '20.jpg', 25, '2017-03-20 10:18:46', '2017-03-20 10:18:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintucs`
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
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `phone`, `address`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', '$2y$08$Rt9r5.sJf2Z91072u.fdWepADLvDWxzKAAutG2hoDiP7NV0aC/Lja', 'hoagnty1403@gmail.com', '', '', '', 1, 'VBHZpS3zptvhsUKIQSWBTR81vMwHlf5SALrwbHNfmjLuIxbCrL8wQRtLFcmw', '2016-02-04 01:54:02', '2016-02-04 03:21:27');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `chitiethoadons`
--
ALTER TABLE `chitiethoadons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitiethoadons_id_hoadon_foreign` (`id_hoadon`),
  ADD KEY `chitiethoadons_id_sanpham_foreign` (`id_sanpham`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadons`
--
ALTER TABLE `hoadons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintucs_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `chitiethoadons`
--
ALTER TABLE `chitiethoadons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `hoadons`
--
ALTER TABLE `hoadons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadons`
--
ALTER TABLE `chitiethoadons`
  ADD CONSTRAINT `chitiethoadons_id_hoadon_foreign` FOREIGN KEY (`id_hoadon`) REFERENCES `hoadons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitiethoadons_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  ADD CONSTRAINT `tintucs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
