<?php namespace App\Models\Businessadmin;

use CodeIgniter\Model;

class ProductsModel extends Model
{
    protected $table = 'products';
	protected $primaryKey   = 'pk_id';

    protected $returnType   = 'array';

    protected $allowedFields    = ['pk_id', 'name', 'shortname', 'description', 'image_path', 'thumbnail_path', 
    'created_datetime', 'udpated_datetime', 'unit_quantity', 'product_type', 'on_sale', 'unit_price', 'is_active', 
    'list_order_numb', 'favorities', 'tags', 'product_sku', 'product_category_id', 'is_featured', 'created_by', 
    'updated_by', 'discount_type', 'discount_amount', 'discount_percent', 'product_unit_id', 'bussiness_id'];
	
	public function getProducts($slug = false)
	{
		if ($slug === false)
		{
			//return $this->where(['is_active' => '1'])->orderBy('pk_id')->findAll();
			return $this->orderBy('pk_id')->findAll();
			//return $this->findAll();
		}
		return $this->asArray()->where(['pk_id' => $slug])->orderBy('pk_id')->findAll();
	}
	public function products_save($data) {
        $query = $this->db->table($this->table)->insert($data);
		return $this->db->insertID(); 
	}
	public function delete_products($id) {
		$query =$this->db->table($this->table)->where(['pk_id' => $id])->delete();
	}
	public function update_products($data,$id) {
		$query =$this->db->table($this->table)->where(['pk_id' => $id])->update($data);
		return $this->db->insertID();
	}
}