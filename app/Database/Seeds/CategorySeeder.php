<?php

namespace App\Database\Seeds;

class CategorySeeder extends \CodeIgniter\Database\Seeder
{
    public function run()
    {
        $data = [
            'category_nama' => 'Seeder',
        ];
        $this->db->table('categorys')->insert($data);
    }
}
