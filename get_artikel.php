<?php

$koneksi = new mysqli("localhost", "root", "", "finansiap", 3307);

if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}

$query = "SELECT * FROM artikel";
$result = $koneksi->query($query);

$data = array();


if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

$koneksi->close();

echo json_encode($data);
