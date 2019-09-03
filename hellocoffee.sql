-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 03, 2019 at 01:11 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id9447756_hellocoffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_toko`
--

CREATE TABLE `daftar_toko` (
  `id_toko` int(8) NOT NULL,
  `nama_toko` varchar(32) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `id_user` int(11) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `Desc` varchar(256) NOT NULL,
  `Jam operasional` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_toko`
--

INSERT INTO `daftar_toko` (`id_toko`, `nama_toko`, `alamat`, `id_user`, `foto`, `Desc`, `Jam operasional`) VALUES
(1, 'Kopi Tungku', 'Bandung, bojongsoang', 5, 'tungku.jpg', 'Tempat kopi yang terdapat dekat dengan kawasan kampus telkom, dan memiliki desgin tempat kopi yang cukup menarik', '19.00-24.00'),
(2, 'Kopi 372', 'Jl. Ir. H. Juanda No. 372, Dago Atas, Bandung', 5, '372.jpg', 'Tempat kopi yang biasa digolongkan sebagai hidden gems, karena tempatnya dari luar terlihat biasa saja. Namun kalau sudah masuk ke dalam tempatnya sangat luas, seperti satu lembah digunakan oleh kafe ini. ', '13.00-24.00'),
(3, 'Kopi Kulo', 'Bandung, bojongsoang', 5, 'kulo.JPG', 'Tempat kopi yang menyajikan Menu es kopi terenak dan nikmat', '08.00-19.00');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(50) NOT NULL,
  `qty` int(50) NOT NULL,
  `id_menu` int(50) NOT NULL,
  `id_user` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `qty`, `id_menu`, `id_user`) VALUES
(19, 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `nama_komentar` varchar(64) NOT NULL,
  `isi_komentar` varchar(256) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_menu` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `nama_komentar`, `isi_komentar`, `id_user`, `id_menu`) VALUES
(1, 'adam', 'adam', 5, 1),
(4, 'khaifa', 'kopi ku', 4, 4),
(5, 'Rizky', 'hello coffee, website impianku', 4, 2),
(6, 'abi', 'bisa mesan mas?', 4, 3),
(13, 'khaifa', 'mantul nih kopi', 3, 8),
(15, 'aaa', 'aaa', 3, 8),
(16, 'kopilover', 'ready?', 3, 8),
(17, 'mantab', 'mantab', 3, 6),
(18, 'aku', 'mantab', 10, 5),
(19, 'test', 'east\'', 3, 1),
(20, 'test', 'east', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(8) NOT NULL,
  `nama_menu` varchar(64) NOT NULL,
  `harga` int(16) NOT NULL,
  `deskripsi` varchar(256) NOT NULL,
  `jenis` varchar(32) NOT NULL,
  `foto` varchar(32) NOT NULL,
  `id_toko` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `harga`, `deskripsi`, `jenis`, `foto`, `id_toko`) VALUES
(1, 'Kopi Capucino', 10000, 'Kopi yang pantas buat kamu yang manis', 'Capucino', 'coffee1.jpg', 1),
(2, 'Kopi Espreso', 20000, 'Espresso merupakan kopi modern yang paling kuat kadar kopinya (very strong). Espresso merupakan ekstrak biji kopi murni tanpa campuran. Rasanya sudah pasti pahit, dengan tingkat kekentalannya tergantung dari biji kopi yang digunakan. Espresso biasa dikonsu', 'Espreso', 'coffee4.jpg', 1),
(3, 'Kopi Macchiato', 20000, 'Macchiato merupakan espresso yang diberi campuran susu foam. Foam atau susu yang di-steam sendiri kadarnya sedikit, sehingga rasanya tetap strong.', 'Macchiato', 'coffee2.jpg', 1),
(4, 'Kopi Arang', 19000, 'Kopi yang dipadukan dengan panasnya arang', 'espresso', 'coffee5.jpg', 3),
(5, 'Kopi kijang', 11000, 'Kopi yang seperti kijang', 'cappuccino', 'coffee6.jpg', 2),
(6, 'Cincau', 8000, 'Cincau lezat', 'Cincau', 'coffee3.jpg', 3),
(7, 'Ipok meti', 9000, 'Ipok meti dibalik kopi item', 'espresso', '9O8Cs22.jpg', 1),
(8, 'kopi piala', 29000, 'kopi yang untuk anda para pemenang', 'macchiato', 'coffee8.jpg', 1),
(9, 'Vietnam Drip', 30000, 'Kopi tradisional vietnam', 'Cappucino', 'coffee27.jpg', 1),
(10, 'Kopi', 10000, 'Kopi nikmat gabikin kembung', 'Arabica', 'www_kuyhaa-android19_com.jpg', 1),
(11, 'Kopi Joni', 30000, 'Kopinya anak hukum', 'Espresso', 'coffee32.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gender` varchar(128) NOT NULL,
  `Foto` varchar(40) NOT NULL,
  `id_toko` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `email`, `gender`, `Foto`, `id_toko`) VALUES
