<!-- Categories Start -->
<div class="section145">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="main-title-tt">
					<div class="main-title-left">
						<span>View By</span>
						<h2>Genres</h2>
					</div>
				</div>
			</div>
			<div class="col-md-12">
	    		<div class="owl-carousel cate-slider owl-theme">
				<?php foreach($categories as $key => $category){?>
					<div class="item" style="">
						<a href="<?php echo base_url().'/books/category/view'.'/'.$category['pk_id']?>" class="category-item">
							<h4><?php echo $category['name']; ?></h4>
						</a>
					</div>
				<?php }?>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Categories End -->