<?php echo $header; ?>

 
	<!-- Item Content -->
	<div class="page-content">
		<div class="container">
			<main class="content">
				<div class="item-title">
				
				  <div class="breadcrumb">
				
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
				
					<h1 class="title main-title"><?php echo $heading_title; ?></h1>
					<div class="item-addition">
						<div class="item-addition-article"><?php echo $text_model; ?>				
							<span class="item-addition-article-number"><?php echo $model; ?></span>
						</div>
						<div class="item-addition-rating">
							<ul class="rating">
								<li class="rating-list">
									<span class="icon icon_rating icon_rating-fill">
										<svg>
											<use xlink:href="#icon_star"></use>
										</svg>
									</span>
								</li>
								<li class="rating-list">
									<span class="icon icon_rating icon_rating-fill">
										<svg>
											<use xlink:href="#icon_star"></use>
										</svg>
									</span>
								</li>
								<li class="rating-list">
									<span class="icon icon_rating icon_rating-fill">
										<svg>
											<use xlink:href="#icon_star"></use>
										</svg>
									</span>
								</li>
								<li class="rating-list">
									<span class="icon icon_rating icon_rating-fill">
										<svg>
											<use xlink:href="#icon_star"></use>
										</svg>
									</span>
								</li>
								<li class="rating-list">
									<span class="icon icon_rating">
										<svg>
											<use xlink:href="#icon_star"></use>
										</svg>
									</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="item-content">
					<div class="row">

						<div class="col-lg-9">
							<!-- item top -->
							<div class="item-top">
								<div class="row">
									<!-- item photo -->
									
									
									
									
									  <?php if ($thumb || $images) { ?>
									
									<div class="col-lg-7 col-md-6 col-sm-6">
										
										
										  
    
      <?php if ($thumb) { ?>
		<div class="item-photo"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="item-photo-image" /></a></div>
      <?php } ?>
	  
	  
	  
      <?php if ($images) { ?>
	  	<!-- item photo mini -->
										<ul class="popup-gallery item-photo-items">
      
        <?php foreach ($images as $image) { ?>
		<li class="item-photo-item">
        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $image['thumb']; ?>" class="item-photo-link_min" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
        </li>
		<?php } ?>
      
	  </ul>
	  
      <?php } ?>
  
									</div>
									
									<?php } ?>
									<!-- item information -->
									<div class="col-lg-5 col-md-6 col-sm-6">
										<div class="item-info">
											<!-- size and color -->
											<div class="item-info-type">
												<div class="row">
													<!-- size -->
													<div class="col-md-6 col-sm-6">
														<span class="info-type-label"><?php echo $text_option; ?>:</span>
														<!-- select -->
														<div class="select-wrap select-size">
															<?php foreach ($options as $option) { ?>
																<?php if ($option['type'] == 'select') { ?>
																<div id="option-<?php echo $option['product_option_id']; ?>" class="select-wrap select-size">
																<?php if ($option['required']) { ?>
																<?php } ?>
																<select id="item-size" name="option[<?php echo $option['product_option_id']; ?>]" class="input input_select">
																	<option value=""><?php echo $text_select; ?></option>
																	<?php foreach ($option['option_value'] as $option_value) { ?>
																	<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
																	<?php if ($option_value['price']) { ?>
																	(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
																	<?php } ?>
																	</option>
																	<?php } ?>
																</select>
														</div>
														<br />
																<?php } ?>	
															<?php } ?>	
													</div>											
													</div>
													
													
													
													
													
													<!-- color -->
													<div class="col-md-6 col-sm-6">
														<span class="info-type-label">Цвет:</span>
														<span class="info-type-color">
															<span style="background-color: #06f64c"></span>
															<span style="background-color: #019cf8"></span>
															<span style="background-color: #fc4b19"></span>
														</span>
													</div>
												</div>
											</div>
											<!-- price -->
											<div class="item-info-price">
												<div class="row">
													<div class="col-md-6 col-sm-6">
														<!-- price bonus -->
														<div class="info-price-bonus-wrap">

		
														
															<span class="info-price-bonus-sum"> <?php echo $reward; ?><span class="info-price-bonus-currancy">грн</span>
															</span>
															<span class="info-price-bonus-descr"><?php echo $text_reward; ?> до 14.09.2017</span>
															<span class="info-price-bonus-descr"><?php echo $text_stock; ?> <?php echo $stock; ?></span>
															
															
														</div>
													</div>
													<div class="col-md-6 col-sm-6">
														<!-- item price -->
														
														<div class="info-price-wrap">
															   <?php if (!$special) { ?>
															   <?php } else { ?>
																	<span class="info-price"><?php echo $special; ?></span>
																	<span class="info-price-old"><?php echo $price; ?></span>												
															   <?php } ?>
														</div>
													</div>
												</div>
											</div>
											<!-- purchase form-->
											<div class="item-info-purchase">
												<form action="" method="" class="item-purchase">
													<div class="row">
														<!-- amount -->
														<div class="col-md-6 col-sm-6">
															<div class="info-purchase-count">
																<button class="input_control input_minus">
																	<span class="icon icon_control">
																		<svg>
																			<use xlink:href="#icon_minus"></use>
																		</svg>
																	</span>
																</button>

																<input type="text" class="input input_count" value="<?php echo $minimum; ?>">

																<button class="input_control input_plus">
																	<span class="icon icon_control">
																		<svg>
																			<use xlink:href="#icon_plus"></use>
																		</svg>
																	</span>
																</button>
															</div>
														</div>
														<!-- button -->
											
														
														<div class="col-md-6 col-sm-6">
															<button type="submit" class="btn btn_act btn_purchase">
																<span class="btn-icon">
																	<span class="icon">
																		<svg>
																			<use xlink:href="#icon_cart"></use>
																		</svg>
																	</span>
																</span>
																<span class="btn-text"><?php echo $button_cart; ?></span>
															</button>
														</div>
													</div>
												</form>
											</div>
											<!-- actions -->
											<div class="item-info-actions">
												<div class="row">
													<!-- add to fav and compare -->
													<div class="col-md-6 col-sm-6">
														<div class="info-actions-wrap">
															<a href="#" class="info-actions-link">
																<span class="btn-icon">
																	<span class="icon">
																		<svg>
																			<use xlink:href="#icon_favourite"></use>
																		</svg>
																	</span>
																</span>
																<span class="btn-text">В избранные</span>
															</a>
															<a href="#" class="info-actions-link">
																<span class="btn-icon">
																	<span class="icon">
																		<svg>
																			<use xlink:href="#icon_compare"></use>
																		</svg>
																	</span>
																</span>
																<span class="btn-text">К сравнению</span>
															</a>
														</div>
													</div>
													<!-- one click cta -->
													<div class="col-md-6 col-sm-6">
														<div class="item-info-oneclick">
															<a href="#" class="link info-oneclick-link">Купить в 1 клик</a>
														</div>
													</div>
												</div>
											</div>
											<!-- item bonus -->
											<div class="item-info-bonus">
												<div class="info-bonus-title">
													<span class="btn-icon">
														<span class="icon">
															<svg>
																<use xlink:href="#icon_gift"></use>
															</svg>
														</span>
													</span>
													<span class="info-bonus-text">Специальное предложение</span>
												</div>
												<p class="info-bonus-descr">При покупке велосипеда — в подарок замок!</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- item tabs -->
  <div id="tabs" class="htabs"><a href="#tab-description"><?php echo $tab_description; ?></a>
    <?php if ($attribute_groups) { ?>
    <a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
    <?php } ?>
    <?php if ($review_status) { ?>
    <a href="#tab-review"><?php echo $tab_review; ?></a>
    <?php } ?>
    <?php if ($products) { ?>
    <a href="#tab-related"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a>
    <?php } ?>
  </div>
  <div id="tab-description" class="tab-content"><?php echo $description; ?></div>
  <?php if ($attribute_groups) { ?>
  <div id="tab-attribute" class="tab-content">
    <table class="attribute">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
          <td><?php echo $attribute['name']; ?></td>
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
  
  
  <?php if ($review_status) { ?>
  <div id="tab-review" class="tab-content">
    <div id="review"></div>
    <h2 id="review-title"><?php echo $text_write; ?></h2>
    <b><?php echo $entry_name; ?></b><br />
    <input type="text" name="name" value="" />
    <br />
    <br />
    <b><?php echo $entry_review; ?></b>
    <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
    <br />
    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
    <input type="radio" name="rating" value="1" />
    &nbsp;
    <input type="radio" name="rating" value="2" />
    &nbsp;
    <input type="radio" name="rating" value="3" />
    &nbsp;
    <input type="radio" name="rating" value="4" />
    &nbsp;
    <input type="radio" name="rating" value="5" />
    &nbsp;<span><?php echo $entry_good; ?></span><br />
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="" />
    <br />
    <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
    <br />
    <div class="buttons">
      <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
    </div>
  </div>
  <?php } ?>
  <?php if ($products) { ?>
  <div id="tab-related" class="tab-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
		
		
		
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><?php echo $button_cart; ?></a></div>
     


	 <?php } ?>
	  
	  
	  
    </div>
  </div>
  <?php } ?>
  <?php if ($tags) { ?>
  <div class="tags"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
  
								</div>
							</div>
						</div>

						<!-- item aside -->

					</div>
				</div>
			</main>
		</div>
	</div>
  
  
  
  
  
 
  
  
  
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 
<?php echo $footer; ?>