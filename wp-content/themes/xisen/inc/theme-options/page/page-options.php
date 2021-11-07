<?php
    // Single Page
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Page', $xisen_textdomain ),
        'id'     => 'xisen_page',
        'desc'   => esc_html__( 'Page options', $xisen_textdomain ),
        'icon'   => 'el el-th-large',
        'fields' => array(
            array(
                'id'       => 'page_header_bg',
                'type'     => 'color',
                'title'    => __('Color', $xisen_textdomain), 
                'subtitle' => __('Page Header Background Color (default: #f0f9ff).', $xisen_textdomain),
                'default'  => '#f0f9ff',
                'validate' => 'color',
			),
        )
    ) );

    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'FAQ Page', $xisen_textdomain ),
        'id'     => 'faq_page',
        // 'icon'   => 'el el-th-large',
        'subsection'    =>  true,
        'fields' => array(
            array(
                'id'        =>  'faq_page_under_header_title',
                'type'      =>  'text',
                'title'     =>  __('Heading', $xisen_textdomain), 
                'subtitle'  =>  __('Under Page Header Section Heading Text', $xisen_textdomain),
            ),
            array(
                'id'        =>  'faq_page_under_header_short_desc',
                'type'      =>  'textarea',
                'rows'      =>  2,
                'title'     =>  __('Short Description', $xisen_textdomain), 
                'subtitle'  =>  __('Write a short description about FAQ page', $xisen_textdomain),
            ),
        )
    ) );

    // Service Page
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Service Page', $xisen_textdomain ),
        'id'     => 'service_page',
        // 'icon'   => 'el el-th-large',
        'subsection'    =>  true,
        'fields' => array(
            array(
                'type'      =>  'raw',
                'title'     =>  __('Features Section', $xisen_textdomain),
            ),
            array(
                'id'        =>  'service_page_features_section_title',
                'type'      =>  'text',
                'title'     =>  __('Heading', $xisen_textdomain), 
                'subtitle'  =>  __('Service Page Features Section Heading Text', $xisen_textdomain),
            ),
            array(
                'id'        =>  'service_page_features_section_subtitle',
                'type'      =>  'text',
                'title'     =>  __('Sub Title', $xisen_textdomain), 
                'subtitle'  =>  __('Service Page Features Section Subtitle', $xisen_textdomain),
            ),
            array(
                'id'        =>  'service_page_features_section_under_header_divider',
                'type'      =>  'media',
                'url'       =>  true,
                'title'     =>  __('Divider Image', $xisen_textdomain), 
                'subtitle'  =>  __('Upload a transparent divider line image', $xisen_textdomain),
            ),

            array(
                'type'      =>  'raw',
                'title'     =>  __('Advance Features Section', $xisen_textdomain),
            ),

            array(
                'id'        =>  'service_page_adv_features_section_title',
                'type'      =>  'text',
                'title'     =>  __('Heading', $xisen_textdomain), 
                'subtitle'  =>  __('Service Page Features Section Heading Text', $xisen_textdomain),
            ),
            array(
                'id'        =>  'service_page_adv_features_section_subtitle',
                'type'      =>  'text',
                'title'     =>  __('Sub Title', $xisen_textdomain), 
                'subtitle'  =>  __('Service Page Advance Features Section Subtitle', $xisen_textdomain),
            ),
            array(
                'id'        =>  'service_page_adv_features_section_btn_label',
                'type'      =>  'text',
                'title'     =>  __('Button Label', $xisen_textdomain), 
                'subtitle'  =>  __('Service Page Advance Features Section Button Label', $xisen_textdomain),
            ),
            array(
                'id'        =>  'service_page_adv_features_section_btn_url',
                'type'      =>  'text',
                'title'     =>  __('Button Page URL',$xisen_textdomain), 
                'subtitle'  =>  __('Which page you want to go after clicking this button?', $xisen_textdomain),
            ),
            array(
                'id'        =>  'service_page_adv_features_section_content',
                'type'      =>  'editor',
                'title'     =>  __('Short Content', $xisen_textdomain), 
                'subtitle'  =>  __('Service Page Advance Features Section Subtitle', $xisen_textdomain),
                'args'   => array(
                    'teeny'            => true,
                ),
            ),
            array(
                'id'        =>  'service_page_adv_features_section_right_side_image',
                'type'      =>  'media',
                'url'       =>  true,
                'title'     =>  __('Image', $xisen_textdomain), 
                'subtitle'  =>  __('Upload right side image', $xisen_textdomain),
            ),

            array(
                'type'      =>  'raw',
                'title'     =>  __('Mailchimp Subscription Section', $xisen_textdomain),
            ),

            array(
                'id'        =>  'service_page_mail_subscribe_section_title',
                'type'      =>  'text',
                'title'     =>  __('Heading', $xisen_textdomain), 
                'subtitle'  =>  __('Service Page Mail Subscribe Section Heading Text', $xisen_textdomain),
            ),
            array(
                'id'        =>  'service_page_mail_subscribe_section_subtitle',
                'type'      =>  'text',
                'title'     =>  __('Sub Title', $xisen_textdomain), 
                'subtitle'  =>  __('Service Page Mail Subscribe Section Subtitle', $xisen_textdomain),
            ),
        )
    ) );

    // Contact Page
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Contact Page', $xisen_textdomain ),
        'id'     => 'contact_page',
        // 'icon'   => 'el el-th-large',
        'subsection'    =>  true,
        'fields' => array(
            array(
                'type'      =>  'raw',
                'title'     =>  __('Form Area', $xisen_textdomain),
            ),
            array(
                'id'        =>  'contact_page_form_section_title',
                'type'      =>  'text',
                'title'     =>  __('Heading', $xisen_textdomain), 
                'subtitle'  =>  __('Contact Page Form Section Heading Text', $xisen_textdomain),
            ),
            array(
                'id'        =>  'contact_page_form_section_subtitle',
                'type'      =>  'text',
                'title'     =>  __('Sub Title', $xisen_textdomain), 
                'subtitle'  =>  __('Contact Page Form Section Subtitle', $xisen_textdomain),
            ),
            array(
                'id'        =>  'contact_page_form_section_short_desc',
                'type'      =>  'editor',
                'title'     =>  __('Short Description', $xisen_textdomain), 
                'subtitle'  =>  __('Contact Page Form Section Short Description', $xisen_textdomain),
            ),
            array(
                'id'        =>  'contact_page_map',
                'type'      =>  'textarea',
                'rows'      =>  3,
                'title'     =>  __('Google Maps Iframe', $xisen_textdomain), 
                'subtitle'  =>  __('Copy and paste iframe tag to embed map', $xisen_textdomain),
                'desc'      =>  __('Change width 100% from the iframe tag to see full width map.')
            ),
        )
    ) );

    // About Page
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'About Page', $xisen_textdomain ),
        'id'     => 'about_page',
        // 'icon'   => 'el el-th-large',
        'subsection'    =>  true,
        'fields' => array(
            array(
                'type'      =>  'raw',
                'title'     =>  __('Feature Area', $xisen_textdomain),
            ),
            array(
                'id'        =>  'about_page_form_section_title',
                'type'      =>  'text',
                'title'     =>  __('Heading', $xisen_textdomain), 
                'subtitle'  =>  __('About Page Feature Section Heading Text', $xisen_textdomain),
            ),
            array(
                'id'        =>  'about_page_form_section_subtitle',
                'type'      =>  'text',
                'title'     =>  __('Sub Title', $xisen_textdomain), 
                'subtitle'  =>  __('About Page Feature Section Subtitle', $xisen_textdomain),
            ),
            array(
                'id'        =>  'about_page_form_section_short_desc',
                'type'      =>  'editor',
                'title'     =>  __('Short Description', $xisen_textdomain), 
                'subtitle'  =>  __('About Page Feature Section Short Description', $xisen_textdomain),
            ),
            array(
                'id'        =>  'about_page_feature_left_image',
                'type'      =>  'media',
                'url'      =>  true,
                'title'     =>  __('Image', $xisen_textdomain),
                'desc'     =>  __('Left side image', $xisen_textdomain),
            ),

            array(
                'type'      =>  'raw',
                'title'     =>  __('Soft List Area', $xisen_textdomain),
            ),
            array(
                'id'        =>  'about_page_soft_list_area_title',
                'title'     =>  __('Title', $xisen_textdomain),
                'desc'      =>  __('Soft Area Title', $xisen_textdomain),
                'type'      =>  'text',
            ),
            array(
                'id'        =>  'about_page_soft_list_area_short_desc',
                'title'     =>  __('Short Description', $xisen_textdomain),
                'desc'      =>  __('Soft Area Short Description', $xisen_textdomain),
                'type'      =>  'textarea',
                'rows'      =>  3,
            ),
            array(
                'id'          => 'soft-list-area-grid',
                'type'        => 'slides',
                'title'       => __('Soft List Grids', $xisen_textdomain),
                'desc'        => __('Create software list grid here.', $xisen_textdomain),
                'placeholder' => array(
                    'title'       => __('Title', $xisen_textdomain),
                    'description' => __('Description', $xisen_textdomain),
                    'url'         => __('Link', $xisen_textdomain),
                ),
            ),

            array(
                'type'      =>  'raw',
                'title'     =>  __('About Page Testimonials', $xisen_textdomain),
            ),
            array(
                'id'        =>  'about_page_testimonial_section_title',
                'type'      =>  'text',
                'title'     =>  __('Heading', $xisen_textdomain), 
                'subtitle'  =>  __('About Page Testimonial Section Heading Text', $xisen_textdomain),
            ),
            array(
                'id'        =>  'about_page_testimonial_section_subtitle',
                'type'      =>  'text',
                'title'     =>  __('Sub Title', $xisen_textdomain), 
                'subtitle'  =>  __('About Page Testimonial Section Subtitle', $xisen_textdomain),
            ),

            array(
                'type'      =>  'raw',
                'title'     =>  __('About Page Brand Area', $xisen_textdomain),
            ),
            array(
                'id'        =>  'about_page_brand_area_title',
                'type'      =>  'text',
                'title'     =>  __('Heading', $xisen_textdomain), 
                'subtitle'  =>  __('About Page Area Title', $xisen_textdomain),
            ),
            array(
                'id'        =>  'about_page_brand_area_subtitle',
                'type'      =>  'text',
                'title'     =>  __('Sub Title', $xisen_textdomain), 
                'subtitle'  =>  __('About Page Brand Area Subtitle', $xisen_textdomain),
            ),
            array(
                'id'        =>  'about_page_brand_area_logos',
                'type'      =>  'gallery',
                'title'     =>  __('Logos', $xisen_textdomain), 
                'subtitle'  =>  __('About Page Brand Area Logos', $xisen_textdomain),
            ),
        )
    ) );

    // About Page
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Team Member Page', $xisen_textdomain ),
        'id'     => 'team_member_page',
        // 'icon'   => 'el el-th-large',
        'subsection'    =>  true,
        'fields' => array(
            array(
                'type'      =>  'raw',
                'title'     =>  __('Section Header', $xisen_textdomain),
            ),

            array(
                'id'        =>  'team_section_title',
                'type'      =>  'text',
                'title'     =>  __('Section title', $xisen_textdomain),
            ),

            array(
                'id'        =>  'team_section_para',
                'type'      =>  'editor',
                'title'     =>  __('Section short description', $xisen_textdomain),
            ),
        )
    ) );