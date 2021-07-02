<!-- Header Start -->
<header class="header clearfix">
	<div class="top-header-group">
		<div class="top-header">
			<div class="res_main_logo">
				<a href="<?= base_url('/') ?>"><img src="<?= base_url() ?>/includes/book (1).png" alt="" style="width: 56px;"></a>
			</div>
			<div class="main_logo" id="logo">
				<a href="<?= base_url('/') ?>"><img src="<?= base_url() ?>/includes/book (1).png" alt="" style="width: 56px;"></a>
				<a href="<?= base_url('/') ?>"><img class="logo-inverse" src="<?= base_url() ?>/includes/book (1).png" alt="" style="width: 56px;"></a>
			</div>
			<div class="select_location">
				<div class="ui inline dropdown loc-title">
					<div class="text">
					  <i class="uil uil-location-point"></i> Pakistan
					</div>
				</div>
			</div>
			<div class="search120">
				<div class="ui search">
				  <div class="ui left icon input swdh10">
					<input class="prompt srch10" type="text" id="search" name="search" onkeyup="productSearch()" placeholder="Search">
					<i class='uil uil-search-alt icon icon1'></i>
					<div id="suggestions">
						<div id="autoSuggestionsList"></div>
					</div>
				  </div>
				</div>
			</div>
			<div>
				<select style="border-radius:3px;" class="form-control" name="filter_search" id="filter_search">
					<option value="category" selected>Categories</option>
					<option value="author">Authors</option>
					<option value="genre">Genre</option>
					<option value="book">Books</option>
				</select>
			</div>
		</div>
	</div>
	<div class="sub-header-group">
		<div class="sub-header">
			<nav class="navbar navbar-expand-lg navbar-light py-3">
				<div class="container-fluid">
					<div class="collapse navbar-collapse d-flex flex-column flex-lg-row flex-xl-row justify-content-lg-end bg-dark1 p-3 p-lg-0 mt1-5 mt-lg-0 mobileMenu" id="navbarSupportedContent">
						<ul class="navbar-nav main_nav align-self-stretch">
							<li class="nav-item"><a href="<?php echo base_url('/'); ?>" class="nav-link active" title="Home">Home</a></li>
							<li class="nav-item"><a href="<?php echo base_url('view/authors'); ?>" class="nav-link new_item" title="New Products">Authors</a></li>
							<li class="nav-item"><a href="<?php echo base_url('view/genre'); ?>" class="nav-link new_item" title="Featured Products">Genre</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
</header>
<br>
<!-- Header End -->