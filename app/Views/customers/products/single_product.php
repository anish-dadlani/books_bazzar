<div style="margin-top:4px;">
	<div class="gambo-Breadcrumb">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?= base_url('/')?>">Home</a></li>
							<li class="breadcrumb-item"><a href="#"><?= get_category_name_by_product_id($product_id) ?></a></li>
							<li class="breadcrumb-item active" aria-current="page"><?= get_product_name($product_id) ?></li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<div class="all-product-grid">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="product-dt-view">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="item">
									<img src="<?= base_url($products[0]['image_path']) ?>" alt="" width="340px" height="440px">
								</div>
							</div>
							<div class="col-lg-8 col-md-8">
								<div class="product-dt-right">
									<div class="no-stock"><p class="pd-no">Book No.<span><?= $products[0]['pk_id'] ?></span></p></div>
									<h2><?= $products[0]['name'] ?></h2>
									<h3><p>Author:&nbsp;<span><?= $products[0]['shortname'] ?></span></p></h3>
									<h3><p>Page Count:&nbsp;<span><?= $products[0]['unit_quantity'] ?></span></p></h3>
									<ul class="ordr-crt-share">
										<li><?php //echo base_url($products[0]['thumbnail_path']); ?>
											<a class="order-btn hover-btn" target="_blank" href="https://www.google.com/search?q=<?= $products[0]['name'].' by '.$products[0]['shortname'] ?>">
												Search for Pdf
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-12">
					<div class="pdpt-bg">
						<div class="pdpt-title">
							<h4>More Like This</h4>
						</div>
						<div class="pdpt-body scrollstyle_4">
							<?php foreach($product_by_category as $key => $category){ ?>
							<div class="cart-item border_radius">
								<a href="<?= base_url().'/books/view/'.$category['pk_id']?>" class="cart-product-img">
									<img src="<?= base_url().'/'.$category['image_path']; ?>" alt="">
								</a>
								<div class="cart-text">
									<h4><?=$category['name']?></h4>
								</div>
							</div>
							<?php }?>	
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-12">
					<div class="pdpt-bg">
						<div class="pdpt-title">
							<h4>Book Details</h4>
						</div>
						<div class="pdpt-body scrollstyle_4">
							<div class="pdct-dts-1">
								<div class="pdct-dt-step">
									<h4>Description</h4>
									<p><?= $products[0]['description'] ?></p>
								</div>
								<div class="pdct-dt-step">
									<h4>Publisher</h4>
									<div class="product_attr">
										<?= get_business_name_by_product_id($products[0]['bussiness_id']) ?>
									</div>
								</div>
							</div>			
						</div>					
					</div>
				</div>
			</div>
		</div>
	</div>
</div>