<!-- Start Breadcrumb Area -->
<section class="breadcrumb-area position-relative pt-90 pb-60 fix" style="background: <?php echo get_xisen_redux_data('page_header_bg'); ?>;">
    <div class="shape-action">
        <img class="shape shape-2  " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape2.png" alt="">
        <img class="shape shape-4 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape3.png" alt="">
        <img class="shape shape-5 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape-sq.png" alt="">
        <img class="shape shape-6 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape-c-2.png" alt="">
    </div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="page-title mb-30">
                    <h4><?php the_title(); ?></h4>
                </div>
            </div>
            <div class="col-md-6">
                <div class="breadcrumb-list text-md-right mb-30">
                    <?php get_the_breadcrumb(); ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Breadcrumb Area -->