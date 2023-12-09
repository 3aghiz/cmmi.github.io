<?php
include("../config/koneksi.php");
require_once("../vendor/autoload.php");

$mpdf = new \Mpdf\Mpdf();

$html = '
<html>
<head>
<style>
table, th, td {
    font-size: 12px;
    border: 1px solid black;
    border-collapse: collapse;
    padding: 5px;
}

h2 {
    text-align:left;
    font-size 20px;
    margin-left:30px;

}
</style>
</head>
<body>

<img src="../assets/img/logo1.png" style="float: left; height: 80px; margin-top :0px;">
<div>
<h2>Yayasan Cahaya Muruah Muhansor</h2>


</div>

<hr>

<table width="100%">
<tr>
    <th width="5%">No</th>
    <th width="13%">Nama</th>
    <th width="20%">TTL</th>
    <th width="5%">JK</th>
    <th>Alamat</th>
    <th width="7%">Telepon</th>
    <th width="5%">Nilai</th>
    <th width="10%">Status</th>
</tr>';

// tabel pendaftar
$all_pendaftar = mysqli_query($koneksi, "SELECT pendaftar.*, nilai.nilai_un, nilai.nilai_us, nilai.nilai_uts_1, nilai.status FROM pendaftar, nilai WHERE pendaftar.id = nilai.pendaftar_id order by status, nama");

$no = 1;
while($p = mysqli_fetch_array($all_pendaftar)) { 
    if($p['status'] == 0) {
        $status = "Baru";
    } else if($p['status'] == 1) {
        $status = "Lolos";
    } else {
        $status = "Tdk Lolos";
    }
    
    $html .= '
    <tr>
        <td align="center">'. $no++ . '</td>
        <td>'. $p['nama'] . '</td>
        <td>'. $p['tmpt_lahir'] . ', '. $p['tgl_lahir'] . '</td>
        <td align="center">'. $p['jenis_kelamin'] . '</td>
        <td>'. $p['alamat'] . '</td>
        <td>'. $p['telepon'] . '</td>
        <td align="center">'.  number_format(($p['nilai_uts_1'] + $p['nilai_us'] + $p['nilai_un']) / 3, 2) . '</td>
        <td align="center">'. $status . '</td>
    </tr>';
}

$html .= '
</table> <br>
<div style="font-size: 12px; text-align: right;">&nbsp; Tanggal CETAK: '. date("d-m-Y") .'</div>

</body>
</html>';

$mpdf ->WriteHTML($html);
$mpdf -> Output('Data Siswa Pendaftar', 'I');
?>
