<?php
    function cptui_register_my_cpts_software_features() {

	/**
	 * Post Type: Software Features.
	 */

	$labels = [
		"name" => __( "Software Features", "xisen" ),
		"singular_name" => __( "Software Feature", "xisen" ),
		"menu_name" => __( "Features", "xisen" ),
		"all_items" => __( "All Features", "xisen" ),
		"add_new" => __( "Add New Feature", "xisen" ),
		"add_new_item" => __( "Add New Feature", "xisen" ),
		"edit_item" => __( "Edit Features", "xisen" ),
		"new_item" => __( "New Features", "xisen" ),
		"view_item" => __( "View Feature", "xisen" ),
		"view_items" => __( "View Features", "xisen" ),
		"search_items" => __( "Search Feature", "xisen" ),
		"featured_image" => __( "Features Icon (max width, height: 30px)", "xisen" ),
		"set_featured_image" => __( "Set Features Icon", "xisen" ),
		"remove_featured_image" => __( "Remove Features Icon", "xisen" ),
		"use_featured_image" => __( "Use Features Icon", "xisen" ),
	];

	$args = [
		"label" => __( "Software Features", "xisen" ),
		"labels" => $labels,
		"description" => "",
		"public" => true,
		"publicly_queryable" => true,
		"show_ui" => true,
		"show_in_rest" => true,
		"rest_base" => "",
		"rest_controller_class" => "WP_REST_Posts_Controller",
		"has_archive" => false,
		"show_in_menu" => true,
		"show_in_nav_menus" => true,
		"delete_with_user" => false,
		"exclude_from_search" => false,
		"capability_type" => "post",
		"map_meta_cap" => true,
		"hierarchical" => false,
		"rewrite" => [ "slug" => "software_features", "with_front" => true ],
		"query_var" => true,
		"menu_icon" => "dashicons-block-default",
		"supports" => [ "title", "thumbnail", "excerpt" ],
		"show_in_graphql" => false,
	];

	register_post_type( "software_features", $args );
}

add_action( 'init', 'cptui_register_my_cpts_software_features' );