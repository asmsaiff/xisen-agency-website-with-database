<?php
    // Miscellaneous Page
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Footer', $xisen_textdomain ),
        'id'     => 'xisen_footer_area',
        'icon'   => 'el el-th-large',
        'fields' => array(
            array(
                'id'    => 'info_success',
                'type'  => 'info',
                'style' => 'success',
                'title' => __('Footer', $xisen_textdomain),
            ),
        )
    ) );

    Redux::setSection( $opt_name, array(
        'title'         => esc_html__( 'First Widget Area', $xisen_textdomain ),
        'id'            => 'xisen_footer_left',
        // 'icon'       => 'el el-random',
        'subsection'    => true,
        'fields' => array(
            array(
                'id'        =>  'footer_first_widget_logo',
                'type'      =>  'media',
                'url'       =>  true,
                'title'     =>  __('Logo', $xisen_textdomain),
            ),

            array(
                'id'        =>  'footer_first_widget_short_desc',
                'type'      =>  'textarea',
                'rows'      =>  3,
                'title'     =>  __('Short Description', $xisen_textdomain),
            ),
        )
    ) );

    Redux::setSection( $opt_name, array(
        'title'         => esc_html__( 'Second Widget Area', $xisen_textdomain ),
        'id'            => 'xisen_footer_second',
        // 'icon'       => 'el el-random',
        'subsection'    => true,
        'fields' => array(
            array(
                'id'        =>  'footer_second_widget_title',
                'type'      =>  'text',
                'title'     =>  __('Title', $xisen_textdomain),
            ),
        )
    ) );

    Redux::setSection( $opt_name, array(
        'title'         => esc_html__( 'Third Widget Area', $xisen_textdomain ),
        'id'            => 'xisen_footer_third',
        // 'icon'       => 'el el-random',
        'subsection'    => true,
        'fields' => array(
            array(
                'id'        =>  'footer_third_widget_title',
                'type'      =>  'text',
                'title'     =>  __('Title', $xisen_textdomain),
            ),
        )
    ) );

    Redux::setSection( $opt_name, array(
        'title'         => esc_html__( 'Fourth Widget Area', $xisen_textdomain ),
        'id'            => 'xisen_footer_fourth',
        // 'icon'       => 'el el-random',
        'subsection'    => true,
        'fields' => array(
            array(
                'id'        =>  'footer_fourth_widget_title',
                'type'      =>  'text',
                'title'     =>  __('Title', $xisen_textdomain),
            ),
        )
    ) );

    Redux::setSection( $opt_name, array(
        'title'         => esc_html__( 'Fifth Widget Area', $xisen_textdomain ),
        'id'            => 'xisen_footer_fifth',
        // 'icon'       => 'el el-random',
        'subsection'    => true,
        'fields' => array(
            array(
                'id'        =>  'footer_fifth_widget_title',
                'type'      =>  'text',
                'title'     =>  __('Title', $xisen_textdomain),
            ),
        )
    ) );

    Redux::setSection( $opt_name, array(
        'title'         => esc_html__( 'Copyright', $xisen_textdomain ),
        'id'            => 'xisen_footer_copyright',
        // 'icon'       => 'el el-random',
        'subsection'    => true,
        'fields' => array(
            array(
                'id'                =>  'footer_copyright',
                'type'              =>  'editor',
                'title'             =>  __('Copyright', $xisen_textdomain),
            ),
        )
    ) );