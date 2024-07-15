<?php
include "konek.php";
if (isset($_POST['btnlogin'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $query = mysqli_query($konek, "SELECT * FROM tb_user WHERE username='$username'");
    $data = mysqli_fetch_array($query);
    if (mysqli_num_rows($query) == 1) {
        if (password_verify($password, $data['password'])) {
            // Login valid
            session_start();
            $_SESSION['username'] = $data['username'];
            header('location:index.php');
        } else {
            // PW salah
            header('location:login.php?pesan=Password salah');
        }
    } else {
        // US salah
        header('location:login.php?pesan=Username salah');
    }
}
