<?php

namespace App\Models;

use CodeIgniter\Model;

class ProfilModel extends Model
{
    protected $table = 'profils';
    protected $primaryKey = 'profil_id';
    protected $allowedFields = [
        'profil_headline',
        'profil_tentang',
    ];

    public function get($id = false)
    {
        if ($id === false) {
            return $this->db->table($this->table)->get()->getResult();
        } else {
            return $this->db->table($this->table)->getWhere([$this->primaryKey => $id])->getRow();
        }
    }

    public function edit($id, $data)
    {
        return $this->db->table($this->table)->update($data, array($this->primaryKey => $id));
    }
}
