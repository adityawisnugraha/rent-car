-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2018 at 01:09 AM
-- Server version: 10.2.15-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u277999506_rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-05-23 12:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblmobil`
--

CREATE TABLE `tblmobil` (
  `id` int(11) NOT NULL,
  `NoPol` varchar(200) DEFAULT NULL,
  `NIKSopir` varchar(200) DEFAULT NULL,
  `merk` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `harga` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmobil`
--

INSERT INTO `tblmobil` (`id`, `NoPol`, `NIKSopir`, `merk`, `Description`, `gambar`, `harga`, `CreationDate`) VALUES
(10, 'AD8291GA', '16305141090', 'Kijang Inova', 'Toyota Kijang Innova berkapasitas muatan tujuh orang penumpang ditambah satu pengemudi, mobil ini dalam kondisi terpaksa bila diisi Sembilan atau sepuluh orang sepertinya tidak ada masalah, karena kontruksi kaki-kaki mobil dan luas kabin mobil masih memadai. Mesin yang digunakan oleh Kijang Innova termasuk mesin yang sudah menggunakan teknologi baru Toyota seperti mesin bensin menggunakan system distribusi bahan bakar injeksi yang dikontrol secara elektronik plus VVT-i, dan untuk versi diesel sudah menggunakan teknologi common rail generasi kedua dengan kronologis kinerja injeksi langsung disalurkan ke ruang bakar dan turbo charger, sehingga kerja mesin dapat diatur atau dikendalikan oleh computer / ECU (Engine Control Unit).\r\nHarga 500.000/24jam', 'https://imganuncios.mitula.net/toyota_kijang_toyota_kijang_grand_extra_1_8_orisinil_5760070502040283543.jpg', '3 Juta / Hari', '2018-05-24 08:31:14'),
(11, 'AD6283JI', '16305141091', 'Pajero', 'Mitsubishi Pajero ini adalah satu-satunya mobil mewah yang kami sewakan keluaran dari pabrik Mitsubishi karena mayoritas yang kami sewakan adalah keluaran pabrik Toyota. Jadi jika anda menginginkan mencoba rental mobil Pajero di Malang untuk berwisata bersama keluarga, anda tidak perlu bingung lagi. Liburan anda akan terjamin karena ditambah dengan driver yang sudah berpengalaman. Jadi untuk anda yang ingin tampil beda saat liburan, anda dapat menyewa mobil Pajero di Ihsan ketika berlibur.\r\nHanya dengan harga 1.500.000/24jam bisa merasakan berlibur bersama orang yang anda cintai.', 'https://www.mitsubishi-motors.com.au/uploads/vehicles/pajero-sport/2018/showroom/18my_pajero_sport_spinner001.png', NULL, '2018-05-24 08:35:24'),
(12, 'AD7182JJ', '16305141092', 'Ferrari', 'Bila Anda ingin merasakan mobil supercepat, seperti Ferrari, namun tak bisa beli, tak usah kecewa. Anda bisa menyewa mobil-mobil supermahal ini dirental kita.Mobil super mewah ini bisa kalian gunakan hanya dengan harga 25.000.000/24jam anda bisa menikmati liburan bersama orang tercinta.', 'https://i.ytimg.com/vi/iBGth4V3d2g/maxresdefault.jpg', '1 Juta / Jam', '2018-05-24 08:49:50'),
(13, 'adsa', 'asd', 'asd', '', 'sad', 'asdasd', '2018-05-29 07:43:58'),
(14, 'sad', 'sad', 'sad', '', 'das', 'sda', '2018-05-29 07:44:18'),
(15, 'AD7182WA', '16304132003', 'Ferari', 'Warna merah, mulus no minus', 'https://i.ytimg.com/vi/O-dtC3SeLp8/hqdefault.jpg', '1 Juta / Jam', '2018-05-29 07:53:41'),
(16, 'AD8218GA', '16305412009', 'BMW', 'Mulus no minus', 'https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/bmw-m2-road-test-0273_0.jpg?itok=rZL6Hh9r', '2 Juta / Hari', '2018-05-29 09:19:15'),
(17, 'AD7281GS', '1630515255', 'Lamborghini', 'Mulus no minus', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEBMTEhMVFRIWFhUYFRgYGBgTFxcVFRUWFhUWFhUYHiggGB0lGxYVITEhJykrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGzEmICUtLS0tMi0yLy0vLSstLS0tLS8vKzAvLy01Ly0tL', '2 Juta / Hari', '2018-05-29 10:13:34'),
(18, '16305141090', NULL, 'Lamborghini', 'Kondisi Baru', 'https://www.lamborghini.com/sites/it-en/files/DAM/it/models_gateway/blocks/huracan.png', '2 Juta / Jam', '2018-05-29 13:23:26'),
(19, 'AD8281BA', '16305141091', 'Lamborghini', 'Kondisi baru', 'https://www.lamborghini.com/sites/it-en/files/DAM/it/models_gateway/blocks/huracan.png', '2 Juta/hari', '2018-05-29 13:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblpenyewa`
--

CREATE TABLE `tblpenyewa` (
  `id` int(11) NOT NULL,
  `UniqueId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpenyewa`
--

INSERT INTO `tblpenyewa` (`id`, `UniqueId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, 'EMP10806121', 'Johnny', 'doe', 'johnny@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Male', '3 February, 1990', 'N NEPO', 'NEPO', 'IRE', '9857555555', 1, '2017-11-10 11:29:59'),
(2, 'DEMP2132', 'James', 'doe', 'james@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Male', '3 February, 1990', 'N NEPO', 'NEPO', 'IRE', '8587944255', 1, '2017-11-10 13:40:02'),
(3, '1234', 'Cristiano', 'Ronaldo', 'user@gmail.com', '24c9e15e52afc47c225b757e7bee1f9d', 'Male', '23 May, 2018', 'Salam,Magelang Kota', 'Magelang', 'Indonesia', '574123', 0, '2018-05-23 12:11:41'),
(4, 'H4IK4MU', 'Bambang', 'Pamungkas', 'user1@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'Male', '3 May, 2011', 'Plaosan,Sendangrejo,Minggir', 'Sleman', 'Indonesia', '892831922', 1, '2018-05-24 16:43:16'),
(5, '1Y4K4MU', 'Paul', 'Pogba', 'user2@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'Male', '2 May, 2012', 'Tersangede, Salam', 'Magelang', 'Indonesia', '76761234', 1, '2018-05-24 16:55:09'),
(6, 'L4G14P4', 'Lionel', 'Messi', 'user3@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'Male', '9 May, 2018', 'Tulung, Srihardono, Pundong', 'Bantul', 'Indonesia', '29291234', 1, '2018-05-24 16:57:04'),
(7, '4KU54Y4NG', 'David', 'De Gea', 'user4@gmai.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'Male', '26 May, 2018', 'Piyoto, Bandungan', 'Semarang', 'Indonesia', '27271234', 1, '2018-05-24 16:59:46'),
(8, '57423', 'Aditya', 'Wisnu', '12@12', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '16 May, 2018', 'Banyon, Gayamprit, Klaten Selatan', 'Klaten', 'Indonesia', '123123', 1, '2018-05-29 07:27:17'),
(9, '57423', 'Aditya', 'Wisnugraha', 'ad@ad', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '29 May, 2018', 'Banyon, Gayamprit, Klaten Selatan', 'Klaten', 'Indonesia', '0857128182', 1, '2018-05-29 08:49:21'),
(10, '57422', 'Aditya', 'Wusnu', 'adi@adi', '202cb962ac59075b964b07152d234b70', 'Male', '', 'Banyon, Gayamprit, Klaten Selatan', 'Klaten', 'Indonesia', '123123', 1, '2018-05-29 10:18:44'),
(11, '57423', 'Bejo', '1hjb', 'ad@ad', '202cb962ac59075b964b07152d234b70', 'Male', '', 'Banyon, Gayamprit, Klaten Selatan', 'Klaten', 'Indonesia', '09129312', 1, '2018-05-29 10:41:18'),
(12, '57423', 'Aditya', 'Wisnugraha S.', 'aditya@aditya', '076bad1d397fc3cd35ea9019f5e04faa', 'Male', '1 May, 2018', 'Banyon, Gayamprit, Klaten Selatan', 'Klaten', 'Indonesia', '0857281823', 1, '2018-05-29 10:43:29'),
(13, '57423', 'Ad', 'ad', 'adad@adad', '523af537946b79c4f8369ed39ba78605', 'Male', '', 'Banyon, Gayamprit, Klaten Selatan', 'Klaten', 'Indonesia', 'adad', 1, '2018-05-29 10:49:31'),
(14, '57423', 'adadada', 'adada', 'adada@ad', '202cb962ac59075b964b07152d234b70', 'Male', '', 'Banyon, Gayamprit, Klaten Selatan', 'Klaten', 'Indonesia', 'asd', 1, '2018-05-29 10:50:45'),
(15, '57423', 'adadada', 'asdasd', 'adadaa@12', '523af537946b79c4f8369ed39ba78605', 'Female', '', 'Banyon, Gayamprit, Klaten Selatan', 'Klaten', 'Indonesia', 'ada', 1, '2018-05-29 10:52:35'),
(16, 'tes123456', 'Lulus', 'Barenk', 'sibdsemuanilaiK@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'Male', '2 May, 2018', 'plaso', 'slema', 'indonesia', '23123123', 1, '2018-05-29 15:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblsopir`
--

CREATE TABLE `tblsopir` (
  `NIKSopir` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `NamaSopir` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblsopir`
--

INSERT INTO `tblsopir` (`NIKSopir`, `NamaSopir`) VALUES
('', ''),
('16305141091', 'Kevin'),
('16305141092', 'Bejo'),
('16305141229', 'Kevin'),
('16305142099', 'Steven'),
('16305142999', 'Paijo');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaksi`
--

CREATE TABLE `tbltransaksi` (
  `id` int(11) NOT NULL,
  `NoPol` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `idpenyewa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransaksi`
--

INSERT INTO `tbltransaksi` (`id`, `NoPol`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `idpenyewa`) VALUES
(11, 'AD2572CC', '12/03/2012', '12/03/2012', '12312', '2018-05-23 09:41:59', 'sorry\r\n', '2018-05-23 18:37:04 ', 2, 1, 1),
(12, 'AD2572CC', '12/03/2012', '12/03/2012', 'Tolong cepat dijawab', '2018-05-23 16:24:25', NULL, NULL, 0, 0, 3),
(13, 'AD7182JJ', '12/02/1999', '23/12/2031', 'Saya mau sewa 3 hari 3 malam', '2018-05-24 08:52:24', NULL, NULL, 0, 1, 3),
(14, 'AD8291GA', '05/02/2018', '08/02/2018', 'Saya ingin menyewa mobil selama 3 hari', '2018-05-24 16:47:41', 'baik,untuk 3 hari bisa', '2018-05-24 23:48:26 ', 1, 1, 4),
(15, 'AD7182JJ', '23/02/2018', '28/02/2018', 'Saya ingin menyewa selama 5 hari untuk berlibur ke Bandungan, Semarang', '2018-05-24 17:01:41', 'Baik,bisa disewakan', '2018-05-25 0:05:18 ', 1, 1, 5),
(16, 'AD6283JI', '12/11/2018', '14/11/2018', 'Apakah mobil ini bisa disewakan selama 2 hari pada tanggal 12 November 2018 sampai 14 November 2018?', '2018-05-24 17:07:59', 'Selamat', '2018-05-29 15:20:24 ', 1, 1, 6),
(17, 'AD7164WI', '12/04/2018', '19/04/2018', 'Saya ingin menyewa untuk kencan keluar negeri bersama selingkuhan saya', '2018-05-24 17:23:10', 'waw', '2018-05-29 15:09:19 ', 1, 1, 7),
(18, 'AD7164WI', '12/12/2012', '12/12/2014', 'Saya ingin meminjamnya untuk pergi ke Amerika Serikat', '2018-05-29 07:49:04', 'Maaf, liburan anda tidak bisa pada tanggal itu', '2018-05-29 15:13:44 ', 2, 1, 8),
(19, 'AD6283JI', '12/12/2012', '12/12/2014', 'Saya mau honeymoon 3 bulan', '2018-05-29 08:30:17', NULL, NULL, 0, 0, 8),
(20, 'AD8291GA', '12/12/2012', '21/02/2012', 'Saya ingin bulanmadu', '2018-05-29 08:53:44', 'Waw', '2018-05-29 16:29:06 ', 1, 1, 9),
(21, 'AD6283JI', '12/03/2012', '12/03/2012', 'ihdasjkn', '2018-05-29 10:02:14', 'Waw', '2018-05-29 17:26:34 ', 1, 1, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmobil`
--
ALTER TABLE `tblmobil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpenyewa`
--
ALTER TABLE `tblpenyewa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsopir`
--
ALTER TABLE `tblsopir`
  ADD PRIMARY KEY (`NIKSopir`);

--
-- Indexes for table `tbltransaksi`
--
ALTER TABLE `tbltransaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`idpenyewa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblmobil`
--
ALTER TABLE `tblmobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpenyewa`
--
ALTER TABLE `tblpenyewa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbltransaksi`
--
ALTER TABLE `tbltransaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
