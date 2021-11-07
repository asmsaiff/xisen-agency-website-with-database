<?php
    require_once(get_theme_file_path( '/inc/xisen-required-plugins.php' ));

    // Option Panel
    require_once(get_theme_file_path( '/inc/theme-options/config.php' ));
    require_once(get_theme_file_path( '/inc/theme-options/page/page-options.php' ));

    // Post Types
    require_once(get_theme_file_path( '/inc/custom-post-types/xisen-pricing-plan.php' ));
    require_once(get_theme_file_path( '/inc/custom-post-types/xisen-services.php' ));
    require_once(get_theme_file_path( '/inc/custom-post-types/xisen-software-features.php' ));
    require_once(get_theme_file_path( '/inc/custom-post-types/xisen-testimonial.php' ));
    require_once(get_theme_file_path( '/inc/custom-post-types/xisen-faq.php' ));
    require_once(get_theme_file_path( '/inc/custom-post-types/xisen-portfolio.php' ));
    require_once(get_theme_file_path( '/inc/custom-post-types/xisen-team-member.php' ));

    // Custom Taxonomy
    require_once(get_theme_file_path( '/inc/custom-taxonomy/portfolio-taxonomy.php' ));

    // Custom Fields
    require_once(get_theme_file_path( '/inc/custom-fields/pricing-plan-features.php' ));
    require_once(get_theme_file_path( '/inc/custom-fields/testimonials.php' ));
    require_once(get_theme_file_path( '/inc/custom-fields/contact-form-shortcode.php' ));
    require_once(get_theme_file_path( '/inc/custom-fields/xisen-faq.php' ));
    require_once(get_theme_file_path( '/inc/custom-fields/working-process.php' ));
    require_once(get_theme_file_path( '/inc/custom-fields/about-page-testimonials.php' ));
    require_once(get_theme_file_path( '/inc/custom-fields/portfolio-meta.php' ));
    require_once(get_theme_file_path( '/inc/custom-fields/xisen-team-member.php' ));

    // Theme Setup
    function xisen_theme_setup() {
        // Theme TextDomain
        load_theme_textdomain('xisen');

        // Theme Supports
        add_theme_support('title');
        add_theme_support('description');
        add_theme_support('custom-header');
        add_theme_support('custom-logo');
        add_theme_support('custom-background');
        add_theme_support('menus');
        add_theme_support('widgets');
        add_theme_support('post-thumbnails');
        add_theme_support('post-formats', array('aside', 'image', 'gallery', 'audio', 'video', 'link', 'status', 'quote', 'chat'));

        // WooCommerce Support Add
        add_theme_support( 'woocommerce' );

        $locations = array(
            'main_menu'             =>  __('Primary Menu', 'xisen'),
            'footer_second_menu'    =>  __('Footer Second Widget Area Menu', 'xisen'),
            'footer_third_menu'     =>  __('Footer Third Widget Area Menu', 'xisen'),
            'footer_fourth_menu'    =>  __('Footer Fourth Widget Area Menu', 'xisen'),
            'footer_last_menu'      =>  __('Footer Last Widget Area Menu', 'xisen'),
            'footer_menu'           =>  __('Footer Menu', 'xisen'),
        );
        register_nav_menus($locations);
    }
    add_action( 'after_setup_theme', 'xisen_theme_setup' );

    function xisen_assets_enqueue() {
        //Style Enqueue
        // Mailchimp
        // wp_enqueue_style('mailchimp-css', '//cdn-images.mailchimp.com/embedcode/horizontal-slim-10_7.css');

        wp_enqueue_style('aos-css', get_template_directory_uri().'/assets/css/aos.css');
        wp_enqueue_style('slick-css', get_template_directory_uri().'/assets/css/slick.css');
        wp_enqueue_style('magnific-popup-css', get_template_directory_uri().'/assets/css/magnific-popup.css');
        wp_enqueue_style('slicknav-css', get_template_directory_uri().'/assets/css/slicknav-1.0.10.min.css');
        wp_enqueue_style('animate-css', get_template_directory_uri().'/assets/css/animate.min.css');
        wp_enqueue_style('custom-animation-css', get_template_directory_uri().'/assets/css/custom-animation.css');
        wp_enqueue_style('owl-carousel-css', get_template_directory_uri().'/assets/css/owl.carousel-2.3.4.min.css');
        wp_enqueue_style('fontawesome-css', get_template_directory_uri().'/assets/css/fontawesome-free-5.12.0.min.css');
        wp_enqueue_style('themify-icons-css', get_template_directory_uri().'/assets/css/themify-icons.css');
        wp_enqueue_style('bootstrap-css', get_template_directory_uri().'/assets/css/bootstrap-4.3.1.min.css');
        wp_enqueue_style('default-css', get_template_directory_uri().'/assets/css/default.css');
        wp_enqueue_style('main-css', get_template_directory_uri().'/assets/css/main.css');
        wp_enqueue_style('responsive-css', get_template_directory_uri().'/assets/css/responsive.css');
        wp_enqueue_style('theme-css', get_stylesheet_uri());

        //JS Enqueue
        wp_enqueue_script('popper-js', get_template_directory_uri().'/assets/js/popper.min.js', null, time(), true);
        wp_enqueue_script('bootstrap-js', get_template_directory_uri().'/assets/js/bootstrap-4.3.1.min.js', null, time(), true);
        wp_enqueue_script('plugins-js', get_template_directory_uri().'/assets/js/plugins.js', array('jquery'), time(), true);
        wp_enqueue_script('modernizr-js', get_template_directory_uri().'/assets/js/vendor/modernizr-3.5.0.min.js', null, time(), true);
        wp_enqueue_script('owl-carousel-js', get_template_directory_uri().'/assets/js/vendor/owl.carousel-2.3.4.min.js', array('jquery'), time(), true);
        wp_enqueue_script('waypoints-js', get_template_directory_uri().'/assets/js/vendor/waypoints-4.0.1.min.js', array('jquery'), time(), true);
        wp_enqueue_script('wow-js', get_template_directory_uri().'/assets/js/vendor/wow-1.1.3.min.js', array('jquery'), time(), true);
        wp_enqueue_script('slicknav-js', get_template_directory_uri().'/assets/js/vendor/slicknav-1.0.10.min.js', null, time(), true);
        wp_enqueue_script('scrollUp-js', get_template_directory_uri().'/assets/js/vendor/scrollUp-2.4.1.min.js', null, time(), true);
        wp_enqueue_script('ajax-form-js', get_template_directory_uri().'/assets/js/vendor/ajax-form.js', array('jquery'), time(), true);
        wp_enqueue_script('magnific-popup-js', get_template_directory_uri().'/assets/js/vendor/magnific-popup-1.1.0.min.js', array('jquery'), time(), true);
        wp_enqueue_script('slick-js', get_template_directory_uri().'/assets/js/vendor/slick.min.js', array('jquery'), time(), true);
        wp_enqueue_script('imagesloaded-js', get_template_directory_uri().'/assets/js/vendor/imagesloaded.pkgd-4.1.4.min.js', null, time(), true);
        wp_enqueue_script('isotope-js', get_template_directory_uri().'/assets/js/vendor/isotope.pkgd-3.0.5.min.js', null, time(), true);
        wp_enqueue_script('aos-js', get_template_directory_uri().'/assets/js/vendor/aos.js', array('jquery'), time(), true);
        wp_enqueue_script('main-js', get_template_directory_uri().'/assets/js/main.js', array('jquery'), time(), true);
        wp_enqueue_script('app-js', get_template_directory_uri().'/assets/js/app.js', array('jquery'), time(), true);
    }
    add_action( 'wp_enqueue_scripts', 'xisen_assets_enqueue' );

    // Redux Data
    function get_xisen_redux_data($key, $default = '') {
        if(class_exists('Redux')) {
            return Redux::get_option('xisen_options', $key, $default);
        } else {
            return $default;
        }
    }

    // Limit Character of Excerpt
    function excerpt_char_limit($e){
		return substr($e,0,250);
	}
	add_filter('get_the_excerpt','excerpt_char_limit');

    // Breadcrumb
    function get_the_breadcrumb() {
        global $post;
        echo '<ul id="breadcrumbs">';
        if (!is_home()) {
            echo '<li><a href="';
            echo get_option('home');
            echo '">';
            echo '<i class="fas fa-home"></i> Home';
            echo '</a></li><li>/</li>';
            if (is_category() || is_single()) {
                echo '<li>';
                the_category(' </li><li class="active"> / </li><li> ');
                if (is_single()) {
                    echo '</li><li class="active"> / </li><li>';
                    the_title();
                    echo '</li>';
                }
            } elseif (is_page() || is_home()) {
                if($post->post_parent){
                    $anc = get_post_ancestors( $post->ID );
                    $title = get_the_title();
                    foreach ( $anc as $ancestor ) {
                        $output = '<li><a href="'.get_permalink($ancestor).'" title="'.get_the_title($ancestor).'">'.get_the_title($ancestor).'</a></li> <li class="active">/</li>';
                    }
                    echo $output;
                    echo '<li class="active">'.$title.'</li>';
                } else {
                    echo '<li class="active">'.get_the_title().'</li>';
                }
            }
        }
        elseif (is_tag()) {single_tag_title();}
        elseif (is_day()) {echo'<li class="active">Archive for '; the_time('F jS, Y'); echo'</li>';}
        elseif (is_month()) {echo'<li class="active">Archive for '; the_time('F, Y'); echo'</li>';}
        elseif (is_year()) {echo'<li class="active">Archive for '; the_time('Y'); echo'</li>';}
        elseif (is_author()) {echo'<li class="active">Author Archive'; echo'</li>';}
        elseif (isset($_GET['paged']) && !empty($_GET['paged'])) {echo '<li class="active">Blog Archives'; echo'</li>';}
        elseif (is_search()) {echo'<li class="active">Search Results'; echo'</li>';}
        elseif (is_home()) { echo '<span style="color: #fff;"><i class="fas fa-home"></i> Home  / </span>'; echo'<li class="active">Blog'; echo'</li>';}
        echo '</ul>';
    }

    // Pagination
    if ( ! function_exists( "xisen_pagination" ) ) {
	function xisen_pagination() {
		global $wp_query;
		$links = paginate_links( array(
			'current'  => max( 1, get_query_var( 'paged' ) ),
			'total'    => $wp_query->max_num_pages,
			'type'     => 'list',
			'mid_size' => apply_filters( "xisen_pagination_mid_size", 3 )
		) );
		$links = str_replace( "<ul class='page-numbers'>", "<ul>", $links );
		$links = str_replace( '<li><span aria-current="page" class="page-numbers current">', '<li class="active"><span aria-current="page" class="page-numbers current">', $links );
		$links = str_replace( "Next &raquo;", '<i class="fas fa-angle-double-right"></i>', $links );
		$links = str_replace( "&laquo; Previous", '<i class="fas fa-angle-double-left"></i>', $links );
		echo $links ;
	}
}