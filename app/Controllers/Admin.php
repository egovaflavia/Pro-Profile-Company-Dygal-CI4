<?php

namespace App\Controllers;

use App\Models\ProfilModel;

class Admin extends BaseController
{
    public function __construct()
    {
        helper(['form']);
        helper(['pembantu']);
        $this->Profil = new ProfilModel();
    }

    public function home()
    {
        $data = [
            'title' => 'Home',
            'child' => '',
            'profil' => $this->Profil->get(1),
            'content' => 'v_home.php'
        ];
        return view('index-backend.php', $data);
    }
}
