<?php

namespace App\Controllers;

use App\Models\CategoryModel;

class Category extends BaseController
{

	public function __construct()
	{
		helper(['form']);
		helper(['pembantu']);
		$this->Category = new CategoryModel();
	}

	public function index($id = false)
	{

		if ($id === false) {
			$data = [
				'title' => 'Category',
				'child' => 'dataCategory',
				'categorys' => $this->Category->get(),
				'content' => 'category/v_index.php'
			];
			return view('index-backend.php', $data);
		} else {
			$data = [
				'title' => 'Category',
				'child' => 'dataCategory',
				'categorys' => $this->Category->get($id),
				'content' => 'category/v_detail.php'
			];
			return view('index-backend.php', $data);
		}
	}

	public function update($id = false)
	{
		if ($id === false) {

			$id = $this->request->getPost('id');
			$data = [
				'category_nama'  => $this->request->getPost('namaCategory'),
			];

			$this->Category->edit($id, $data);

			return redirect()->to(base_url('/admin/category'));
		} else {
			$data = [
				'title' => 'Category',
				'child' => 'dataCategory',
				'categorys' => $this->Category->get($id),
				'content' => 'category/v_update.php'
			];
			return view('index-backend.php', $data);
		}
	}

	public function create()
	{
		$data = [
			'title' => 'Category',
			'child' => 'tambahCategory',
			'content' => 'category/v_tambah.php'
		];
		return view('index-backend.php', $data);
	}

	public function store()
	{
		$data = [
			'category_nama'  => $this->request->getPost('nama'),
		];

		$this->Category->tambah($data);

		return redirect()->to(base_url('/admin/category'));
	}

	public function delete($id)
	{
		$this->Category->hapus($id);
		return redirect()->back();
	}

	//--------------------------------------------------------------------

}
