<section class="popup" style="display: none;">
		<div id="addtocart" class="modal modal-big modal-cart">
		
		
			<h3 class="title modal-title"><?php echo $heading_title; ?></h3>

			<!-- show added items -->
			<div class="cart-items-wrap">
			<!-- show added items -->
			 <?php if ($products || $vouchers) { ?>
			 <h4><?php echo $text_items; ?></h4>
				<div class="mini-titles hidden-xs">
					<div class="row min">
					
						<div class="col-sm-7"><span>Название товара</span></div>
						<div class="col-sm-3 text-center"><span>Количество</span></div>
						<div class="col-sm-2 text-right"><span>Сума</span></div>
					</div>
				</div>
				
				
				
				<!-- item in cart -->
				<?php foreach ($products as $product) { ?>
				<div class="cart-item">
					<div class="row min">
						<!-- item info -->
						<div class="col-sm-7">
							<div class="cart-item-content">
								<?php if ($product['thumb']) { ?>
								<div class="cart-item-img">
								 
									<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"/></a>
								</div>
								<?php } ?>
								<div class="cart-item-text">
									<a href="#" class="cart-item-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></a>
									<span class="cart-item-price-wrap">
										<span class="cart-item-price"><?php echo $product['total']; ?></span>
										<span class="cart-item-price_old">3324 грн</span>
									</span>
								</div>

							</div>
						</div>

						<!-- item quantity -->
						<div class="col-sm-3 col-xs-6">
							<div class="cart-item-count">
								<form class="form-counter">
									<button class="input_control input_minus">
										<span class="icon icon_control">
											<svg>
												<use xlink:href="#icon_minus"></use>
											</svg>
										</span>
									</button>

									<input type="text" class="input input_count" value="<?php echo $product['quantity']; ?>">

									<button class="input_control input_plus">
										<span class="icon icon_control">
											<svg>
												<use xlink:href="#icon_plus"></use>
											</svg>
										</span>
									</button>
								</form>
							</div>				
						</div>
							
						<!-- item sum -->
						<div class="col-sm-2 col-xs-6">
							<div class="cart-item-sum">
								<span class="cart-item-sum-text"><?php echo $product['total']; ?></span>
							</div>							
						</div>
					
					<!-- item delete button -->
					<!--button class="delete-item" title="Удалить"-->
					<img src="catalog/view/theme/default/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" />
						<!--span class="icon">
							<svg>
								<use xlink:href="#icon_cross"></use>
							</svg>
						</span-->
					</button>

					</div>
				</div>
				<?php } ?>

				
				
				
				
				
				<!-- total sum -->
				<div class="cart-total-wrap">
				<?php foreach ($totals as $total) { ?>
					<span class="cart-total-text"><b><?php echo $total['title']; ?>:</b><?php echo $total['text']; ?></span>
				<?php } ?>
				
				
	               
				
				
				
				</div>
				
				
				

				<!-- Action Buttons -->
				<div class="row min">
					<div class="col-sm-6">
						<div class="modal-btn">
					
							<a href="javascript:void(0);" class="btn btn_default popup-close">Продолжить покупки</a>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="modal-btn text-right">
							<a href="#order" class="btn btn_act popup-btn">Оформить заказ</a>
						</div>
					</div>
				</div>
				
								<?php } else { ?>
				
									

			<!-- show when the catr is empty -->
			<h2 class="title modal-title"><?php echo $text_empty; ?></h2>
			    <div class="row min">
					<div class="col-sm-6">
						<div class="modal-btn">					
							<a href="javascript:void(0);" class="btn btn_default popup-close">В магазин</a>
						</div>
					</div>

				</div>
				
				<?php } ?>
	
				
				
				
			</div>
		</div>
		</section>