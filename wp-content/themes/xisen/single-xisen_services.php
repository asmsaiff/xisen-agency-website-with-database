<?php
    get_header();

    the_post();
?>

<main>
<!-- Start Breadcrumb Area -->
    <section class="breadcrumb-area position-relative pt-5 pb-5 fix" data-background="<?php echo get_template_directory_uri(); ?>/assets/img/bg/page-title-bg.jpg">
        <div class="shape-action">
            <img class="shape shape-2  " src="assets/img/shape/shape2.png" alt="">
            <img class="shape shape-4 " src="assets/img/shape/shape3.png" alt="">
            <img class="shape shape-5 " src="assets/img/shape/shape-sq.png" alt="">
            <img class="shape shape-6 " src="assets/img/shape/shape-c-2.png" alt="">
        </div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="page-title mb-30">
                        <h4><?php the_title(); ?></h4>
                        <span><?php echo wp_trim_words(get_the_content(), 10, '...'); ?></span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="breadcrumb-list text-md-right mb-30">
                        <ul>
                            <li><a href="index.html"><i class="fas fa-home"></i> Home</a></li>
                            <li class="active">Service Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- End Breadcrumb Area -->
<!-- Start Service Details Area -->
    <section class="service-details-area pt-50 pb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 order-lg-2">
                    <div class="service-img mb-30">
                        <img src="assets/img/bg/service-details.jpg" alt="">
                    </div>
                    <div class="service-details mt-4 mb-30">
                        <?php the_content(); ?>
                    </div>
                </div>
                <div class="col-lg-4 mb-30">
                    <div class="service-details-sidebar mb-40">
                        <div class="section-title-4 mb-20">
                            <h2><?php _e('Services', 'xisen'); ?></h2>
                            <img src="assets/img/shape/line.png" alt="">
                        </div>
                        <ul class="services-link">
                            <?php
                                $xisen_how_it_works = new WP_Query(array(
                                    'post_type'         =>  'xisen_services',
                                ));
            
                                if($xisen_how_it_works->have_posts()) :
                                    while($xisen_how_it_works->have_posts()) :
                                        $xisen_how_it_works->the_post();
                            ?>
                            <li><a href="<?php the_permalink(); ?>"><i class="fas fa-angle-right"></i><?php the_title(); ?></a></li>

                            <?php
                                    endwhile;
                                endif;
                            ?>
                        </ul>
                    </div>
                    <div class="banner-img">
                        <a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/banner/banner.jpg" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- End Service Details Area -->
</main>

<?php
    get_footer();