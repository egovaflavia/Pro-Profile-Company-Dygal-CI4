<?php

namespace App\Database\Seeds;

class ProfilSeeder extends \CodeIgniter\Database\Seeder
{
    public function run()
    {
        $data = [
            'profil_nama' => 'Seeder',
            'profil_tentang' => 'Seeder',
            'profil_headline' => 'Seeder',
        ];
        $this->db->table('profils')->insert($data);
    }
}
