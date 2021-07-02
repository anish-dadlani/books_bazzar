<!-- Header Start -->
<header class="header clearfix">
	<div class="top-header-group">
		<div class="top-header">
			<div class="res_main_logo">
				<a href="<?= base_url('/') ?>"><img src="<?= base_url() ?>/assets/customers/images/dark-logo-1.svg" alt=""></a>
			</div>
			<div class="main_logo" id="logo">
				<a href="<?= base_url('/') ?>"><img src="<?= base_url() ?>/assets/customers/images/logo.svg" alt=""></a>
				<a href="<?= base_url('/') ?>"><img class="logo-inverse" src="<?= base_url() ?>/assets/customers/images/dark-logo.svg" alt=""></a>
			</div>
			<div class="select_location">
				<div class="ui inline dropdown loc-title">
					<div class="text">
					  <i class="uil uil-location-point"></i>
					  Pakistan
					</div>
				</div>
			</div>
			<div class="search120">
				<div class="ui search">
				  <div class="ui left icon input swdh10">
					<input class="prompt srch10" type="text" id="search_" name="search_" onkeyup="productSearch_()" placeholder="Search Books">
					<i class='uil uil-search-alt icon icon1'></i>
					<div id="suggestions">
						<div id="autoSuggestionsList"></div>
					</div>
				  </div>
				</div>
			</div> 
			<div class="header_right">
			</div>
		</div>
	</div>
</header>
<!-- Header End -->