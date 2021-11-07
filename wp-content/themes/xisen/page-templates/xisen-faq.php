<?php
    /**
     * Template Name: Frequently Asks Question (FAQ)
     */

     get_header();

     the_post();
?>
<main>
    <?php get_template_part('template-parts/common/page', 'header'); ?>

    <!-- Start FAQ Area -->
        <section class="faq-area-inner pt-5 pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title faq-inner-title mb-70">
                            <h2><?php echo get_xisen_redux_data('faq_page_under_header_title'); ?></h2>
                            <p>
                                <?php echo get_xisen_redux_data('faq_page_under_header_short_desc'); ?>
                            </p>
                        </div>
                        <?php
                            $xisen_faq = new WP_Query(array(
                                'post_type'         =>  'xisen_faqs'
                            ));

                            if($xisen_faq->have_posts()) :
                                while($xisen_faq->have_posts()) :
                                    $xisen_faq->the_post();
                        ?>

                        <div class="faq-wrapper-inner mb-50">
                            <h3><i class="fas fa-cube"></i><?php the_title(); ?></h3>
                            <div class="faq-accordion" id="DMaccordion">
                                <?php
                                    if(have_rows('faq_item')) :
                                        while(have_rows('faq_item')) :
                                            the_row();

                                            $faq_item_title         = get_sub_field('faq_title');
                                            $faq_item_content       = get_sub_field('faq_content');
                                ?>
                                <div class="card">
                                    <div class="card-header" id="headingOne">
                                        <h5 class="mb-0">
                                            <a href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true">
                                                <?php echo $faq_item_title; ?>
                                            </a>
                                        </h5>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#DMaccordion">
                                        <div class="card-body">
                                            <?php echo $faq_item_content; ?>
                                        </div>
                                    </div>
                                </div>
                                <?php
                                        endwhile;
                                    endif;
                                ?>
                            </div>
                        </div>

                        <?php
                                endwhile;
                            endif;
                        ?>
                    </div>
                </div>
            </div>
        </section>
    <!-- End FAQ Area -->

    <?php get_template_part('template-parts/common/page-contact-form'); ?>
</main>

<?php
    get_footer();