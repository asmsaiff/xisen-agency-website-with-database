<?php
    /**
     * Template Name: Service
     */
    get_header();

    the_post();
?>

<main>
<?php get_template_part('template-parts/common/page', 'header'); ?>

<?php
    $xisen_features = new WP_Query(array(
        'post_type'             =>  'software_features',
    ));

    if($xisen_features->have_posts()) :
?>
<!-- Start Feature list area -->
<section class="feature-list-area home-4 pt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3">
                <div class="section-title-4 mb-70 text-center">
                    <span><?php echo get_xisen_redux_data('service_page_features_section_subtitle'); ?></span>
                    <h2><?php echo get_xisen_redux_data('service_page_features_section_title'); ?></h2>
                    <img src="<?php global $xisen_options; echo $xisen_options['service_page_features_section_under_header_divider']['url']; ?>" alt="">
                </div>
            </div>
        </div>
        
        <div class="row">
            <?php
                while($xisen_features->have_posts()) :
                    $xisen_features->the_post();
            ?>
            <div class="col-lg-4 col-md-6">
                <div class="feature-list-item home-4 mb-50 wow fadeInUp" data-wow-delay=".3s">
                    <div class="feature-list-icon">
                        <?php if(has_post_thumbnail()) : the_post_thumbnail(); endif; ?>
                    </div>
                    <div class="feature-list-content feature-list-content-4">
                        <h3><?php the_title(); ?></h3>
                        <p><?php the_excerpt(); ?></p>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
        
    </div>
</section>
<!-- End Feature list area -->
<?php endif; ?>

<!-- Start Feature Area -->
<section class="feature-area position-relative pb-5 pt-110 fix">
    <div class="shape-action">
        <span class="shape shape-circle shape-c-2 "></span>
        <img class="shape shape-af-1  " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape-tri.png" alt="">
        <img class="shape shape-af-2 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape-zigzag.png" alt="">
    </div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="feature-content home-4 mb-30 wow fadeInLeft" data-wow-delay=".5">
                    <span>
                        <?php echo get_xisen_redux_data('service_page_adv_features_section_subtitle'); ?>
                    </span>
                    <h2>
                        <?php echo get_xisen_redux_data('service_page_adv_features_section_title'); ?>
                    </h2>
                    
                    <?php echo get_xisen_redux_data('service_page_adv_features_section_content'); ?>
                    <?php if(get_xisen_redux_data('service_page_adv_features_section_btn_url')) : ?>
                    <div class="feature-btn" data-aos="fade-up">
                        <a href="<?php echo get_xisen_redux_data('service_page_adv_features_section_btn_url'); ?>" class="btn btn-squ-orange">
                            <?php echo get_xisen_redux_data('service_page_adv_features_section_btn_label'); ?>
                        </a>
                    </div>
                    <?php endif; ?>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="feature-img home-4 mb-30 wow fadeInRight" data-wow-delay="1s">
                    <img src="<?php global $xisen_options; echo $xisen_options['service_page_adv_features_section_right_side_image']['url']; ?>" alt="">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Feature Area -->

<?php
    if(have_rows('xisenworking_process')) : 
?>
<!-- Start Hw Area -->
<section class="hw-area fix">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3">
                <div class="section-title-4 text-center">
                    <span>How we works</span>
                    <h2>Easy Working Process</h2>
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/line.png" alt="">
                </div>
            </div>
        </div>
        <div class="row">
            <?php
                while(have_rows('xisenworking_process')) :
                    the_row();

                    $working_process_item_title         = get_sub_field('workingprocess_title');
                    $working_process_item_content       = get_sub_field('workingprocess_content');
                    $working_process_item_icon          = get_sub_field('workingprocess_icon');
            ?>
            <div class="col-lg-3 col-md-6">
                <div class="feature-list-item feature-list-item-4_1 text-center mb-30 wow fadeInUp" data-wow-delay=".3s">
                    <div class="feature-list-icon">
                        <img src="<?php echo $working_process_item_icon; ?>" alt="">
                    </div>
                    <div class="feature-list-content feature-list-content-4_1">
                        <h3><?php echo $working_process_item_title; ?></h3>
                        <p><?php echo $working_process_item_content; ?></p>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</section>
<!-- End Hw Area -->

<?php endif; ?>

<!-- Start Brands Area -->
<section class="brand-area brand-area-3 pt-150 pb-150" data-background="assets/img/bg/subs-bg.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3">
                <div class="section-title-3 mb-70 text-center">
                    <span>
                        <?php echo get_xisen_redux_data('service_page_mail_subscribe_section_subtitle'); ?>
                    </span>
                    <h2><?php echo get_xisen_redux_data('service_page_mail_subscribe_section_title'); ?></h2>
                </div>
            </div>
        </div>
        <div class="row">
        
            <?php get_template_part('template-parts/common/mailchimp', 'form'); ?>
        
            <div class="col-12 mt-100">
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
</main>

<?php
    get_footer();