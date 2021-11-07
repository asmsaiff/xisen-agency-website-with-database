<?php
    get_header();
?>

<main>
<!-- Start Slider Area -->
    <section class="slider-area header-bg fix">
        <div class="slider-shape">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape1.png" alt="" class="shape shape-1">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape2.png" alt="" class="shape shape-2">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape3.png" alt="" class="shape shape-3">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape4.png" alt="" class="shape shape-4">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape5.png" alt="" class="shape shape-5">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape6.png" alt="" class="shape shape-6">
        </div>
        <div class="single-slider slider-height-7 d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-5 col-lg-6">
                        <div class="slider-text">
                            <h2 class="wow fadeInUp " data-wow-delay="0.4s">
                                <?php echo get_xisen_redux_data('hero_title'); ?>
                            </h2>

                            <p class="wow fadeInUp" data-wow-delay="0.9s"><?php echo get_xisen_redux_data('hero_short_desc'); ?></p>
                            
                            <a href="<?php echo get_xisen_redux_data('hero_section_button_url'); ?>" class="btn wow fadeInUp" data-wow-delay="1.5s"><?php echo get_xisen_redux_data('hero_section_button_label'); ?></a>
                        </div>
                    </div>
                    <div class="col-xl-6 offset-xl-1 col-lg-6 d-none d-md-block" >
                        <div class="slider-img mt-40 wow fadeInRight" data-wow-delay="1.5s">
                            <img src="<?php
                                global $xisen_options;
                                echo $xisen_options['hero_section_img']['url'];
                            ?>" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- End Slider Area -->

<!-- Start How Work Area -->
    <section class="how-work-area position-relative pt-150 pb-120">
        <div class="shape-section">
            <img class="shape shape-s-1 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape-s-1.png" alt="">
            <img class="shape shape-s-2 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape-s-2.png" alt="">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-title mb-70 text-center">
                        <h2><?php echo get_xisen_redux_data('how_it_works_section_heading'); ?></h2>
                        <p><?php echo get_xisen_redux_data('how_it_works_section_short_description'); ?></p>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php
                    $xisen_how_it_works = new WP_Query(array(
                        'post_type'         =>  'xisen_services',
                        'posts_per_page'    =>  6,
                    ));

                    if($xisen_how_it_works->have_posts()) :
                        while($xisen_how_it_works->have_posts()) :
                            $xisen_how_it_works->the_post();
                ?>
                <div class="col-lg-4 col-md-8 offset-md-2 offset-lg-0">
                    <div class="how-work-box mb-30 wow fadeInUp" data-wow-delay=".3s">
                        <div class="how-work-icon">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/icons/icon.png" alt="">
                        </div>
                        <div class="how-work-text">
                            <h4><?php the_title(); ?></h4>
                            <p><?php echo wp_trim_words(get_the_content(), 10, '...'); ?></p>
                            <div class="how-work-btn">
                                <a href="<?php the_permalink(); ?>" class="btn btn-inline">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php
                        endwhile;
                    endif;
                ?>
            </div>
        </div>
    </section>
<!-- End How Work Area -->

<!-- Star Access Area  -->
    <section class="access-area position-relative">
        <div class="shape-section">
            <img class="shape shape-6 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape6.png" alt="">
        </div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6">
                    <div class="access-img  mb-50 wow fadeInLeft" data-wow-delay=".5s">
                        <img src="<?php global $xisen_options; echo $xisen_options['star_access_corner_left_image']['url']; ?>" alt="">
                    </div>
                </div>
                <div class="col-xl-5 col-lg-6 offset-xl-1" >
                    <div class="access-text mb-50">
                        <div class="access-icon">
                            <img src="<?php global $xisen_options; echo $xisen_options['star_access_corner_icon']['url']; ?>" alt="">
                        </div>
                        <h2><?php echo get_xisen_redux_data('star_access_corner_title'); ?></h2>
                        <p><?php echo get_xisen_redux_data('star_access_corner_short_description'); ?></p>
                        <div class="access-btn" data-aos="fade-up">
                            <a href="<?php echo get_xisen_redux_data('star_access_corner_btn_url'); ?>" class="btn">
                                <?php echo get_xisen_redux_data('star_access_corner_btn_label'); ?>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- End Access Area  -->
