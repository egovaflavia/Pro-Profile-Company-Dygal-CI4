<?php

namespace App\Controllers;

use App\Models\NewsModel;

class News extends BaseController
{

	public function __construct()
	{
		helper(['form']);
		helper(['pembantu']);
		$this->News = new NewsModel();
	}

	public function index($id = false)
	{

		if ($id === false) {
			$data = [
				'title' => 'News',
				'child' => 'dataNews',
				'news' => $this->News->get(),
				'content' => 'news/v_index.php'
			];
			return view('index-backend.php', $data);
		} else {
			$data = [
				'title' => 'News',
				'child' => 'dataNews',
				'news' => $this->News->get($id),
				'content' => 'news/v_detail.php'
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
					'news_nama' => $this->request->getPost('namaMobil'),
					'news_tgl'  => $this->request->getPost('namaMobil'),
				];

				$this->News->edit($id, $data);

				return redirect()->to(base_url('/admin/News'));
			} else {
				$image = $this->request->getFile('foto');
				$name = $image->getRandomName();
				$data = [
					'news_nama' => $this->request->getPost('namaMobil'),
					'news_tgl'  => $this->request->getPost('namaMobil'),
					'news_foto'    => $name,
				];

				// $image->move(ROOTPATH . 'public/uploads/news', $name);
				$image->move('./uploads/news', $name);

				$this->News->edit($data, $id);

				return redirect()->to(base_url('/admin/News'));
			}
		} else {
			$data = [
				'title' => 'News',
				'child' => 'dataNews',
				'news' => $this->News->get($id),
				'content' => 'news/v_update.php'
			];
			return view('index-backend.php', $data);
		}
	}

	public function create()
	{
		$data = [
			'title' => 'News',
			'child' => 'tambahNews',
			'content' => 'news/v_tambah.php'
		];
		return view('index-backend.php', $data);
	}

	public function store()
	{
		$image = $this->request->getFile('foto');
		$name = $image->getRandomName();
		$data = [
			'news_judul' => $this->request->getPost('judul'),
			'news_isi'   => $this->request->getPost('isi'),
			'news_tgl'   => date('Y-m-d'),
			'news_foto'  => $name,
		];

		// $image->move(ROOTPATH . 'public/uploads/news', $name);
		$image->move('./uploads/news', $name);

		$this->News->tambah($data);

		return redirect()->to(base_url('/admin/news'));
	}

	public function delete($id)
	{
		$this->News->hapus($id);
		return redirect()->back();
	}
}
