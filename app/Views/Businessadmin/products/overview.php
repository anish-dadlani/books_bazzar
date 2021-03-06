<style>
li {
  background-color: #e9ecef;
  border: none;
  color: white;
  padding: 5px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
</style>		
		<main>
			<div class="container-fluid">
				<h2 class="mt-30 page-title">Books</h2>
				<ol class="breadcrumb mb-30">
					<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
					<li class="breadcrumb-item active">Books</li>
				</ol>
				<div class="row justify-content-between">
					<div class="col-lg-12">
						<a href="<?php echo base_url(); ?>/Books-Add" class="add-btn hover-btn">Add New Book</a>
					</div>
					<div class="col-lg-3 col-md-4">
						<div class="bulk-section mt-30">

						</div>
					</div>
					<div class="col-lg-12 col-md-6">
						<div class="bulk-section mt-20">
							<div class="search-by-name-input">
								<input type="text" id="filter" class="form-control" placeholder="Search">
							</div>
							<!-- <div class="input-group"> -->
								<!-- <select id="status" name="is_active" class="form-control filter-status">
									<option value="">-- Select Status --</option>
									<option value="1">Active</option>
									<option value="0">Inactive</option>
								</select> -->
								<!-- <div class="input-group-append"> -->
									<!--<button class="status-btn hover-btn" type="submit">Search Area</button>-->
								<!-- </div>
							</div> -->
						</div>
					</div>
					<div class="col-lg-12 col-md-12">
						<div class="card card-static-2 mt-30 mb-30">
							<div class="card-title-2">
								<h4>Books List</h4>
							</div>
							<div class="card-body-table">
								<div class="table-responsive">
									<table class="table ucp-table table-hover table-striped footable table-vcenter" data-filter="#filter" data-filter-text-only="true" id="productList">
										<thead>
											<tr>
												<th>S#</th>
												<th>Book Title</th>
												<th>Book Genre</th>
												<th>Book Category</th>
												<th>Author Name</th>
												<th>Status</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody id="tbody">
											<?php $startpoint=0; $i=$startpoint; foreach ($products as $row):  $i++;?>
											<tr>
												<td class="text-center" ><?php echo $i; ?> </td>
												<td class="" ><?php echo $row['name']; ?></td>
												<td class="" ><?php if($row['product_category_id'] == NULL || $row['product_category_id'] == ""){}else{echo get_product_categories_name($row['product_category_id']);} ?></td> 
												<td class="" ><?php if($row['product_category_id'] == NULL || $row['product_category_id'] == ""){}else{echo get_product_cat_name($row['product_category_id']);} ?>
												<td class="" ><?php echo $row['shortname']; ?></td>
												<td class="" ><?php if($row['is_active']==1){echo 'Active';}else{echo 'Inactive';}?></td>
												<td class="action-btns">
													<a href="<?php echo base_url(); ?>/Books-View/<?php echo $row['pk_id']?>" class="view-shop-btn" title="View"><i class="fas fa-eye"></i></a>
													<a href="<?php echo base_url(); ?>/Books-Edit/<?php echo $row['pk_id']?>" class="edit-btn" title="Edit"><i class="fas fa-edit"></i></a>
													<a href="<?php echo base_url(); ?>/Books-Delete/<?php echo $row['pk_id']?>" onclick="return confirm('Are you sure?')"><i class="fa fa-trash  cst-theme-text"></i></a>
												</td>
											</tr>
											<?php endforeach; ?>
										</tbody>
									</table>
									<div class="row" style="margin-right: 0px !important;">
										<div class="col-md-6">
											<?= $pager->links() ?>
										</div>
										<!-- <div class="col-md-6">	-->
											<?php //echo $pager->simpleLinks(); ?>
										<!-- </div> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
        </main>	
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>  
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/additional-methods.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"></script>
<script src="<?php echo base_url(); ?>/assets/admin/js/fooTable/footable.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>/assets/admin/js/fooTable/footable.filter.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(function($){
		$('.footable').footable();
	});
</script>	
<script type="text/javascript">
   $('.filter-status').on('change', function (){
   	var is_active = $('#status').val();
      $('#tbody').html('');
      //$('#tbody').html('<h1><td colspan="10" class="text-center" ><img class="moongoalimg" src="http://localhost/zrort-web/assets/img/ajax-loader_blue.gif">loading ...</td></h1>');
     
      $.ajax({
         type: "POST",
         data: "is_active="+is_active,
         url: '<?php echo base_url("/Businessadmin/AjaxCalls/product_list_filter"); ?>',
         dataType: "json",
         success: function(result){
            $('#tbody').html('');
            if(result != null){
               $('#tbody').html(result.tbody);
			   //console.log(result.paging);
               //$('#paging').html(result.paging);
            }
         }
      });
   });
</script>				