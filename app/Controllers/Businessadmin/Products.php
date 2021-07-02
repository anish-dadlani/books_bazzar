<?php namespace App\Controllers\Businessadmin;
use App\Models\Businessadmin\ProductsModel;
use App\Models\Businessadmin\CategoriesModel;
use App\Models\Zrortadmin\BusinessModel;
use App\Models\Zrortadmin\BusinesscategoriesModel;
use CodeIgniter\Controller;

use App\Controllers\BaseController;
class Products extends BaseController
{
	public function __construct(...$params)
	{
		helper('business_function_helper');
	}

	public function index()
	{
		$pager = \Config\Services::pager();
		$model = new ProductsModel();
		$displaydata['products'] = $model->getProducts();
		$displaydata = [
            'products' => $model->paginate(5),
            'pager' => $model->pager
		];
		$data['pageTitle'] = 'Books Listing';
		$data['fileToLoad'] = '/Businessadmin/products/overview';
		$data['data'] = $displaydata;
		echo view('templates/admin/zarorat_template', $data);
	}

	public function view($slug = null)
	{
		$model = new ProductsModel();
		$data['products'] = $model->getProducts($slug);
	}

	public function add_products()
	{
		$categoriesmodel = new CategoriesModel();
		$data['get_categories'] = $categoriesmodel->getCategories();
		$BusinesscategoriesModel = new BusinesscategoriesModel();
		$data['b_categories'] = $BusinesscategoriesModel->select('pk_id,title')->where('is_active', '1')->findAll();
		$business_model = new BusinessModel();
		$data['business'] = $business_model->getBusiness();
		$data['pageTitle'] = 'Book Add';
		$data['fileToLoad'] = '/Businessadmin/products/add_products';
		$data['data'] = $data;
		echo view('templates/admin/zarorat_template', $data);
	}

	public function products_save()
	{
		$businessuser_id =   $this->session->get('user_id');
		$model = new ProductsModel();
		if (! $this->validate([	'name' => 'required',]))
		{
			return redirect()->to('/Books-Add')->withInput();
		}
		else
		{ 	
			$avatar = $this->request->getFile('file_image');
            $avatar->move('includes/images/BusinessAdmin/products/');
			$filenname =$avatar->getClientName();
            $path  = $avatar->getTempName();
			$fullimgpath = $path . $filenname;

			$avatar1 = $this->request->getFile('file_image1');
            $avatar1->move('includes/images/BusinessAdmin/products/');
			$filenname1 =$avatar1->getClientName();
            $path1  = $avatar1->getTempName();
			$fullimgpath1 = $path1 . $filenname1;

			$data = array(
				'name' => $this->request->getPost('name')??NULL,
				'shortname' => $this->request->getPost('shortname')??NULL,
				'description' => $this->request->getPost('description')??NULL,
				'tags' => $this->request->getPost('tags')??NULL,
				'is_active' => $this->request->getPost('is_active')??NULL,
				'product_category_id' => $this->request->getPost('product_category_id')??NULL,
				'image_path' =>  $fullimgpath??NULL,
				'thumbnail_path' =>  $fullimgpath1??NULL,
				'created_by' => $businessuser_id??1,
				'bussiness_id' => 1,
			);
			$lastinsertedid = $model->products_save($data); 
			businessadmin_activityLog('configuration','Products Added',$data);
			return redirect()->route('Books');
		}
	}

	public function view_products($id=null)
	{ 
		$model = new ProductsModel();
		$displaydata['products_view'] = $model->getProducts($id);
		$BusinesscategoriesModel = new BusinesscategoriesModel();
		$displaydata['b_categories'] = $BusinesscategoriesModel->select('pk_id,title')->where('is_active', '1')->findAll();
		$categoriesmodel = new CategoriesModel();
		$displaydata['get_categories'] = $categoriesmodel->getCategories();
		$business_model = new BusinessModel();
		$displaydata['business'] = $business_model->getBusiness();
		$data['pageTitle'] = 'Book View';
		$data['fileToLoad'] = '/Businessadmin/products/products_view';
		$data['data'] = $displaydata;
		echo view('templates/admin/zarorat_template', $data);
	}

	public function edit_products($id=null)
	{ 
		$model = new ProductsModel();
		$displaydata['products_edit'] = $model->getProducts($id);
		$BusinesscategoriesModel = new BusinesscategoriesModel();
		$displaydata['b_categories'] = $BusinesscategoriesModel->select('pk_id,title')->where('is_active', '1')->findAll();
		$categoriesmodel = new CategoriesModel();
		$displaydata['get_categories'] = $categoriesmodel->getCategories();
		$business_model = new BusinessModel();
		$displaydata['business'] = $business_model->getBusiness();
		$data['pageTitle'] = 'Book Edit';
		$data['fileToLoad'] = '/Businessadmin/products/products_edit';
		$data['data'] = $displaydata;
		echo view('templates/admin/zarorat_template', $data);
	}

	public function delete_products($id=null)
	{
		$model = new ProductsModel();
		$data = array(
			'is_active'=>"0",
			'udpated_datetime'=> date('Y-m-d h:i:s') 
		);
		$save =$model->delete_products($id);
		businessadmin_activityLog('configuration','Products Deleted',$data);
		return redirect()->route('Books');
	}
	
	public function update_products()
	{
		$model = new ProductsModel();
		$id = $this->request->getPost('pk_id');
		$businessuser_id =   $this->session->get('user_id');
		$avatar=$this->request->getFile('file_image');
		$check_file =$avatar->getClientName();
		if(!empty($check_file)){
			$avatar = $this->request->getFile('file_image');
			$avatar->move('includes/images/BusinessAdmin/products/');
			$filenname =$avatar->getClientName();
			$path  = $avatar->getTempName();
			$fullimgpath = $path . $filenname;
		}else{ 
			$fullimgpath =$this->request->getPost('updatepic');
		}
			$data = array(
				'name' => $this->request->getPost('name')??NULL,
				'shortname' => $this->request->getPost('shortname')??NULL,
				'description' => $this->request->getPost('description')??NULL,
				'is_active' => $this->request->getPost('is_active')??NULL,
				'tags' => $this->request->getPost('tags')??NULL,
				'product_category_id' => $this->request->getPost('product_category_id')??NULL,
				'bussiness_id' => $this->request->getPost('bussiness_id')??1,
				'image_path' =>  $fullimgpath??NULL,
				// 'thumbnail_path' =>  $fullimgpath??NULL,
				'created_by' => $businessuser_id??1,
				'updated_by' => $businessuser_id??NULL,
			);
		$lastinsertedid = $model->update_products($data,$id);
		businessadmin_activityLog('configuration','Products Updated',$data);
		return redirect()->route('Books');
	}
}