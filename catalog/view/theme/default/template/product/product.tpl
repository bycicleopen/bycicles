<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ul class="breadcrumbs-items">
			
			<?php $i = 1; $j = count($breadcrumbs) ?>
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<?php if($i!=$j) {?>
				<li class="breadcrumbs-item">				
						<a href="<?php echo $breadcrumb['href']; ?>" class="link breadcrumbs-link"><?php echo $breadcrumb['text']; ?></a>
						<?php $i++ ?>
					
					<span class="breadcrumbs-link_next">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_crumbarr"></use>
							</svg>
						</span>
					</span>
				</li>	
				<?php } ?>
			<?php } ?>

				<li class="breadcrumbs-item"><?php echo $heading_title; ?>
					<span class="breadcrumbs-link_next">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_crumbarr"></use>
							</svg>
						</span>
					</span>
				</li>
			</ul>
		</div>
	</div>

	<!-- Item Content -->
	<div class="page-content">
		<div class="container">
			<main class="content">
			<?php if ($thumb || $images) { ?>
				<div class="item-title">
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
									<div class="col-lg-7 col-md-6 col-sm-6">
										<div class="item-photo">
										
								               <?php if ($thumb) { ?> 		
												<img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" class="item-photo-image">
											   <?php } ?>
											
										</div>
										<!-- item photo mini -->
										<ul class="popup-gallery item-photo-items">
										
										
										      <?php if ($images) { ?>
 
        <?php foreach ($images as $image) { ?>
											<li class="item-photo-item">
												<a href="<?php echo $image['popup']; ?>" class="item-photo-link_min">
													<img src="<?php echo $image['thumb']; ?>" alt="<?php echo $heading_title; ?>" class="item-photo-image_min">
												</a>
											</li>		
      <?php } ?>
	   <?php } ?>
										
			
										</ul>
									</div>
									<!-- item information -->
									<div class="col-lg-5 col-md-6 col-sm-6">
										<div class="item-info">
											<!-- size and color -->
											<div class="item-info-type">
												<div class="row">
													<!-- size -->
													<div class="col-md-6 col-sm-6">
														<span class="info-type-label">Размер рамы:</span>
														<!-- select -->
														<div class="select-wrap select-size">
															<select id="item-size" name="size" class="input input_select">
																<option value="150">150-165 (15-16.5)</option>
																<option value="165">165-180 (17-18.5)</option>
																<option value="175">175-190 (19-20.5)</option>
															</select>
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
												    <?php if ($special) { ?>
													<div class="col-md-6 col-sm-6">
														<!-- price bonus -->
														<div class="info-price-bonus-wrap">
														
														
															<span class="info-price-bonus-sum">+<?php echo $benefit; ?><span class="info-price-bonus-currancy"></span>
															</span>
															<span class="info-price-bonus-descr">бонус до <?php echo $date_end; ?></span>
														</div>
													</div>
													<div class="col-md-6 col-sm-6">
														<!-- item price -->
														<div class="info-price-wrap">
														    
															<span class="info-price"><?php echo $special; ?></span>
															<span class="info-price-old"><?php echo $price; ?></span>
											
														</div>
													</div>					
													<?php } else{ ?>
													<div class="col-md-6 col-sm-6">
														<!-- price bonus -->
														<div class="info-price-bonus-wrap">
														
														</div>
													</div>
													<div class="col-md-6 col-sm-6">
														<!-- item price -->
														<div class="info-price-wrap">    
															<span class="info-price"><?php echo $price; ?></span>		
														</div>
													</div>
													
													<?php } ?>

												</div>
											</div>
											<!-- purchase form-->
											<div class="item-info-purchase">
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

															<input type="text" class="input input_count" value="1">

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
													</div>
												</div>
											</div>
											<!-- actions -->
											<div class="item-info-actions">
												<div class="row">
													<!-- add to fav and compare -->
													<div class="col-md-6 col-sm-6">
														<div class="info-actions-wrap">
															<a href="#addtofav" class="info-actions-link popup-btn">
																<span class="btn-icon">
																	<span class="icon">
																		<svg>
																			<use xlink:href="#icon_favourite"></use>
																		</svg>
																	</span>
																</span>
																<span class="btn-text">В избранные</span>
															</a>
															<a href="#addtocompare" class="info-actions-link popup-btn">
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
															<a href="#oneclick" class="link info-oneclick-link popup-btn">Купить в 1 клик</a>
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
							<div class="item-tabs">
								<nav class="tabs-nav">
									<ul class="tabs-items">
										<li class="tabs-item">
											<a href="#tab1" class="btn btn_default tabs-link is-active">
												<span class="btn-text"><?php echo $tab_attribute; ?></span>
											</a>
										</li>
										<li class="tabs-item">
											<a href="#tab2" class="btn btn_default tabs-link">
												<span class="btn-text"><?php echo $tab_description; ?></span>
											</a>
										</li>
										<li class="tabs-item">
											<a href="#tab3" class="btn btn_default tabs-link">
												<span class="btn-text"><?php echo $tab_review; ?></span>
											</a>
										</li>
									</ul>
								</nav>
								<!-- tabs content -->
								<div class="tabs-content-wrap">
									<div id="tab1" class="tabs-content is-active">
										<div class="tab-table-wrap">
										
										
										  


										
										
										    <?php if ($attribute_groups) { ?>
											<table class="tab-table">
												<tbody class="tab-table-body">
												<?php foreach ($attribute_groups as $attribute_group) { ?>
											         <tr>
												        <td colspan="2"><?php echo $attribute_group['name']; ?></td>
													 </tr>
												
												            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
																<tr>
																	<td class="tab-table-property"><?php echo $attribute['name']; ?></td>
																	<td><?php echo $attribute['text']; ?></td>
																</tr>
															<?php } ?>
												
												
	
												<?php } ?>
												</tbody>
										    
											</table>
											<?php } ?>
											
											
											
										</div>
									</div>
									<div id="tab2" class="tabs-content">
										<div class="tab-description">
										    <p><?php echo $description ."descr"; ?></p>
										</div>
									</div>
									
									<div id="tab3" class="tabs-content">
										<div class="tab-coments-wrap">
										
										      <?php if ($review_status) { ?>
      <div class="review">
        <div><img src="catalog/view/theme/default/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>
        <div class="share"><!-- AddThis Button BEGIN -->
          <script type="text/javascript" src="http://yraaa.ru/share/share_16x16.d3sn"></script>
		  <style type="text/css">#hidden_tags {display:none}</style>
          <!-- AddThis Button END --> 
        </div>
      </div>
      <?php } ?>
										
											<!-- comments -->
											<div class="tab-coments">
												<!-- coment item -->
												<div class="tab-coments-item">
													<div class="coments-item-title">
														<span class="coments-item-title-name">Анатолий</span>
														<div class="coments-item-info">
															<span class="coments-item-date">02 марта 2016</span>
															<div class="coments-item-rating">
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
																		<span class="icon icon_rating icon_rating-fill">
																			<svg>
																				<use xlink:href="#icon_star"></use>
																			</svg>
																		</span>
																	</li>
																</ul>
															</div>
														</div>
													</div>
													<p class="text coments-item-text">Горный велосипед для взрослых. Данная модель стала компромиссом среди любителей найнеров и фанатов колёс шириной 26 дюймов. Большие колёса легкие и в то же время прочные.</p>
												</div>
												<!-- coment item -->
												<div class="tab-coments-item">
													<div class="coments-item-title">
														<span class="coments-item-title-name">Дмитрий</span>
														<div class="coments-item-info">
															<span class="coments-item-date">15 сентября 2017</span>
															<div class="coments-item-rating">
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
																		<span class="icon icon_rating">
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
													<p class="text coments-item-text">Благодарен за модель навигатор. Полностью соответствует описанию на сайте. Выполнили заказ должным образом! Все на высшем уровне. Всем друзьям буду рекомендовать этот интернет магазин!</p>
												</div>
												<!-- coment item -->
												<div class="tab-coments-item">
													<div class="coments-item-title">
														<span class="coments-item-title-name">Владислав</span>
														<div class="coments-item-info">
															<span class="coments-item-date">23 октября 2017</span>
															<div class="coments-item-rating">
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
													<p class="text coments-item-text">Подскажите пожалуйста, а оплачивать товар когда он пришел или нужна предоплата за велосипед или платить нужно сразу полную стоимость?</p>
												</div>
											</div>
											<!-- form comments -->
											<div class="tab-coments-form">
												<form action="" method="" class="ajax-form">
													<h5 class="title coments-form-title">Написать отзыв</h5>
													<div class="coment-form-row">
														<div class="row min">
															<div class="col-sm-4">
																<input type="text" name="name" class="input input_order" placeholder="Имя" required>
															</div>
															<div class="col-sm-4">
																<input type="email" name="email" class="input input_order" placeholder="Email" required>
															</div>
															<div class="col-sm-4">
																<!-- select -->
																<div class="select-wrap select-rating">
																	<select id="select-rating" name="rating" class="input input_select" required>
																		<option selected>Оценка</option>
																		<option value="1">Плохо</option>
																		<option value="2">Приемлемо</option>
																		<option value="1">Средне</option>
																		<option value="2">Хорошо</option>
																		<option value="2">Отлично</option>
																	</select>
																</div>
															</div>
														</div>
													</div>
													<div class="coment-form-row">
														<div class="row min">
															<div class="col-sm-12">
																<!-- textarea -->
																<textarea id="coment-msg" placeholder="Ваш отзыв" name="comment" class="input input_area input_textarea"></textarea>
															</div>
														</div>
													</div>
													<!-- send button -->
													<div class="coment-form-send">
														<input type="submit" name="order" class="btn btn_act btn_send" value="Отправить">
														<span class="modal-text_small">* - поля, обязательные для заполнения</span>
													</div>

												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- item aside -->
						<div class="col-lg-3 visible-lg">
							<aside class="aside">
								<div class="item-aside-wrap">
									<!-- delivery -->
									<div class="item-aside">
										<h6 class="title item-aside-title">
											<span class="btn-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_delivery"></use>
													</svg>
												</span>
											</span>
											<span class="item-aside-title-text">Доставка</span>
										</h6>
										<ul class="marked">
											<li class="marked-list marked-list_mini">
												<p>бесплатная доставка всех велосипедов по Украине</p>
											</li>
										</ul>
									</div>
									<!-- payment -->
									<div class="item-aside">
										<h6 class="title item-aside-title">
											<span class="btn-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_payment"></use>
													</svg>
												</span>
											</span>
											<span class="item-aside-title-text">Оплата</span>
										</h6>
										<ul class="marked">
											<li class="marked-list marked-list_mini">
												<p>полная предоплата</p>
											</li>
											<li class="marked-list marked-list_mini">
												<p>наложеный платеж (2% комиссия)</p>
											</li>
										</ul>
									</div>
									<!-- garantee -->
									<div class="item-aside">
										<h6 class="title item-aside-title">
											<span class="btn-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_service"></use>
													</svg>
												</span>
											</span>
											<span class="item-aside-title-text">Гарантия</span>
										</h6>
										<ul class="marked">
											<li class="marked-list marked-list_mini">
												<p>6 месяцев на оборудование официальной гарантии от производителя</p>
											</li>
											<li class="marked-list marked-list_mini">
												<p>60 месяцев на раму</p>
											</li>
											<li class="marked-list marked-list_mini">
												<p>обмен/возврат товара в течении 14 дней</p>
											</li>
										</ul>
									</div>
								</div>
								<div class="similar">
									<h4 class="title similar-title">Похожие товары</h4>
									<article class="similar-item">
										<div class="similar-item-image">
											<a href="#" class="similar-item-image-link">
												<img src="images/similar/item-1.jpg" alt="Spark DD 29 2017">
											</a>
										</div>
										<div class="similar-item-content">
											<h3 class="similar-item-title">
												<a href="#" class="similar-item-link">Spark DD 29" 2017</a>
											</h3>
											<div class="similar-item-price-wrap">
												<span class="similar-item-price">8320 грн</span>
												<span class="similar-item-price_old">10313 грн</span>
											</div>
										</div>
									</article>
									<article class="similar-item">
										<div class="similar-item-image">
											<a href="#" class="similar-item-image-link">
												<img src="images/similar/item-2.jpg" alt="Vision Planetary Hub 26 2016">
											</a>
										</div>
										<div class="similar-item-content">
											<h3 class="similar-item-title">
												<a href="#" class="similar-item-link">Vision Planetary Hub 26" 2016</a>
											</h3>
											<div class="similar-item-price-wrap">
												<span class="similar-item-price">6573 грн</span>
												<span class="similar-item-price_old">5990 грн</span>
											</div>
										</div>
									</article>
									<article class="similar-item">
										<div class="similar-item-image">
											<a href="#" class="similar-item-image-link">
												<img src="images/similar/item-3.jpg" alt="Urban 28 2017">
											</a>
										</div>
										<div class="similar-item-content">
											<h3 class="similar-item-title">
												<a href="#" class="similar-item-link">Urban 28" 2017</a>
											</h3>
											<div class="similar-item-price-wrap">
												<span class="similar-item-price">3290 грн</span>
											</div>
										</div>
									</article>
									<article class="similar-item">
										<div class="similar-item-image">
											<a href="#" class="similar-item-image-link">
												<img src="images/similar/item-4.jpg" alt="Comfort Female Planetary Hub 28 2017">
											</a>
										</div>
										<div class="similar-item-content">
											<h3 class="similar-item-title">
												<a href="#" class="similar-item-link">Comfort Female Planetary Hub 28" 2017</a>
											</h3>
											<div class="similar-item-price-wrap">
												<span class="similar-item-price">5175 грн</span>
												<span class="similar-item-price_old">5440 грн</span>
											</div>
										</div>
									</article>
									<article class="similar-item">
										<div class="similar-item-image">
											<a href="#" class="similar-item-image-link">
												<img src="images/similar/item-5.jpg" alt="Smart 20 2017">
											</a>
										</div>
										<div class="similar-item-content">
											<h3 class="similar-item-title">
												<a href="#" class="similar-item-link">Smart 20" 2017</a>
											</h3>
											<div class="similar-item-price-wrap">
												<span class="similar-item-price">3211 грн</span>
											</div>
										</div>
									</article>
								</div>
							</aside>
						</div>
					</div>
				</div>
		    <?php } ?>
			</main>
	        <?php echo $content_bottom; ?></div>


		</div>
	</div>



	<!-- Navbar -->
	<div id="navbar" class="nav navbar">
		<div class="container">
			
				<div class="navbar-logo-wrap">
					<a href="/" class="navbar-logo">
						<picture>
							<img src="images/logo-small.svg" alt="ВЕЛОСКЛАД">
						</picture>
					</a>
				</div>
		
				<div class="nav-wrap navbar-wrap">
					<a href="#" class="nav-link nav-link_navbar link-discount link-discount_navbar">
						<span class="btn-icon">
							<span class="icon">
								<svg>
									<use xlink:href="#icon_discount"></use>
								</svg>
							</span>
						</span>
						<span class="btn-text">Скидки</span>
					</a>
					<nav class="nav-list">
						<menu class="nav-items nav-items_navbar">
							<li class="nav-item">
								<a href="#" class="nav-link">
								<span>Велосипеды</span>
								</a>
								<ul class="nav-items_sub">
									<li class="nav-item_sub"><a href="#" class="nav-link_sub">Багажники</a></li>
									<li class="nav-item_sub"><a href="#" class="nav-link_sub">Держатели телефонов</a></li>
									<li class="nav-item_sub"><a href="#" class="nav-link_sub">Звонки</a></li>
									<li class="nav-item_sub"><a href="#" class="nav-link_sub last-link">Все товары</a></li>
								</ul>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link nav-link_navbar">
									<span>Аксесуары</span>
								</a>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link nav-link_navbar">
									<span>Запчасти</span>
								</a>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link nav-link_navbar">
									<span>Инструменты и ремонт</span>
								</a>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link nav-link_navbar">
									<span>Экипировка</span>
								</a>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link nav-link_navbar">
									<span>Активный отдых</span>
								</a>
							</li>
						</menu>
					</nav>
				</div>

				<div class="navbar-user-wrap">
					<ul class="navbar-user">
						<li class="navbar-user_item">
							<a href="#" class="navbar-user_link">
								<span class="icon">
									<svg>
										<use xlink:href="#icon_favourite"></use>
									</svg>
								</span>
								<span class="add-count add-count_favourite" data-value="19"></span>
							</a>
						</li>
						<li class="navbar-user_item">
							<a href="#" class="navbar-user_link">
								<span class="icon">
									<svg>
										<use xlink:href="#icon_compare"></use>
									</svg>
								</span>
								<span class="add-count add-count_compare" data-value="7"></span>
								<span class="count">7</span>
							</a>
						</li>
						<li class="navbar-user_item">
							<a href="#addtocart" class="navbar-user_link popup-btn">
								<span class="icon">
									<svg>
										<use xlink:href="#icon_cart"></use>
									</svg>
								</span>
								<span class="add-count add-count_cart" data-value="3"></span>
							</a>
						</li>
					</ul>
				</div>
				
		</div>
	</div>

	

	
<!--Old scripts>
 
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

<!--/Olds cripts>	
	
	
	
	
	<?php echo $footer; ?>