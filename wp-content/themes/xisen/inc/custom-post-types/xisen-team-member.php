<?php
    function cptui_register_my_cpts_xisen_team() {

        /**
         * Post Type: Team Members.
         */

        $labels = [
            "name" => __( "Team Members", "xisen" ),
            "singular_name" => __( "Team Member", "xisen" ),
            "menu_name" => __( "Team Members", "xisen" ),
            "all_items" => __( "All Team Member", "xisen" ),
            "add_new" => __( "Add New", "xisen" ),
            "add_new_item" => __( "Add New Team Member", "xisen" ),
            "edit_item" => __( "Edit Team Member Info", "xisen" ),
            "new_item" => __( "New Team Member", "xisen" ),
            "view_item" => __( "View Team Member Info", "xisen" ),
            "view_items" => __( "Team Members Info", "xisen" ),
            "search_items" => __( "Search Team Member", "xisen" ),
            "not_found" => __( "No Team Member Found", "xisen" ),
            "parent" => __( "Parent Team Member", "xisen" ),
            "featured_image" => __( "Profile Picture (portrait)", "xisen" ),
            "set_featured_image" => __( "Set profile picture for this member", "xisen" ),
            "remove_featured_image" => __( "Remove profile picture for this member", "xisen" ),
            "parent_item_colon" => __( "Parent Team Member", "xisen" ),
        ];

        $args = [
            "label" => __( "Team Members", "xisen" ),
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
            "rewrite" => [ "slug" => "xisen_team", "with_front" => true ],
            "query_var" => true,
            "menu_icon" => "dashicons-universal-access",
            "supports" => [ "title", "thumbnail", "excerpt" ],
            "taxonomies" => [ "category", "post_tag" ],
            "show_in_graphql" => false,
        ];

        register_post_type( "xisen_team", $args );
    }

    add_action( 'init', 'cptui_register_my_cpts_xisen_team' );
