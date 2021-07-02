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
$routes->get('Books/(:segment)', 'Businessadmin\Products::view/$1');
$routes->get('Books', 'Businessadmin\Products::index'); 
$routes->get('Books-Add', 'Businessadmin\Products::add_products');
$routes->get('Books-View/(:segment)', 'Businessadmin\Products::view_products/$1');
$routes->get('Books-Delete/(:segment)', 'Businessadmin\Products::delete_products/$1');
$routes->get('Books-Edit/(:segment)', 'Businessadmin\Products::edit_products/$1');
//routes for categories
$routes->get('Genre/(:segment)', 'Businessadmin\Categories::view/$1');
$routes->get('Genre', 'Businessadmin\Categories::index'); 
$routes->get('Genre-Add', 'Businessadmin\Categories::add_categories');
$routes->get('Genre-View/(:segment)', 'Businessadmin\Categories::view_categories/$1');
$routes->get('Genre-Delete/(:segment)', 'Businessadmin\Categories::delete_categories/$1');
$routes->get('Genre-Edit/(:segment)', 'Businessadmin\Categories::edit_categories/$1');
//routes for businesscategories
$routes->get('Books-Categories/(:segment)', 'Zrortadmin\Businesscategories::view/$1');
$routes->get('Books-Categories', 'Zrortadmin\Businesscategories::index'); 
$routes->get('Books-Categories-Add', 'Zrortadmin\Businesscategories::add_businesscategories');
$routes->get('Books-Categories-View/(:segment)', 'Zrortadmin\Businesscategories::view_businesscategories/$1');
$routes->get('Books-Categories-Delete/(:segment)', 'Zrortadmin\Businesscategories::delete_businesscategories/$1');
$routes->get('Books-Categories-Edit/(:segment)', 'Zrortadmin\Businesscategories::edit_businesscategories/$1'); 
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

$routes->group('books', function($routes)
{
	$routes->add('/', 'Customers\Products::all_products');
	$routes->add('newBooks/(:segment)', 'Customers\Products::recent_products/$1');
	$routes->add('featured/(:segment)', 'Customers\Products::featured_products/$1');
	$routes->add('view/(:segment)', 'Customers\Products::getSingleProductDetails/$1');
	$routes->add('search', 'Customers\Products::searchForProducts');
	
	$routes->group('category', function($routes)
	{
		$routes->add('view/(:segment)', 'Customers\Products::getProductByCatID/$1');
	});
});

$routes->group('category', function($routes)
{
	$routes->add('search', 'Customers\Products::searchForBusiness');
	$routes->group('books', function($routes)
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