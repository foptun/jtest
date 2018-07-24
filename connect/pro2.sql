-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 24, 2018 at 06:48 PM
-- Server version: 10.3.8-MariaDB-1:10.3.8+maria~jessie
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `tel`) VALUES
(1, 'admin', '1234', 'Kritsana', 'Jandapadit', 'admin@mail', '0898765432'),
(2, '', '1', '1', '1', '1', '1'),
(3, '', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_car`
--

CREATE TABLE `tb_car` (
  `id` int(11) NOT NULL,
  `id_category_car` int(11) NOT NULL,
  `car_char` varchar(20) NOT NULL COMMENT 'ตักอักษรทะเบียนรถ',
  `car_number` varchar(20) NOT NULL COMMENT 'เลขทะเบียนรถ',
  `car_province_id` int(11) NOT NULL COMMENT 'id จังหวัดทะเบียนรถ',
  `car_brand` varchar(255) NOT NULL COMMENT 'ยี่ห้อรถ',
  `car_model` varchar(255) NOT NULL COMMENT 'รุ่นโมเดลรถ',
  `car_cc` int(11) NOT NULL,
  `car_chassis` varchar(255) NOT NULL COMMENT 'เลขตัวถังรถ',
  `car_reg_date` date DEFAULT NULL COMMENT 'วันจดทะเบียนรถ',
  `car_exp_date` date NOT NULL COMMENT 'วันหมดภาษี(ล่าสุด)',
  `id_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_car`
--

INSERT INTO `tb_car` (`id`, `id_category_car`, `car_char`, `car_number`, `car_province_id`, `car_brand`, `car_model`, `car_cc`, `car_chassis`, `car_reg_date`, `car_exp_date`, `id_customer`) VALUES
(1, 3, 'บจ', '8045', 32, 'Isuzu', 'D-Max', 0, 'CS0KJ456274651950', '2014-12-21', '0000-00-00', 1),
(2, 2, 'กง', '1004', 28, 'Honda', 'City', 0, 'MR0EZ39G308523335', '2015-12-21', '0000-00-00', 4),
(22, 2, '1', '1', 4, '1', '1', 0, '1', '0001-01-01', '0000-00-00', 5),
(23, 5, '44', '44', 11, '44', '44', 0, '44', '2018-06-04', '0000-00-00', 6),
(24, 4, '2', '2', 2, '2', '2', 0, '2', '2018-06-13', '0000-00-00', 7),
(25, 4, '2', '2', 2, '2', '2', 0, '2', '2018-06-13', '0000-00-00', 8),
(26, 2, 'E', 'E', 3, 'E', 'E', 0, 'E', '2018-06-05', '2018-06-12', 18),
(27, 2, 'E', 'E', 3, 'E', 'E', 0, 'E', '2018-06-05', '2018-06-12', 19),
(28, 2, 'E', 'E', 3, 'E', 'E', 0, 'E', '2018-06-05', '2018-06-12', 20),
(29, 2, 'E', 'E', 3, 'E', 'E', 0, 'E', '2018-06-05', '2018-06-12', 21),
(30, 2, 'กง', '6391', 24, 'Toyota', 'Yaris 2014', 0, 'CXDMDDYZ00312R', '2014-04-15', '2018-04-15', 22),
(31, 19, 'e', 'e', 4, 'e', 'e', 1200, 'e', '2010-02-10', '2018-02-10', 23),
(32, 19, 'e', 'e', 7, 'e', 'e', 1500, 'e', '2016-01-01', '2018-01-01', 24),
(33, 19, 'aaa', 'aaa', 2, '1', '1', 1111, '1', '2012-01-01', '2018-01-01', 25),
(34, 19, '2', '2', 2, '2', '2', 1600, '2', '2012-02-02', '2018-02-02', 26),
(35, 13, 'e', 'e', 4, 'e', 'e', 2500, 'e', '2014-01-01', '2017-06-18', 27),
(36, 25, '1', '1', 2, '1', '1', 150, '1', '2018-06-01', '2017-09-10', 28),
(37, 26, '2', '2', 1, '2', '2', 1000, '2', '2014-02-02', '2014-02-02', 29),
(38, 26, '2', '2', 1, '2', '2', 1000, '2', '2014-02-02', '2018-02-02', 30),
(39, 19, '3', '3', 1, '3', '3', 2500, '3', '2010-03-03', '2015-03-03', 31),
(40, 19, '3', '3', 1, '3', '3', 1600, '3', '2010-03-03', '2015-03-03', 32),
(41, 19, 'กบ', '4004', 29, 'TOYOTA', 'YARIS 2014', 1200, 'FFGX2SY7Q5W7ESSDA', '0214-04-12', '2018-04-12', 33);

-- --------------------------------------------------------

--
-- Table structure for table `tb_category_car`
--

CREATE TABLE `tb_category_car` (
  `id` int(11) NOT NULL,
  `category_car_title` enum('รย.1','รย.2','รย.3','รย.12') NOT NULL,
  `category_car_name` varchar(255) NOT NULL COMMENT 'ชื่อประเภทรถ',
  `price_check_car` double NOT NULL COMMENT 'ค่าตรวจสภาพ',
  `price_atc` double NOT NULL COMMENT 'ค่าเบี้ย พรบ.',
  `price_car_tax` double NOT NULL COMMENT 'ค่าภาษีรถ',
  `price_service` double NOT NULL COMMENT 'ค่าบริการต่อภาษี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_category_car`
--

INSERT INTO `tb_category_car` (`id`, `category_car_title`, `category_car_name`, `price_check_car`, `price_atc`, `price_car_tax`, `price_service`) VALUES
(13, 'รย.3', 'รย.3 (3)รถกระบะบรรทุก น้ำหนัก 1,251 - 1,500', 200, 967, 900, 100),
(14, 'รย.3', 'รย.3 (4)รถกระบะบรรทุก น้ำหนัก 1,501 - 1,750', 200, 967, 1050, 200),
(15, 'รย.3', 'รย.3 (5)รถกระบะบรรทุก น้ำหนัก 1,751 - 2,000', 200, 967, 1350, 300),
(16, 'รย.2', 'รย.2 รถยนต์นั่งส่วนบุคคลเกิน 7 คน น้ำหนัก 1,501 - 1,750', 200, 1182, 1300, 100),
(17, 'รย.2', 'รย.2 รถยนต์นั่งส่วนบุคคลเกิน 7 คน น้ำหนัก 1,751 - 2,000', 200, 1182, 1600, 200),
(18, 'รย.2', 'รย.2 รถยนต์นั่งส่วนบุคคลเกิน 7 คน น้ำหนัก 2,001 - 2,500', 300, 1182, 1900, 300),
(19, 'รย.1', 'รย.1 รถยนต์นั่งส่วนบุคคลไม่เกิน 7 คน', 200, 645, 0, 100),
(23, 'รย.12', 'รย.12 (1)รถจักรยานยนต์ (0-75) cc', 60, 161, 100, 90),
(24, 'รย.12', 'รย.12 (2)รถจักรยานยนต์ (76-125) cc', 60, 323, 100, 90),
(25, 'รย.12', 'รย.12 (3)รถจักรยานยนต์ (126-150) cc', 60, 430, 100, 90),
(26, 'รย.12', 'รย.12 (4)รถจักรยานยนต์ (151-9999) cc', 60, 645, 100, 100),
(27, 'รย.2', 'รย.2 รถยนต์นั่งส่วนบุคคลเกิน 7 คน น้ำหนัก 1,251 - 1,500', 200, 1182, 1000, 100),
(28, 'รย.2', 'รย.2 รถยนต์นั่งส่วนบุคคลเกิน 7 คน น้ำหนัก 1,001 - 1,250', 200, 1182, 800, 100),
(29, 'รย.3', 'รย.3 (1)รถกระบะบรรทุก น้ำหนัก 751 - 1,000', 200, 967, 600, 100),
(30, 'รย.3', 'รย.3 (2)รถกระบะบรรทุก น้ำหนัก 1,001 - 1,250', 200, 967, 750, 100),
(31, 'รย.3', 'รย.3 (6)รถกระบะบรรทุก น้ำหนัก 2,001 - 2,500', 300, 967, 1650, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tb_customer`
--

CREATE TABLE `tb_customer` (
  `id` int(11) NOT NULL COMMENT 'รหัสลูกค้า',
  `id_card_number` varchar(13) NOT NULL COMMENT 'เลขบัตรประชาชน',
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `sex` enum('ชาย','หญิง') NOT NULL COMMENT 'ชาย, หญิง',
  `address` text NOT NULL,
  `tel` varchar(20) NOT NULL,
  `time_reg` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_customer`
--

INSERT INTO `tb_customer` (`id`, `id_card_number`, `firstname`, `lastname`, `sex`, `address`, `tel`, `time_reg`) VALUES
(1, '1489900133476', 'กฤษณะ', 'จันดาประดิษฐ์', 'ชาย', '263 ม.1 ต.ท่าอุเทน อ.ท่าอุเทน จ. นครพนม 48120', '0812345678', '2018-05-02 00:00:00'),
(4, '1423245657812', 'สมชาย', 'ใจดี', 'ชาย', '263 ม.1 ต.ท่าอุเทน อ.ท่าอุเทน จ. นครพนม 48120', '0864567890', '2018-05-02 00:00:00'),
(5, '1', '1', '1', 'ชาย', '1', '1', '2018-06-11 16:02:34'),
(6, '44', '44', '44', 'หญิง', '44', '44', '2018-06-11 16:05:43'),
(7, '2', '2', '2', 'ชาย', '2', '2', '2018-06-12 14:49:48'),
(8, '2', '2', '2', 'ชาย', '2', '2', '2018-06-12 14:51:14'),
(9, 'e', 'e', 'e', 'ชาย', 'e', 'e', '2018-06-13 17:01:46'),
(10, 'e', 'e', 'e', 'ชาย', 'e', 'e', '2018-06-13 17:02:40'),
(11, 'e', 'e', 'e', 'ชาย', 'e', 'e', '2018-06-13 17:02:45'),
(12, 'e', 'e', 'e', 'ชาย', 'e', 'e', '2018-06-13 17:02:48'),
(13, 'e', 'e', 'e', 'ชาย', 'e', 'e', '2018-06-13 17:04:24'),
(14, 'E', 'E', 'E', 'ชาย', 'E', 'E', '2018-06-13 17:05:15'),
(15, 'E', 'E', 'E', 'ชาย', 'E', 'E', '2018-06-13 17:05:25'),
(16, 'E', 'E', 'E', 'ชาย', 'E', 'E', '2018-06-13 17:07:53'),
(17, 'E', 'E', 'E', 'ชาย', 'E', 'E', '2018-06-13 17:07:57'),
(18, 'E', 'E', 'E', 'ชาย', 'E', 'E', '2018-06-13 17:08:05'),
(19, 'E', 'E', 'E', 'ชาย', 'E', 'E', '2018-06-13 17:08:15'),
(20, 'E', 'E', 'E', 'ชาย', 'E', 'E', '2018-06-13 17:08:34'),
(21, 'E', 'E', 'E', 'ชาย', 'E', 'E', '2018-06-13 17:08:44'),
(22, '1350100232863', 'อรรถสิทธิ์', 'คัมภ์ทวี', 'ชาย', '64 หมู่ที่ 8 บ้านนาคำ ตำบล เดิด อำเภอเมือง จังหวัดยโสธร 35000', '0823456789', '2018-06-13 17:15:54'),
(23, 'e', 'e', 'e', 'ชาย', 'e', 'e', '2018-06-18 16:48:38'),
(24, 'e', 'e', 'e', 'ชาย', 'e', 'e', '2018-06-19 15:19:07'),
(25, '1a1', '1a1', '1a1', 'หญิง', '1a1', '1a1', '2018-06-19 15:34:55'),
(26, '2', '22', '2', 'ชาย', '2', '2', '2018-06-19 15:39:00'),
(27, 'e', 'e', 'e', 'ชาย', 'e', 'e', '2018-06-19 16:58:12'),
(28, '1', '1', '1', 'ชาย', '1', '1', '2018-06-30 16:25:40'),
(29, '2', '2', '2', 'ชาย', '2', '2', '2018-07-09 14:47:05'),
(30, '2', '2', '2', 'ชาย', '2', '2', '2018-07-09 14:47:55'),
(31, '3', '3', '3', 'ชาย', '3', '3', '2018-07-09 14:57:19'),
(32, '3', '3', '3', 'ชาย', '3', '3', '2018-07-09 16:36:28'),
(33, '444', 'เพชรย้อม', 'พร้อมเสมอ', 'หญิง', '555 บ้านหนองใส ตำบลหนองนาคำ อำเภอเมือง จังหวัดอุดรธานี', '0819545193', '2018-07-11 17:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_employee`
--

CREATE TABLE `tb_employee` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_employee`
--

INSERT INTO `tb_employee` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `tel`) VALUES
(1, 'e1', 'e1', 'สมชาย', 'เทพประทาน', 'e1@mail.com', '0866666666');

-- --------------------------------------------------------

--
-- Table structure for table `tb_insurance_company`
--

CREATE TABLE `tb_insurance_company` (
  `id` int(11) NOT NULL,
  `insurance_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_insurance_company`
--

INSERT INTO `tb_insurance_company` (`id`, `insurance_name`) VALUES
(0, 'ไม่มีประกัน'),
(1, 'วิริยะประกันภัย'),
(2, 'ธนชาตประกันภัย');

-- --------------------------------------------------------

--
-- Table structure for table `tb_insurance_type`
--

CREATE TABLE `tb_insurance_type` (
  `id` int(11) NOT NULL,
  `id_insurance_company` int(11) NOT NULL COMMENT 'id บริษัทประกัน',
  `level_name` varchar(255) NOT NULL COMMENT 'ประกัน ชั้น(1,2,3)',
  `price_premium` double NOT NULL COMMENT 'ค่าเบี้ยประกันภัย'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_insurance_type`
--

INSERT INTO `tb_insurance_type` (`id`, `id_insurance_company`, `level_name`, `price_premium`) VALUES
(0, 0, 'ไม่มีประกัน', 0),
(1, 1, 'ชั้น 1', 20000),
(2, 1, 'ชั้น 2', 15000),
(3, 1, 'ชั้น 3', 9000),
(4, 2, 'ชั้น 1', 19000),
(5, 2, 'ชั้น 2', 12000),
(6, 2, 'ชั้น 3', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_service`
--

CREATE TABLE `tb_order_service` (
  `id` int(11) NOT NULL,
  `id_car` int(11) NOT NULL,
  `id_insurance_type` int(11) DEFAULT NULL COMMENT 'รูปแบบประกันภัย',
  `service_date` date DEFAULT NULL COMMENT 'วันที่มาใช้บริการ',
  `price_car_tax_order` int(11) NOT NULL COMMENT 'ค่าภาษีรถ(ที่คำนวนแล้ว)',
  `price_car_tax_owe` int(11) NOT NULL COMMENT 'ค่าภาษีย้อนหลัง(ตามจำนวนปีที่ขาด)',
  `price_tax_fine` double DEFAULT 0 COMMENT 'ค่าปรับภาษี(เดือนละ 1% ของภาษี)',
  `price_service_express` int(11) DEFAULT 0 COMMENT 'ค่าบริการต่อภาษีด่วน',
  `id_employee` int(11) NOT NULL,
  `work_status` enum('ไม่เรียบร้อย','กำลังดำเนินการ','เรียบร้อย','ปิดการขาย') DEFAULT 'ไม่เรียบร้อย'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_order_service`
--

INSERT INTO `tb_order_service` (`id`, `id_car`, `id_insurance_type`, `service_date`, `price_car_tax_order`, `price_car_tax_owe`, `price_tax_fine`, `price_service_express`, `id_employee`, `work_status`) VALUES
(5, 21, 0, '2018-06-11', 0, 0, 0, 0, 1, 'กำลังดำเนินการ'),
(6, 1, 1, '2018-06-11', 0, 0, 0, 0, 1, 'กำลังดำเนินการ'),
(8, 0, 0, '2018-06-11', 0, 0, 0, 0, 1, 'กำลังดำเนินการ'),
(11, 9, 0, '2018-06-13', 0, 0, 36.6, 0, 1, 'กำลังดำเนินการ'),
(12, 10, 0, '2018-06-13', 0, 0, 36.6, 0, 1, 'กำลังดำเนินการ'),
(13, 11, 0, '2018-06-13', 0, 0, 36.6, 0, 1, 'กำลังดำเนินการ'),
(14, 12, 0, '2018-06-13', 0, 0, 36.6, 0, 1, 'กำลังดำเนินการ'),
(15, 12, 0, '2018-06-13', 0, 0, 36.6, 0, 1, 'กำลังดำเนินการ'),
(16, 13, 0, '2018-06-13', 0, 0, 36.6, 0, 1, 'กำลังดำเนินการ'),
(17, 14, 0, '2018-06-13', 0, 0, 6.1, 0, 1, 'กำลังดำเนินการ'),
(18, 15, 0, '2018-06-13', 0, 0, 6.1, 0, 1, 'กำลังดำเนินการ'),
(19, 16, 0, '2018-06-13', 0, 0, 6.1, 0, 1, 'กำลังดำเนินการ'),
(20, 17, 0, '2018-06-13', 0, 0, 6.1, 0, 1, 'กำลังดำเนินการ'),
(25, 30, 0, '2018-06-13', 0, 0, 12.2, 0, 1, 'กำลังดำเนินการ'),
(28, 33, 0, '2018-06-19', 959, 0, 57.51, 111, 1, 'ปิดการขาย'),
(30, 35, 0, '2018-06-19', 900, 0, 117, 240, 1, 'ปิดการขาย'),
(31, 36, 0, '2018-06-30', 100, 0, 10, 150, 1, 'ปิดการขาย'),
(32, 38, 0, '2018-07-09', 100, 400, 54, 2, 1, 'ปิดการขาย'),
(33, 39, 0, '2018-07-09', 3426, 10278, 1404.7215, 10000, 1, 'ปิดการขาย'),
(34, 40, 0, '2018-07-09', 1259, 3777, 516.1695, 10000, 1, 'ปิดการขาย'),
(35, 33, 0, '2018-07-09', 959, 0, 67.095, 10000, 1, 'ปิดการขาย'),
(36, 33, 0, '2018-07-09', 959, 0, 67.095, 10000, 1, 'ปิดการขาย'),
(37, 35, 0, '2018-07-09', 900, 900, 116, 20000, 1, 'ปิดการขาย'),
(38, 33, 0, '2018-07-11', 959, 0, 67.095, 10000, 1, 'ปิดการขาย'),
(39, 33, 0, '2018-07-11', 959, 0, 67.095, 0, 1, 'ปิดการขาย'),
(40, 41, 0, '2018-07-11', 599, 0, 17.9775, 400, 1, 'ปิดการขาย'),
(41, 41, 0, '2018-07-18', 599, 0, 23.97, 30000, 1, 'ปิดการขาย'),
(42, 38, 0, '2018-07-18', 100, 0, 6, 0, 1, 'กำลังดำเนินการ'),
(43, 33, 0, '2018-07-18', 959, 0, 67.095, 0, 1, 'กำลังดำเนินการ'),
(44, 39, 0, '2018-07-18', 3426, 10278, 1404.7215, 0, 1, 'เรียบร้อย');

-- --------------------------------------------------------

--
-- Table structure for table `tb_promotion`
--

CREATE TABLE `tb_promotion` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `picture` text NOT NULL COMMENT 'ภาพประกอบ',
  `detail` text NOT NULL,
  `time_reg` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_promotion`
--

INSERT INTO `tb_promotion` (`id`, `title`, `picture`, `detail`, `time_reg`) VALUES
(1, 'x', 'xxx.jpg', 'x', '2018-07-24 18:15:07'),
(2, 'd', 'xxx.jpg', 'd', '2018-07-24 18:15:07'),
(3, 's', 'xxx.jpg', 's', '2018-07-24 18:15:17'),
(4, 'a', 'xxx.jpg', 'a', '2018-07-24 18:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_province`
--

CREATE TABLE `tb_province` (
  `PROVINCE_ID` int(5) NOT NULL,
  `PROVINCE_CODE` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `PROVINCE_NAME` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_province`
--

INSERT INTO `tb_province` (`PROVINCE_ID`, `PROVINCE_CODE`, `PROVINCE_NAME`) VALUES
(1, '10', 'กรุงเทพมหานคร   '),
(2, '11', 'สมุทรปราการ   '),
(3, '12', 'นนทบุรี   '),
(4, '13', 'ปทุมธานี   '),
(5, '14', 'พระนครศรีอยุธยา   '),
(6, '15', 'อ่างทอง   '),
(7, '16', 'ลพบุรี   '),
(8, '17', 'สิงห์บุรี   '),
(9, '18', 'ชัยนาท   '),
(10, '19', 'สระบุรี'),
(11, '20', 'ชลบุรี   '),
(12, '21', 'ระยอง   '),
(13, '22', 'จันทบุรี   '),
(14, '23', 'ตราด   '),
(15, '24', 'ฉะเชิงเทรา   '),
(16, '25', 'ปราจีนบุรี   '),
(17, '26', 'นครนายก   '),
(18, '27', 'สระแก้ว   '),
(19, '30', 'นครราชสีมา   '),
(20, '31', 'บุรีรัมย์   '),
(21, '32', 'สุรินทร์   '),
(22, '33', 'ศรีสะเกษ   '),
(23, '34', 'อุบลราชธานี   '),
(24, '35', 'ยโสธร   '),
(25, '36', 'ชัยภูมิ   '),
(26, '37', 'อำนาจเจริญ   '),
(27, '39', 'หนองบัวลำภู   '),
(28, '40', 'ขอนแก่น   '),
(29, '41', 'อุดรธานี   '),
(30, '42', 'เลย   '),
(31, '43', 'หนองคาย   '),
(32, '44', 'มหาสารคาม   '),
(33, '45', 'ร้อยเอ็ด   '),
(34, '46', 'กาฬสินธุ์   '),
(35, '47', 'สกลนคร   '),
(36, '48', 'นครพนม   '),
(37, '49', 'มุกดาหาร   '),
(38, '50', 'เชียงใหม่   '),
(39, '51', 'ลำพูน   '),
(40, '52', 'ลำปาง   '),
(41, '53', 'อุตรดิตถ์   '),
(42, '54', 'แพร่   '),
(43, '55', 'น่าน   '),
(44, '56', 'พะเยา   '),
(45, '57', 'เชียงราย   '),
(46, '58', 'แม่ฮ่องสอน   '),
(47, '60', 'นครสวรรค์   '),
(48, '61', 'อุทัยธานี   '),
(49, '62', 'กำแพงเพชร   '),
(50, '63', 'ตาก   '),
(51, '64', 'สุโขทัย   '),
(52, '65', 'พิษณุโลก   '),
(53, '66', 'พิจิตร   '),
(54, '67', 'เพชรบูรณ์   '),
(55, '70', 'ราชบุรี   '),
(56, '71', 'กาญจนบุรี   '),
(57, '72', 'สุพรรณบุรี   '),
(58, '73', 'นครปฐม   '),
(59, '74', 'สมุทรสาคร   '),
(60, '75', 'สมุทรสงคราม   '),
(61, '76', 'เพชรบุรี   '),
(62, '77', 'ประจวบคีรีขันธ์   '),
(63, '80', 'นครศรีธรรมราช   '),
(64, '81', 'กระบี่   '),
(65, '82', 'พังงา   '),
(66, '83', 'ภูเก็ต   '),
(67, '84', 'สุราษฎร์ธานี   '),
(68, '85', 'ระนอง   '),
(69, '86', 'ชุมพร   '),
(70, '90', 'สงขลา   '),
(71, '91', 'สตูล   '),
(72, '92', 'ตรัง   '),
(73, '93', 'พัทลุง   '),
(74, '94', 'ปัตตานี   '),
(75, '95', 'ยะลา   '),
(76, '96', 'นราธิวาส   '),
(77, '97', 'บึงกาฬ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_car`
--
ALTER TABLE `tb_car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_category_car`
--
ALTER TABLE `tb_category_car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_employee`
--
ALTER TABLE `tb_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_insurance_company`
--
ALTER TABLE `tb_insurance_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_insurance_type`
--
ALTER TABLE `tb_insurance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order_service`
--
ALTER TABLE `tb_order_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_promotion`
--
ALTER TABLE `tb_promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_province`
--
ALTER TABLE `tb_province`
  ADD PRIMARY KEY (`PROVINCE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_car`
--
ALTER TABLE `tb_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_category_car`
--
ALTER TABLE `tb_category_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสลูกค้า', AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_employee`
--
ALTER TABLE `tb_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_insurance_company`
--
ALTER TABLE `tb_insurance_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_insurance_type`
--
ALTER TABLE `tb_insurance_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_order_service`
--
ALTER TABLE `tb_order_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tb_promotion`
--
ALTER TABLE `tb_promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_province`
--
ALTER TABLE `tb_province`
  MODIFY `PROVINCE_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
