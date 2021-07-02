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
</style>
		<main>
			<div class="container-fluid">
				<h2 class="mt-30 page-title">Genre</h2>
				<ol class="breadcrumb mb-30">
					<li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
					<li class="breadcrumb-item"><a href="<?php echo base_url(); ?>/Genre">Genre</a></li>
					<li class="breadcrumb-item active">Add Genre</li>
				</ol>
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<?php $validation = \Config\Services::validation(); ?>
						<form class="cool-b4-form mt-1" action="<?php echo base_url();?>/Businessadmin/Categories/categories_save" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered" onSubmit="">
							<div class="card card-static-2 mb-30">
								<div class="card-title-2">
									<h4><b>Add New Genre</b></h4>
								</div>
								<div class="card-body-table">
									<div class="news-content-right pd-20">
										<div class="form-group">
											<label class="form-label">Genre Title*</label>
											<input type="text" class="form-control" placeholder="Genre Title" name="name" value="<?= old('name') ?>" required>
										<?php if($validation->getError('name')) {?>
											<div class='alert alert-danger mt-2'>
											  <?= $error = $validation->getError('name'); ?>
											</div>
										<?php }?>
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
											<label class="form-label">Book Category*</label>
											<select id="status" name="bussiness_id" class="form-control" required>
												<option value="" >--Select Category--</option>
												<?php foreach($b_categories as $row) {
													echo '<option value="'.$row['pk_id'].'">'.$row['title'].'</option>';
												} ?>
											</select>
										</div>
										<div class="form-group">
											<label class="form-label">Status*</label>
											<select id="status" name="is_active" class="form-control" >
												<option selected value="1">Active</option>
												<option value="0">Inactive</option>
											</select>
										</div>
										<div class="form-group">
											<label class="form-label">Description*</label>
											<div class="card card-editor">
												<div class="content-editor">
													<textarea class="text-control" placeholder="Enter Description" name="description" required><?= old('description') ?></textarea>
												</div>
											</div>
											<?php if($validation->getError('description')) {?>
												<div class='alert alert-danger mt-2'>
												  <?= $error = $validation->getError('description'); ?>
												</div>
											<?php }?>
										</div>
										<div class="form-group">
											<label class="form-label">Genre Image*</label>
											<div class="input-group">
												<div class="custom-file">
													<input type="file" class="form-control" name="file" accept="image/*">
												</div>
											</div>
											<?php if($validation->getError('file')) {?>
												<div class='alert alert-danger mt-2'>
												  <?= $error = $validation->getError('file'); ?>
												</div>
											<?php }?>
										</div>
										<button class="save-btn hover-btn" type="submit">Add Genre</button>
										<a href="<?php echo base_url(); ?>/Genre" class="cancel-cst-btn">Cancel</a>
									</div> 
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
        </main>