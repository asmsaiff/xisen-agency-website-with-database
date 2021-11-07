<?php
    /**
     * Template Name: Portfolio
     */

    get_header();
?>

<main>
    <?php get_template_part('template-parts/common/page', 'header'); ?>
    <!-- Start Portfolio Area -->
        <section class="portfolio-area pt-100 pb-100">
            <div class="container">
                <div class="row text-center">
                    <div class="col-12">
                        <div class="portfolio-menu mb-40">
                            <button class="active" data-filter="*">all</button>
                            <?php
                                $terms = get_terms( array(
                                    'taxonomy' => 'xisen_portfolio_category',
                                    'hide_empty' => false,
                                ) );

                                foreach ($terms as $term) {
                                    echo '<button data-filter=".' . $term->slug . '">' . $term->name . '</button>'; 
                                }
                            ?>
                        </div>
                    </div>
                </div>
                <div class="row grid">
                    <?php
                        $args = array(
                            'post_type' => 'xisen_portfolio',
                            'posts_per_page' => -1,
                            'orderby' => 'date',
                            'order' => 'DESC',
                        );

                        $xisen_portfolio_items = new WP_Query($args);

                        if ($xisen_portfolio_items->have_posts()) :
                            while ($xisen_portfolio_items->have_posts()) :
                                $xisen_portfolio_items->the_post();
                                $terms = get_the_terms(get_the_ID(), 'xisen_portfolio_category');
                                $terms_slug = array();

                                if (!empty($terms)) {
                                    foreach ($terms as $term) {
                                        $terms_slug[] = $term->slug;
                                    }
                                }

                                $terms_slug = implode(' ', $terms_slug);

                    ?>

                    <div class="col-lg-4 col-md-6 grid-item text-center <?php echo $terms_slug; ?>">
                        <div class="single-portfolio mb-30">
                            <div class="portfolio-img">
                                <?php the_post_thumbnail("large"); ?>
                            </div>
                            <div class="portfolio-text">
                                <div class="portfolio-view">
                                    <a class="popup-img" href="<?php the_post_thumbnail_url(); ?>"><i class="ti-plus"></i></a>
                                </div>
                                <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                <span>Digital Art</span>
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
    <!-- End Portfolio Area -->
    </main>

<?php
    get_footer();