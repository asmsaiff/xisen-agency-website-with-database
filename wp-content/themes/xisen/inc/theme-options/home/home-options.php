<?php
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Home Page', 'xisen' ),
        'id'     => 'basic',
        'icon'   => 'el el-home',
        'fields' => array(
            array(
                'id'       => 'opt-text',
                'type'     => 'checkbox',
                'title'    => esc_html__( 'Disable Section', $xisen_textdomain ),
                'desc'     => esc_html__( 'Check if you want to hide this section.', $xisen_textdomain ),
            ),
        )
    ) );

    // Hero Section
	Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Hero Section', 'xisen' ),
        'id'     => 'home_hero',
        'desc'   => esc_html__( 'Homepage top section', $xisen_textdomain ),
        // 'icon'   => 'el el-th-large',
		'subsection'	=>	true,
        'fields' => array(
            array(
                'id'       => 'hero_title',
                'type'     => 'text',
                'title'    => esc_html__( 'Hero Title', $xisen_textdomain ),
                'desc'     => esc_html__( 'Homepage Hero Section Heading', $xisen_textdomain ),
			),
            array(
                'id'       => 'hero_short_desc',
                'type'     => 'textarea',
                'rows'      =>  2,
                'title'    => esc_html__( 'Hero Short Description', $xisen_textdomain ),
                'desc'     => esc_html__( 'Homepage Hero Section Short Description', $xisen_textdomain ),
			),
            array(
                'id'       => 'hero_section_button_label',
                'type'     => 'text',
                'title'    => esc_html__( 'Button Label', $xisen_textdomain ),
                'desc'     => esc_html__( 'Homepage Hero Section Button Label', $xisen_textdomain ),
			),
            array(
                'id'       => 'hero_section_button_url',
                'type'     => 'text',
                'title'    => esc_html__( 'Button Link', $xisen_textdomain ),
                'desc'     => esc_html__( 'Homepage Hero Section Button URL', $xisen_textdomain ),
			),
            array(
                'id'        => 'hero_section_img',
                'type'      => 'media',
                'url'       =>  true,
                'title'     => esc_html__( 'Image', $xisen_textdomain ),
                'desc'      => esc_html__( 'Homepage Hero Section Image', $xisen_textdomain ),
			),
        )
    ) );

    // How it Works Section
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'How it works section', $xisen_textdomain ),
        'id'     => 'home_how_it_works',
        'desc'   => esc_html__( 'Home page how it works section', $xisen_textdomain ),
        // 'icon'   => 'el el-th-large',
		'subsection'	=>	true,
        'fields' => array(
            array(
                'id'       => 'how_it_works_section_heading',
                'type'     => 'text',
                'title'    => esc_html__( 'Section Heading', $xisen_textdomain ),
                'desc'     => esc_html__( 'How it works Section Heading', $xisen_textdomain ),
			),
            array(
                'id'       => 'how_it_works_section_short_description',
                'type'     => 'textarea',
                'rows'     =>  2,
                'title'    => esc_html__( 'Hero Short Description', $xisen_textdomain ),
                'desc'     => esc_html__( 'Homepage Hero Section Short Description', $xisen_textdomain ),
			),
        )
    ) );

    // Star Access Area Section
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Star Access Area', 'xisen' ),
        'id'     => 'home_star_access',
        'desc'   => esc_html__( 'Home page how it works section', $xisen_textdomain ),
        // 'icon'   => 'el el-th-large',
		'subsection'	=>	true,
        'fields' => array(
            array(
                'id'       => 'star_access_corner_left_image',
                'type'     => 'media',
                'url'       =>  true,
                'title'    => esc_html__( 'Left Side Image', $xisen_textdomain ),
                'desc'     => esc_html__( 'Section Left Side Image', $xisen_textdomain ),
			),
            array(
                'id'       => 'star_access_corner_icon',
                'type'     => 'media',
                'url'       =>  true,
                'title'    => esc_html__( 'Icon', $xisen_textdomain ),
                'desc'     => esc_html__( 'Easy Access Corner Icon', $xisen_textdomain ),
			),
            array(
                'id'       => 'star_access_corner_title',
                'type'     => 'text',
                'title'    => esc_html__( 'Title', $xisen_textdomain ),
                'desc'     => esc_html__( 'Easy Access Corner Title', $xisen_textdomain ),
			),
            array(
                'id'       => 'star_access_corner_short_description',
                'type'     => 'textarea',
                'title'    => esc_html__( 'Short Description', $xisen_textdomain ),
                'desc'     => esc_html__( 'Easy Access Corner Short Description', $xisen_textdomain ),
			),
            array(
                'id'       => 'star_access_corner_btn_label',
                'type'     => 'text',
                'title'    => esc_html__( 'Button Label', $xisen_textdomain ),
                'desc'     => esc_html__( 'Easy Access Corner Button Label', $xisen_textdomain ),
			),
            array(
                'id'       => 'star_access_corner_btn_url',
                'type'     => 'text',
                'title'    => esc_html__( 'Button Link', $xisen_textdomain ),
                'desc'     => esc_html__( 'Easy Access Corner Button Link', $xisen_textdomain ),
			),
        )
    ) );

    // Software Features
    Redux::set_section($opt_name, array(
        'id'                =>  'home_software_features',
        'title'             =>  'Software Features',
        'desc'              =>  'Software Features Section',
        'subsection'        =>  true,
        'fields'            =>  array(
            array(
                'id'            =>  'software_features_title',
                'type'          =>  'text',
                'title'         =>  esc_html__( 'Title', $xisen_textdomain ),
                'desc'          =>  esc_html__( 'Software Features Section Title', $xisen_textdomain ),
            ),
            array(
                'id'            =>  'software_features_short_desc',
                'type'          =>  'textarea',
                'rows'          =>  1,
                'title'         =>  esc_html__( 'Short Description', $xisen_textdomain ),
                'desc'          =>  esc_html__( 'Software Features Section Short Description', $xisen_textdomain ),
            ),
        )
    ));


    // Before Pricing Star Access Area
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Before Pricing Star Access Area', $xisen_textdomain ),
        'id'     => 'home_star_access_before_plan',
        'desc'   => esc_html__( 'Home page before pricing plan star access section', $xisen_textdomain ),
        // 'icon'   => 'el el-th-large',
		'subsection'	=>	true,
        'fields' => array(
            array(
                'id'       => 'star_access_corner_before_plan_right_image',
                'type'     => 'media',
                'url'       =>  true,
                'title'    => esc_html__( 'Right Side Image', $xisen_textdomain ),
                'desc'     => esc_html__( 'Section Right Side Image', $xisen_textdomain ),
			),
            array(
                'id'       => 'star_access_corner_before_plan_icon',
                'type'     => 'media',
                'url'       =>  true,
                'title'    => esc_html__( 'Icon', $xisen_textdomain ),
                'desc'     => esc_html__( 'Easy Access Before Plan Corner Icon', $xisen_textdomain ),
			),
            array(
                'id'       => 'star_access_corner_before_plan_title',
                'type'     => 'text',
                'title'    => esc_html__( 'Title', $xisen_textdomain ),
                'desc'     => esc_html__( 'Easy Access Corner Title', $xisen_textdomain ),
			),
            array(
                'id'       => 'star_access_corner_before_plan_short_description',
                'type'     => 'textarea',
                'title'    => esc_html__( 'Short Description', $xisen_textdomain ),
                'desc'     => esc_html__( 'Easy Access Corner Short Description', $xisen_textdomain ),
			),
            array(
                'id'       => 'star_access_corner_before_plan_btn_label',
                'type'     => 'text',
                'title'    => esc_html__( 'Button Label', $xisen_textdomain ),
                'desc'     => esc_html__( 'Easy Access Corner Button Label', $xisen_textdomain ),
			),
            array(
                'id'       => 'star_access_corner_before_plan_btn_url',
                'type'     => 'text',
                'title'    => esc_html__( 'Button Link', $xisen_textdomain ),
                'desc'     => esc_html__( 'Easy Access Corner Button Link', $xisen_textdomain ),
			),
        )
    ) );

    // Testimonial Section
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Testimonial', $xisen_textdomain ),
        'id'     => 'home_testimonial',
        'desc'   => esc_html__( 'Home page testimonial slider section', $xisen_textdomain ),
        // 'icon'   => 'el el-th-large',
		'subsection'	=>	true,
        'fields' => array(
            array(
                'id'       => 'testimonial_section_left_image',
                'type'     => 'media',
                'url'       =>  true,
                'title'    => esc_html__( 'Image', $xisen_textdomain ),
                'desc'     => esc_html__( 'Section Left Side Image', $xisen_textdomain ),
			),
            array(
                'id'       => 'testimonial_section_heading',
                'type'     => 'text',
                'title'    => esc_html__( 'Heading', $xisen_textdomain ),
                'desc'     => esc_html__( 'Section Heading', $xisen_textdomain ),
			),
            array(
                'id'       => 'testimonial_section_short_desc',
                'type'     => 'textarea',
                'rows'     => 2,
                'title'    => esc_html__( 'Short Description', $xisen_textdomain ),
                'desc'     => esc_html__( 'Section Short Description', $xisen_textdomain ),
			),
        )
    ) );

    

    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Mail Collection Form', $xisen_textdomain ),
        'id'     => 'home_mail_collection_form',
        'desc'   => esc_html__( 'Mail Collection Form section', $xisen_textdomain ),
        // 'icon'   => 'el el-th-large',
		'subsection'	=>	true,
        'fields' => array(
            array(
                'id'       => 'mail_collection_form_section_heading',
                'type'     => 'textarea',
                'rows'      =>  1,
                'title'    => esc_html__( 'Heading', $xisen_textdomain ),
                'desc'     => esc_html__( 'Mail Collection Form Heading Text', $xisen_textdomain ),
			),
            array(
                'id'       => 'mail_collection_form_input_placeholder',
                'type'     => 'text',
                'title'    => esc_html__( 'Placeholder', $xisen_textdomain ),
                'desc'     => esc_html__( 'Mail Collection Form Input Placeholder Text', $xisen_textdomain ),
			),
            array(
                'id'       => 'mail_collection_form_submit_btn_label',
                'type'     => 'text',
                'title'    => esc_html__( 'Label', $xisen_textdomain ),
                'desc'     => esc_html__( 'Mail Collection Form Submit Button Label', $xisen_textdomain ),
			),
        )
    ) );