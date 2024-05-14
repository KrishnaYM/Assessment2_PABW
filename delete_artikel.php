<?php
$koneksi = new mysqli("localhost", "root", "", "finansiap", 3307);
if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}

if (isset($_POST['id_artikel'])) {
    $id_artikel = $_POST['id_artikel'];

    $query = "DELETE FROM artikel WHERE id_artikel = $id_artikel";

    if ($koneksi->query($query) === TRUE) {
        echo "Data berhasil dihapus";
    } else {
        echo "Error: " . $koneksi->error;
    }
} else {
    echo "ID tidak diterima";
}

$koneksi->close();
?>