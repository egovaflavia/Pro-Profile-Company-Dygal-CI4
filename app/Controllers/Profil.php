<?php

namespace App\Controllers;

use App\Models\ProfilModel;

class Profil extends BaseController
{

	public function __construct()
	{
		helper(['form']);
		helper(['pembantu']);
		$this->Profil = new ProfilModel();
	}

	public function index($id = false)
	{

		if ($id === false) {
			$data = [
				'title' => 'Profil',
				'child' => 'dataProfil',
				'profils' => $this->Profil->get(1),
				'content' => 'profil/v_index.php'
			];
			return view('index-backend.php', $data);
		} else {
			$data = [
				'title' => 'Profil',
				'child' => 'dataProfil',
				'profils' => $this->Profil->get($id),
				'content' => 'profil/v_detail.php'
			];
			return view('index-backend.php', $data);
		}
	}


	public function update($id = false)
	{
		if ($id === false) {
			$id = 1;
			$data = [
				'profil_headline' => $this->request->getPost('headline'),
				'profil_tentang'  => $this->request->getPost('tentang'),
				'profil_nama'     => $this->request->getPost('nama'),
			];

			$this->Profil->edit($id, $data);

			return redirect()->to(base_url('/admin/profil'));
		} else {
			$data = [
				'title' => 'Profil',
				'child' => 'dataProfil',
				'profils' => $this->Profil->get($id),
				'content' => 'profil/v_update.php'
			];
			return view('index-backend.php', $data);
		}
	}

	//--------------------------------------------------------------------

}
