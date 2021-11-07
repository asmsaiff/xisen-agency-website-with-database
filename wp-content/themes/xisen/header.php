<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
   <meta charset="<?php bloginfo('charset'); ?>">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="description" content="Xisen - Creative HTML5 Template for Saas, Startup & Agency">
   <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Title -->
    <title><?php bloginfo( 'title' ); ?></title>

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo get_template_directory_uri(); ?>/assets/img/icon.png">

    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
    <!-- preloader  -->
        <div id="preloader">
            <div id="ctn-preloader" class="ctn-preloader">
                <div class="animation-preloader">
                    <div class="spinner"></div>
                    <div class="txt-loading">
                        <span data-text-preloader="X" class="letters-loading">
                            X
                        </span>
                        <span data-text-preloader="I" class="letters-loading">
                            I
                        </span>
                        <span data-text-preloader="S" class="letters-loading">
                            S
                        </span>
                        <span data-text-preloader="E" class="letters-loading">
                            E
                        </span>
                        <span data-text-preloader="N" class="letters-loading">
                            N
                        </span>
                    </div>
                </div>
                <div class="loader">
                    <div class="row">
                        <div class="col-3 loader-section section-left">
                            <div class="bg"></div>
                        </div>
                        <div class="col-3 loader-section section-left">
                            <div class="bg"></div>
                        </div>
                        <div class="col-3 loader-section section-right">
                            <div class="bg"></div>
                        </div>
                        <div class="col-3 loader-section section-right">
                            <div class="bg"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- preloader end -->
<!-- Start Header Area -->
    <header id="header-sticky" class="header-area <?php
        if(!is_single(is_post_type_archive('xisen_services'))) : echo 'header-absolute'; endif;
        if(is_single(is_post_type_archive('xisen_services'))) : echo 'home-2'; endif;
        if(is_page() || is_home() || is_archive()) : echo 'home-2'; endif;
        ?>"
        
        >
        <div class="container">
            <div class="header-wrapper">
                <div class="row align-items-center">
                    <div class="col-lg-2 col-6">
                        <div class="site-logo">
                            <a href="<?php echo home_url(); ?>">
                                <?php if(current_theme_supports('custom-logo')) : the_custom_logo(); endif; ?>
                            </a>
                        </div>
                    </div>
                    <div class="col-6 d-block d-lg-none static">
                        <div class="show-mobile-menu"></div>
                    </div>
                    <div class="col-lg-8 d-none d-lg-block static">
                        <?php
                            $xisen_primary_menu = wp_nav_menu(array(
                                'theme_location'        =>  'main_menu',
                                'menu_id'               =>  'mobile-menu',
                                'menu_class'            =>  'main-menu text-center',
                                'echo'                  =>  false
                            ));

                            $xisen_primary_menu = str_replace('sub-menu', 'submenu', $xisen_primary_menu);
                            echo $xisen_primary_menu;
                        ?>
                    </div>
                    
                    <div class="col-lg-2 d-none d-lg-block">
                        <div class="header-btn text-right">
                            <a href="<?php echo get_xisen_redux_data('button_url'); ?>" class="btn border-btn"><?php echo get_xisen_redux_data('button_label'); ?></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
<!-- End Header Area -->