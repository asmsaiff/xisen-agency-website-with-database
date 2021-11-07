<?php
    get_header();
?>
<main>
<!-- Start Breadcrumb Area -->
    <section class="breadcrumb-area breadcrumb-area-2 position-relative pt-150 pb-120 fix grad-overlay" data-background="<?php echo header_image(); ?>" >
        <div class="shape-action">
            <img class="shape shape-2" src="assets/img/shape/shape2.png" alt="">
            <img class="shape shape-4" src="assets/img/shape/shape3.png" alt="">
            <img class="shape shape-5" src="assets/img/shape/shape-sq.png" alt="">
            <img class="shape shape-6" src="assets/img/shape/shape-c-2.png" alt="">
        </div>
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12">
                    <div class="page-title page-title-2 mb-30">
                        <h4>
                            Posts in : <?php single_cat_title(); ?> Category
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- End Breadcrumb Area -->
<!-- Start Blog Area -->
<?php
    if(have_posts()) :
?>
    <section class="blog-area pt-150 pb-80">
        <div class="container">
            <div class="row">
                <?php
                    while(have_posts()) :
                        the_post(  );
                ?>
                <div class="col-lg-4 col-md-6">
                    <article class="single-blog-post image-formate mb-50">
                        <?php if(has_post_thumbnail()) : ?>
                        <div class="blog-post-img mb-30">
                            <a href="#">
                                <?php the_post_thumbnail('large', array('class'=>'img-fluid')); ?>
                            </a>
                        </div>
                        <?php endif; ?>
                        <div class="blog-post-content">
                            <div class="blog-post-meta mb-15">
                                <span><a href="#"><i class="far fa-user"></i><?php the_author(); ?></a></span>
                                <span><a href="#"><i class="far fa-comments"></i> 23 Comments</a></span>
                            </div>
                            <h3 class="post-title post-title-sm">
                                <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                            </h3>
                            <div class="post-text mb-20">
                                <p>
                                    <?php echo get_the_excerpt(); ?>
                                </p>
                            </div>
                            <div class="post-btn">
                                <a href="<?php the_permalink(); ?>" class="btn btn-inline">Read More <i class="fas fa-long-arrow-alt-right"></i></a>
                            </div>
                        </div>
                    </article>
                </div>
                <?php
                    endwhile;
                ?>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="basic-pagination mb-40 text-center">
                        <ul>
                            <li><a href="#"><i class="fas fa-angle-double-left"></i></a></li>
                            <li class="active"><a href="#">01</a></li>
                            <li><a href="#">02</a></li>
                            <li><a href="#">03</a></li>
                            <li><a href="#"><i class="fas fa-ellipsis-h"></i></a></li>
                            <li><a href="#"><i class="fas fa-angle-double-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- End Blog Area -->
<?php endif; ?>
</main>

<?php
    get_footer();