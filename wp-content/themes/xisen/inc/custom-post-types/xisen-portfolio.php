<?php
    function cptui_register_my_cpts_xisen_portfolio() {
        /**
         * Post Type: Portfolios.
         */

        $labels = [
            "name" => __( "Projects", "xisen" ),
            "singular_name" => __( "Project", "xisen" ),
            "menu_name" => __( "Projects", "xisen" ),
            "all_items" => __( "All Projects", "xisen" ),
            "add_new_item" => __( "Add New Projects", "xisen" ),
            "edit_item" => __( "Edit Projects", "xisen" ),
            "new_item" => __( "New Projects", "xisen" ),
            "view_item" => __( "View Projects", "xisen" ),
            "view_items" => __( "View Projects", "xisen" ),
            "search_items" => __( "Search Projects", "xisen" ),
            "not_found" => __( "No Projects Found", "xisen" ),
            "not_found_in_trash" => __( "No Projects Found in Trash", "xisen" ),
            "parent" => __( "Parent Projects", "xisen" ),
            "featured_image" => __( "Featured Image for this Projects", "xisen" ),
            "set_featured_image" => __( "Set featured image for this Projects", "xisen" ),
            "remove_featured_image" => __( "Remove featured image for this Projects", "xisen" ),
            "parent_item_colon" => __( "Parent Projects", "xisen" ),
        ];

        $args = [
            "label" => __( "Portfolios", "xisen" ),
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
            "rewrite" => [ "slug" => "xisen_portfolio", "with_front" => true ],
            "query_var" => true,
            "menu_icon" => "dashicons-portfolio",
            "supports" => [ "title", "editor", "thumbnail" ],
            "show_in_graphql" => false,
            "taxonomies" => array('xisen_portfolio_category')
        ];

        register_post_type( "xisen_portfolio", $args );
    }

    add_action( 'init', 'cptui_register_my_cpts_xisen_portfolio' );
