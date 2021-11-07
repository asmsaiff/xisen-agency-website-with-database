<?php
    get_header();
?>

<main>
<!-- Start Breadcrumb Area -->
    <section class="breadcrumb-area breadcrumb-area-2 position-relative pt-150 pb-120 fix" data-background="<?php header_image(); ?>" data-overlay="6">
        <div class="shape-action">
            <img class="shape shape-2  " src="assets/img/shape/shape2.png" alt="">
            <img class="shape shape-4 " src="assets/img/shape/shape3.png" alt="">
            <img class="shape shape-5 " src="assets/img/shape/shape-sq.png" alt="">
            <img class="shape shape-6 " src="assets/img/shape/shape-c-2.png" alt="">
        </div>
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12">
                    <div class="page-title page-title-2 mb-30">
                        <h4><?php the_title(); ?></h4>
                    </div>
                    <div class="breadcrumb-list breadcrumb-list-2 mb-30">
                        <?php get_the_breadcrumb(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- End Breadcrumb Area -->
<!-- Start Blog Area -->
    <section class="blog-area pt-150 pb-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <article class="single-blog-post image-formate mb-50">
                        <div class="blog-post-img mb-30">
                            <?php if(has_post_thumbnail()) : the_post_thumbnail('large', array('class'=>'img-fluid')); endif; ?>
                        </div>
                        <div class="blog-post-content">
                            <div class="blog-post-meta mb-15">
                                <span><i class="far fa-calendar-check"></i><?php echo get_the_date(); ?></span>
                                <!-- <span><a href="<?php //echo esc_url( get_author_posts_url( get_the_author_meta( "ID" ) ) ); ?>"><i class="far fa-user"></i><?php //the_author(); ?></a></span>
                                <span><a href="#"><i class="far fa-comments"></i> 23 Comments</a></span> -->
                            </div>
                            <!-- <h3 class="post-title">
                                <?php //the_title(); ?>
                            </h3> -->
                            <div class="post-text mb-50">
                                <?php the_content(); ?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-8">
                                <div class="blog-post-tag">
                                    <span><?php _e('Related Tags', 'xisen'); ?></span>
                                    
                                    <?php the_tags('', '', ''); ?>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="blog-share-icon text-left text-md-right">
                                    <span><?php _e('Share: ', 'xisen'); ?></span>

                                    <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink(); ?>" target="_blank" data-toggle="tooltip" title="Facebook" ><i class="fab fa-facebook-f"></i></a>

                                    <a href="http://www.twitter.com/share?url=<?php the_permalink(); ?>" target="_blank" data-toggle="tooltip" title="Twitter"><i class="fab fa-twitter"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="navigation-border mt-40 pt-50"></div>
                            </div>
                            <div class="col-md-6">
                                <?php
                                    $get_prev_post      =   get_previous_post_link();

                                    if($get_prev_post) :
                                ?>
                                <div class="post-navigation mb-30 text-left">
                                    <span><a href="<?php echo get_the_permalink($get_prev_post); ?>"><?php _e('Prev Post', 'xisen'); ?></a></span>
                                    <h4><a href="#"><?php echo $get_prev_post; ?></a></h4>
                                </div>
                                <?php endif; ?>
                            </div>
                            <div class="col-md-6">
                                <?php
                                    $get_next_post      =   get_next_post_link();

                                    if($get_next_post) :
                                ?>
                                <div class="post-navigation mb-30 text-left text-md-right">
                                    <span><a href="#"><?php _e('Next Post', 'xisen'); ?></a></span>
                                    <h4><a href="<?php echo get_the_permalink($get_next_post); ?>"><?php echo $get_next_post; ?></a></h4>
                                </div>
                                <?php endif; ?>
                            </div>
                        </div>
                        <!-- <div class="author mt-80 mb-40">
                            <div class="autor-img text-center">
                                <?php echo get_avatar( get_the_author_meta( "ID" ) ); ?>
                            </div>
                            <div class="autor-detais text-center">
                                <h3><?php the_author(); ?></h3>
                                <div class="author-icon">
                                    <a href="#" target="_blank" data-toggle="tooltip" title="Facebook" ><i class="fab fa-facebook-f"></i></a>
                                    <a href="#" target="_blank" data-toggle="tooltip" title="Twitter"><i class="fab fa-twitter"></i></a>
                                    <a href="#" target="_blank" data-toggle="tooltip" title="Behance"><i class="fab fa-behance"></i></a>
                                    <a href="#" target="_blank" data-toggle="tooltip" title="Youtube"><i class="fab fa-youtube"></i></a>
                                    <a href="#" target="_blank" data-toggle="tooltip" title="Instagram"><i class="fab fa-instagram"></i></a>
                                    <a href="#" target="_blank" data-toggle="tooltip" title="Vimeo"><i class="fab fa-vimeo-v"></i></a>
                                </div>
                                <p>
                                    <?php the_author_meta('description'); ?>
                                </p>
                            </div>
                        </div>
                        <div class="related-post">
                            <h4 class="rel-post-title">Related Post</h4>
                            <div class="row">
                                <div class="col-md-6">
                                    <article class="single-blog-post image-formate mb-50">
                                        <div class="blog-post-img mb-30">
                                            <a href="#">
                                                <img src="assets/img/blog/b1.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="blog-post-content">
                                            <div class="blog-post-meta mb-15">
                                                <span><a href="#"><i class="far fa-user"></i> Diboli B. Joly</a></span>
                                                <span><a href="#"><i class="far fa-comments"></i> 23 Comments</a></span>
                                            </div>
                                            <h3 class="post-title post-title-sm">
                                                <a href="#">Exploring The Latest Web Design Trends Together With Be?</a>
                                            </h3>
                                            <div class="post-text mb-20">
                                                <p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.</p></p>
                                            </div>
                                            <div class="post-btn">
                                                <a href="#" class="btn btn-inline">Read More <i class="fas fa-long-arrow-alt-right"></i></a>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <div class="col-md-6">
                                    <article class="single-blog-post image-formate mb-50">
                                        <div class="blog-post-img mb-30">
                                            <a href="#">
                                                <img src="assets/img/blog/b2.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="blog-post-content">
                                            <div class="blog-post-meta mb-15">
                                                <span><a href="#"><i class="far fa-user"></i> Diboli B. Joly</a></span>
                                                <span><a href="#"><i class="far fa-comments"></i> 23 Comments</a></span>
                                            </div>
                                            <h3 class="post-title post-title-sm">
                                                <a href="#">Exploring The Latest Web Design Trends Together With Be?</a>
                                            </h3>
                                            <div class="post-text mb-20">
                                                <p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.</p></p>
                                            </div>
                                            <div class="post-btn">
                                                <a href="#" class="btn btn-inline">Read More <i class="fas fa-long-arrow-alt-right"></i></a>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                        <div class="post-comments">
                            <div class="comment-title mb-30">
                                <h4>03 Comments</h4>
                            </div>
                            <ul class="latest-comments">
                                <li>
                                    <div class="comment-box">
                                        <div class="comment-avatar">
                                            <img src="assets/img/blog/details/comments1.png" alt="">
                                        </div>
                                        <div class="comment-text">
                                            <div class="avatar-name">
                                                <h3>Karon Balina</h3>
                                                <span>19th May 2018</span>
                                                <a class="reply" href="#"><i class="fas fa-reply"></i> reply</a>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="reply">
                                    <div class="comment-box">
                                        <div class="comment-avatar">
                                            <img src="assets/img/blog/details/author.png" alt="">
                                        </div>
                                        <div class="comment-text">
                                            <div class="avatar-name">
                                                <h3>Tanvir Ahamed</h3>
                                                <span>19th May 2018</span>
                                                <a class="reply" href="#"><i class="fas fa-reply"></i> reply</a>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="comment-box">
                                        <div class="comment-avatar">
                                            <img src="assets/img/blog/details/comments2.png" alt="">
                                        </div>
                                        <div class="comment-text">
                                            <div class="avatar-name">
                                                <h3>Julias Roy</h3>
                                                <span>19th May 2018</span>
                                                <a class="reply" href="#"><i class="fas fa-reply"></i> reply</a>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="post-comments-form">
                            <div class="comment-title mb-30">
                                <h4>Post Comments</h4>
                            </div>
                            <form id="contacts-form" class="contact-post-form" action="#">
                                <div class="row">
                                    <div class="col-xl-6">
                                        <div class="contact-icon">
                                            <label>Your name *</label>
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="contact-icon">
                                            <label>Your email *</label>
                                            <input type="email">
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="contact-icon">
                                            <label>Your comments *</label>
                                            <textarea name="comments" id="comments" cols="30" rows="10"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <button class="btn theme-btn" type="submit">Post comment</button>
                                    </div>
                                </div>
                            </form>
                        </div> -->
                    </article>
                </div>
                <div class="col-lg-4">
                    <?php get_sidebar(); ?>
                </div>
            </div>
        </div>
    </section>
<!-- End Blog Area -->
</main>
<!-- Start Footer -->

<?php
    get_footer();