<!-- Start Software Feature Area -->
    <section class="sf-area position-relative pt-100 pb-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-title mb-70 text-center">
                        <h2><?php echo get_xisen_redux_data('software_features_title'); ?></h2>
                        <p><?php echo get_xisen_redux_data('software_features_short_desc'); ?></p>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php
                    $xisen_software_features = new WP_Query(array(
                        'post_type'             =>  'software_features',
                        'posts_per_page'        =>  3,
                    ));

                    if($xisen_software_features->have_posts()) :
                        while($xisen_software_features->have_posts()) :
                            $xisen_software_features->the_post();
                ?>
                <div class="col-lg-4 col-md-8 offset-md-2 offset-lg-0">
                    <div class="how-work-box single-feature text-center mb-30 wow fadeInUp" data-wow-delay=".3s">
                        <div class="how-work-icon">
                            <?php if(has_post_thumbnail()) : the_post_thumbnail(); endif; ?>
                        </div>
                        <div class="how-work-text">
                            <h4><?php the_title(); ?></h4>
                            <p><?php the_excerpt(); ?></p>
                        </div>
                    </div>
                </div>
                <?php
                        endwhile;
                    endif;
                ?>
            </div>
        </div>
    </section>
<!-- End How Work Area -->
<!-- Star Access Area  -->
    <section class="access-area position-relative fix">
        <div class="shape-section">
            <img class="shape shape-sf " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape-f-1.png" alt="">
        </div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-5 col-lg-6" >
                    <div class="access-text mb-50">
                        <div class="access-icon">
                            <img src="<?php global $xisen_options; echo $xisen_options['star_access_corner_before_plan_icon']['url']; ?>" alt="">
                        </div>
                        <h2><?php echo get_xisen_redux_data('star_access_corner_before_plan_title'); ?></h2>
                        <p>
                            <?php echo get_xisen_redux_data('star_access_corner_before_plan_short_description'); ?>
                        </p>
                        <div class="access-btn" data-aos="fade-up">
                            <a href="<?php echo get_xisen_redux_data('star_access_corner_before_plan_btn_url'); ?>" class="btn">
                                <?php echo get_xisen_redux_data('star_access_corner_before_plan_btn_label'); ?>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-6">
                    <div class="access-img right-bg mb-50 wow  fadeInRight" data-wow-delay=".5s">
                        <img src="<?php global $xisen_options; echo $xisen_options['star_access_corner_before_plan_right_image']['url']; ?>" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- End Access Area  -->
