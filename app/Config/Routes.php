<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('/');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/**
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.


// Front-end
$routes->get('/', 'Home::index');
$routes->get('profil', 'Home::profil');
$routes->get('detail/(:num)', 'Home::detail/$1');
$routes->get('contact', 'Home::contact');
$routes->get('gallery', 'Home::gallery');
$routes->get('news', 'Home::news');
$routes->get('ajaxHome', 'Home::ajaxHome');


$routes->group('admin', ['filter' => 'login'], function ($routes) {

	$routes->get('home', 'Admin::home');
	$routes->get('', 'Admin::home');

	// Routes Rent
	// ==================================================================
	// Get All & One
	$routes->get('product', 'Product::index');
	$routes->get('product/(:num)', 'Product::index/$1');
	// Update
	$routes->get('product/update/(:num)', 'Product::update/$1');
	$routes->post('product/update', 'Product::update');
	// Save
	$routes->post('product/store', 'Product::store');
	$routes->get('product/store', 'Product::create');
	// Delete
	$routes->get('product/delete/(:num)', 'Product::delete/$1');
	// ==================================================================

	// Routes Slider
	// ==================================================================
	// Get All & One
	$routes->get('slider', 'Slider::index');
	$routes->get('slider/(:num)', 'Slider::index/$1');
	// Update
	$routes->get('slider/update/(:num)', 'Slider::update/$1');
	$routes->post('slider/update', 'Slider::update');
	// Save
	$routes->post('slider/store', 'Slider::store');
	$routes->get('slider/store', 'Slider::create');
	// Delete
	$routes->get('slider/delete/(:num)', 'Slider::delete/$1');
	// ==================================================================

	// Routes Category
	// ==================================================================
	// Get All & One
	$routes->get('category', 'Category::index');
	$routes->get('category/(:num)', 'Category::index/$1');
	// Update
	$routes->get('category/update/(:num)', 'Category::update/$1');
	$routes->post('category/update', 'Category::update');
	// Save
	$routes->post('category/store', 'Category::store');
	$routes->get('category/store', 'Category::create');
	// Delete
	$routes->get('category/delete/(:num)', 'Category::delete/$1');
	// ==================================================================

	// Routes Cara
	// ==================================================================
	// Get All & One
	$routes->get('cara', 'Cara::index');
	$routes->get('cara/(:num)', 'Cara::index/$1');
	// Update
	$routes->get('cara/update/(:num)', 'Cara::update/$1');
	$routes->post('cara/update', 'Cara::update');
	// Save
	$routes->post('cara/store', 'Cara::store');
	$routes->get('cara/store', 'Cara::create');
	// Delete
	$routes->get('cara/delete/(:num)', 'Cara::delete/$1');
	// ==================================================================

	// Routes Gallery
	// ==================================================================
	// Get All & One
	$routes->get('gallery', 'Gallery::index');
	$routes->get('gallery/(:num)', 'Gallery::index/$1');
	// Update
	$routes->get('gallery/update/(:num)', 'Gallery::update/$1');
	$routes->post('gallery/update', 'Gallery::update');
	// Save
	$routes->post('gallery/store', 'Gallery::store');
	$routes->get('gallery/store', 'Gallery::create');
	// Delete
	$routes->get('gallery/delete/(:num)', 'Gallery::delete/$1');
	// ==================================================================

	// Routes Regular
	// ==================================================================
	// Get All & One
	$routes->get('regular', 'Regular::index');
	$routes->get('regular/(:num)', 'Regular::index/$1');
	// Update
	$routes->get('regular/update/(:num)', 'Regular::update/$1');
	$routes->post('regular/update', 'Regular::update');
	// Save
	$routes->post('regular/store', 'Regular::store');
	$routes->get('regular/store', 'Regular::create');
	// Delete
	$routes->get('regular/delete/(:num)', 'Regular::delete/$1');
	// ==================================================================


	// Routes News
	// ==================================================================
	// Get All & One
	$routes->get('news', 'News::index');
	$routes->get('news/(:num)', 'News::index/$1');
	// Update
	$routes->get('news/update/(:num)', 'News::update/$1');
	$routes->post('news/update', 'News::update');
	// Save
	$routes->post('news/store', 'News::store');
	$routes->get('news/store', 'News::create');
	// Delete
	$routes->get('news/delete/(:num)', 'News::delete/$1');
	// ==================================================================

	// Routes Contacts
	// ==================================================================
	// Get All & One
	$routes->get('contact', 'Contact::index');
	$routes->get('contact/(:num)', 'Contact::index/$1');
	// Update
	$routes->get('contact/update/(:num)', 'Contact::update/$1');
	$routes->post('contact/update', 'Contact::update');
	// Save
	$routes->post('contact/store', 'Contact::store');
	$routes->get('contact/store', 'Contact::create');
	// Delete
	$routes->get('contact/delete/(:num)', 'Contact::delete/$1');
	// ==================================================================

	// Routes Profil
	// ==================================================================
	// Get All & One
	$routes->get('profil', 'Profil::index');
	$routes->get('profil/(:num)', 'Profil::index/$1');
	// Update
	$routes->get('profil/update/(:num)', 'Profil::update/$1');
	$routes->post('profil/update', 'Profil::update');
	// Save
	$routes->post('profil/store', 'Profil::store');
	$routes->get('profil/store', 'Profil::create');
	// Delete
	$routes->get('profil/delete/(:num)', 'Profil::delete/$1');
	// ==================================================================

	// Routes Special
	// ==================================================================
	// Get All & One
	$routes->get('special', 'Special::index');
	$routes->get('special/(:num)', 'Special::index/$1');
	// Update
	$routes->get('special/update/(:num)', 'Special::update/$1');
	$routes->post('special/update', 'Special::update');
	// Save
	$routes->post('special/store', 'Special::store');
	$routes->get('special/store', 'Special::create');
	// Delete
	$routes->get('special/delete/(:num)', 'Special::delete/$1');
	// ==================================================================

	// Routes Trip
	// ==================================================================
	// Get All & One
	$routes->get('trip', 'Trip::index');
	$routes->get('trip/(:num)', 'Trip::index/$1');
	// Update
	$routes->get('trip/update/(:num)', 'Trip::update/$1');
	$routes->post('trip/update', 'Trip::update');
	// Save
	$routes->post('trip/store', 'Trip::store');
	$routes->get('trip/store', 'Trip::create');
	// Delete
	$routes->get('trip/delete/(:num)', 'Trip::delete/$1');
	// ==================================================================



});

// $routes->group('/admin', ['filter' => 'login'], function ($routes) {
// 	$routes->get('home', 'Admin::home');
// });

/**
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
