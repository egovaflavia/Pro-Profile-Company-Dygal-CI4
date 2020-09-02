<?php

namespace App\Controllers;

use App\Models\SliderModel;

class Slider extends BaseController
{

	public function __construct()
	{
		helper(['form']);
		helper(['pembantu']);
		$this->Slider = new SliderModel();
	}

	public function index($id = false)
	{

		if ($id === false) {
			$data = [
				'title' => 'Slider',
				'child' => 'dataSlider',
				'sliders' => $this->Slider->get(),
				'content' => 'slider/v_index.php'
			];
			return view('index-backend.php', $data);
		} else {
			$data = [
				'title' => 'Slider',
				'child' => 'dataSlider',
				'sliders' => $this->Slider->get($id),
				'content' => 'slider/v_detail.php'
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
					'slider_foto'  => $this->request->getPost('oldFoto')
				];

				$this->Slider->edit($id, $data);

				return redirect()->to(base_url('/admin/slider'));
			} else {
				$image = $this->request->getFile('foto');
				$name = $image->getRandomName();
				$id = $this->request->getPost('id');
				$data = [
					'slider_foto'  => $name,
				];
				// $image->move(ROOTPATH . 'public/uploads/sliders', $name);
				$image->move('./uploads/sliders', $name);

				$this->Slider->edit($id, $data);

				return redirect()->to(base_url('/admin/slider'));
			}
		} else {
			$data = [
				'title' => 'Slider',
				'child' => 'dataSlider',
				'sliders' => $this->Slider->get($id),
				'content' => 'slider/v_update.php'
			];
			return view('index-backend.php', $data);
		}
	}

	public function create()
	{
		$data = [
			'title' => 'Slider',
			'child' => 'tambahSlider',
			'content' => 'slider/v_tambah.php',
		];
		return view('index-backend.php', $data);
	}

	public function store()
	{
		$image = $this->request->getFile('foto');
		$name = $image->getRandomName();

		$data = [
			'slider_foto'  => $name,
		];

		// $image->move(ROOTPATH . 'public/uploads/sliders', $name);
		$image->move('./uploads/sliders', $name);

		$this->Slider->tambah($data);

		return redirect()->to(base_url('/admin/slider'));
	}

	public function delete($id)
	{
		$this->Slider->hapus($id);
		return redirect()->back();
	}

	//--------------------------------------------------------------------

}
