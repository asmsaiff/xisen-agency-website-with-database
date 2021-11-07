<?php
    // Miscellaneous Page
    Redux::setSection( $opt_name, array(
        'title'  => esc_html__( 'Header', $xisen_textdomain ),
        'id'     => 'xisen_header_area',
        'icon'   => 'el el-th-large',
        'fields' => array(
            array(
                'id'    => 'info_success',
                'type'  => 'info',
                'style' => 'success',
                'title' => __('Header', $xisen_textdomain),
            ),

            array(
                'id'    => 'button_label',
                'type'  => 'text',
                'title' => __('Label', $xisen_textdomain),
                'desc'  =>  __('Right Side Button Label', $xisen_textdomain)
            ),

            array(
                'id'    => 'button_url',
                'type'  => 'text',
                'title' => __('Link', $xisen_textdomain),
                'desc'  =>  __('Right Side Button Link', $xisen_textdomain)
            ),
        )
    ) );