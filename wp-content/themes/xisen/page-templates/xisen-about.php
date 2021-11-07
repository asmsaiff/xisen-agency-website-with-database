<?php
    /**
     * Template Name: About
     */
    get_header();

    the_post();
?>
<main>
    <?php get_template_part('template-parts/common/page', 'header'); ?>

    <?php
        if(get_xisen_redux_data('about_page_form_section_title') || get_xisen_redux_data('about_page_form_section_subtitle') || get_xisen_redux_data('about_page_form_section_short_desc') || get_xisen_redux_data('about_page_feature_left_image')) : 
    ?>
    <!-- Start Feature Area -->
        <section class="feature-area-3 position-relative pt-150 pb-120 fix">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-5 col-lg-6">
                        <div class="feature-img feature-img-3 mb-30 wow fadeInLeft" data-wow-delay="1s">
                            <img src="<?php global $xisen_options; echo $xisen_options['about_page_feature_left_image']['url']; ?>" alt="">
                        </div>
                    </div>
                    <div class=".col-xl-6 offset-xl-1 col-lg-6">
                        <div class="section-title-5 mb-30 wow fadeInRight" data-wow-delay=".5s">
                            <span><?php echo get_xisen_redux_data('about_page_form_section_subtitle'); ?></span>
                            <h2><?php echo get_xisen_redux_data('about_page_form_section_title'); ?></h2>
                            <p>
                                <?php echo get_xisen_redux_data('about_page_form_section_short_desc'); ?>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <!-- End Feature Area -->
    <?php endif; ?>

    <!-- Start Soft list area -->
    <section class="soft-list-area position-relative soft-list-5 pb-110 fix">
        <div class="shape-action">
            <span class="shape shape-c5-1 "></span>
            <span class="shape shape-c5-2 "></span>
            <span class="shape shape-c5-3 "></span>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 offset-xl-3 col-lg-8 offset-lg-2">
                    <div class="section-title-2 mb-70 text-center">
                        <h2 class="mb-20"><?php echo get_xisen_redux_data('about_page_soft_list_area_title'); ?></h2>
                        <p><?php echo get_xisen_redux_data('about_page_soft_list_area_short_desc'); ?></p>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php
                    global $xisen_options;

                    for($i = 0; $i < 3; $i++) :
                ?>
                <div class="col-lg-4 col-md-8 offset-md-2 offset-lg-0">
                    <div class="soft-list-item home-5 mb-30 text-center wow fadeInUp" data-wow-delay=".3s">
                        <div class="soft-list-icon mb-35">
                            <img src="<?php echo $xisen_options['soft-list-area-grid'][$i]['image']; ?>" alt="">
                        </div>
                        <div class="soft-list-content">
                            <h3><?php echo $xisen_options['soft-list-area-grid'][$i]['title']; ?></h3>
                            <p><?php echo $xisen_options['soft-list-area-grid'][$i]['description']; ?></p>
                        </div>
                    </div>
                </div>
                <?php endfor; ?>
            </div>
        </div>
    </section>
    <!-- End Soft list area -->
    <?php
        if(get_field('testimonial_section')) :
    ?>
    <!-- Start Testimonial Area -->
    <section class="testimonial-area testimonial-area-3 pt-140 pb-140 fix gray-bg position-relative fix ">
        <div class="shape-slider">
            <img class="shape shape-1 shape-5-1 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape2.png" alt="">
            <img class="shape shape-2  " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape-zigzag.png" alt="">
            <img class="shape shape-5 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape5.png" alt="">
            <img class="shape shape-6 " src="<?php echo get_template_directory_uri(); ?>/assets/img/shape/shape3.png" alt="">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-title-3 mb-70 text-center">
                        <span><?php echo get_xisen_redux_data('about_page_testimonial_section_subtitle'); ?></span>
                        <h2><?php echo get_xisen_redux_data('about_page_testimonial_section_title'); ?></h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <div class="testimonial-nav mb-30">
                        <?php
                            if(have_rows('about_page_testimonial_section')) :
                                while(have_rows('about_page_testimonial_section')) :
                                    the_row();

                                    $testimonial_thumb = get_sub_field('author_image');
                        ?>
                        <div class="testimonial-thumb">
                            <img src="<?php echo $testimonial_thumb; ?>" alt="">
                        </div>
                        <?php 
                                endwhile;
                            endif;
                        ?>
                    </div>
                    <div class="testimonial-active">
                        <?php
                            if(have_rows('about_page_testimonial_section')) :
                                while(have_rows('about_page_testimonial_section')) :
                                    the_row();

                                    $name           =   get_sub_field('author_name');
                                    $designation    =   get_sub_field('designation');
                                    $content        =   get_sub_field('testimonial_content');
                        ?>
                        <div class="testimonial-item text-center">
                            <div class="designation mb-30">
                                <h3>- <?php echo $name; ?> -</h3>
                                <span><?php echo $designation; ?></span>
                            </div>
                            <p><?php echo $content; ?></p>
                        </div>
                        <?php
                                endwhile;
                            endif;
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Testimonial Area -->
    <?php endif; ?>

    <?php get_template_part('template-parts/common/page-brand', 'logo'); ?>
</main>

<?php
    get_footer();