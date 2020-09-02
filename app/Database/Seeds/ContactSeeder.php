<?php

namespace App\Database\Seeds;

class ContactSeeder extends \CodeIgniter\Database\Seeder
{
    public function run()
    {
        $data = [
            'contact_facebook' => 'Seeder',
            'contact_twitter'  => 'Seeder',
            'contact_instagram'  => 'Seeder',
            'contact_email'    => 'Seeder',
            'contact_alamat'   => 'Seeder',
            'contact_no_tlp'  => 'Seeder',
            'contact_no_wa'  => 'Seeder',
        ];
        $this->db->table('contacts')->insert($data);
    }
}
