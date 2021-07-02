<div style="margin-top:100px;">
    <div class="all-product-grid">
        <div class="section145">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-title-tt">
                            <div class="main-title-left">
                                <span>View By</span>
                                <h2>Genre</h2>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="row">
                            <?php foreach($genre as $key => $gen){?>
                                <div class="col-lg-3 mt-1 mb-1">
                                    <div class="item" style="">
                                        <a href="<?php echo base_url().'/view/booksGenre'.'/'.$gen['pk_id']?>" class="category-item">
                                            <h4><?php echo $gen['title']; ?></h4>
                                        </a>
                                    </div>
                                </div>
                            <?php }?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>