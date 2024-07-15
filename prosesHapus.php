<?php
include "konek.php";

$hps_gambar = mysqli_query($konek, "SELECT gambar FROM tb_lokasi WHERE id_lokasi = '$_GET[id_lokasi]'");
$hasil = mysqli_fetch_array($hps_gambar);
unlink("gambar/" . $hasil['gambar']);

$sql = mysqli_query($konek, "DELETE FROM tb_lokasi WHERE id_lokasi = '$_GET[id_lokasi]'");
if ($sql) {
    echo "
    <script>
        window.location.href='tabel.php';
        alert('Data Berhasil Dihapus');
    </script>
    ";
}
