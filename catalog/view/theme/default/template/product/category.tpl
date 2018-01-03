<?php echo $header; ?>
  	<!-- Category -->
	<section class="category">
		<div class="container">
			<div id="content"><?php echo $content_top; ?>
			<div class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
				<?php } ?>
			</div>
			<h1><?php echo $heading_title; ?></h1>
				<?php if ($thumb || $description) { ?>
				<div class="category-info">
				<?php if ($thumb) { ?>
					<div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
						<?php } ?>
						<?php if ($description) { ?>
						<?php echo $description; ?>
						<?php } ?>
					</div>
				<?php } ?>
		    <?php if ($categories) { ?>
			<div class="row">
				<div class="category-list">
				<?php foreach ($categories as $category) { ?>
					<div class="col-lg-3 col-md-4 col-sm-6">
						<div class="category-item">
							<a href="<?php echo $category['href']; ?>"  class="category-item_link"></a>
							<div class="category-item_image">
							<img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>">
							</div>
						<span class="category-item_title"><?php echo $category['name']; ?></span>
						</div>
					</div>
				<?php } ?>
				</div>
			</div>
			<?php } ?>
			  

  
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
 </div>
 </div> 
	
	
	
	
	</section>
	
	<!-- Discount Items -->
	<section class="discounts">
		<div class="container">
			<div class="section-title">
				<h2 class="title"><?php echo $heading_title; ?></h2>
				<div class="section-paginator hidden-xs">
					<a href="#" class="link section-link">Посмотреть все</a>
					<div class="paginator-list">
						<button class="paginator-item">
							<span class="icon">
								<svg>
									<use xlink:href="#icon_arwleft"></use>
								</svg>
							</span>
						</button>
						<button class="paginator-item">
							<span class="icon">
								<svg>
									<use xlink:href="#icon_arwright"></use>
								</svg>
							</span>
						</button>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="slider-items">
					<!-- product-item -->
					<?php foreach ($products as $product) { ?>
					<div class="col-lg-3 col-md-4 col-sm-6">
						<article class="product-item">
							<div class="product-image">
								<span class="product-label product-label_discount">
									<span class="product-label-price">-1007
										<span class="product-label-price-currancy">грн</span>
									</span>
									<span class="product-label-descr">до 14.09.2017</span>
								</span>
								<span class="product-color">
									<span style="background-color: #06f64c"></span>
									<span style="background-color: #019cf8"></span>
									<span style="background-color: #fc4b19"></span>
								</span>
								<a href="<?php echo $product['href']; ?>" class="product-image-link">
								     <?php if ($product['thumb']) { ?>
										<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
									 <?php } ?>	
								</a>
							</div>
							<div class="product-text">
								<h3 class="product-title">
									<a href="#" class="product-title-link"><?php echo $product['name']; ?></a>
								</h3>
								<span class="product-brand">Dorozhnik</span>
							</div>
							<div class="product-info">
								<div class="product-price">
									<span class="product-price_old"><?php echo $product['price']; ?></span>
									<span class="product-price_new"><?php echo $product['special']; ?> </span>
								</div>
								<div class="product-buy">
								
								<a  href="#addtocart" class="btn btn_act btn_purchase popup-btn">
															<span class="btn-icon">
																<span class="icon">
																	<svg>
																		<use xlink:href="#icon_cart"></use>
																		
																	</svg>
																</span>
															</span>
															<span class="btn-text"><?php echo $button_cart; ?></span>
	
														</a>
									<!--a href="#" class="btn btn_in-cart">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_cart"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text"><div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div></span>
									</a-->
								</div>
							</div>
							<div class="product-act">
								<a href="#" class="product-act-link">
									<span class="btn-icon">
										<span class="icon">
											<svg>
												<use xlink:href="#icon_favourite"></use>
											</svg>
										</span>
									</span>
									<span class="btn-text">В избранных</span>
								</a>
								<a href="#" class="product-act-link">
									<span class="btn-icon">
										<span class="icon">
											<svg>
												<use xlink:href="#icon_compare"></use>
											</svg>
										</span>
									</span>
									<span class="btn-text">Добавить к сравнению</span>
								</a>
							</div>
						</article>
					</div>
					
				  <?php } ?>	
				</div>
			</div>
		</div>
	</section>
	
	
 <?php echo $content_bottom; ?>
	
	
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';
						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 
<?php echo $footer; ?>