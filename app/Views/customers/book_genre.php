<div style="margin-top:120px;">
    <div class="all-product-grid">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product-list-view">
                        <div class="row">
                        <?php foreach($res as $key => $item){ ?>
                            <div class="col-lg-3 col-md-6">
                                <div class="product-item mb-30">
                                    <a href="<?= base_url().'/books/view/'.$item['pk_id']?>" class="product-img">
                                        <img src="<?= base_url().'/'.$item['image_path']; ?>" alt="">
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
        </div>            
    </div>
</div>