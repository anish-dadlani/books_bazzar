<!-- New Products Start -->
<div class="section145">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="main-title-tt">
					<div class="main-title-left">
						<span>For You</span>
						<h2>Available Books</h2>
					</div>
					<a href="<?= base_url('books/newBooks').'/'.$business_id?>" class="see-more-btn">See All</a>
				</div>
			</div>
			<div class="col-md-12">
				<div class="owl-carousel featured-slider owl-theme">
					<?php foreach($products as $key => $item): ?>
					<div class="item">
						<div class="product-item">
							<a href="<?= base_url().'/books/view/'.$item['pk_id']?>" class="product-img">
							<img src="<?php echo base_url().'/'.$item['image_path']; ?>" alt="">
							</a>
							<div class="product-text-dt">
								<h4><?= $item['name'] ?></h4>
							</div>
							<h6>Author:&nbsp;<?= $item['shortname'] ?></h6>
						</div>
					</div>
					<?php endforeach ?>	
				</div>	
			</div>
		</div>
	</div>
</div>
<!-- New Products End -->