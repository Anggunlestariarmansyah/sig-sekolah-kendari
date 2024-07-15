<?php
include 'konek.php';
if (isset($_POST['btnEdit'])) {
    $latlng = $_POST['latlng'];
    $nama_lokasi = $_POST['nama_lokasi'];
    $kategori = $_POST['kategori'];

    if ($gambar = $_FILES['gambar']['name'] != "") {
        $hps_gambar = mysqli_query($konek, "SELECT gambar FROM tb_lokasi WHERE id_lokasi = '$_POST[id_lokasi]'");
        $hasil = mysqli_fetch_array($hps_gambar);
        unlink("gambar/" . $hasil);

        $gambar = $_FILES['gambar']['name'];
        $dir = 'gambar/';
        $dirFile = $_FILES['gambar']['tmp_name'];
        move_uploaded_file($dirFile, $dir . $gambar);
        $query = mysqli_query($konek, "UPDATE tb_lokasi SET latlng = '$latlng', nama_lokasi = '$nama_lokasi',kategori = '$kategori',gambar = '$gambar' WHERE id_lokasi = '$_POST[id_lokasi]'");
    } else {
        $query = mysqli_query($konek, "UPDATE tb_lokasi SET latlng = '$latlng', nama_lokasi = '$nama_lokasi',kategori = '$kategori', WHERE id_lokasi = '$_POST[id_lokasi]'");
    }

    if ($query) {
        header('location:tabel.php');
    }
}
