<?php
    function cptui_register_my_cpts_xisen_services() {

	/**
	 * Post Type: Xisen Services.
	 */

	$labels = [
		"name" => __( "Xisen Services", "xisen" ),
		"singular_name" => __( "Xisen Service", "xisen" ),
		"menu_name" => __( "Services", "xisen" ),
		"all_items" => __( "All Services", "xisen" ),
		"add_new" => __( "Add New Service", "xisen" ),
		"add_new_item" => __( "Add new service", "xisen" ),
		"edit_item" => __( "Edit Service", "xisen" ),
		"new_item" => __( "New Service", "xisen" ),
		"view_item" => __( "View Service", "xisen" ),
		"view_items" => __( "View Services", "xisen" ),
		"search_items" => __( "Search Service", "xisen" ),
		"not_found" => __( "No Service Found", "xisen" ),
		"not_found_in_trash" => __( "No Service Found In Trash", "xisen" ),
		"parent" => __( "Parent Service", "xisen" ),
		"featured_image" => __( "Servcie Icon (max width, height: 30px)", "xisen" ),
		"set_featured_image" => __( "Set Service Icon", "xisen" ),
		"remove_featured_image" => __( "Remove Service Icon", "xisen" ),
		"use_featured_image" => __( "Use Service Icon", "xisen" ),
		"archives" => __( "Service Archives", "xisen" ),
		"insert_into_item" => __( "Insert into Service", "xisen" ),
		"name_admin_bar" => __( "Service", "xisen" ),
		"item_published" => __( "Service Published", "xisen" ),
		"item_updated" => __( "Service Updated", "xisen" ),
		"parent_item_colon" => __( "Parent Service", "xisen" ),
	];

	$args = [
		"label" => __( "Xisen Services", "xisen" ),
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
		"rewrite" => [ "slug" => "xisen_services", "with_front" => true ],
		"query_var" => true,
		"menu_icon" => "dashicons-category",
		"supports" => [ "title", "editor", "thumbnail" ],
		"show_in_graphql" => false,
	];

	register_post_type( "xisen_services", $args );
}

add_action( 'init', 'cptui_register_my_cpts_xisen_services' );
