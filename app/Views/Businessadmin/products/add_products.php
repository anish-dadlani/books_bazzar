<style>
.cancel-cst-btn{    
	background: #f55d2c;
    border: 0;
    color: #fff;
    font-size: 14px;
    font-weight: 500;
    height: 40px !Important;
    padding: 12px 20px !Important;
    border-radius: 3px;
    margin-top: 20px;
}
.cancel-cst-btn:hover{
	text-decoration: none !important;
    background: #f55d2c;
    color: #fff !important;
    transition: all .2s ease-in-out;
    -webkit-transition: all 0.2s ease-in-out;
    -o-transition: all 0.2s ease-in-out;
    -ms-transition: all 0.2s ease-in-out;
    -webkit-transition: all 0.2s ease-in-out;
    background-image: -webkit-linear-gradient(left, rgba(230, 92, 91, 0.9), rgba(245, 93, 44, 0.9));
    background-image: linear-gradient(to right, rgba(230, 92, 91, 0.9), rgba(245, 93, 44, 0.9));
}
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
</style>
		<main>
			<div class="container-fluid">
				<h2 class="mt-30 page-title">Books</h2>
				<ol class="breadcrumb mb-30">
					<li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
					<li class="breadcrumb-item"><a href="<?php echo base_url(); ?>/Books">Books</a></li>
					<li class="breadcrumb-item active">Add Books</li>
				</ol>
				<div class="row">
					<div class="col-lg-12">
					<?php $validation = \Config\Services::validation(); ?>
						<form id="form"  class="cool-b4-form mt-1" action="<?php echo base_url();?>/Businessadmin/Products/products_save" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered" onSubmit="">
							<div class="card card-static-2 mb-30">
								<div class="card-title-2">
									<h4><b>Add New Book</b></h4>
								</div>
								<div class="card-body-table">
									<div class="news-content-right pd-20">
										<div class="form-group">
											<label class="form-label">Book Title*</label>
											<input type="text" class="form-control" placeholder="Book Title" name="name" value="<?= old('name') ?>" required>
										<?php if($validation->getError('name')) {?>
											<div class='alert alert-danger mt-2'>
											  <?= $error = $validation->getError('name'); ?>
											</div>
										<?php }?>
										</div>
										<div class="form-group">
												<label class="form-label">Author Name*</label>
												<input type="text" class="form-control" placeholder="Author Name" name="shortname" value="<?= old('shortname') ?>" required>
										<?php if($validation->getError('shortname')) {?>
											<div class='alert alert-danger mt-2'>
											  <?= $error = $validation->getError('shortname'); ?>
											</div>
										<?php }?>
										</div>
										<div class="form-group">
												<label class="form-label">Book Description*</label>
												<div class="card card-editor">
													<div class="content-editor">
														<textarea class="text-control" placeholder="Book Description" name="description" value="<?= old('description') ?>" required></textarea>
													</div>
												</div>
										<?php if($validation->getError('description')) {?>
											<div class='alert alert-danger mt-2'>
											  <?= $error = $validation->getError('description'); ?>
											</div>
										<?php }?>		
										</div>
										<div class="form-group">
											<label class="form-label">Status*</label>
											<select id="status" name="is_active" class="form-control">
												<option selected value="1">Active</option>
												<option value="0">Inactive</option>
											</select>
										</div>
										<div class="form-group">
											<label class="form-label">Tagline*</label>
											<input type="text" class="form-control" placeholder="Tagline" name="tags" value="<?= old('tags') ?>" required>
										<?php if($validation->getError('tags')) {?>
											<div class='alert alert-danger mt-2'>
											  <?= $error = $validation->getError('tags'); ?>
											</div>
										<?php }?>
										</div>
										<div class="form-group">
											<label class="form-label">Book Genre*</label>
											<select id="status" name="product_category_id" class="form-control" required>
												<option value="" >--Select Genre--</option>
												<?php foreach($get_categories as $row){
													echo '<option value="'.$row['pk_id'].'">'.$row['name'].'</option>';
												}?>
											</select>
										</div>
										<div class="form-group">
											<label class="form-label">Book Image*</label>
											<div class="input-group">
												<div class="custom-file">
													<input type="file" class="form-control" name="file_image" accept="image/*">
												</div>
											</div>
											<?php if($validation->getError('file_image')) {?>
											<div class='alert alert-danger mt-2'>
											  <?= $error = $validation->getError('file_image'); ?>
											</div>
										<?php }?>
										</div>
										<div class="form-group">
											<label class="form-label">Book File*</label>
											<div class="input-group">
												<div class="custom-file">
													<input type="file" class="form-control" name="file_image1">
												</div>
											</div>
										</div>
										<button class="save-btn hover-btn" id="submit-all" type="submit">Save Book</button>
										<a  href="<?php echo base_url(); ?>/Books" class="cancel-cst-btn">Cancel</a>
									</div> 
								</div>
							</div>
						</form>	
					</div>
				</div>
			</div>
        </main>
	
<script type="text/javascript">
	Dropzone.autoDiscover = false;
	/* $(function() {
		var async = function (func) {
		  return function () {
			var args = arguments;
			setTimeout(function () {
			  func.apply(this, args);
			}, 0);
		  };
		}; */
    //Dropzone class
    var myDropzone = new Dropzone(".dropzone", {
		url: '<?php echo base_url("/Businessadmin/Products/products_save"); ?>',
		paramName: "file",
		maxFilesize: 2,
		maxFiles: 10,
		acceptedFiles: "image/*,application/pdf",
		addRemoveLinks: true,
		autoProcessQueue: true,
		init: function() {
			this.on('sending', function(file, xhr, formData) {
				// Append all form inputs to the formData Dropzone will POST
				var data = $('#form').serializeArray();
				$.each(data, function(key, el) {
					formData.append(el.name, el.value);
				});
			});
		},
		  success: function(file, response)
            {
                //window.location="";
            }
		
	});
	  
	$('#submit-all').click(function(){
		myDropzone.processQueue();
	});
	 
	
//});	

	</script>