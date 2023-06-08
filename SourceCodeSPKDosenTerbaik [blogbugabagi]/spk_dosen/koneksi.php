<?php
$db="spk_dosen2";

$koneksi=mysqli_connect("localhost","root","");
if(!$koneksi){
 die ("koneksi ke database Gagal..".mysqli_connect_error());
}
//else echo "koneksi Berhasil";

$cek=mysqli_select_db($koneksi,$db);
if(!$cek){
 die ("<br>Database Gagal di Temukan ".mysqli_error($koneksi));
}
//else echo "<br>Database Berhasil ditemukan";
?>
