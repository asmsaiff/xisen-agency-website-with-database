<?php
    function cptui_register_my_cpts_xisen_pricing() {

	/**
	 * Post Type: Pricing Plans.
	 */

	$labels = [
		"name" => __( "Pricing Plans", "xisen" ),
		"singular_name" => __( "Pricing Plan", "xisen" ),
		"menu_name" => __( "My Pricing Plans", "xisen" ),
		"all_items" => __( "All Pricing Plans", "xisen" ),
		"add_new" => __( "Add New Pricing Plan", "xisen" ),
		"add_new_item" => __( "Add New Pricing Plans Item", "xisen" ),
		"edit_item" => __( "Edit Plan", "xisen" ),
		"new_item" => __( "New Plan", "xisen" ),
		"view_item" => __( "View Plan", "xisen" ),
		"view_items" => __( "VIew Plans", "xisen" ),
		"search_items" => __( "Search Plan", "xisen" ),
		"featured_image" => __( "Pricing Plan Icon", "xisen" ),
		"set_featured_image" => __( "Set Pricing Plans Icon", "xisen" ),
		"remove_featured_image" => __( "Remove Pricing Plan Icon", "xisen" ),
		"use_featured_image" => __( "Use Pricing Plan Icon", "xisen" ),
	];

	$args = [
		"label" => __( "Pricing Plans", "xisen" ),
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
		"rewrite" => [ "slug" => "xisen_pricing", "with_front" => true ],
		"query_var" => true,
		"menu_icon" => "dashicons-money-alt",
		"supports" => [ "title", "thumbnail" ],
		"show_in_graphql" => false,
	];

	register_post_type( "xisen_pricing", $args );
}

add_action( 'init', 'cptui_register_my_cpts_xisen_pricing' );
