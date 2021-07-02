<?php namespace App\Controllers\Customers;
use App\Models\Customers\ProductsModel;
use App\Models\Businessadmin\BusinessCategoriesModel;
use App\Models\Customers\ProductCategoriesModel;
use CodeIgniter\Controller;

use App\Controllers\BaseController;
class Dashboard extends BaseController
{
    public function __construct(...$params){ 
        //constructor
    }

    public function getBusinessListing()
    {
        $data['pageTitle'] = 'Dashboard';
		$data['fileToLoad'] = '/customers/dashboard';
		$data['data'] = [];
		echo view('templates/customers/customer_template', $data);
    }

    public function view_authors()
    {
        $productModel = new ProductsModel();
        $displaydata['authors'] = $productModel->select('shortname')
        ->groupBy('shortname')
        ->orderBy('shortname', 'Asc')
        ->findAll(); 
        $data['pageTitle'] = 'Authors';
		$data['fileToLoad'] = '/customers/authors';
		$data['data'] = $displaydata;
		echo view('templates/customers/customer_template', $data);
    }

    public function view_genre()
    {
        $ProductCategoriesModel = new ProductCategoriesModel();
        $displaydata['genre'] = $ProductCategoriesModel->select('product_categories.pk_id, product_categories.name as title')
        ->join('products p', 'product_categories.pk_id=p.product_category_id')
        ->orderBy('product_categories.name', 'Asc')
        ->groupBy('product_categories.name')
        ->findAll(); 
        $data['pageTitle'] = 'Genre';
		$data['fileToLoad'] = '/customers/genre';
		$data['data'] = $displaydata;
		echo view('templates/customers/customer_template', $data);
    }

    public function getBooksAuthor($id){
        $productModel = new ProductsModel();
        $displaydata['res'] = $productModel->select('*')
        ->where('shortname', $id)
        ->groupBy('shortname')
        ->orderBy('shortname', 'Asc')
        ->findAll();
        $data['pageTitle'] = 'Books by Author';
		$data['fileToLoad'] = '/customers/book_authors';
		$data['data'] = $displaydata;
		echo view('templates/customers/customer_template', $data);
    }

    public function getBooksGenre($id){
        $productModel = new ProductsModel();
        $displaydata['res'] = $productModel->select('*')
        ->where('product_category_id', $id)
        ->groupBy('shortname')
        ->orderBy('shortname', 'Asc')
        ->findAll();
        $data['pageTitle'] = 'Books by Genre';
		$data['fileToLoad'] = '/customers/book_genre';
		$data['data'] = $displaydata;
		echo view('templates/customers/customer_template', $data);
    }

    public function download($file){
        if (file_exists($file)) {
            print_r('$here');
            header('Content-Description: File Transfer');
            header('Content-Type: application/octet-stream');
            header("Content-Type: application/force-download");
            header('Content-Disposition: attachment; filename=' . urlencode(basename($file)));
            // header('Content-Transfer-Encoding: binary');
            header('Expires: 0');
            header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
            header('Pragma: public');
            header('Content-Length: ' . filesize($file));
            ob_clean();
            flush();
            readfile($file);
            exit;
        }
    }
}
?>