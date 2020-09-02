<?php

namespace App\Controllers;

use App\Models\ContactModel;

class Contact extends BaseController
{

	public function __construct()
	{
		helper(['form']);
		helper(['pembantu']);
		$this->Contact = new ContactModel();
	}

	public function index($id = false)
	{

		if ($id === false) {
			$data = [
				'title' => 'Contact',
				'child' => 'dataContact',
				'contacts' => $this->Contact->get(1),
				'content' => 'contact/v_index.php'
			];
			return view('index-backend.php', $data);
		} else {
			$data = [
				'title' => 'Contact',
				'child' => 'dataContact',
				'contacts' => $this->Contact->get($id),
				'content' => 'contact/v_detail.php'
			];
			return view('index-backend.php', $data);
		}
	}


	public function update($id = false)
	{
		if ($id === false) {
			$id = 1;
			$data = [
				'contact_facebook' => $this->request->getPost('fb'),
				'contact_twitter' => $this->request->getPost('tw'),
				'contact_instagram' => $this->request->getPost('ig'),
				'contact_email' => $this->request->getPost('email'),
				'contact_alamat' => $this->request->getPost('alamat'),
				'contact_no_tlp' => $this->request->getPost('tlp'),
				'contact_no_wa' => $this->request->getPost('wa'),
			];

			$this->Contact->edit($id, $data);

			return redirect()->to(base_url('/admin/contact'));
		} else {
			$data = [
				'title' => 'Contact',
				'child' => 'dataContact',
				'contacts' => $this->Contact->get($id),
				'content' => 'contact/v_update.php'
			];
			return view('index-backend.php', $data);
		}
	}
}
