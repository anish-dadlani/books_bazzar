<?php namespace App\Controllers\Businessadmin;
use App\Models\Businessadmin\CategoriesModel;
use App\Models\Zrortadmin\BusinessModel;
use App\Models\Zrortadmin\BusinesscategoriesModel;
use CodeIgniter\Controller;

use App\Controllers\BaseController;
class Categories extends BaseController
{
	public function __construct(...$params)
	{
		helper('business_function_helper');
	}

	public function index()
	{
		$pager = \Config\Services::pager();
		$model = new CategoriesModel();
		$displaydata['categories'] = $model->getCategories();
		$displaydata = [
            'categories' => $model->paginate(5),
            'pager' => $model->pager
		];
		$data['pageTitle'] = 'Categories Listing';
		$data['fileToLoad'] = '/Businessadmin/categories/overview';
		$data['data'] = $displaydata;
		echo view('templates/admin/zarorat_template', $data);
	}

	public function view($slug = null)
	{
		$model = new CategoriesModel();
		$data['categories'] = $model->getCategories($slug);
	}
	public function add_categories()
	{
		$business_model = new BusinessModel();
		$data['business'] = $business_model->getBusiness();
		$BusinesscategoriesModel = new BusinesscategoriesModel();
		$data['b_categories'] = $BusinesscategoriesModel->select('pk_id,title')->where('is_active', '1')->findAll();
		$data['pageTitle'] = 'Categories Add';
		$data['fileToLoad'] = '/Businessadmin/categories/add_categories';
		$data['data'] = $data;
		echo view('templates/admin/zarorat_template', $data);
	}
	
	public function categories_save()
	{
		$model = new CategoriesModel();
		// print_r($_SESSION); exit;
		$businessuser_id =   $this->session->get('user_id');
		if (! $this->validate([
			'name' => 'required',
			'description'  => 'required|min_length[40]',
			'file' => [
                'uploaded[file]',
                'mime_in[file,image/jpg,image/jpeg,image/gif,image/png]',
                'max_size[file,4096]',
            ],
		]))
		{
			return redirect()->to('/Genre-Add')->withInput();
		}
		else
		{
			$avatar = $this->request->getFile('file');
            $avatar->move('includes/images/BusinessAdmin/categories/');
			$filenname =$avatar->getClientName();
            $path  = $avatar->getTempName();
			$fullimgpath = $path . $filenname;
			$data = array(
				'name' => $this->request->getPost('name')??NULL,
				'shortname' => $this->request->getPost('shortname')??NULL,
				'tags' => $this->request->getPost('tags')??NULL,
				'bussiness_id' => 1,
				'is_active' => $this->request->getPost('is_active')??NULL,
				'description' => $this->request->getPost('description')??NULL,
				'image_path' =>  $fullimgpath??NULL,
				'thumbnail_path' =>  $fullimgpath??NULL,
				'created_by' => $businessuser_id??1,
				'business_category' => $this->request->getPost('bussiness_id')??NULL,
			);
			$save = $model->categories_save($data); 
			businessadmin_activityLog('configuration','Categories Added',$data);
			return redirect()->route('Genre');
		}
	}
	public function view_categories($id=null)
	{ 
		$model = new CategoriesModel();
		$displaydata['categories_view'] = $model->getCategories($id);
		$BusinesscategoriesModel = new BusinesscategoriesModel();
		$displaydata['b_categories'] = $BusinesscategoriesModel->select('pk_id,title')->where('is_active', '1')->findAll();
		$business_model = new BusinessModel();
		$data['business'] = $business_model->getBusiness();
		$data['pageTitle'] = 'Categories View';
		$data['fileToLoad'] = '/Businessadmin/categories/categories_view';
		$data['data'] = $displaydata;
		echo view('templates/admin/zarorat_template', $data);
	}
	public function edit_categories($id=null)
	{ 
		$model = new CategoriesModel();
		$displaydata['categories_edit'] = $model->getCategories($id);
		$BusinesscategoriesModel = new BusinesscategoriesModel();
		$displaydata['b_categories'] = $BusinesscategoriesModel->select('pk_id,title')->where('is_active', '1')->findAll();
		$business_model = new BusinessModel();
		$data['business'] = $business_model->getBusiness();
		$data['pageTitle'] = 'Categories Edit';
		$data['fileToLoad'] = '/Businessadmin/categories/categories_edit';
		$data['data'] = $displaydata;
		echo view('templates/admin/zarorat_template', $data);
	}
	public function delete_categories($id=null)
	{
		$model = new CategoriesModel();
		$data = array(
				'is_active'=>"0",
				'udpated_datetime'=> date('Y-m-d h:i:s') 
		);
		$save =$model->delete_categories($id);
		businessadmin_activityLog('configuration','Categories Deleted',$data); 
		return redirect()->route('Genre');
	}
	public function update_categories()
	{
		$model = new CategoriesModel();
		$id = $this->request->getPost('pk_id');
		$businessuser_id =   $this->session->get('user_id');
		$avatar=$this->request->getFile('file');
		$check_file =$avatar->getClientName();
		if(!empty($check_file)){
			$avatar = $this->request->getFile('file');
			$avatar->move('includes/images/BusinessAdmin/categories/');
			$filenname =$avatar->getClientName();
			$path  = $avatar->getTempName();
			$fullimgpath = $path . $filenname;
		}else{ 
			$fullimgpath =$this->request->getPost('updatepic');
		}
			$data = array(
				'name' => $this->request->getPost('name')??NULL,
				'shortname' => $this->request->getPost('shortname')??NULL,
				'bussiness_id' => 1,
				'is_active' => $this->request->getPost('is_active')??NULL,
				'description' => $this->request->getPost('description')??NULL,
				'image_path' =>  $fullimgpath??NULL,
				'thumbnail_path' =>  $fullimgpath??NULL,
				'created_by' => $businessuser_id??NULL,
				'updated_by' => $businessuser_id??NULL,
				'business_category' => $this->request->getPost('bussiness_id')??NULL,
			);		
		$save = $model->update_categories($data,$id);
		businessadmin_activityLog('configuration','Categories Updated',$data);
		return redirect()->route('Genre');
	}
}