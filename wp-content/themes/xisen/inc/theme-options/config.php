<?php
	if ( ! class_exists( 'Redux' ) ) {
        return;
    }

	Redux::disable_demo();
	unset(Redux_Core::$server['REMOTE_ADDR']);

	$opt_name = 'xisen_options';
	$xisen_textdomain = 'xisen';
	$theme = wp_get_theme();

	$args = array(
		'display_name'         	=>	$theme->get( 'Name' ),
		'display_version'      	=>	$theme->get( 'Version' ),
		'menu_title'           	=>	esc_html__( 'Xisen Options', $xisen_textdomain ),
		'customizer'           	=>	true,
		'dev_mode'				=>	false,
		'admin_bar_icon'     => 'dashicons-portfolio',
	);
	
	Redux::setArgs( $opt_name, $args );

    require_once(__DIR__.'/misc/header-options.php');
    require_once(__DIR__.'/home/home-options.php');
    require_once(__DIR__.'/page/page-options.php');
    require_once(__DIR__.'/misc/xisen-social-media.php');
    require_once(__DIR__.'/misc/footer-options.php');