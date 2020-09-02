<?php

namespace App\Database\Seeds;

class GallerySeeder extends \CodeIgniter\Database\Seeder
{
    public function run()
    {
        $data = [
            'gallery_nama' => 'Seeder',
            'gallery_tgl' => date('Y-m-d'),
            'gallery_foto' => 'Seeder',
        ];
        $this->db->table('gallery')->insert($data);
    }
}
