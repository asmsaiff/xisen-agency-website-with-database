<?php
    /**
     * Template Name: Teams
     */

    get_header();
    the_post(  );
?>

<main>
<?php get_template_part('template-parts/common/page', 'header'); ?>

<!-- Start Team Area -->
<?php
    $args = array(
        'post_type' => 'xisen_team',
    );
    $xisen_team_member = new WP_Query( $args );
    if ( $xisen_team_member->have_posts() ) :
?>
<section class="team-area pt-140">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2">
                <div class="section-title-5 mb-70 text-center">
                    <h2><?php echo get_xisen_redux_data('team_section_title'); ?></h2>
                    <p><?php echo get_xisen_redux_data('team_section_para'); ?></p>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
                while ( $xisen_team_member->have_posts() ) :
                    $xisen_team_member->the_post();
            ?>
            <div class="col-lg-3 col-md-6">
                <div class="single-team-box text-center mb-30  wow fadeInUp" data-wow-delay=".3s">
                    <div class="team-img mb-25">
                        <?php the_post_thumbnail('xisen-team-thumb'); ?>
                    </div>
                    <div class="team-text">
                        <h4><?php the_title(); ?></h4>
                        <span><?php the_field('team_member_designation'); ?></span>
                        <div class="team-icon">
                            <?php
                                if( have_rows('social_media') ):
                                    while( have_rows('social_media') ) : the_row();

                                        $icon_class = get_sub_field('font_awesome_team_social_icon_class');
                                        $social_media_link = get_sub_field('team_member_social_media_link');
                            ?>
                            <a href="<?php echo $social_media_link; ?>" target="_blank"><i class="<?php echo $icon_class; ?>"></i></a>
                            <?php
                                    endwhile;
                                endif;
                            ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php
                endwhile;
                wp_reset_postdata();
            ?>
        </div>
    </div>
</section>
<!-- End Team Area -->
<?php endif; ?>

<?php get_template_part('template-parts/common/page-brand', 'logo'); ?>
</main>

<?php
    get_footer();