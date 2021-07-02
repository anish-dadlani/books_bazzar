<?php namespace App\Models\Customers;
use CodeIgniter\Model;
 
class ProductCategoriesModel extends Model
{
    protected $table    = 'product_categories';
    protected $primaryKey   = 'pk_id';

    protected $returnType   = 'array';

    protected $allowedFields    = ['pk_id', 'name', 'shortname', 'description', 'created_datetime', 'udpated_datetime', 'image_path', 
    'thumbnail_path', 'list_order_numb', 'is_active', 'tags', 'bussiness_id', 'created_by', 'updated_by', 'business_category'];

    protected $validationRules  = [];
    protected $validationMessages   = [];
    protected $skipValidation   = false;
}
?>