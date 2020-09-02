<?php

namespace App\Database\Seeds;

class ProductSeeder extends \CodeIgniter\Database\Seeder
{
    public function run()
    {
        $data = [
            'category_id' => '1',
            'product_nama' => 'Seeder',
            'product_desc'  => 'Seeder',
            'product_spec'  => 'Seeder',
            'product_foto'    => 'Seeder',
            'product_harga'   => 'Seeder'
        ];
        $this->db->table('products')->insert($data);
    }
}
