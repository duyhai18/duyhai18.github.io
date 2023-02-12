-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2021 lúc 12:26 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_dophuott`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', '123456', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(15, 'Naturehike'),
(16, 'Campingmoon'),
(17, 'Alocs'),
(18, 'GIVI'),
(19, 'Volunteer'),
(20, 'NEBO'),
(21, 'SCOYCO'),
(22, 'Msquare');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 7, '0omn99jipm7namf6srjhj4kva2', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 3, '6deaf01c29.jpg'),
(2, 7, 'up8l6ff347ik19fsoa18qff452', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(3, 7, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(4, 8, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(8, 6, 'c6o66m1rfnpfhqmdffk77pu083', 'MÃ¡y tÃ­nh Dell A503', '10000000', 1, 'dbb417a309.jpg'),
(9, 8, '3e1a29t1pgb3ock6s8hi8ho2d5', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(13, 17, 'grfc2bmmrmga6mn5q7484i87f2', 'á»” Cá»©ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - HÃ ng Nháº­p Kháº©u', '1099000', 1, '785e8d373d.jpg'),
(14, 19, '39p4lauudimhcb91i8mhna4bf2', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 3, '6d72eb58ae.jpg'),
(18, 18, '3eg83l0tcklmed91e5h8raqsa2', 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', 1000, '32942e9470.jpg'),
(19, 19, 'hlkksgphiqn70b37sjg3u89unu', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 1, '6d72eb58ae.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(18, 'Đồ phượt'),
(19, 'Đồ cắm trại - Camping'),
(20, 'Đồ leo núi - Trekking'),
(21, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `phone`, `email`, `password`) VALUES
(6, 'Hải', 'Ha Long', '0123456', 'hai@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'Quan', 'bacninh', '0456123', 'quan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(60, 26, 'Lều cắm trại 3-4 người', 6, 1, '8900000', '08554d86f8.jpg', 0, '2021-10-20 03:14:53'),
(61, 28, 'Mũ bảo hiểm Lava 3/4', 6, 2, '1500000', 'f4fbc4d4e6.jpg', 0, '2021-10-20 03:14:53'),
(62, 29, 'Đèn pin đội đầu', 6, 1, '600000', '83edb11ecf.jpg', 0, '2021-10-20 16:10:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(24, 'Ghế xếp Inox ', 'NH18Y060-Z', '20', '0', '20', 19, 15, '<p><span>Chiếc&nbsp;</span><span><span>ghế xếp inox</span></span><span>&nbsp;c&oacute; lưng tựa đầu, cho tư thế ngồi thoải m&aacute;i, dễ chịu.. rất ph&ugrave; hợp cho c&aacute;c chuyến c&acirc;u c&aacute;, picnic, hoạt động ngo&agrave;i trời. Khi sử dụng xong, bạn c&oacute; thể th&aacute;o rời v&agrave; gấp gọn chiếc ghế, dễ d&agrave;ng di chuyển v&agrave; mang theo tới bất cứ đ&acirc;u.</span></p>\r\n<p><span><span>To&agrave;n bộ phần khung sử dụng chất liệu hợp kim Nh&ocirc;m với thanh chịu lực đường k&iacute;nh&nbsp;</span><span>29mm</span><span>, đảm bảo độ chắc chắn. Chất liệu hợp kim Nh&ocirc;m cũng gi&uacute;p tối giảm trọng lượng của sản phẩm, thuận tiện hơn khi cần di chuyển, cất giữ.</span></span></p>', 0, '1060000', '06d384f5fd.jpg'),
(26, 'Lều cắm trại 3-4 người', 'NH20ZP004', '15', '0', '15', 19, 15, '<p><span>Lều cắm trại 3-4 người NatureHike NH20ZP004 với diện t&iacute;ch 13 m&eacute;t vu&ocirc;ng. L&agrave; d&ograve;ng lều d&atilde; ngoại Glamping cao cấp tới từ NatureHike. Mang tới một kh&ocirc;ng gian sinh hoạt v&ocirc; c&ugrave;ng dư giả, v&agrave; sang chảnh cho cả gia đ&igrave;nh trong những buổi cắm trại.</span></p>\r\n<p>Sản phẩm mới ch&iacute;nh h&atilde;ng NatureHike hiện được ph&acirc;n phối với gi&aacute; b&aacute;n&nbsp;<span>8.500.000 đồng.</span>&nbsp;Ph&ugrave; hợp cho những gia đ&igrave;nh ti&ecirc;u chuẩn 2 người lớn 2 trẻ em. C&oacute; thể sử dụng một c&aacute;ch thuận tiện trong mỗi ng&agrave;y cuối tuần.</p>\r\n<p>Cũng như ứng dụng lều Glamping<span data-tt=\"{\">&nbsp;NatureHike NH20ZP004 d&agrave;nh cho 2 người một c&aacute;ch sang chảnh. Tiện nghi cao cấp khi sử dụng tại những khi dịch vụ Camping, Glamping mới tại Việt Nam.</span></p>\r\n<p><span><br /></span></p>', 0, '8900000', '08554d86f8.jpg'),
(28, 'Mũ bảo hiểm Lava 3/4', 'LV12345', '25', '0', '25', 18, 22, '<p>Chiếc mũ bảo hiểm Lava 3/4 tới từ Th&aacute;i Lan được đ&aacute;nh gi&aacute; l&agrave; chiếc mũ bảo hiểm 3/4 c&oacute; chất lượng cao, c&ugrave;ng với đ&oacute; l&agrave; gi&aacute; cả rất phải chăng. Vượt qua rất nhiều c&aacute;c cuộc kiểm tra kỹ thuật khắt khe nhất</p>\r\n<p>Kiểu d&aacute;ng thời trang tạo phong c&aacute;ch lịch sự nh&atilde; nhặn, đ&acirc;y l&agrave; điều m&agrave; kh&ocirc;ng phải chiếc mũ n&agrave;o cũng c&oacute; được. C&oacute; được điều n&agrave;y l&agrave; do sự tinh tế trong thiết kế của n&oacute;n bảo hiểm Lava, thiết kế một c&aacute;ch đồng nhất.</p>', 0, '750000', 'f4fbc4d4e6.jpg'),
(29, 'Đèn pin đội đầu', 'Rebel240', '50', '0', '50', 20, 20, '<p>Thỏa m&atilde;n mọi y&ecirc;u cầu của một chiếc&nbsp;<span><a href=\"https://armyhaus.com/tong-hop/den-pin-doi-dau\" rel=\"noopener noreferrer\" target=\"_blank\">đ&egrave;n pin đội đầu</a></span>&nbsp;si&ecirc;u s&aacute;ng ti&ecirc;u chuẩn, đ&egrave;n pin NEBO REBEL được hầu hết những người l&agrave;m việc trong điều kiện thiếu &aacute;nh s&aacute;ng như: Thợ mỏ, người l&agrave;m c&ocirc;ng tr&igrave;nh hay những người sử dụng đ&egrave;n pin khi đi kh&aacute;m ph&aacute; hang động&hellip;rất tin tưởng khi sử dụng.</p>\r\n<p>B&ecirc;n cạnh những t&iacute;nh năng đặc trưng của một chiếc đ&egrave;n pin đeo tr&aacute;n như tr&ecirc;n, đ&egrave;n pin đội đầu&nbsp;NEBO REBEL c&ograve;n sở hữu những t&iacute;nh năng v&ocirc; c&ugrave;ng hữu dụng kh&aacute;c để bạn c&oacute; thể tận dụng trong nhiều hoạt động kh&aacute;c nhau.</p>', 0, '600000', '83edb11ecf.jpg'),
(30, 'Áo mưa bộ', 'PRS20.AX', '20', '0', '20', 18, 18, '<p><span>&Aacute;o mưa Givi PRS20.AX l&agrave; một trong những d&ograve;ng phụ kiện chạy xe đi mưa c&oacute; chất lượng tốt, được nhiều người ti&ecirc;u d&ugrave;ng tin tưởng v&agrave; chọn mua. Sử dụng sản phẩm gi&uacute;p bạn vừa giữ kh&ocirc; r&aacute;o cho cơ thể, lại đảm bảo sức khỏe cho bản th&acirc;n khi l&aacute;i xe đường d&agrave;i.</span></p>\r\n<p>Được sử dụng thay thế c&aacute;c d&ograve;ng &aacute; mưa truyền thống, &aacute;o mưa bộ n&oacute;i chung v&agrave; &aacute;o mưa&nbsp;<a href=\"https://armyhaus.com/tong-hop/givi\" rel=\"noopener noreferrer\" target=\"_blank\"><em><span>Givi</span></em></a>&nbsp;PRS20.AX n&oacute;i ri&ecirc;ng hiện đang ng&agrave;y c&agrave;ng được nhiều người lựa chọn sử dụng.</p>\r\n<p>Với thiết kế &aacute;o quần rời gi&uacute;p cho sản phẩm gia tăng độ an to&agrave;n trong khi l&aacute;i xe, đồng thười giữ cho cơ thể kh&ocirc; tho&aacute;ng tuyệt đối. Đồng thời với chất lượng cao cấp c&ugrave;ng khả năng sử dụng lunh hoạt, sản phẩm l&agrave; lựa chọn ho&agrave;n hảo cho nhiều biker.</p>\r\n<p><span><br /></span></p>', 0, '800000', '8698cf393d.jpg'),
(31, 'Set túi đựng đồ chống nước ', 'NH18S003-B', '20', '0', '20', 21, 15, '<p><span>Sử dụng sản phẩm t&uacute;i đựng đồ chống nước gi&uacute;p người d&ugrave;ng bảo quản đồ đạc kh&ocirc; r&aacute;o trong c&aacute;c chuyến đi xa. Kh&ocirc;ng chỉ vậy, với set t&uacute;i đựng đồ chống nước, sản phẩm c&ograve;n gi&uacute;p tiết kiệm kh&ocirc;ng gian để đồ v&agrave; gi&uacute;p h&agrave;nh l&yacute; mang theo gọn g&agrave;ng hơn.</span></p>\r\n<p><span>Set 3 m&oacute;n đồ t&uacute;i đựng chống nước gi&uacute;p người d&ugrave;ng c&oacute; thể sử dụng linh hoạt, bảo quản t&agrave;i sản c&aacute; nh&acirc;n kh&ocirc;ng bị ẩm ướt. Đặc biệt, với nhiều trường hợp tai nạn đ&aacute;ng tiếc khiến vali h&agrave;nh l&yacute; bị rơi xuống nước, nếu bạn sử dụng set t&uacute;i đựng đồ chống nước sẽ gi&uacute;p đồ d&ugrave;ng b&ecirc;n trong được bảo vệ kh&ocirc; r&aacute;o.</span></p>\r\n<p>M&oacute;n phụ kiện chống nước n&agrave;y được chia l&agrave;m 3 loại t&uacute;i để với 3 size lớn nhỏ kh&aacute;c nhau. Với c&aacute;c size t&uacute;i n&agrave;y, người d&ugrave;ng c&oacute; thể tận dụng để đồ ph&acirc;n loại theo k&iacute;ch thước, tăng khả năng bảo quản hiệu quả hơn.</p>\r\n<p>Chất vải nylon gi&uacute;p sản phẩm c&oacute; khả năng chống nước tuyệt đối, ho&agrave;n to&agrave;n giữ kh&ocirc; r&aacute;o cho c&aacute;c m&oacute;n đồ b&ecirc;n trong.</p>', 1, '280000', 'c1b75920c0.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(5, 'slider1', '720bc173fa.png', 0),
(6, 'slider2', 'ff79579ac7.png', 0),
(7, 'slider3', 'a94222690e.png', 0),
(8, 'slider4', '5b2e64d6ab.jpg', 0),
(9, 'slider5', 'f50b2e4171.png', 0),
(11, 'slider6', '72a159f760.jpg', 0),
(12, 'sl1', '08d9416bea.jpg', 0),
(13, 'sl2', '35439c9986.jpg', 1),
(14, 'sl3', '533a3a725b.jpg', 1),
(15, 'sl4', '2816554f23.jpg', 1),
(16, 'sl5', '11975157f1.jpg', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
