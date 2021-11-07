<?php
    get_header();
    the_post();
?>

<main>
    <?php get_template_part('template-parts/common/page', 'header'); ?>
    <!-- Start Portfolio Area -->
        <section class="portfolio-area pt-100 pb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 order-lg-2">
                        <div class="portfolio-details mb-40">
                            <?php
                                // if(has_post_thumbnail()) {
                                //     the_post_thumbnail('full', array('class' => 'img-fluid mb-5'));
                                // }

                                the_content();
                            ?>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="portfolio-list-info mb-30">
                            <ul>
                                <li>
                                    <div class="portfolio-list-text">
                                        <h5><?php _e('Client', 'xisen'); ?></h5>
                                        <span><?php echo the_field('client_name'); ?></span>
                                    </div>
                                </li>
                                <li>
                                    <div class="portfolio-list-text">
                                        <h5><?php _e('Services', 'xisen'); ?></h5>
                                        <span><?php echo the_field('portfolio_service'); ?></span>
                                    </div>
                                </li>
                                <li>
                                    <div class="portfolio-list-text">
                                        <h5><?php _e('Website', 'xisen'); ?></h5>
                                        <span>
                                            <a href="<?php echo the_field('project_website_link'); ?>">
                                                <?php echo the_field('project_website_link'); ?>
                                            </a>
                                        </span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="social-button mb-40">
                            <h5><?php _e('Share', 'xisen'); ?></h5>
                            <div class="social-share">
                                <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink(); ?>" class="btn-social" data-toggle="tooltip" title="<?php _e('Share on Facebook', 'xisen') ?>"><i class="fab fa-facebook-f"></i></a>
                                <a href="https://twitter.com/share?url=<?php the_permalink(); ?>&text=<?php the_title(); ?>" class="btn-social" data-toggle="tooltip" title="<?php _e('Share on Twitter', 'xisen') ?>"><i class="fab fa-twitter"></i></a>
                                <a href="https://www.pinterest.com/pin/create/link/?url=<?php the_permalink(); ?>" class="btn-social" data-toggle="tooltip" title="<?php _e('Share on Pinterest', 'xisen') ?>"><i class="fab fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <!-- End Portfolio Area -->
    <!-- Start Details Pagination -->
        <div class="details-pagination">
            <div class="container">
                <div class="row">
                    <div class="col-5">
                        <?php
                            $prev_portfolio_link = get_previous_post();
                        ?>
                        <a href="<?php echo get_the_permalink($prev_portfolio_link); ?>" class="p-nav-item" data-toggle="tooltip" title="<?php echo get_the_title($prev_portfolio_link); ?>">
                            <div class="p-nav-title">
                                <h3><?php _e('Prev', 'xisen'); ?></h3>
                            </div>
                        </a>
                    </div>
                    <div class="col-2 text-center">
                        <a href="portfolio.html" data-toggle="tooltip" title="Back To Portfolio">
                            <div class="p-nav-title">
                                <i class="fas fa-grip-horizontal"></i>
                            </div>
                        </a>
                    </div>
                    <div class="col-5 text-right">
                        <?php
                            $next_portfolio_link = get_next_post();
                        ?>
                        <a href="<?php echo get_the_permalink($next_portfolio_link); ?>" class="p-nav-item"  data-toggle="tooltip" title="<?php echo get_the_title($next_portfolio_link); ?>">
                            <div class="p-nav-title">
                                <h3><?php _e('Next', 'xisen'); ?></h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    <!-- End Details Pagination -->

    <section class="portfolio-area pt-100 pb-110">
        <div class="container">
            <div class="row portfolio-slider-active">
                <?php
                    $portfolio_gallery_images = get_field('portfolio_image_gallery');

                    if( $portfolio_gallery_images ) :
                        foreach( $portfolio_gallery_images as $portfo_gallery_items ) :
                ?>
                <div class="col-12">
                    <div class="single-portfolio">
                        <div class="portfolio-img grad-overlay">
                            <?php echo wp_get_attachment_image($portfo_gallery_items, 'large'); ?>
                            <div class="port-view">
                                <a class="popup-img" href="#!"><i class="fas fa-search"></i></a>
                                <a class="port-link" href="<?php the_permalink(); ?>"><i class="fas fa-link"></i></a>
                                <!-- <h3>Architecture</h3> -->
                            </div>
                        </div>
                    </div>
                </div>
                <?php
                        endforeach;
                    endif;
                ?>
            </div>
        </div>
    </section>
</main>

<?php
    get_footer();