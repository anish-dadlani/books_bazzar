<div class="gambo-Breadcrumb">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('/')?>">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">
                        <?php echo get_product_categories_name($cat_id); ?>
                        </li>
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
				<div class="product-top-dt">
					<div class="product-left-title">
						<h2><?php echo get_product_categories_name($cat_id); ?></h2>
					</div>
				</div>
				<div class="product-list-view">
					<div class="row">
                    <?php foreach($products as $key => $item){ ?>
						<div class="col-lg-3 col-md-6">
                           
							<div class="product-item mb-30">
								<a href="<?= base_url().'/books/view/'.$item['pk_id']?>" class="product-img">
									<img src="<?php echo base_url().'/'.$item['image_path']; ?>" alt="">
								</a>
								<div class="product-text-dt">
									<h4><?= $item['name'] ?></h4>
									<h6>Author:&nbsp;<span><?= $item['shortname'] ?></span></h6>
								</div>
							</div>
                            
						</div>
                    <?php }?>
					</div>
				</div>
			</div>
		</div>