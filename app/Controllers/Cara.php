<?php

namespace App\Controllers;

use App\Models\CaraModel;

class Cara extends BaseController
{

	public function __construct()
	{
		helper(['form']);
		helper(['pembantu']);
		$this->Cara = new CaraModel();
	}

	public function index($id = false)
	{

		if ($id === false) {
			$data = [
				'title' => 'Cara',
				'child' => 'dataCara',
				'caras' => $this->Cara->get(1),
				'content' => 'cara/v_index.php'
			];
			return view('index-backend.php', $data);
		} else {
			$data = [
				'title' => 'Cara',
				'child' => 'dataCara',
				'caras' => $this->Cara->get($id),
				'content' => 'cara/v_detail.php'
			];
			return view('index-backend.php', $data);
		}
	}


	public function update($id = false)
	{
		if ($id === false) {
			$id = 1;
			$data = [
				'cara_order' => $this->request->getPost('cara'),
			];

			$this->Cara->edit($id, $data);

			return redirect()->to(base_url('/admin/cara'));
		} else {
			$data = [
				'title' => 'Cara',
				'child' => 'dataCara',
				'caras' => $this->Cara->get($id),
				'content' => 'cara/v_update.php'
			];
			return view('index-backend.php', $data);
		}
	}

	//--------------------------------------------------------------------

}
