<!-- Body Start -->
<?php $data = customerDashboard(); ?>
<div class="wrapper">
	<!-- Offers Start -->
	<div class="main-banner-slider">
		<div class="container">
			<div class="row">
				<!-- -->
				<?php foreach($data['business_catgories'] as $key => $value): ?>
						<div class="col-lg-4 mt-1 mb-1">
							<div class="offer-item">						
							<div class="offer-item-img">
								<div class="gambo-overlay"></div>
									<img src="<?= base_url().'/'.$value['image_path'] ?>" alt="" width="300" height="220">
								</div>
								<div class="offer-text-dt">
									<div class="offer-top-text-banner">
										<div class="top-text-1"><?= $value['title']?></div>
									</div>
									<a href="<?= base_url('category/books/view').'/'.$value['pk_id']?>" class="Offer-shop-btn hover-btn">View</a>
								</div>
							</div>	
						</div>						
						<?php endforeach; ?>
				<!-- -->
					</div>
				</div>
			</div>
		</div>
	<!-- Offers End -->