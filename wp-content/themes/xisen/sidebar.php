<div class="blog-widget mb-50">
    <form class="search-form" action="<?php bloginfo( 'url' ); ?>/">
        <input type="text" name="s" id="search" placeholder="<?php _e('Search your keyword...', 'xisen'); ?>" value="<?php the_search_query(); ?>">
        <button type="submit" id="searchsubmit"><i class="fas fa-search"></i></button>
    </form>
</div>
<div class="blog-widget mb-50">
    <div class="widget-title mb-40">
        <h3><?php _e('Recent Post', 'xisen'); ?></h3>
    </div>
    <ul class="recent-post">
        <?php
            $recent_posts = new WP_Query(array(
                'post_type'         =>  'post',
                'posts_per_page'    =>  3
            ));

            if($recent_posts->have_posts()) :
                while($recent_posts->have_posts()) :
                    $recent_posts->the_post(  );
        ?>
        <li>
            <div class="r-post-img">
                <a href="<?php the_permalink(); ?>">
                    <?php if(has_post_thumbnail()) : the_post_thumbnail(); endif; ?>
                </a>
            </div>
            <div class="r-post-text">
                <span class="r-post-meta"><?php echo get_the_date(); ?></span>
                <h6 class="r-post-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h6>
            </div>
        </li>
        <?php
                endwhile;
            endif;
            wp_reset_postdata();
        ?>
    </ul>
</div>
<!-- <div class="blog-widget mb-50">
    <div class="widget-title mb-40">
        <h3>Categories</h3>
    </div>
    <ul class="cat-list">
        <li><a href="$">App design <span class="f-right">78</span></a></li>
        <li><a href="$">Creative <span class="f-right">42</span></a></li>
        <li><a href="$">Technology  <span class="f-right">35</span></a></li>
        <li><a href="$">Branding  <span class="f-right">85</span></a></li>
        <li><a href="$">Web design <span class="f-right">05</span></a></li>
    </ul>
</div> -->
<div class="blog-widget mb-50">
    <div class="widget-title mb-40">
        <h3>Social Profile</h3>
    </div>
    <div class="social-profile">
        <?php if(get_xisen_redux_data('xisen_facebook')) : ?>
        <a class="fb" href="<?php echo get_xisen_redux_data('xisen_facebook'); ?>" target="_blank" data-toggle="tooltip" title="Facebook"><i class="fab fa-facebook-f"></i></a>
        <?php endif; ?>

        <?php if(get_xisen_redux_data('xisen_linkedin')) : ?>
        <a class="ld" href="<?php echo get_xisen_redux_data('xisen_linkedin'); ?>" target="_blank" data-toggle="tooltip" title="Linkedin"><i class="fab fa-linkedin-in"></i></a>
        <?php endif; ?>

        <?php if(get_xisen_redux_data('xisen_twitter')) : ?>
        <a class="tw" href="<?php echo get_xisen_redux_data('xisen_twitter'); ?>" target="_blank" data-toggle="tooltip" title="Twitter"><i class="fab fa-twitter"></i></a>
        <?php endif; ?>

        <?php if(get_xisen_redux_data('xisen_pinterest')) : ?>
        <a class="pin" href="<?php echo get_xisen_redux_data('xisen_pinterest'); ?>" target="_blank" data-toggle="tooltip" title="Pinterest"><i class="fab fa-pinterest-p"></i></a>
        <?php endif; ?>
    </div>
</div>
<!-- <div class="blog-widget mb-50">
    <div class="widget-title mb-40">
        <h3>Popular Tags</h3>
    </div>
    <div class="tag-list">
        <a href="#">Popular</a>
        <a href="#">design</a>
        <a href="#">usability</a>
        <a href="#">develop</a>
        <a href="#">consult</a>
        <a href="#">icon</a>
        <a href="#">HTML</a>
        <a href="#">ux</a>
        <a href="#">business</a>
        <a href="#">kit</a>
        <a href="#">tech</a>
    </div>
</div> -->
<div class="blog-widget mb-50">
    <div class="banner-img">
        <a href="#"><img src="assets/img/banner/banner.jpg" alt=""></a>
    </div>
</div>