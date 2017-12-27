<?php echo $header; ?><//?php echo $column_left; ?><//?php echo $column_right; ?>

<head>
	<meta charset="utf-8">
	<title>Интернет-магазин Велосклад</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- favicon -->
	<link rel="icon" type="image/png" href="images/favicon.png?v=2">
	<!-- font -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,700&amp;subset=cyrillic" rel="stylesheet">
	<!-- style -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/normal.css">
	<link rel="stylesheet" href="js/magnific-popup/magnific-popup.css">
	<link rel="stylesheet" href="css/general.css">
	<link rel="stylesheet" href="css/styles.css?v=3">
</head>

<!--div id="content"--><//?php echo $content_top; ?>
	<!-- Breadcrumbs -->
	
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']."mnu"; ?></a>
		<?php } ?>
    </div>
	

	<!-- Item Content -->
	<div class="page-content">
		<div class="container">
			<main class="content">
				<div class="item-title">
					<h1 class="title main-title"><?php echo $heading_title; ?></h1>
					<div class="item-addition">
						<div class="item-addition-article">Артикул: 
							<span class="item-addition-article-number">53175667</span>
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
									
									  <div class="product-info">
    		
								<?php if ($thumb || $images) { ?>	
									<div class="col-lg-7 col-md-6 col-sm-6">
										<div class="item-photo">
											<?php if ($thumb) { ?>
												<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="item-photo-image" /></a>
										    <?php } ?>
										</div>
										<!-- item photo mini -->
										<ul class="popup-gallery item-photo-items">
										
										    <?php if ($images) { ?>
												
												<?php foreach ($images as $image) { ?>
													<li class="item-photo-item">
														<a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"class="item-photo-link_min"><img src="<?php echo $image['thumb']; ?>" class="item-photo-image_min" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
													</li>
												<?php } ?>
												
											<?php } ?>
										</ul>
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
													<div class="col-md-6 col-sm-6">
														<!-- price bonus -->
														<div class="info-price-bonus-wrap">
															<span class="info-price-bonus-sum">+263<span class="info-price-bonus-currancy">грн</span>
															</span>
															<span class="info-price-bonus-descr">бонус до 14.09.2017</span>
														</div>
													</div>
													<div class="col-md-6 col-sm-6">
														<!-- item price -->
														<div class="info-price-wrap">
															<span class="info-price"><?php echo $text_price; ?></span>
															
															        <?php if (!$special) { ?>
        <?php echo $price; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
        <?php } ?>
		
		        <?php if (!$special) { ?>
        <?php echo $price; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
        <?php } ?>
		
		        <br />
        <?php if ($tax) { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
        <?php } ?>
		
		        <?php if ($points) { ?>
        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
        <?php } ?>
		
		
		
        <?php if ($discounts) { ?>
        <br />
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
          <?php } ?>
        </div>
        <?php } ?>
															
															
															<span class="info-price-old">6573 грн</span>
														</div>
													</div>
												</div>
											</div>
											<!-- purchase form-->
											
											      <div class="cart">
        <div><?php echo $text_qty; ?>
          <input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
          <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
          &nbsp;
          <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" />
          <span>&nbsp;&nbsp;<?php echo $text_or; ?>&nbsp;&nbsp;</span>
          <span class="links"><a onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a><br />
            <a onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a></span>
        </div>
		
	
		
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
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
															<button type="submit" class="btn btn_act btn_purchase">
																<span class="btn-icon">
																	<span class="icon">
																		<svg>
																			<use xlink:href="#icon_cart"></use>
																		</svg>
																	</span>
																</span>
																<span class="btn-text">Купить</span>
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
							
							
							<div class="item-tabs">
								<nav class="tabs-nav">
									<ul class="tabs-items">
										<li class="tabs-item">
											<a href="<a href="#tab-description" class="btn btn_default tabs-link is-active">
												<span class="btn-text"><?php echo $tab_description; ?></span>
											</a>
										</li>
										<li class="tabs-item">
											<a href="#tab-attribute" class="btn btn_default tabs-link">
											    <?php if ($attribute_groups) { ?>
													<span class="btn-text"><?php echo $tab_attribute; ?></span>
												<?php } ?>
											</a>
										</li>
										<li class="tabs-item">
											<a href="#tab-review" class="btn btn_default tabs-link">
												<?php if ($review_status) { ?>
													<span class="btn-text"><?php echo $tab_review; ?></span>
												<?php } ?>
											</a>
										</li>
									</ul>
								</nav>
								<!-- tabs content -->
								<div class="tabs-content-wrap">
									<div id="tab1" class="tabs-content is-active">
										<div class="tab-table-wrap">
											<table class="tab-table">
												<tbody class="tab-table-body">
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
												</tbody>
											</table>
										</div>
									</div>
									<div id="tab2" class="tabs-content">
										<div class="tab-description">
											<p class="text">Горный велосипед для взрослых. Данная модель стала компромиссом среди любителей найнеров и фанатов колёс шириной 26 дюймов. Большие колёса легкие и в то же время прочные.</p>
											<p class="text">Хардтейл для езды в стиле кросс-кантри с оборудованием предпрофессионального класса Shimano, 27 скоростей. Технические особенности: прочная алюминиевая рама, амортизационная вилка SR Suntour XCR, двойные обода Weinmann, дисковые гидравлические тормоза Tektro Draco. Подходит для активной езды по различным дорогам и пересеченной местности. Диаметр колес - 27,5 дюймов. Вес - 15,5 кг.</p>
											<p class="text">Стальная амортизационная вилка помогает комфортно преодолевать неровности на дороге. Большие колёса легкие и в то же время прочные. Дисковые тормоза обеспечивают плавную остановку велосипеда. Он нужен для тех кто любит скорость и накат по-полной. С ним вам не страшны дороги любых сложностей, так как этот велосипед был придуман для дорог в Украине.</p>
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
											<span class="text">Доставка</span>
										</h6>
										<ul class="marked">
											<li class="marked-list">бесплатная доставка всех велосипедов по Украине</li>
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
											<span class="text">Оплата</span>
										</h6>
										<ul class="marked">
											<li class="marked-list">полная предоплата</li>
											<li class="marked-list">наложеный платеж (2% комиссия)</li>
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
											<span class="text">Гарантия</span>
										</h6>
										<ul class="marked">
											<li class="marked-list">6 месяцев на оборудование официальной гарантии от производителя</li>
											<li class="marked-list">60 месяцев на раму</li>
											<li class="marked-list">обмен/возврат товара в течении 14 дней</li>
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
										<a href="#" class="btn btn_act">
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
									<a href="#" class="product-act-link">
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
										<a href="#" class="btn btn_act">
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
									<a href="#" class="product-act-link">
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


  <h1>tab</h1>
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
  
  <h1>/tab</h1>
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