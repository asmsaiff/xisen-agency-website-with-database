
<?php

add_shortcode('portfolio','mamurjor_portfolioshortcode' );
    if(!function_exists('mamurjor_portfolioshortcode')){
        function mamurjor_portfolioshortcode(){
            ob_start();
    ?>

    <div class="controls">
        <button type="button" class="control" data-filter="all"><?php echo  esc_html('All','mamurjor-portfolio');?></button>
                
        <?php
            $terms = get_terms( array(
                'taxonomy' => 'category',
                'hide_empty'=> 1,
                'orderby' => 'name',
                'order' => 'ASC'
            ) );
    
            foreach($terms as $category) {   
        ?>
        <button type="button" class="control" data-filter=".<?php echo $category->slug;?>"><?php echo $category->name;?></button>
                
        <?php 
            }
        ?>
    </div>

    <div class="container">
        <div class="row">
            <?php
                foreach($terms as $category) { 
                    $the_query = new WP_Query(array(
                        'post_type' => 'mj_portfolio',
                        'posts_per_page' => 100,
                        'category_name' => $category->slug
                    ));

                    while ( $the_query->have_posts() ) : 
                    $the_query->the_post(); 
            ?>
                
        <div class="col-md-6 mix <?php echo $category->slug;?>">
            <h1><?php the_title(); the_post_thumbnail();?></h1>
        </div>
                
        <?php
                endwhile; 
            }     
        ?>
    </div>
</div>

<script>
    var containerEl = document.querySelector('.container');

    var mixer = mixitup(containerEl);
</script>
<?php     
    return ob_get_clean();
        }
    }
?>
  