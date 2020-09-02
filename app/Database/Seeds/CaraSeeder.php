<?php

namespace App\Database\Seeds;

class CaraSeeder extends \CodeIgniter\Database\Seeder
{
    public function run()
    {
        $data = [
            'cara_order' => 'Seeder',
        ];
        $this->db->table('caras')->insert($data);
    }
}
