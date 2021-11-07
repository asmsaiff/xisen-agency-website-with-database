<!-- Start Brands Area -->
<section class="brand-area pt-140  pb-90 position-relative">
    <div class="shape-slider">
        <img class="shape shape-1 shape-5-1 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape-tr-2.png" alt="">
        <img class="shape shape-5 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape-c-1.png" alt="">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3">
                <div class="section-title-2 mb-70 text-center">
                    <h2 class="mb-20"><?php echo get_xisen_redux_data('about_page_brand_area_title'); ?></h2>
                    <p><?php echo get_xisen_redux_data('about_page_brand_area_subtitle'); ?></p>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <?php
                global $xisen_options;

                $logo = $xisen_options['about_page_brand_area_logos'];
                $get_post_thumb         =   explode(",", $logo);

                foreach($get_post_thumb as $image) :
                        $thumb_url = wp_get_attachment_image_src($image);
            ?>
            <div class="logo-brand-item">
                <div class="brand-img">
                    <img src="<?php echo $thumb_url[0]; ?>" alt="">
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>
<!-- End Brands Area -->