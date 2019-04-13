-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 12, 2019 lúc 09:34 PM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) NOT NULL,
  `id_customer` int(10) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `payment` varchar(200) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) NOT NULL,
  `id_bills` int(10) DEFAULT NULL,
  `id_produce` int(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_ at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` tinyint(10) NOT NULL DEFAULT '0',
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `address`, `phone`, `note`, `email`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Chí Phèo', 1, '116 Làng lá, Quận Cam, TP.HCM', '062636395', 'x', 'pheodeptrai@gmail.com', 1, '2019-03-18 17:46:48', '2019-04-11 13:48:15'),
(7, 'Lê Bảo Minh', 1, '36 Nguyễn Thị Thập, Quận 7, TP.HCM', '0252365412', 'x', 'minhyun258@gmail.com', 1, '2019-03-18 17:50:14', '2019-04-11 13:48:26'),
(11, 'Lê Văn Đạt', 1, '69 Quận Cam, Thành phố Hồ Chí Minh', '0926462626', 'x', 'datcutelacloi@gmail.com', 1, '2019-03-18 17:25:30', '2019-04-11 13:48:31'),
(12, 'Michael', 1, '119 Paster, Quận 1, tp.HCM', '052626275', 'x', 'michael123@gmail.com', 1, '2019-03-18 17:36:28', '2019-04-11 13:48:34'),
(13, 'Thomas', 1, '121 Tân Định , Quận 1, Tp.HCM', '032623266', 'x', 'hoantu147@gmail.com', 1, '2019-03-18 17:37:29', '2019-04-11 13:48:40'),
(14, 'Nguyễn Thị Dậu', 0, '152 D2, Quận Bình Thạnh, tp.HCM', '035963512', 'x', 'daulovely@gmail.com', 1, '2019-03-18 17:38:49', '2019-03-18 17:38:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Apple', '2019-03-16 17:00:00', '2019-03-16 17:00:00'),
(2, 'Samsung', '2019-03-16 17:00:00', '2019-03-16 17:00:00'),
(3, 'Huawei', '2019-03-16 17:00:00', '2019-04-08 10:28:36'),
(4, 'Xiaomi', '2019-03-16 17:00:00', '2019-03-16 17:00:00'),
(5, 'Nokia', '2019-03-16 17:00:00', '2019-03-16 17:00:00'),
(6, 'Asus', '2019-03-16 17:00:00', '2019-03-16 17:00:00'),
(7, 'Oppo', '2019-03-17 09:30:01', '2019-03-17 09:30:01'),
(9, 'Sony', '2019-03-19 17:19:27', '2019-03-19 17:19:27'),
(10, 'Xmobile', '2019-03-19 17:20:42', '2019-03-19 17:20:42'),
(11, 'Lenovo', '2019-03-20 18:22:56', '2019-03-20 18:22:56'),
(12, 'Fenda', '2019-03-20 18:25:50', '2019-03-20 18:25:50'),
(13, 'Apacer', '2019-03-20 18:26:11', '2019-03-20 18:26:11'),
(14, 'Anitech', '2019-03-20 18:26:22', '2019-03-20 18:26:22'),
(15, 'Vivo', '2019-04-12 05:50:51', '2019-04-12 05:50:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `produce`
--

CREATE TABLE `produce` (
  `id` int(10) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_manu` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `description` text,
  `price` float DEFAULT NULL,
  `promotion_price` int(100) DEFAULT NULL,
  `new` int(10) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `produce`
--

INSERT INTO `produce` (`id`, `id_type`, `id_manu`, `name`, `vat`, `description`, `price`, `promotion_price`, `new`, `image`, `created_at`, `updated_at`) VALUES
(12, 2, 2, 'Samsung Galaxy watch 46mm', 10, 'Tổng thể Samsung Galaxy Watch 46mm có màu đen huyền sang trọng đi cùng thiết kế truyền thống với mặt đồng hồ tròn cổ điển, vòng xoay bezel cho khả năng điều hướng dễ dàng.', 7490000, 7190000, 0, '', '2019-03-19 17:25:21', '2019-04-12 16:32:57'),
(13, 1, 5, 'Nokia 6.1 Plus', 10, 'Nokia 6.1 Plus (hoặc tên khác Nokia X6) đã khiến người dùng trở nên phấn khích khi lột xác hoàn toàn trong thiết kế đến từ chiếc tai thỏ phá cách cũng như hiệu năng được cải tiến vượt bậc so với các đối thủ của nó.', 5690000, 0, 1, '13.png', '2019-03-19 17:38:05', '2019-03-19 17:38:05'),
(14, 1, 4, 'Xiaomi Mi 8', 10, 'Xiaomi Mi 8 sẽ là cái tên được nhắc đến nhiều trong gia đình Xiaomi khi mang trong mình đầy đủ những gì gọi là cao cấp đến từ vẻ đẹp bên ngoài cũng như phần cứng mạnh mẽ bên trong.', 12990000, 10590000, 1, '14.png', '2019-03-19 17:38:58', '2019-03-19 18:19:41'),
(15, 1, 3, 'Huawei Nova 3', 10, 'Nếu như bạn là một người yêu thích thiết kế của siêu phẩm Huawei P20 Pro nhưng cần một mức giá dễ chịu hơn thì Huawei Nova 3 sẽ là một sự lựa chọn phải chăng dành cho bạn.', 9990000, 8990000, 1, '15.png', '2019-03-19 17:40:14', '2019-03-19 18:19:52'),
(16, 1, 3, 'Huawei Y7 Pro (2019) red', 10, 'Là phiên bản ra mắt riêng vào đầu năm mới, Y7 Pro (2019) màu đỏ như một món quà tặng của Huawei đến người dùng với một lời chúc tài lộc cũng như đầy may mắn.', 3990000, 0, 1, '16.png', '2019-03-19 17:41:28', '2019-03-19 17:41:28'),
(17, 3, 2, 'Samsung Galaxy Tab A6', 10, 'Tiếp nối sự thành công của chiếc Samsung Galaxy Tab A thì mới đây Samsung đã giới thiệu phiên bản cải tiến là chiếc Galaxy Tab A6 10.1 với nhiều nâng cấp đáng giá về cấu hình và thiết kế.', 7490000, 7190000, 1, '17.png', '2019-03-20 18:19:04', '2019-03-20 18:19:04'),
(18, 5, 3, 'Huawei Mediapad T5', NULL, NULL, 5690000, 5290000, 1, '18.png', '2019-03-20 18:20:49', '2019-03-20 18:20:49'),
(19, 3, 2, 'Samsung Galaxy Tab E', 10, 'Samsung Galaxy Tab E 9.6 là một sự lựa chọn cho bạn thích một chiếc máy có màn hình lớn để giải trí thoải mái hơn nhưng cấu hình không quá thấp.', 3990000, 3790000, 1, '19.jpg', '2019-03-20 18:21:49', '2019-03-20 21:21:50'),
(20, 3, 11, 'Lenovo Tab 7 Essential', 10, 'Lenovo Tab 7 Essential 16GB (TB-7304X) là phiên bản nâng cấp với thiết kế mỏng hơn và đặc biệt có tích hợp 4G rất tiện ích.', 2390000, 2190000, 1, '20.png', '2019-03-20 18:23:52', '2019-03-20 18:23:52'),
(21, 4, 12, 'Loa Bluetooth Fenda W8', 10, 'Loa Bluetooth Fenda W8 có thiết kế rất bắt mắt với các đường cắt vát kim cương', 500000, 350000, 1, 'PIiI_40347684_252645848722844_1359380238928183296_n.jpg', '2019-03-20 18:27:17', '2019-04-12 18:37:21'),
(23, 1, 15, 'Vivo', NULL, 'eqweqweqweqw', 20000000, NULL, NULL, 'mJxO_iphone-6s-plus-32gb-400x450-400x450.png', '2019-04-12 05:54:58', '2019-04-12 05:54:58'),
(24, 1, 6, 'zenphone 8', NULL, 'eqweqweqweqw', 8000000, NULL, NULL, 'oXBx_27164474_1575808975807126_7026812142127267783_o.jpg', '2019-04-12 18:36:39', '2019-04-12 18:36:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `image` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Xiaomi phát hành phiên bản Beta 9.3.14 của MIUI 10 Global, khắc phục một số lỗi', 'Theo Gizchina, Xiaomi vừa phát hành phiên bản Beta 9.3.14 của MIUI 10 Global (Quốc tế) cho nhiều thiết bị. Tuy nhiên, bản cập nhật dành cho Redmi Note 4, Redmi Note 4X và Redmi S2 sẽ bị trì hoãn trong một khoảng thời gian do một số vấn đề kỹ thuật phát sinh.\r\nBản Beta 9.3.14 của MIUI 10 Global có một số thay đổi như sau: \r\n\r\n- Hình nền động: Đã sửa lỗi hình nền động không hiển thị sau khi đánh thức thiết bị.\r\n\r\n- Màn hình khóa: Bây giờ, người dùng vẫn có thể giữ máy ở trạng thái màn hình khóa ngay cả khi khuôn mặt đã được nhận dạng thành công. Chức năng này có thể được kích hoạt bằng cách vào Cài đặt -> Màn hình khóa và mật khẩu -> Quản lý dữ liệu khuôn mặt.\r\n\r\nmiui-10\r\nTrước khi tiến hành cài đặt, nếu bạn dùng phiên bản ROM cũ hơn MIUI 9 hoặc MIUI 10, bạn sẽ cần mở khóa bootloader và cập nhật bằng phương pháp fastboot. Trên MIUI 9 và MIUI 10, bạn có thể vào ứng dụng Trình cập nhật (Updater) và tìm kiếm bản cập nhật mới. Ngoài ra, do đây là phiên bản beta nên bạn nhớ sao lưu dữ liệu trước khi tiến hành nâng cấp.\r\n\r\nSau đây là danh sách các thiết bị đã có thể tải xuống bản cập nhật:\r\n\r\nDòng Redmi: \r\n\r\nRedmi 3S\r\nRedmi 4A\r\nRedmi 4X\r\nRedmi 5\r\nRedmi 5A\r\nRedmi 6\r\nRedmi 6A\r\nRedmi 6 Pro Ấn Độ\r\nDòng Redmi Note: \r\n\r\nRedmi Note 3 Special Edition\r\nRedmi Note 4\r\nRedmi Note 5A/Redmi Y1 Lite\r\nRedmi Note 5A Prime/Redmi Y1\r\nRedmi Note 5/Pro\r\nRedmi Note 6 Pro.\r\nDòng Mi:\r\n\r\nMi 5s\r\nMi 5s Plus\r\nMi 6\r\nMi 8\r\nMi 8 Pro\r\nMi 8 Lite\r\nMi Max 2\r\nMi Max 3\r\nMi MIX\r\nMi MIX 2\r\nMi MIX 2S\r\nMi MIX 3\r\nMi Note 2\r\nMi Note 3', 'slide1.jpg', '2019-03-17 10:07:59', '2019-03-24 01:30:33'),
(2, 'Galaxy A50 quá “hot”, đã có hơn 10.000 khách đặt cọc', 'Với cấu hình tốt và nhiều công nghệ hiện đại, lại có giá bán rất hợp lý kèm theo hàng loạt phần quà giá trị, Galaxy A50 nhanh chóng được hơn 15.100 khách đặt mua, trong đó hơn 10.200 khách đã đặt cọc để trở thành một trong những người đầu tiên sở hữu chiếc smartphone mới nhất thuộc dòng A của Samsung tại Việt Nam.\r\n\r\nKhông khó để lý giải cho sức hút của Galaxy A50. Máy có cấu hình mạnh mẽ (chip Exynos 9610, RAM 4 – 6 GB, ROM 64 – 128 GB), camera chất lượng (3 camera sau hỗ trợ chụp thiếu sáng, chụp góc siêu rộng lẫn chụp xóa phông, camera seflie lên đến 25 MP), viên pin dung lượng cao (4.000 mAh) và lại còn được trang bị công nghệ cảm biến vân tay nhúng dưới màn hình.\r\n\r\nBên cạnh đó, khi đặt trước Galaxy A50 trong khoảng thời gian từ 10/3 – 22/3/2019, khách hàng sẽ được hưởng những ưu đãi hấp dẫn bao gồm:\r\n\r\nPin dự phòng Samsung 10.000 mAh tích hợp sạc nhanh.\r\nGói bảo hiểm rơi vỡ 6 tháng.\r\nTrả góp 0% lãi suất.\r\nCơ hội trúng 100 bao lì xì trị giá 2 tỷ đồng.\r\nTai nghe Roman (áp dụng khi mua phiên bản 128 GB bộ nhớ trong).', 'slide2.jpg', '2019-03-17 10:08:49', '2019-03-19 16:16:36'),
(3, 'Đây là những cải tiến mới của Android Q trong bản beta đầu tiên', 'Android Q là phiên bản lớn tiếp theo của hệ điều hành Android sau Android 9 Pie và nó vừa được ra mắt phiên bản beta đầu tiên. Dưới đây là tất cả những sự thay đổi trong phiên bản thử nghiệm mới nhất của Android Q.\r\n*Lưu ý: Một số ảnh dùng trong bài được chụp từ máy đang ở dạng beta nên chất lượng ảnh không tốt lắm, mong bạn thông cảm!\r\n\r\nThay đổi màu nhấn\r\nAndroid Q hỗ trợ nhiều các màu nhấn khác nhau thông qua mục “theming” mới trong Cài đặt dành cho nhà phát triển, ngoài ra còn có hai lựa chọn khác trong mục này là font Headline/Body và hình dạng biểu tượng. Người dùng có thể chọn lựa bốn màu nhấn khác nhau gồm xanh lam, xanh lá, đen và tím.\r\n\r\nSự lựa chọn font Headline/Body sẽ cho phép người dùng chọn giữa phông chữ mặc định của thiết bị (như hình trên) và Noto Serif/Source Sans Pro\r\nCuối cùng là tùy chọn hình dạng biểu tượng. Tính năng này khá quen thuộc, cho phép người dùng thay đổi toàn bộ các biểu tượng ứng dụng thành các hình dạng như hình tròn (mặc định của điện thoại), hình giọt nước, hình vuông bo tròn hoặc hình chữ nhật.\r\n\r\nBiểu tượng pin trên màn hình luôn hiển thị (AOD)\r\nGoogle đã chuyển biểu tượng pin từ vị trí phía dưới sang góc trên bên phải của màn hình luôn hiển thị.\r\n\r\nƯớc tính thời lượng sử dụng trong cài đặt nhanh\r\nCài đặt nhanh của Android Q sẽ hiển thị thời lượng sử dụng dự kiến của điện thoại.\r\n\r\nMenu chia sẻ được cải tiến\r\nGoogle đã mang đến một số cải tiến cần thiết cho menu chia sẻ của Android. Tuy giao diện chỉ khác một chút nhưng toàn bộ menu lại hiển thị nhanh hơn so với các phiên bản Android trước đây.\r\n\r\nThiết kế notch và các góc bo tròn được hiển thị trong ảnh chụp màn hình\r\nTrong các phiên bản Android trước, hệ thống sẽ lấp đầy các khoảng trống nếu nó nhận biết được phần bị mất từ thiết kế notch hay các cạnh tròn của màn hình. Nhưng với Android Q, điều này đã không còn.\r\n\r\nVuốt sang phải để xóa các thông báo\r\nNgười dùng sẽ không thể vuốt để xóa thông báo theo nhiều cách như trước. Với Android Q, vuốt sang phải vẫn sẽ xóa các thông báo và khi vuốt sang trái sẽ hiển thị menu ngữ cảnh, cho phép người dùng báo lại hoặc tắt tiếng thông báo. Khi mở rộng, nó sẽ cung cấp nhiều tùy chọn hơn như chặn, hiển thị yên lặng, tiếp tục thông báo.\r\n\r\nAndroid Q không có chế độ tối\r\nGoogle có thể bổ sung hoặc xóa vài tính năng trong bản beta và những tính năng này có thể được xuất hiện trở lại trong các phiên bản tương lai. Trong phiên bản beta hiện tại, chế độ tối của Android đã biến mất trong menu Cài đặt hiển thị (trừ khi người dùng đã kích hoạt chế độ tối lúc cài đặt Android Q). Hiện tại có hai cách để bật chế độ tối là kích hoạt tùy chọn Tiết kiệm pin hoặc thông qua các lệnh ADB.\r\n\r\nChuông bên cạnh mốc thời gian thông báo\r\nNếu điện thoại của người dùng đổ chuông từ một thông báo thì sẽ có một cái chuông nhỏ bên cạnh mốc thời gian của thông báo đó.\r\n\r\nChia sẻ Wi-Fi với mã QR\r\nNgười dùng có thể chia sẻ Wi-Fi với bạn bè bằng chọn mạng muốn chia sẻ, nhấn vào biểu tượng Chia sẻ, sau đó nhập mật khẩu của điện thoại để xác nhận. Một mã QR đặc biệt sẽ được hiển thị để người bạn này có thể quét và kết nối vào mạng.\r\n\r\nNút khẩn cấp trong menu nguồn\r\nVới Android Q, khi người dùng nhấn giữ nút nguồn, màn hình sẽ hiển thị thêm biểu tượng khẩn cấp mới để truy cập nhanh vào trình quay số khẩn cấp.\r\n\r\nMục bảo mật trong Cài đặt\r\nTrong Cài đặt của Android Q có mục Bảo mật mới, thông qua nó người dùng có thể cấp phép ứng dụng, cài đặt nội dung trên màn hình khóa, dịch vụ autofill, lịch sử vị trí, thói quen và chẩn đoán.\r\n\r\nTheme Material được làm lại\r\nNhững ứng dụng hình nền, trang thông tin ứng dụng và nhiều cái khác đã được điều chỉnh trong theme Material mới của Google.\r\n\r\nChế độ desktop ẩn\r\nChế độ này sẽ cung cấp giao diện phong cách máy tính khi người dùng kết nối điện thoại với màn hình ngoài.\r\n\r\nTrên đây là những thay đổi hiện tại trong bản beta đầu tiên của Android Q. Bạn thấy những thay đổi này như thế nào? Hãy để lại bình luận ở bên dưới!\r\n\r\nNguồn: AndroidAuthority', 'slide3.jpg', '2019-03-17 10:10:50', '2019-03-24 01:30:38'),
(4, 'Apple bán ra thị trường 35 triệu cặp tai nghe AirPods trong năm 2018', 'Hôm nay, báo cáo của Counterpoint Research cho thấy, trong năm 2018 Apple đã bán được khoảng 35 triệu cặp tai nghe không dây AirPods. Theo hãng phân tích này, AirPods hiện là tai nghe không dây phổ biến nhất.\r\nĐã có một số tin đồn cho biết, tai nghe không dây AirPods thế hệ thứ hai cũng có thể tích hợp các tính năng theo dõi sức khỏe.\r\n\r\nCounterpoint Research cho biết, trong một cuộc khảo sát trực tuyến với hơn 200 người tham gia, 19% số người được hỏi thích tai nghe mang nhãn hiệu Apple. Theo kết quả khảo sát, trong số những người mua tai nghe không dây AirPods, sự thoải mái và phù hợp là sự cân nhắc chính, tiếp theo là dễ dàng sử dụng.\r\n\r\nApple bán ra thị trường 35 triệu cặp tai nghe AirPods trong năm 2018\r\nTrong thực tế, chất lượng âm thanh là yếu tố cuối cùng mà người trả lời xem xét. Khi nói đến chất lượng âm thanh, khảo sát của Counterpoint Research cho thấy có tới 72% người dùng mua tai nghe không dây Bose đã làm như vậy vì chất lượng âm thanh.\r\n\r\nCho đến nay, Apple vẫn chưa công bố doanh số cụ thể của tai nghe không dây AirPods, nhưng hãng vẫn tiếp tục tập trung quảng cáo AirPods rất dễ dàng sử dụng. Gần đây, công ty cho biết AirPods đã đạt được sự đơn giản hóa, 1 bước là kết nối, 1 bước là ngừng kết nối.\r\n\r\nApple sẽ tổ chức buổi ra mắt sản phẩm mới vào ngày 26/3 tới và tai nghe không dây AirPods thế hệ thứ 2 có thể được phát hành tại đây. Theo các tin đồn gần đây, AirPods 2 có thể có 2 màu là đen và trắng, ngoài ra, nó vẫn giữ mức giá là 199 USD (khoảng 4.6 triệu đồng).\r\n\r\nNguồn: Gizchina', 'slide4.jpg', '2019-03-17 10:11:35', '2019-03-24 01:30:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_produce`
--

CREATE TABLE `type_produce` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `type_produce`
--

INSERT INTO `type_produce` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', '2019-03-17 09:37:26', '2019-03-17 09:37:26'),
(2, 'Smart Watch', '2019-03-17 09:37:50', '2019-03-17 09:37:50'),
(3, 'Tablet', '2019-03-17 09:38:01', '2019-03-17 09:38:01'),
(4, 'Phụ Kiện', '2019-03-17 09:38:19', '2019-03-17 09:38:19'),
(5, 'Ipad', '2019-03-19 17:01:31', '2019-04-08 18:13:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '1',
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `position` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `gender`, `phone`, `image`, `position`, `created_at`, `updated_at`) VALUES
(1, 'huynh11khang@gmail.com', '$2y$10$qtOCXYMxBDw0.JpywCcBM.b5g3qmdwm6bDFQKWEKeaTuKGStbe4h.', 'Huỳnh Huy Khang', 1, '0981646415', 'pGk6_face15.jpg', 1, '2019-04-05 11:25:17', '2019-04-08 18:38:15'),
(7, 'xuantruong@gmail.com', '$2y$10$CypXo.cU8932k/RrqRc1S.NEcR0omfr/AFJD5qllBkSu4qqVUd1me', 'Nguyễn Xuân Trường', 1, '0989108802', 'xhdX_face9.jpg', 0, '2019-04-07 10:23:09', '2019-04-07 11:47:37'),
(9, 'minhanh1603@gmail.com', '$2y$10$jGzwQAzZ.zoOsja2TT9QoOZvmnzehJYQWHtttqxRcczXsUkP4tNYq', 'Minh Anh', 0, '0121255968', 'jVwC_face2.jpg', NULL, '2019-04-08 18:32:58', '2019-04-09 11:38:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id customer` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_bills` (`id_bills`),
  ADD UNIQUE KEY `id_bills_2` (`id_bills`,`id_produce`),
  ADD KEY `id_produce` (`id_produce`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `produce`
--
ALTER TABLE `produce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_manu` (`id_manu`) USING BTREE,
  ADD KEY `id_type` (`id_type`) USING BTREE;

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_produce`
--
ALTER TABLE `type_produce`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `type_produce`
--
ALTER TABLE `type_produce`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`);

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_produce`) REFERENCES `produce` (`id`);

--
-- Các ràng buộc cho bảng `produce`
--
ALTER TABLE `produce`
  ADD CONSTRAINT `a2` FOREIGN KEY (`id_type`) REFERENCES `type_produce` (`id`),
  ADD CONSTRAINT `produce_ibfk_2` FOREIGN KEY (`id_manu`) REFERENCES `manufacturer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
