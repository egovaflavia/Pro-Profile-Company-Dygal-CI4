<?php

namespace App\Database\Seeds;

class NewsSeeder extends \CodeIgniter\Database\Seeder
{
    public function run()
    {
        $data = [
            'news_judul' => 'Seeder',
            'news_isi' => 'Seeder',
            'news_tgl' => date('Y-m-d'),
            'news_foto' => 'Seeder.jpg',
        ];
        $this->db->table('news')->insert($data);
    }
}
