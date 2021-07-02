<?php //print_r($products); exit;?>
<div class="gambo-Breadcrumb">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('/')?>">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">New Boks</li>
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
						<h2>Books List</h2>
					</div>
					<!-- <a href="#" class="filter-btn pull-bs-canvas-right">Filters</a>
					<div class="product-sort">
						<div class="ui selection dropdown vchrt-dropdown">
							<input name="gender" type="hidden" value="default">
								<i class="dropdown icon d-icon"></i>
								<div class="text">Popularity</div>
									<div class="menu">
										<div class="item" value="" data-value="0">Popularity</div>
										<div class="item" value="" data-value="1">Price - Low to High</div>
										<div class="item" value="" data-value="2">Price - High to Low</div>
										<div class="item" value="" data-value="3">Alphabetical</div>
										<div class="item" value="" data-value="4">Saving - High to Low</div>
										<div class="item" value="" data-value="5">Saving - Low to High</div>
										<div class="item" value="" data-value="6">% Off - High to Low</div>
									</div>
								</div>
							</div>
						</div>
					</div> -->
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