(1, 'faris', '7d77e825b80cff62a72e680c1c81424f', 'faris', 'faris@gmail.com', 'laki-laki', '', 0),
(2, 'Ihsan', 'f9c8074d5a013e0729373f8f74cd0648', 'Ihsan', 'ihsan@gmail.com', 'L', '9O8Cs2.jpg', 0),
(3, 'Kekey', '93960bd0831c5282386062cfa3903c6b', 'Kekey', 'kekey@gmail.com', 'L', 'kopi.jpg', 0),
(4, 'mukhtar', 'bc6ed692dd28b4860b19789b59f330b1', 'Putra', 'putra16.mp@gmail.com', 'Laki-laki', '', 0),
(5, 'toko', 'bbb48314e5e6ee68d2d8bc1364b8599b', 'toko', 'toko@gmail.com', 'L', 'old-trafford-stadium-38616.jpg', 1),
(9, 'q', '7694f4a66316e53c8cdd9d9954bd611d', 'q', 'q', 'laki-laki', 'kopi.png', 0),
(10, 'aku', '89ccfac87d8d06db06bf3211cb2d69ed', 'aku', 'aku', 'laki-laki', '', 0),
(11, 'kamu', '48ec8af8df4bf4347d9b1de4ee7bb092', 'kamu', 'kamu', 'perempuan', '', 0),
(13, 'as', '5057be3afa7509691f98d9ffead01ab6', 'das', 'sdjkask', 'laki-laki', '', 0),
(14, 'asu', '25d55ad283aa400af464c76d713c07ad', 'asu', 'asu@gmail.com', 'laki-laki', '', 0),
(15, 'adi', '827ccb0eea8a706c4c34a16891f84e7b', 'adi', 'adi@gmail.com', 'laki-laki', '', 0),
(16, 'fian', 'd5f23c9b9e41c7b8f9b14c647c25bbbb', 'sufian', 'hhh@gmail.com', 'laki-laki', '', 0),
(17, 'Cuk', '0a8ada1f5d2ea05fc3af10cd808bfa9a', 'Cuk', 'F', 'laki-laki', '', 0),
(18, 'Hwuwuwu', 'c622ee7d61a0bcad9a162da05bf98e88', 'Shshhe', 'Shhshshsh', 'laki-laki', '', 0),
(19, 'Hshsususjaj', 'e10adc3949ba59abbe56e057f20f883e', 'Shhsshh', 'Shushshsh', 'perempuan', '', 0),
(20, 'Prasetya', 'e10adc3949ba59abbe56e057f20f883e', 'Shshshh', 'Shusjsh', 'laki-laki', '', 0),
(21, 'melly', '9dfeb1dec8fee6adb059ab5dfee43f1b', 'test', 'mell', 'laki-laki', '', 0),
(22, 'aditya10', '057829fa5a65fc1ace408f490be486ac', 'tirta aditya', 'tirta@gmail.com', 'laki-laki', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_toko`
--
ALTER TABLE `daftar_toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `toko_fk` (`id_toko`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_toko`
--
ALTER TABLE `daftar_toko`
  MODIFY `id_toko` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `id_menu` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `toko_fk` FOREIGN KEY (`id_toko`) REFERENCES `daftar_toko` (`id_toko`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
