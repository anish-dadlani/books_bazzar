<?php namespace App\Controllers\Customers;
use App\Models\Customers\ProductsModel;
use App\Models\Businessadmin\CategoriesModel;
use App\Models\Zrortadmin\BusinessModel;
use App\Models\Businessadmin\BusinessCategoriesModel;
use App\Models\Customers\ProductCategoriesModel;
use CodeIgniter\Controller;

use App\Controllers\BaseController;
class Products extends BaseController
{
    public function __construct(...$params){ 
        //constructor   
    }

    public function recent_products($id)
    {
        $productModel = new ProductsModel();
        $displaydata['products'] = $productModel->select('products.*')
        ->join('product_categories pc', 'pc.pk_id=products.product_category_id')
        ->join('business_categories bc', 'bc.pk_id=pc.business_category')
        ->where('bc.pk_id',$id)
        ->orderBy('products.created_datetime', 'DESC')
        ->findAll();

        $data['pageTitle'] = 'New Books';
        $data['fileToLoad'] = '/customers/products/recent_products';
        $data['data'] = $displaydata;

        echo view('templates/products/template', $data);
    }

    public function all_products()
    {
        $productModel = new ProductsModel();
        $displaydata['products'] = $productModel->orderBy('pk_id', 'asc')->findAll();

        $data['pageTitle'] = 'All Books';
        $data['fileToLoad'] = '/customers/products/all_products';
        $data['data'] = $displaydata;

        echo view('templates/products/template', $data);
    }

    public function getProductByCatID($id=null)
    {
        $productModel = new ProductsModel();
        $displaydata['products'] = $productModel->select('products.*')
        ->where('products.product_category_id',$id)
        ->orderBy('products.created_datetime', 'DESC')
        ->findAll();
        $displaydata['cat_id'] = $id;

        $data['pageTitle'] = 'Books Based on Category';
        $data['fileToLoad'] = '/customers/products/productsByCatId';
        $data['data'] = $displaydata;

        echo view('templates/products/template', $data);
    }

    public function getSingleProductDetails($id=null)
    {
        $productModel = new ProductsModel();
        if($id != null){
            $displaydata['products'] = $productModel->where('pk_id', $id)->findAll();
            $displaydata['product_by_category'] = $productModel->where('product_category_id',$displaydata['products'][0]['product_category_id'])->findAll();
            $displaydata['product_id'] = $id;
        }else{
            $displaydata = [];
        }

        $data['pageTitle'] = 'Book Detail';
        $data['fileToLoad'] = '/customers/products/single_product';
        $data['data'] = $displaydata;

        echo view('templates/products/template', $data);
    }

    public function getProductsByBusinessID($business_id)
    {
        $businessModel = new BusinessModel();
        $categories_model = new CategoriesModel();
        $BusinessCategoriesModel = new BusinessCategoriesModel();
        $displaydata['products'] = $businessModel->join('products', 'products.bussiness_id = business.pk_id')->where('business.pk_id', $business_id)->orderBy('products.created_datetime', 'DESC')->findAll();
        $displaydata['featured'] = $businessModel->join('products', 'products.bussiness_id = business.pk_id')->where('business.pk_id', $business_id)->where('products.is_featured', '1')->findAll();
        $displaydata['categories'] = $categories_model->select('product_categories.*')->join('business', 'bussiness_id = business.pk_id')->where('business.pk_id', $business_id)->findAll();
        $displaydata['business_id'] = $business_id;

        $data['pageTitle'] = 'Books';
        $data['fileToLoad'] = '/customers/dashboard2';
        $data['data'] = $displaydata;

        echo view('templates/customers/customer_template_two', $data);
    }

    public function view_products_based_on_busines_categories($category_id)
    {
        $ProductsModel = new ProductsModel();
        $CategoriesModel = new CategoriesModel();
        
        $displaydata['products'] = $ProductsModel->select('products.*')
        ->join('product_categories pc', 'pc.pk_id=products.product_category_id')
        ->join('business_categories bc', 'bc.pk_id=pc.business_category')
        ->where('bc.pk_id',$category_id)
        ->findAll();

        $displaydata['categories'] = $CategoriesModel->select('product_categories.*')
        ->join('business_categories bc', 'bc.pk_id=product_categories.business_category')
        ->where('bc.pk_id',$category_id)
        ->findAll();
        $displaydata['business_id'] = $category_id;
        $data['pageTitle'] = 'Books Based on Categories';
        $data['fileToLoad'] = '/customers/dashboard2';
        $data['data'] = $displaydata;

        echo view('templates/customers/customer_template_two', $data);
    }

    public function searchForProducts()
    {
        $search = $this->request->getPost('search');
        $ProductsModel = new ProductsModel();
        $searchResult = $ProductsModel->like('name', $search)->findAll();
        foreach ($searchResult as $key => $row):
            echo "<li><a href='" . base_url('products/view/'.$row['pk_id']) . "'>" . $row['name'] . "</a></li>";
        endforeach;
    }

    public function searchForBusiness()
    {
        $BusinessCategoriesModel = new BusinessCategoriesModel();
        $ProductsModel = new ProductsModel();
        $ProductCategoriesModel = new ProductCategoriesModel();

        $search = $this->request->getPost('search');
        $filterby = $this->request->getPost('filterby');

        if($filterby == 'category'){
            $searchResult = $BusinessCategoriesModel->where('is_active', '1')->like('title', $search)->findAll();
            foreach ($searchResult as $key => $row):
                echo "<li><a href='" . base_url('category/books/view/'.$row['pk_id']) . "'>" . $row['title'] . "</a></li>";
            endforeach;
        }elseif($filterby == 'author'){
            $searchResult = $ProductsModel->select('shortname as title')->like('shortname', $search)->findAll();
            foreach ($searchResult as $key => $row):
                echo "<li><a href='" . base_url('view/books/'.$row['title']) . "'>" . $row['title'] . "</a></li>";
            endforeach;
        }elseif($filterby == 'genre'){
            $searchResult = $ProductCategoriesModel->select('product_categories.pk_id, product_categories.name as title')
            ->join('products p', 'product_categories.pk_id=p.product_category_id')
            ->like('product_categories.name', $search)
            ->orderBy('product_categories.name', 'Asc')
            ->groupBy('product_categories.name')
            ->findAll();
            foreach ($searchResult as $key => $row):
                echo "<li><a href='" . base_url('view/booksGenre/'.$row['pk_id']) . "'>" . $row['title'] . "</a></li>";
            endforeach;
        }elseif($filterby == 'book'){
            $searchResult = $ProductsModel->select('pk_id, name as title')->like('name', $search)->findAll();
            foreach ($searchResult as $key => $row):
                echo "<li><a href='" . base_url('books/view/'.$row['pk_id']) . "'>" . $row['title'] . "</a></li>";
            endforeach;
        }else{
            echo "Result Not Found!";
        }
    }
}
?>