<?php
function cptui_register_my_cpts_xisen_testimonials() {

	/**
	 * Post Type: Testimonials.
	 */

	$labels = [
		"name" => __( "Testimonials", "xisen" ),
		"singular_name" => __( "Testimonial", "xisen" ),
		"all_items" => __( "All Testimonials", "xisen" ),
		"add_new" => __( "Add New Testimonial", "xisen" ),
		"add_new_item" => __( "Add New Testimonial", "xisen" ),
	];

	$args = [
		"label" => __( "Testimonials", "xisen" ),
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
		"rewrite" => [ "slug" => "xisen_testimonials", "with_front" => true ],
		"query_var" => true,
		"supports" => [ "title" ],
		"show_in_graphql" => false,
	];

	register_post_type( "xisen_testimonials", $args );
}

add_action( 'init', 'cptui_register_my_cpts_xisen_testimonials' );
