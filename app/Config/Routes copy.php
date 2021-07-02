<?php namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php'))
{
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Login');
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
$routes->get('SuperAdmin', 'Zrortadmin/Login::index');
//routes for logout
$routes->get('logout', 'Zrortadmin/Login::logout');
//routes for products
$routes->get('Products/(:segment)', 'Businessadmin\Products::view/$1');
$routes->get('Products', 'Businessadmin\Products::index'); 
$routes->get('Products-Add', 'Businessadmin\Products::add_products');
$routes->get('Products-View/(:segment)', 'Businessadmin\Products::view_products/$1');
$routes->get('Products-Delete/(:segment)', 'Businessadmin\Products::delete_products/$1');
$routes->get('Products-Edit/(:segment)', 'Businessadmin\Products::edit_products/$1');
//routes for categories
$routes->get('Categories/(:segment)', 'Businessadmin\Categories::view/$1');
$routes->get('Categories', 'Businessadmin\Categories::index'); 
$routes->get('Categories-Add', 'Businessadmin\Categories::add_categories');
$routes->get('Categories-View/(:segment)', 'Businessadmin\Categories::view_categories/$1');
$routes->get('Categories-Delete/(:segment)', 'Businessadmin\Categories::delete_categories/$1');
$routes->get('Categories-Edit/(:segment)', 'Businessadmin\Categories::edit_categories/$1');
//routes for business
$routes->get('Business/(:segment)', 'Zrortadmin\Business::view/$1');
$routes->get('Business', 'Zrortadmin\Business::index'); 
$routes->get('Business-Add', 'Zrortadmin\Business::add_business');
$routes->get('Business-View/(:segment)', 'Zrortadmin\Business::view_business/$1');
$routes->get('Business-Delete/(:segment)', 'Zrortadmin\Business::delete_business/$1');
$routes->get('Business-Edit/(:segment)', 'Zrortadmin\Business::edit_business/$1');
//routes for businesscategories
$routes->get('Business-Categories/(:segment)', 'Zrortadmin\Businesscategories::view/$1');
$routes->get('Business-Categories', 'Zrortadmin\Businesscategories::index'); 
$routes->get('Business-Categories-Add', 'Zrortadmin\Businesscategories::add_businesscategories');
$routes->get('Business-Categories-View/(:segment)', 'Zrortadmin\Businesscategories::view_businesscategories/$1');
$routes->get('Business-Categories-Delete/(:segment)', 'Zrortadmin\Businesscategories::delete_businesscategories/$1');
$routes->get('Business-Categories-Edit/(:segment)', 'Zrortadmin\Businesscategories::edit_businesscategories/$1'); 
//routes for zrortprofile 
$routes->get('ZrortProfile-Add', 'Zrortadmin/Zrortprofile::add_zrortprofile');
$routes->get('ZrortChange-Password', 'Zrortadmin/Zrortprofile::update_zrortchangepassword');
//routes for logout
$routes->get('BusinessProfile-Add', 'Businessadmin\Businessprofile::add_businessprofile');
$routes->get('BusinessChange-Password', 'Businessadmin\Businessprofile::update_businesschangepassword');
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
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php'))
{
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}

$routes->add('/', 'Customers\Dashboard::getBusinessListing');

$routes->group('products', function($routes)
{
	$routes->add('/', 'Customers\Products::all_products');
	$routes->add('new_products/(:segment)', 'Customers\Products::recent_products/$1');
	$routes->add('featured/(:segment)', 'Customers\Products::featured_products/$1');
	$routes->add('view/(:segment)', 'Customers\Products::getSingleProductDetails/$1');
	$routes->add('search', 'Customers\Products::searchForProducts');
	
	$routes->group('category', function($routes)
	{
		$routes->add('view/(:segment)', 'Customers\Products::getProductByCatID/$1');
	});
});

$routes->group('business', function($routes)
{
	$routes->add('view', 'Customers\Products::view_all_business');
	$routes->add('search', 'Customers\Products::searchForBusiness');

	// $routes->group('products', function($routes)
	// {
	// 	$routes->add('view/(:segment)', 'Customers\Products::getProductsByBusinessID/$1');	
	// });
	$routes->group('products', function($routes)
	{
		$routes->add('view/(:segment)', 'Customers\Products::view_products_based_on_busines_categories/$1');	
	});
});

$routes->group('view', function($routes)
{
	$routes->add('authors', 'Customers\Dashboard::view_authors');
	$routes->add('genre', 'Customers\Dashboard::view_genre');
	$routes->add('books/(:segment)', 'Customers\Dashboard::getBooksAuthor/$1');
	$routes->add('booksGenre/(:segment)', 'Customers\Dashboard::getBooksGenre/$1');
	$routes->add('download/(:segment)', 'Customers\Dashboard::download/$1');
});