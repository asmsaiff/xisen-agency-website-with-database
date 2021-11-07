<?php
function cptui_register_my_cpts_xisen_faqs() {

	/**
	 * Post Type: FAQs.
	 */

	$labels = [
		"name" => __( "FAQs", "xisen" ),
		"singular_name" => __( "FAQ", "xisen" ),
		"all_items" => __( "All FAQs", "xisen" ),
		"add_new" => __( "Add New FAQ", "xisen" ),
		"add_new_item" => __( "Add New FAQ", "xisen" ),
		"edit_item" => __( "Edit FAQ", "xisen" ),
		"new_item" => __( "New FAQ", "xisen" ),
		"view_item" => __( "View FAQ", "xisen" ),
	];

	$args = [
		"label" => __( "FAQs", "xisen" ),
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
		"rewrite" => [ "slug" => "xisen_faqs", "with_front" => true ],
		"query_var" => true,
		"menu_icon" => "dashicons-text-page",
		"supports" => [ "title" ],
		"show_in_graphql" => false,
	];

	register_post_type( "xisen_faqs", $args );
}

add_action( 'init', 'cptui_register_my_cpts_xisen_faqs' );
