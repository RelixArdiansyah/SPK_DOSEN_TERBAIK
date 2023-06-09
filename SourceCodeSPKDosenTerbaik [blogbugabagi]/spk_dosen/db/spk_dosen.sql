-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 05 Des 2019 pada 19.01
-- Versi Server: 5.5.25a
-- Versi PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `spk_dosen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(30) NOT NULL,
  `user_admin` varchar(30) NOT NULL,
  `password_admin` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `user_admin`, `password_admin`) VALUES
(1, 'Admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_lppm`
--

CREATE TABLE IF NOT EXISTS `data_lppm` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `id_dosen` int(11) NOT NULL,
  `jml_pn` int(11) NOT NULL,
  `jml_jia` int(11) NOT NULL,
  `jml_ji` int(11) NOT NULL,
  `jml_jna` int(11) NOT NULL,
  `jml_jn` int(11) NOT NULL,
  `jml_jl` int(11) NOT NULL,
  `jml_pl` int(11) NOT NULL,
  `jml_sm` int(11) NOT NULL,
  `jml_pg` int(11) NOT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `data_lppm`
--

INSERT INTO `data_lppm` (`id_data`, `id_dosen`, `jml_pn`, `jml_jia`, `jml_ji`, `jml_jna`, `jml_jn`, `jml_jl`, `jml_pl`, `jml_sm`, `jml_pg`) VALUES
(8, 10, 3, 0, 0, 2, 0, 0, 1, 2, 1),
(9, 11, 2, 0, 0, 0, 3, 1, 3, 2, 1),
(10, 13, 4, 0, 0, 2, 0, 1, 2, 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen_peserta`
--

CREATE TABLE IF NOT EXISTS `dosen_peserta` (
  `id_dosen` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pendidikan` varchar(10) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `c1` double NOT NULL DEFAULT '1',
  `c2` double NOT NULL DEFAULT '1',
  `c3` double NOT NULL DEFAULT '1',
  `c4` double NOT NULL DEFAULT '1',
  `c5` double NOT NULL DEFAULT '1',
  `c6` double NOT NULL DEFAULT '1',
  `c7` double NOT NULL DEFAULT '1',
  `c8` double NOT NULL DEFAULT '1',
  `c9` double NOT NULL DEFAULT '1',
  `c10` double NOT NULL DEFAULT '1',
  `vektor_s` double NOT NULL,
  `vektor_v` double NOT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `dosen_peserta`
--

INSERT INTO `dosen_peserta` (`id_dosen`, `nip`, `nama`, `alamat`, `pendidikan`, `jabatan`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`, `vektor_s`, `vektor_v`) VALUES
(10, 'dsn1', 'Dosen 1', 'Banda Aceh', 'S2', 'Lektor', 4.2, 3.7, 3, 3, 4, 3, 2, 3, 2, 3, 3.0346955146121, 0.34495628381064),
(11, 'dsn2', 'Dosen 2', 'Cadek', 'S1', 'Asisten Ahli', 3.7, 3.9, 2.6, 1, 3, 3, 4, 3, 2, 2, 2.5313566044797, 0.28774134442033),
(13, 'dsn5', 'Dosen 5', 'Jl Open Source', 'S2', 'Asisten Ahli', 4, 4, 3.8, 3, 5, 3, 3, 4, 2, 2, 3.2312815055886, 0.36730237176904);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_dosen`
--

CREATE TABLE IF NOT EXISTS `nilai_dosen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(15) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `q1` double NOT NULL,
  `q2` double NOT NULL,
  `q3` double NOT NULL,
  `q4` double NOT NULL,
  `q5` double NOT NULL,
  `avg` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `nilai_dosen`
--

INSERT INTO `nilai_dosen` (`id`, `nip`, `id_dosen`, `q1`, `q2`, `q3`, `q4`, `q5`, `avg`) VALUES
(17, 'dsn3', 10, 4, 4, 3, 3, 4, 3.6),
(18, 'dsn4', 10, 5, 3, 4, 4, 3, 3.8),
(19, 'dsn4', 11, 5, 4, 4, 4, 4, 4.2),
(20, 'dsn3', 11, 4, 4, 3, 3, 4, 3.6),
(21, 'dsn6', 13, 4, 5, 4, 4, 3, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_mhs`
--

CREATE TABLE IF NOT EXISTS `nilai_mhs` (
  `id_mhs` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(15) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `q1` double NOT NULL,
  `q2` double NOT NULL,
  `q3` double NOT NULL,
  `q4` double NOT NULL,
  `q5` double NOT NULL,
  `avg` double NOT NULL,
  PRIMARY KEY (`id_mhs`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data untuk tabel `nilai_mhs`
--

INSERT INTO `nilai_mhs` (`id_mhs`, `nim`, `id_dosen`, `q1`, `q2`, `q3`, `q4`, `q5`, `avg`) VALUES
(23, 'mhs1', 10, 5, 5, 5, 4, 3, 4.4),
(24, 'mhs1', 11, 4, 4, 4, 4, 4, 4),
(25, 'mhs2', 10, 4, 4, 4, 4, 4, 4),
(26, 'mhs2', 11, 4, 3, 3, 4, 3, 3.4),
(27, 'mhs1', 13, 4, 4, 3, 4, 5, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_pimpinan`
--

CREATE TABLE IF NOT EXISTS `nilai_pimpinan` (
  `id_mhs` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(15) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `q1` double NOT NULL,
  `q2` double NOT NULL,
  `q3` double NOT NULL,
  `q4` double NOT NULL,
  `q5` double NOT NULL,
  `avg` double NOT NULL,
  PRIMARY KEY (`id_mhs`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data untuk tabel `nilai_pimpinan`
--

INSERT INTO `nilai_pimpinan` (`id_mhs`, `nip`, `id_dosen`, `q1`, `q2`, `q3`, `q4`, `q5`, `avg`) VALUES
(17, 'pmp', 10, 3, 3, 4, 2, 3, 3),
(18, 'pmp', 11, 3, 3, 2, 3, 2, 2.6),
(19, 'pmp', 13, 4, 3, 5, 4, 3, 3.8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hmp_kriteria`
--

CREATE TABLE IF NOT EXISTS `tb_hmp_kriteria` (
  `id_hmp` int(11) NOT NULL AUTO_INCREMENT,
  `himpunan` varchar(70) NOT NULL,
  `keterangan` varchar(40) NOT NULL,
  `nilai` int(11) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_hmp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data untuk tabel `tb_hmp_kriteria`
--

INSERT INTO `tb_hmp_kriteria` (`id_hmp`, `himpunan`, `keterangan`, `nilai`, `nama_kriteria`) VALUES
(1, '86 - 100', 'sangat baik', 5, 'penilaian mahasiswa '),
(2, '76 - 85', 'baik', 4, 'penilaian mahasiswa '),
(3, '66 - 75', 'cukup', 3, 'penilaian mahasiswa '),
(4, '51 - 65', 'kurang', 2, 'penilaian mahasiswa '),
(5, '0 - 50', 'sangat kurang', 1, 'penilaian mahasiswa '),
(8, '89 - 100', 'sangat baik', 5, 'penilaian dosen sejawat'),
(9, '76 - 85', 'baik', 4, 'penilaian dosen sejawat '),
(10, '66 -75', 'cukup', 3, 'penilaian dosen sejawat'),
(11, '51 - 65', 'kurang', 2, 'penilaian dosen sejawat '),
(12, '0 - 50', 'sangat kurang', 1, 'penilaian dosen sejawat'),
(13, '86 - 100', 'sangat baik', 5, 'penilaian pimpinan'),
(14, '76 - 85', 'baik', 4, 'penilaian pimpinan'),
(15, '66 - 75', 'cukup', 3, 'penilaian pimpinan'),
(16, '51 - 65', 'kurang', 2, 'penilaian pimpinan'),
(17, '0 - 50', 'sangat kurang', 1, 'penilaian pimpinan'),
(18, 'S3', 'baik', 5, 'kualifikasi pendidikan'),
(19, 'S2', 'cukup', 3, 'kualifikasi pendidikan'),
(20, 'S1', 'kurang', 1, 'kualifikasi pendidikan'),
(21, '>= 4', 'sangat baik', 5, 'penelitian'),
(22, '3', 'baik', 4, 'penelitian'),
(23, '2', 'cukup', 3, 'penelitian'),
(24, '1', 'kurang', 2, 'penelitian'),
(25, '0', 'sangat kurang', 1, 'penelitian'),
(26, '>=1  Jurnal Internasional Akreditasi  ', 'sangat baik', 5, 'jurnal'),
(27, '>=3  Jurnal Nasional Terakreditasi    ', 'cukup', 4, 'jurnal'),
(28, '1-2  Jurnal Nasional Terakreditasi    ', 'cukup', 3, 'jurnal'),
(29, '>=1  Jurnal Internasional                 ', 'cukup', 3, 'jurnal'),
(30, '>=3  Jurnal Nasional                       ', 'cukup', 3, 'jurnal'),
(31, '1-2  Jurnal Nasional                       ', 'kurang', 2, 'jurnal'),
(32, '>=3  Jurnal Lokal                            ', 'kurang', 2, 'jurnal'),
(35, '1-2  Jurnal Lokal                            ', 'sangat kurang', 1, 'jurnal'),
(36, '>=4', 'Sangat Baik', 5, 'pelatihan'),
(38, '2', 'cukup', 3, 'pelatihan'),
(39, '1', 'kurang', 2, 'pelatihan'),
(40, 'o', 'sangat kurang', 1, 'pelatihan'),
(41, '3', 'baik', 4, 'pelatihan'),
(42, '>=4', 'sangat baik', 5, 'seminar'),
(43, '3', 'baik', 4, 'seminar'),
(44, '2', 'cukup', 3, 'seminar'),
(45, '1', 'kurang', 2, 'seminar'),
(46, '0', 'sangat kurang', 1, 'seminar'),
(47, '>=4', 'sangat baik', 5, 'pengabdian masyarakat'),
(48, '3', 'baik', 4, 'pengabdian masyarakat'),
(49, '2', 'cukup', 3, 'pengabdian masyarakat'),
(50, '1', 'kurang', 2, 'pengabdian masyarakat'),
(51, '0', 'sangat kurang', 1, 'pengabdian masyarakat'),
(52, 'guru besar', 'sangat baik', 5, 'jabatan akademik'),
(53, 'lektor kepala', 'baik', 4, 'jabatan akademik'),
(54, 'lektor', 'cukup', 3, 'jabatan akademik'),
(55, 'asisten ahli', 'kurang', 2, 'jabatan akademik'),
(56, 'pengajar', 'sangat kurang', 1, 'jabatan akademik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kriteria`
--

CREATE TABLE IF NOT EXISTS `tb_kriteria` (
  `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kriteria` varchar(30) NOT NULL,
  `bobot` int(11) NOT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`) VALUES
(1, 'Penilaian Mahasiswa ', 3),
(2, 'Penilaian Dosen Sejawat ', 4),
(3, 'Penilaian Pimpinan ', 3),
(4, 'Kualifikasi Pendidikan ', 5),
(5, 'Penelitian', 5),
(6, 'Jurnal ', 5),
(7, 'Pelatihan ', 3),
(8, 'Seminar ', 3),
(9, 'Pengabdian Masyarakat ', 4),
(10, 'Jabatan Akademik ', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengaturan`
--

CREATE TABLE IF NOT EXISTS `tb_pengaturan` (
  `id_pengaturan` int(11) NOT NULL AUTO_INCREMENT,
  `pengaturan` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_pengaturan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `tb_pengaturan`
--

INSERT INTO `tb_pengaturan` (`id_pengaturan`, `pengaturan`, `status`) VALUES
(1, 'pendaftaran', 1),
(2, 'penilaian', 1),
(3, 'pengumuman', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `jenis`, `username`, `password`, `nama`) VALUES
(12, 'mahasiswa', 'mhs1', 'mhs1', 'Mahasiswa 1'),
(13, 'mahasiswa', 'mhs2', 'mhs2', 'Mahasiswa 2'),
(14, 'pimpinan', 'pmp', 'pmp', 'Pimpinan'),
(15, 'lppm', 'lppm', 'lppm', 'LPPM'),
(16, 'dosen', 'dsn1', 'dsn1', 'Dosen 1'),
(17, 'dosen', 'dsn2', 'dsn2', 'Dosen 2'),
(18, 'dosen', 'dsn3', 'dsn3', 'Dosen Nilai 1'),
(19, 'dosen', 'dsn4', 'dsn4', 'Dosen Nilai 2'),
(20, 'dosen', 'dsn5', 'dsn5', 'Dosen 5'),
(21, 'dosen', 'dsn6', 'dsn6', 'Dosen 6');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
