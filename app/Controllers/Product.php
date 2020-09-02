<?php

namespace App\Controllers;

use App\Models\ProductModel;
use App\Models\CategoryModel;

class Product extends BaseController
{

	public function __construct()
	{
		helper(['form']);
		helper(['pembantu']);
		$this->Product = new ProductModel();
		$this->Category = new CategoryModel();
	}

	public function index($id = false)
	{

		if ($id === false) {
			$data = [
				'title' => 'Product',
				'child' => 'dataProduct',
				'products' => $this->Product->get(),
				'content' => 'product/v_index.php'
			];
			return view('index-backend.php', $data);
		} else {
			$data = [
				'title' => 'Product',
				'child' => 'dataProduct',
				'products' => $this->Product->get($id),
				'content' => 'product/v_detail.php'
			];
			return view('index-backend.php', $data);
		}
	}

	public function update($id = false)
	{
		if ($id === false) {
			$image = $this->request->getFile('foto');
			$cek = $image->getName();
			if ($cek == '') {
				$id = $this->request->getPost('id');
				$data = [
					'category_id'  => $this->request->getPost('namaCategory'),
					'product_nama'  => $this->request->getPost('nama'),
					'product_desc'  => $this->request->getPost('desc'),
					'product_spec'  => $this->request->getPost('spec'),
					'product_harga' => $this->request->getPost('harga'),
					'product_foto'  => $this->request->getPost('oldFoto')
				];

				$this->Product->edit($id, $data);

				return redirect()->to(base_url('/admin/product'));
			} else {
				$image = $this->request->getFile('foto');
				$name = $image->getRandomName();
				$id = $this->request->getPost('id');
				$data = [
					'category_id'  => $this->request->getPost('namaCategory'),
					'product_nama'  => $this->request->getPost('nama'),
					'product_desc'  => $this->request->getPost('desc'),
					'product_spec'  => $this->request->getPost('spec'),
					'product_harga' => $this->request->getPost('harga'),
					'product_foto'  => $name,
				];
				// $image->move(ROOTPATH . 'public/uploads/products', $name);
				$image->move('./uploads/products', $name);

				$this->Product->edit($id, $data);

				return redirect()->to(base_url('/admin/product'));
			}
		} else {
			$data = [
				'title' => 'Product',
				'child' => 'dataProduct',
				'products' => $this->Product->get($id),
				'content' => 'product/v_update.php',
				'categorys' => $this->Category->get()
			];
			return view('index-backend.php', $data);
		}
	}

	public function create()
	{
		$data = [
			'title' => 'Product',
			'child' => 'tambahProduct',
			'content' => 'product/v_tambah.php',
			'categorys' => $this->Category->get()
		];
		return view('index-backend.php', $data);
	}

	public function store()
	{
		$image = $this->request->getFile('foto');
		$name = $image->getRandomName();
		$data = [
			'category_id'  => $this->request->getPost('namaCategory'),
			'product_nama'  => $this->request->getPost('nama'),
			'product_desc'  => $this->request->getPost('desc'),
			'product_spec'  => $this->request->getPost('spec'),
			'product_harga' => $this->request->getPost('harga'),
			'product_foto'  => $name,
		];

		// $image->move(ROOTPATH . 'public/uploads/products', $name);
		$image->move('./uploads/products', $name);

		$this->Product->tambah($data);

		return redirect()->to(base_url('/admin/product'));
	}

	public function delete($id)
	{
		$this->Product->hapus($id);
		return redirect()->back();
	}

	//--------------------------------------------------------------------

}
