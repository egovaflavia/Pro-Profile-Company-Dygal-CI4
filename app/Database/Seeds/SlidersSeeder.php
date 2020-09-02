<?php

namespace App\Database\Seeds;

class SlidersSeeder extends \CodeIgniter\Database\Seeder
{
    public function run()
    {
        $data = [
            'slider_foto' => 'Seeder',
        ];
        $this->db->table('sliders')->insert($data);
    }
}
