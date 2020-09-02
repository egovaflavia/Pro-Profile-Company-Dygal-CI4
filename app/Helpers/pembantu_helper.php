<?php
function rupiah($nilai, $simbol = "Rp ", $spasi_rupiah = "", $dibelakang_koma = 0, $penutup = "", $pemisah_koma = ",", $pemisah_ribuan = ".")
{
    if ($nilai == "") {
        $nilai = 0;
    }
    $nilai = intval($nilai);
    // $penutup = ,-
    // $dibelakang_koma = 2 -> ,00
    return $simbol . $spasi_rupiah . number_format($nilai, $dibelakang_koma, $pemisah_koma, $pemisah_ribuan) . $penutup;
}

function tgl_indo($tanggal)
{
    $bulan = array(
        1 => 'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
    );
    $pecahkan = explode('-', $tanggal);

    // variabel pecahkan 0 = tanggal
    // variabel pecahkan 1 = bulan
    // variabel pecahkan 2 = tahun

    return $pecahkan[2] . ' ' . $bulan[(int)$pecahkan[1]] . ' ' . $pecahkan[0];
}
