<?php
    function cptui_register_my_taxes_xisen_portfolio_category() {
        /**
         * Taxonomy: Portfolio Categories.
         */

        $labels = [
            "name" => __( "Projects Categories", "xisen" ),
            "singular_name" => __( "Portfolio Category", "xisen" ),
        ];

        
        $args = [
            "label" => __( "Projects Categories", "xisen" ),
            "labels" => $labels,
            "public" => true,
            "publicly_queryable" => true,
            "hierarchical" => true,
            "show_ui" => true,
            "show_in_menu" => true,
            "show_in_nav_menus" => true,
            "query_var" => true,
            "rewrite" => [ 'slug' => 'xisen_portfolio_category', 'with_front' => true, ],
            "show_admin_column" => false,
            "show_in_rest" => true,
            "rest_base" => "xisen_portfolio_category",
            "rest_controller_class" => "WP_REST_Terms_Controller",
            "show_in_quick_edit" => false,
            "show_in_graphql" => false,
        ];
        register_taxonomy( "xisen_portfolio_category", [ "xisen_portfolio" ], $args );
    }
    add_action( 'init', 'cptui_register_my_taxes_xisen_portfolio_category' );
