<?php

namespace App\Controllers;

use App\Models\ProfilModel;
use App\Models\CaraModel;
use App\Models\CategoryModel;
use App\Models\GalleryModel;
use App\Models\NewsModel;
use App\Models\ProductModel;
use App\Models\ContactModel;
use App\Models\SliderModel;

class Home extends BaseController
{

	public function __construct()
	{
		helper(['form']);
		helper(['pembantu']);
		$this->Profil   = new ProfilModel();
		$this->Cara     = new CaraModel();
		$this->Category = new CategoryModel();
		$this->Gallery  = new GalleryModel();
		$this->News     = new NewsModel();
		$this->Product  = new ProductModel();
		$this->Contact  = new ContactModel();
		$this->Slider   = new SliderModel();

		//Do your magic here
	}

	public function index()
	{
		$data['title']     = 'Home';
		$data['menu']      = 'home';
		$data['content']   = 'home';
		$data['profil']    = $this->Profil->get(1);
		$data['contact']   = $this->Contact->get(1);
		$data['cara']      = $this->Cara->get(1);
		$data['categorys'] = $this->Category->get();
		$data['gallerys']  = $this->Gallery->get();
		$data['news']      = $this->News->get();
		$data['products']  = $this->Product->get();
		$data['sliders']  = $this->Slider->get();

		return view('index-frontend', $data);
	}

	public function ajaxHome()
	{
		$products = $this->Product->get();
		$contact = $this->Contact->get(1);;
		echo json_encode(array("products" => $products, "contact" => $contact));
	}

	public function profil()
	{
		$data['title']     = 'Home';
		$data['menu']      = 'profil';
		$data['content']   = 'profil';
		$data['profil']    = $this->Profil->get(1);
		$data['contact']   = $this->Contact->get(1);
		$data['cara']      = $this->Cara->get(1);
		$data['categorys'] = $this->Category->get();
		$data['gallerys']  = $this->Gallery->get();
		$data['news']      = $this->News->get();
		$data['products']  = $this->Product->get();
		$data['sliders']  = $this->Slider->get();

		return view('index-frontend', $data);
	}

	public function gallery()
	{
		$data['title']     = 'Home';
		$data['menu']      = 'gallery';
		$data['content']   = 'gallery';
		$data['profil']    = $this->Profil->get(1);
		$data['contact']   = $this->Contact->get(1);
		$data['cara']      = $this->Cara->get(1);
		$data['categorys'] = $this->Category->get();
		$data['gallerys']  = $this->Gallery->get();
		$data['news']      = $this->News->get();
		$data['products']  = $this->Product->get();
		$data['sliders']  = $this->Slider->get();

		return view('index-frontend', $data);
	}
	public function news()
	{
		$data['title']     = 'Home';
		$data['menu']      = 'news';
		$data['content']   = 'news';
		$data['profil']    = $this->Profil->get(1);
		$data['contact']   = $this->Contact->get(1);
		$data['cara']      = $this->Cara->get(1);
		$data['categorys'] = $this->Category->get();
		$data['gallerys']  = $this->Gallery->get();
		$data['news']      = $this->News->get();
		$data['products']  = $this->Product->get();
		$data['sliders']  = $this->Slider->get();

		return view('index-frontend', $data);
	}

	public function contact()
	{
		$data['title']     = 'Home';
		$data['menu']      = 'contact';
		$data['content']   = 'contact';
		$data['profil']    = $this->Profil->get(1);
		$data['contact']   = $this->Contact->get(1);
		$data['cara']      = $this->Cara->get(1);
		$data['categorys'] = $this->Category->get();
		$data['gallerys']  = $this->Gallery->get();
		$data['news']      = $this->News->get();
		$data['products']  = $this->Product->get();
		$data['sliders']  = $this->Slider->get();

		return view('index-frontend', $data);
	}

	public function detail($id)
	{
		$data['title']     = 'Home';
		$data['menu']      = 'contact';
		$data['content']   = 'detail';
		$data['profil']    = $this->Profil->get(1);
		$data['contact']   = $this->Contact->get(1);
		$data['cara']      = $this->Cara->get(1);
		$data['categorys'] = $this->Category->get();
		$data['gallerys']  = $this->Gallery->get();
		$data['news']      = $this->News->get();
		$data['products']  = $this->Product->get();
		$data['detail']    = $this->Product->get($id);
			$data['sliders']  = $this->Slider->get();

		return view('index-frontend', $data);
	}

	//--------------------------------------------------------------------

}
