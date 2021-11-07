<?php
    get_header();

    the_post();
?>

<main>
<?php get_template_part('template-parts/common/page', 'header'); ?>

<!-- Start FAQ Area -->
    <section class="faq-area-inner pt-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="faq-wrapper-inner mb-130">
                        <?php
                            if(has_post_thumbnail()) {
                                the_post_thumbnail('large', array('class'=>'img-fluid mb-5'));
                            }

                            the_content();
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- End FAQ Area -->
<?php get_template_part('template-parts/common/page-contact', 'form'); ?>
</main>

<?php
    get_footer();