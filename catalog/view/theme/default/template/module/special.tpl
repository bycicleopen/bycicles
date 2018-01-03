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