<!-- Start Pricing Area -->
    <section class="pricing-area position-relative fix pt-50 pb-120">
        <div class="shape-section">
            <img class="shape shape-p " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape-f-1.png" alt="">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-title mb-70 text-center">
                        <h2>Choose Your Plan</h2>
                        <p>Third grass wherein cattle dry there open multiply saying good</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php
                    $xisen_pricing = new WP_Query(array(
                        'post_type'         =>  'xisen_pricing',
                        'posts_per_page'    =>  4,
                    ));

                    if($xisen_pricing->have_posts()) :
                        while($xisen_pricing->have_posts()) :
                            $xisen_pricing->the_post();
                ?>
                <div class="col-xl-3 col-md-6">
                    <div class="single-price-box text-center mb-30 wow fadeInUp" data-wow-delay=".3s">
                        <div class="price-head">
                            <div class="price-icon">
                                <?php if(has_post_thumbnail()) : the_post_thumbnail(); endif; ?>
                            </div>
                            <h4><?php the_title(); ?></h4>
                        </div>
                        <div class="price-body">
                            <div class="price">
                                <h5>$<?php the_field('package_price'); ?><span>/month</span></h5>
                            </div>

                            <?php
                                if( have_rows('pricing_plan_features') ):
                                    while( have_rows('pricing_plan_features') ) :
                                        the_row();

                                        $storage_size = get_sub_field('storage_size');
                                        $cloud_storage_size = get_sub_field('cloud_storage_size');
                                        $support_times = get_sub_field('support_times');
                                        $email_accounts = get_sub_field('email_accounts');
                                        $database = get_sub_field('database');
                            ?>
                            <ul class="package-list">
                                <li><?php echo $storage_size; ?></li>
                                <li><?php echo $cloud_storage_size; ?></li>
                                <li><?php echo $support_times; ?></li>
                                <li><?php echo $email_accounts; ?></li>
                                <li><?php echo $database; ?></li>
                            </ul>
                            <?php
                                    endwhile;
                                endif;
                            ?>
                        </div>
                        <?php
                            $plan_prod_obj = get_field('pricing_plan_product_selection');
                            if($plan_prod_obj) :
                        ?>
                        <div class="pricing-btn">
                            <a href="<?php
                                echo '?add-to-cart='.$plan_prod_obj->ID;
                            ?>" class="btn btn-inline">Purchase Now</a>
                        </div>
                        <?php endif; ?>
                    </div>
                </div>
                <?php
                        endwhile;
                    endif;
                ?>
            </div>
        </div>
    </section>
<!-- End Pricing Area -->
<!-- Start Testimonial Area -->
    <section class="testimonial-area pb-120">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6">
                    <div class="testimonial-img mb-30 wow fadeInLeft" data-wow-delay=".5s">
                        <img src="<?php global $xisen_options; echo $xisen_options['testimonial_section_left_image']['url']; ?>" alt="">
                    </div>
                </div>
                <div class="col-xl-5 offset-xl-1 col-lg-6">
                    <div class="shape-section">
                        <img class="shape shape-t " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape6.png" alt="">
                    </div>
                    <div class="testimonial-content">
                        <div class="section-title mb-20">
                            <h2>
                                <?php echo get_xisen_redux_data('testimonial_section_heading'); ?>
                            </h2>
                        </div>
                        <div class="testimonial-carousel mb-30 owl-carousel">
                            <?php 
                                $xisen_testimonial = new WP_Query(array(
                                    'post_type'         =>  'xisen_testimonials',
                                ));

                                if($xisen_testimonial->have_posts()) :
                                    while($xisen_testimonial->have_posts()) :
                                        $xisen_testimonial->the_post();
                            ?>
                            <div class="single-testimonial">
                                <p><?php echo the_field('testimonial_content'); ?></p>
                                <div class="client-name">
                                    <h6>
                                        <?php echo the_field('name'); ?>, <span> <?php echo the_field('designation'); ?></span>
                                    </h6>
                                </div>
                            </div>
                            <?php
                                    endwhile;
                                endif;
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- End Testimonial Area -->
<!-- Start Brands Area -->
    <section class="brand-area pb-150">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="brand-carousel owl-carousel">
                        <?php
                            global $xisen_options;
                            $logo = $xisen_options['home_brand_slider_items'];
                            $get_post_thumb         =   explode(",", $logo);

                            foreach($get_post_thumb as $image) :
                                $thumb_url = wp_get_attachment_image_src($image);
                        ?>
                        <div class="single-brand">
                            <a href="#"><img src="<?php echo $thumb_url[0]; ?>" alt=""></a>
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- End Brands Area -->
<!-- Start News Letter Area -->
    <section class="newsletter-area position-relative pb-100">
        <div class="shape-section">
            <img class="shape shape-sr " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape5.png" alt="">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 ">
                    <div class="section-title text-center mb-70">
                        <h2>
                            <?php echo get_xisen_redux_data('mail_collection_form_section_heading'); ?>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php get_template_part('template-parts/common/mailchimp', 'form'); ?>
            </div>
        </div>
    </section>
<!-- End News Letter Area -->
</main>

<?php
    get_footer();