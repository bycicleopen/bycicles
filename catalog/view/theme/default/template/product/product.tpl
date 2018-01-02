<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>

	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ul class="breadcrumbs-items">	
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li class="breadcrumbs-item">
					<a href="<?php echo $breadcrumb['href']; ?>" class="link breadcrumbs-link"><?php echo $breadcrumb['text']; ?></a>
					<span class="breadcrumbs-link_next">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_crumbarr"></use>
							</svg>
						</span>
					</span>
				</li>	
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
														<a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn btn_act btn_purchase popup-btn">
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
												<span class="btn-text">Характеристики</span>
											</a>
										</li>
										<li class="tabs-item">
											<a href="#tab2" class="btn btn_default tabs-link">
												<span class="btn-text">Описание</span>
											</a>
										</li>
										<li class="tabs-item">
											<a href="#tab3" class="btn btn_default tabs-link">
												<span class="btn-text">Отзывы</span>
											</a>
										</li>
									</ul>
								</nav>
								<!-- tabs content -->
								<div class="tabs-content-wrap">
									<div id="tab1" class="tabs-content is-active">
										<div class="tab-table-wrap">
										
										
										  
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
      
    </table>
	
	
  </div>

										
										
										    <?php if ($attribute_groups) { ?>
											<table class="tab-table">
												<tbody class="tab-table-body">
												<?php foreach ($attribute_groups as $attribute_group) { ?>
											         <tr>
												        <td colspan="2"><?php echo $attribute_group['name']; ?></td>
													 </tr>
												
												
													<tr>
														<td class="tab-table-property">Рама</td>
														<td>Алюминий</td>
													</tr>
													<tr>
														<td class="tab-table-property">Вилка</td>
														<td>SR Suntour XCR, масляно-пружинная, ход 100мм</td>
													</tr>
													<tr>
														<td class="tab-table-property">Манетки</td>
														<td>Shimano Alivio, SL-M4000</td>
													</tr>
													<tr>
														<td class="tab-table-property">Тормоза</td>
														<td>Tektro Draco, гидравлический дисковый, ротор 180/160 мм</td>
													</tr>
													<tr>
														<td class="tab-table-property">Передний переключатель</td>
														<td>Shimano Alivio, FD-T4000</td>
													</tr>
													<tr>
														<td class="tab-table-property">Задний переключатель</td>
														<td>Shimano Alivio, RD-T4000</td>
													</tr>
													<tr>
														<td class="tab-table-property">Передняя втулка</td>
														<td>KT, алюминий</td>
													</tr>
													<tr>
														<td class="tab-table-property">Задняя втулка</td>
														<td>KT, алюминий</td>
													</tr>
													<tr>
														<td class="tab-table-property">Система</td>
														<td>Shimano, сталь 22/32/44T</td>
													</tr>
													<tr>
														<td class="tab-table-property">Каретка</td>
														<td>Shimano, картридж</td>
													</tr>
													<tr>
														<td class="tab-table-property">Кассета</td>
														<td>Shimano Altus, CS-HG40</td>
													</tr>
													<tr>
														<td class="tab-table-property">Педали</td>
														<td>алюминий/сталь</td>
													</tr>
													<tr>
														<td class="tab-table-property">Рулевая колонка</td>
														<td>Neco, алюминий/сталь</td>
													</tr>
													<tr>
														<td class="tab-table-property">Седло</td>
														<td>спортивное</td>
													</tr>
													<tr>
														<td class="tab-table-property">Обода</td>
														<td>Weinmann, алюминий, двойные</td>
													</tr>
													<tr>
														<td class="tab-table-property">Покрышки</td>
														<td>Chao Yang, 27.5</td>
													</tr>
													<tr>
														<td class="tab-table-property">Скорости</td>
														<td>21 (3*7)</td>
													</tr>
													<tr>
														<td class="tab-table-property">Вес</td>
														<td>15.5 кг</td>
													</tr>
													<tr>
														<td class="tab-table-property">Диаметр колес</td>
														<td>27.5 дюймов</td>
													</tr>
												<?php } ?>
												</tbody>
										    
											</table>
											<?php } ?>
											
											
											
										</div>
									</div>
									<div id="tab2" class="tabs-content">
										<div class="tab-description">
										    <p><?php echo $description; ?>."descr"</p>
										</div>
									</div>
									<div id="tab3" class="tabs-content">
										<div class="tab-coments-wrap">
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
			<section class="viewed">
				<div class="section-title">
					<h2 class="title">Просмотренные товары</h2>
					<div class="section-paginator hidden-xs">
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
						<div class="col-lg-3 col-md-4 col-sm-6">
							<article class="product-item">
								<div class="product-image">
									<span class="product-label product-label_bonus">
										<span class="product-label-price">+244
											<span class="product-label-price-currancy">грн</span>
										</span>
										<span class="product-label-descr">бонус до 14.09</span>
									</span>
									<span class="product-color">
										<span style="background-color: #06f64c"></span>
										<span style="background-color: #019cf8"></span>
										<span style="background-color: #fc4b19"></span>
									</span>
									<a href="#" class="product-image-link">
										<img src="images/popular/item-1.jpg" alt="Spark DD 29 2017">
									</a>
								</div>
								<div class="product-text">
									<h3 class="product-title">
										<a href="#" class="product-title-link">Spark DD 29" 2017</a>
									</h3>
									<span class="product-brand">Formula</span>
								</div>
								<div class="product-info">
									<div class="product-price">
										<span class="product-price_old">3324 грн</span>
										<span class="product-price_new">4873 грн</span>
									</div>
									<div class="product-buy">
										<a href="#addtocart" class="btn btn_act popup-btn">
											<span class="btn-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_cart"></use>
													</svg>
												</span>
											</span>
											<span class="btn-text">Купить</span>
										</a>
									</div>
								</div>
								<div class="product-act">
									<a href="#addtofav" class="product-act-link popup-btn">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_favourite"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">Добавить в избранные</span>
									</a>
									<a href="#addtocompare" class="product-act-link popup-btn">
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
						<!-- product-item -->
						<div class="col-lg-3 col-md-4 col-sm-6">
							<article class="product-item">
								<div class="product-image">
									<span class="product-label product-label_discount">
										<span class="product-label-price">-1749
											<span class="product-label-price-currancy">грн</span>
										</span>
										<span class="product-label-descr">до 14.09.2017</span>
									</span>
									<span class="product-color">
										<span style="background-color: #06f64c"></span>
										<span style="background-color: #019cf8"></span>
										<span style="background-color: #fc4b19"></span>
									</span>
									<a href="#" class="product-image-link">
										<img src="images/discount/item-2.jpg" alt="XC 80 27.5 2017">
									</a>
								</div>
								<div class="product-text">
									<h3 class="product-title">
										<a href="#" class="product-title-link">XC 80 27.5” 2017</a>
									</h3>
									<span class="product-brand">Leon</span>
								</div>
								<div class="product-info">
									<div class="product-price">
										<span class="product-price_old">9969 грн</span>
										<span class="product-price_new">8220 грн</span>
									</div>
									<div class="product-buy">
										<a href="#" class="btn btn_disabled">
											<span class="btn-text">Нет в наличии</span>
										</a>
									</div>
								</div>
								<div class="product-act">
									<a href="#addtofav" class="product-act-link popup-btn">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_favourite"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">Добавить в избранные</span>
									</a>
									<a href="#addtocompare" class="product-act-link popup-btn">
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
						<!-- product-item -->
						<div class="col-lg-3 col-md-4 col-sm-6">
							<article class="product-item">
								<div class="product-image">
									<span class="product-label product-label_discount">
										<span class="product-label-price">-621
											<span class="product-label-price-currancy">грн</span>
										</span>
										<span class="product-label-descr">до 14.09.2017</span>
									</span>
									<span class="product-color">
										<span style="background-color: #06f64c"></span>
										<span style="background-color: #019cf8"></span>
										<span style="background-color: #fc4b19"></span>
									</span>
									<a href="#" class="product-image-link">
										<img src="images/discount/item-3.jpg" alt="Smart 20 2017">
									</a>
								</div>
								<div class="product-text">
									<h3 class="product-title">
										<a href="#" class="product-title-link">Smart 20” 2017</a>
									</h3>
									<span class="product-brand">Formula</span>
								</div>
								<div class="product-info">
									<div class="product-price">
										<span class="product-price_old">3111 грн</span>
										<span class="product-price_new">2590 грн</span>
									</div><div class="product-buy">
										<a href="#addtocart" class="btn btn_act popup-btn">
											<span class="btn-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_cart"></use>
													</svg>
												</span>
											</span>
											<span class="btn-text">Купить</span>
										</a>
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
										<span class="btn-text">В сравнении</span>
									</a>
								</div>
							</article>
						</div>
						<!-- product-item -->
						<div class="col-lg-3 col-md-4 col-sm-6">
							<article class="product-item">
								<div class="product-image">
									<span class="product-label product-label_bonus">
										<span class="product-label-price">+170
											<span class="product-label-price-currancy">грн</span>
										</span>
										<span class="product-label-descr">бонус до 14.09</span>
									</span>
									<span class="product-color">
										<span style="background-color: #06f64c"></span>
										<span style="background-color: #019cf8"></span>
										<span style="background-color: #fc4b19"></span>
									</span>
									<a href="#" class="product-image-link">
										<img src="images/popular/item-4.jpg" alt="Prestige Woman 26 2017">
									</a>
								</div>
								<div class="product-text">
									<h3 class="product-title">
										<a href="#" class="product-title-link">Prestige Woman 26" 2017</a>
									</h3>
									<span class="product-brand">Discovery</span>
								</div>
								<div class="product-info">
									<div class="product-price">
										<span class="product-price_old">3699 грн</span>
										<span class="product-price_new">3405 грн</span>
									</div><div class="product-buy">
										<a href="#" class="btn btn_disabled">
											<span class="btn-text">Нет в наличии</span>
										</a>
									</div>
								</div>
								<div class="product-act">
									<a href="#addtofav" class="product-act-link popup-btn">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_favourite"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">Добавить в избранные</span>
									</a>
									<a href="#" class="product-act-link">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_compare"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">В сравнении</span>
									</a>
								</div>
							</article>
						</div>

					</div>
				</div>
			</section>
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

	<!-- POPUPS -->
	<section class="popup" style="display: none;">

		<!-- order  -->
		<div id="order" class="modal modal-offer">
			<h3 class="title modal-title">Оформление заказа</h3>
			<div class="form-order-wrap">
				<form id="order-info" action="" method="" class="ajax-form">

					<!-- name and phone -->
					<div class="order-step">
						<span class="order-step-title">1. Ваши данные</span>
						<div class="order-step-row">
							<div class="row min">
								<div class="col-sm-2">
									<div class="order-step-label">Ваше ФИО*</div>
								</div>
								<div class="col-sm-10">
									<div class="row min">
										<div class="col-sm-4">
											<input type="text" name="surmane" class="input input_order" placeholder="Фамилия" required>
										</div>
										<div class="col-sm-4">
											<input type="text" name="name" class="input input_order" placeholder="Имя" required>
										</div>
										<div class="col-sm-4">
											<input type="text" name="fathername" class="input input_order" placeholder="Отчество" required>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="order-step-row">
							<div class="row min">
								<div class="col-sm-2">
									<div class="order-step-label">Телефон*</div>
								</div>
								<div class="col-sm-10">
									<input type="text" name="phone" class="input input_order" placeholder="" required>
								</div>
							</div>
						</div>
					</div>
					
					<!-- delivery -->
					<div class="order-step">
						<span class="order-step-title">2. Доставка</span>
						<p class="modal-text">Бесплатная доставка Новой Почтой в течении 1-3 дней</p>
						<div class="order-list-type">
							<div class="row min">
								<div class="col-sm-2"></div>
								<div class="col-sm10">
									<ul class="check-radio">
										<li>
											<input type="radio" id="himself" value="himself" name="delivery" class="input_radio" checked>
											<label for="himself" class="input_label">Самовывоз</label>
										</li>
										<li>
											<input type="radio" id="np-warehouse" value="np-warehouse" name="delivery" class="input_radio">
											<label for="np-warehouse" class="input_label">Новая Почта - Склад</label>
										</li>
										<li>
											<input type="radio" id="np-corier" value="np-corier" name="delivery" class="input_radio">
											<label for="np-corier" class="input_label">Новая Почта - Курьер</label>
										</li>
									</ul>
								</div>
							</div>
						</div>
						
						<!-- nova poshta - warehouse -->
						<div id="warehouse-info" class="order-delivery-details">
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Область</div>
									</div>
									<div class="col-sm-10">
										<input type="text" name="region" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Город</div>
									</div>
									<div class="col-sm-10">
										<input type="text" name="city" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">№ склада*</div>
									</div>
									<div class="col-sm-10">
										<div class="row min">
											<div class="col-sm-6">
												<input type="text" name="warehouse" class="input input_order" placeholder="" required>
												<span class="modal-text_small">* - укажите грузовое отделение</span>
											</div>
											<div class="col-sm-6">
												<a href="#" class="link order-warehouse-map">Карта складов</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<!-- nova poshta - corier -->
						<div id="warehouse-corier" class="order-delivery-details">
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Город</div>
									</div>
									<div class="col-sm-10">
										<input type="text" name="city" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Улица</div>
									</div>
									<div class="col-sm-10">
										<input type="text" name="street" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Дом</div>
									</div>
									<div class="col-sm-4">
										<input type="text" name="house" class="input input_order" placeholder="" required>
									</div>
									<div class="col-sm-2">
										<div class="order-step-label">Квартира</div>
									</div>
									<div class="col-sm-4">
										<input type="text" name="room" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Подъезд</div>
									</div>
									<div class="col-sm-4">
										<input type="text" name="entrance" class="input input_order" placeholder="" required>
									</div>
									<div class="col-sm-2">
										<div class="order-step-label">Этаж</div>
									</div>
									<div class="col-sm-4">
										<input type="text" name="floor" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- payment -->
					<div class="order-step">
						<span class="order-step-title">3. Метод оплаты</span>
						<div class="order-list-type">
							<div class="row min">
								<div class="col-sm-2"></div>
								<div class="col-sm-10">
									<ul class="check-radio">
										<li>
											<input type="radio" id="paybefore" value="paybefore" name="payment" class="input_radio" checked>
											<label for="paybefore" class="input_label">Полная предоплата</label>
										</li>
										<li>
											<input type="radio" id="cod" value="cod" name="payment" class="input_radio">
											<label for="cod" class="input_label">Наложеный платеж<span class="input_label-info">( 2% от суммы товара )</span></label>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>

					<!-- add comment -->
					<div class="order-step">
						<div class="order-comment">
							<a href="javascript:void(0);" class="link order-comment-link">Добавить комментарий к заказу</a>
							 <textarea id="ordermssg" placeholder="Сообщение" name="comment" class="input input_area"></textarea>
						</div>
					</div>
					
					<!-- order button -->
					<div class="order-btn">
						<a href="#ordersuccess" class="btn btn_act popup-btn">Оформить заказ</a>
					</div>

				</form>
			</div>
		</div>

		<!-- add to cart -->
		<div id="addtocart" class="modal modal-big modal-cart">
			<h3 class="title modal-title">Моя корзина</h3>
			<!-- show when the catr is empty -->
			<p class="modal-text text-center hidden">В корзине пока нет товаров</p>
			<!-- show added items -->
			<div class="cart-items-wrap">
				<div class="mini-titles hidden-xs">
					<div class="row min">
						<div class="col-sm-7"><span>Название товара</span></div>
						<div class="col-sm-3 text-center"><span>Количество</span></div>
						<div class="col-sm-2 text-right"><span>Сума</span></div>
					</div>
				</div>
				<!-- item in cart -->
				<div class="cart-item">
					<div class="row min">
						<!-- item info -->
						<div class="col-sm-7">
							<div class="cart-item-content">

								<div class="cart-item-img">
									<img src="images/cart/item-1.jpg" alt="Formula Spark DD 29 2017">
								</div>

								<div class="cart-item-text">
									<a href="#" class="cart-item-title">Formula Spark DD 29" 2017</a>
									<span class="cart-item-price-wrap">
										<span class="cart-item-price">4873 грн</span>
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

									<input type="text" class="input input_count" value="1">

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
								<span class="cart-item-sum-text">4873 грн</span>
							</div>							
						</div>
					
					<!-- item delete button -->
					<button class="delete-item" title="Удалить">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_cross"></use>
							</svg>
						</span>
					</button>

					</div>
				</div>
				<div class="cart-item">
					<div class="row min">
						<!-- item info -->
						<div class="col-sm-7">
							<div class="cart-item-content">

								<div class="cart-item-img">
									<img src="images/cart/item-2.jpg" alt="Шлем Abus TEC-TICAL Pro v.2 Nutrixxion L (58-62)">
								</div>

								<div class="cart-item-text">
									<a href="#" class="cart-item-title">Шлем Abus TEC-TICAL Pro v.2 Nutrixxion L (58-62)</a>
									<span class="cart-item-price-wrap">
										<span class="cart-item-price">3899 грн</span>
										<span class="cart-item-price_old">4125 грн</span>
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

									<input type="text" class="input input_count" value="1">

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
								<span class="cart-item-sum-text">3899 грн</span>
							</div>							
						</div>
					
					<!-- item delete button -->
					<button class="delete-item" title="Удалить">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_cross"></use>
							</svg>
						</span>
					</button>

					</div>
				</div>
				<div class="cart-item">
					<div class="row min">
						<!-- item info -->
						<div class="col-sm-7">
							<div class="cart-item-content">

								<div class="cart-item-img">
									<img src="images/cart/item-3.jpg" alt="Флягодержатель алюминиевый, Simpla Alu-Star">
								</div>

								<div class="cart-item-text">
									<a href="#" class="cart-item-title">Флягодержатель алюминиевый, Simpla Alu-Star</a>
									<span class="cart-item-price-wrap">
										<span class="cart-item-price">75 грн</span>
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

									<input type="text" class="input input_count" value="1">

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
								<span class="cart-item-sum-text">75 грн</span>
							</div>							
						</div>
					
					<!-- item delete button -->
					<button class="delete-item" title="Удалить">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_cross"></use>
							</svg>
						</span>
					</button>

					</div>
				</div>

				<!-- total sum -->
				<div class="cart-total-wrap">
					<span class="cart-total-text">Итого:</span>
					<span class="cart-total-sum">27599 грн</span>
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
			</div>
		</div>

		<!-- callback -->
		<div id="callback" class="modal">
			<form action="" method="" class="ajax-form">
				<h3 class="title modal-title">Заказать консультацию</h3>
				<div class="form-group">
					<input type="text" name="callbackname" class="input input_modal" placeholder="Ваше имя*" required>
					<input type="text" name="callbacktel" class="input input_modal" placeholder="Ваш телефон*" required>
				</div>
				<p class="modal-text_small">* - поля, обязательные для заполнения</p>
				<input type="submit" name="callbackbtn" class="btn btn_act btn_submit" value="Отправить">
			</form>
		</div>
		
		<!-- enter promocode -->
		<div id="promocode" class="modal">
			<form action="" method="" class="ajax-form">
				<h3 class="title modal-title">Введите промокод</h3>
				<p class="modal-text">Вход для владельцев дисконтных карт</p>
				<div class="form-group">
					<input type="text" name="cardnumber" class="input input_modal" placeholder="Номер карты" required>
				</div>
				<input type="submit" name="cardnumberbtn" class="btn btn_act btn_submit" value="Войти">
			</form>
		</div>

		<!-- one click -->
		<div id="oneclick" class="modal-oneclick">
			<form action="" method="" class="ajax-form">
				<h4 class="title modal-title modal-title_min">Купить в 1 клик</h4>
				<p class="modal-text">Укажите свой номер телефона и наш менеджер свяжется с вами для оформления заказа на эту модель</p>		
				<div class="row min">
					<div class="col-sm-7">
						<div class="form-group_oneclick">
							<input type="text" name="oneclicktel" class="input input_modal" placeholder="Введите номер телефона" required>
						</div>
					</div>

					<div class="col-sm-5">
						<div class="form-group_oneclick">
							<input type="submit" name="oneclickbtn" class="btn btn_act btn_submit" value="Отправить">
						</div>
					</div>
				</div>
			</form>
		</div>

		<!-- order success -->
		<div id="ordersuccess" class="modal text-center">
			<div class="icon-success">
				<span class="icon icon_success">
					<svg>
						<use xlink:href="#icon_done"></use>
					</svg>
				</span>
			</div>
			<h4 class="title modal-title modal-title_min">Спасибо! Мы получили ваш заказ</h4>
			<p class="modal-text">Номер вашего заказа:
				<span id="ordernumber" class="order-number">46498798</span>
			</p>
			<div class="user-bonus">
				<span class="user-bonus-text">Ваш бонус:</span>
				<span class="user-bonus-count">+265
					<span class="user-bonus-currency">грн</span>
				</span>
			</div>
			<p class="modal-text">Мы отправили вам письмо на ваш электронный адрес с детальной информацией о заказе.</p>
			<div class="row min">
				<div class="col-sm-6">
					<div class="modal-btn">
						<a href="/" class="btn btn_default">На главную страницу</a>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="modal-btn text-right">
						<a href="#promocode" class="btn btn_act popup-btn">Мой баланс</a>
					</div>
				</div>
			</div>
		</div>

		<!-- how to get googlemap -->
		<div id="googlemap" class="modal modal-big">
			<h3 class="title modal-title">Мы находимся на карте</h3>
			<div class="google-map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2594.1405255210357!2d26.936219815695278!3d49.44406097934922!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473206d56669263d%3A0x347411acabf6cb4e!2z0YPQuy4g0JrRg9GA0YfQsNGC0L7QstCwLCA1OCwg0KXQvNC10LvRjNC90LjRhtC60LjQuSwg0KXQvNC10LvRjNC90LjRhtC60LDRjyDQvtCx0LvQsNGB0YLRjA!5e0!3m2!1sru!2sua!4v1512762641043" frameborder="0" allowfullscreen></iframe>
			</div>
		</div>

		<!-- add to favourite -->
		<div id="addtofav" class="modal modal-add">
			<h3 class="title modal-title">Избранные</h3>
			<p class="modal-text text-center">Товар успешно добавлен в избранные!</p>
			<div class="row min">
				<div class="col-sm-6">
					<div class="modal-btn">
						<a href="javascript:void(0);" class="btn btn_default popup-close">Закрыть</a>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="modal-btn text-right">
						<a href="#" class="btn btn_act">К избранным</a>
					</div>
				</div>
			</div>
		</div>

		<!-- add to compare -->
		<div id="addtocompare" class="modal modal-add">
			<h3 class="title modal-title">Сравнения</h3>
			<p class="modal-text text-center">Товар успешно добавлен к сравнению!</p>
			<div class="row min">
				<div class="col-sm-6">
					<div class="modal-btn">
						<a href="javascript:void(0);" class="btn btn_default popup-close">Закрыть</a>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="modal-btn text-right">
						<a href="#" class="btn btn_act">К сравненным</a>
					</div>
				</div>
			</div>
		</div>

	</section>

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