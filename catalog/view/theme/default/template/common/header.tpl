<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
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
	<link rel="stylesheet" href="css/styles.css?v=5">
	

	
</head>
<body>

 <!-- Header -->
	<header class="header">
		<!-- header top -->
		<div class="header-top hidden-sm hidden-xs">
			<div class="container">
			
				<div class="row">
					
					<div class="col-md-6">
					    <?php echo $language; ?>
						<nav class="header-nav header-devider">
							<menu class="header-nav_items">
									
									
									<?php foreach ($informations as $information) { ?>
										<?php if ($information['sort_order']<'900'){?>
										<li class="header-nav_item"><a href="<?php echo $information['href']; ?>" class="header-nav_link"><?php echo $information['title']; ?></a></li>
										<?php }else {?>	
											<?php if ($information['sort_order']=='910'){ $bycicleInf = $information['title']; $bycicleInfHref = $information['href']; } ?>
										    <?php if ($information['sort_order']=='920'){ $mountainInf = $information['title']; $mountainInfHref = $information['href']; } ?>
											<?php if ($information['sort_order']=='930'){ $partsInf = $information['title']; $partsInfHref = $information['href']; } ?>
											<?php if ($information['sort_order']=='940'){ $helmetInf = $information['title']; $helmetInfHref = $information['href']; } ?>						
										<?php } ?>	
										
									<?php } ?>	
							
								<li class="header-nav_item">
									<a href="<?php echo $contact; ?>" class="header-nav_link"><?php echo $text_contact; ?></a></li>
								
								
							</menu>
						</nav>
						
					</div>
					
	
					
					
					

					<div class="col-md-6">

						<div class="header-user">
							<ul class="header-user_items header-devider">
								<li class="header-user_item">
									<a href="#" class="header-user_link">
										<span class="header-user-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_prcode"></use>
												</svg>
											</span>
										</span>
										<span class="header-user-text">Введите промокод</span>
									</a>
								</li>
							</ul>

							<ul class="header-user_items">
								<li class="header-user_item">
									<a href="#" class="header-user_link">
										<span class="header-user-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_favourite"></use>
												</svg>
											</span>
										</span>
										<span class="add-count add-count_favourite header-user-count" data-value="19"></span>
									</a>
								</li>

								<li class="header-user_item">
									<a href="#" class="header-user_link">
										<span class="header-user-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_compare"></use>
												</svg>
											</span>
										</span>
										<span class="add-count add-count_compare header-user-count" data-value="7"></span>
									</a>
								</li>

								<li class="header-user_item">
									<a href="#addtocart" class="header-user_link popup-btn">
										<span class="header-user-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_cart"></use>
												</svg>
											</span>
										</span>
										
										<span class="header-user-text"></span>
										<span class="add-count add-count_cart header-user-count" data-value="34"></span>
									</a>
										
								</li>
							</ul>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- header bottom -->
		
		<div class="header-bottom">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-4">
						<a href="/" class="header-logo">
							<picture>
								<img src="images/logo.svg" alt="ВЕЛОСКЛАД Интернет-магазин велосипедов">
							</picture>
						</a>
					</div>

					<div class="col-lg-4 col-md-5">
						<div class="header-search-wrap">
							<div class="header-popular">
								Популярное:
								<menu class="header-popular_list">
									<li class="header-popular_item">
										<a href="<?php echo $bycicleInfHref ?>" class="header-popular_link link"><?php echo $bycicleInf ?></a></li>
									<li class="header-popular_item">
										<a href="<?php echo $mountainInfHref ?>" class="header-popular_link link"><?php echo $mountainInf ?></a></li>
									<li class="header-popular_item">
										<a href="<?php echo $partsInfHref ?>" class="header-popular_link link"><?php echo $partsInf ?></a></li>
									<li class="header-popular_item">
										<a href="<?php echo $helmetInfHref ?>" class="header-popular_link link"><?php echo $helmetInf ?></a></li>												
								</menu>
							</div>
							<form id="search" action="" method="" class="header-search">
							

							
								<input id="search" type="text" name="search" class="input input_search" placeholder="<?php echo $text_search."search_me"; ?>" value="<?php echo $search; ?>" >
								<button type="submit" class="btn-search">
									<span class="icon">
										<svg>
											<use xlink:href="#icon_search"></use>
										</svg>
									</span>
								</button>
							</form>
						</div>
					</div>

					<div class="col-lg-5 col-md-3">
						<div class="header-phone">
							<div class="phone-wrap">
								<a href="tel:+380685001002" class="phone-call">+38(068) 500-10-02</a>
								<span class="icon">
									<svg>
										<use xlink:href="#icon_sellphone"></use>
									</svg>
								</span>
								<time class="phone-time">с 9:00 до 18:00 без выходных</time>
							</div>

							<a href="#callback" class="btn btn_cta header-cta popup-btn visible-lg">
								<span class="btn-icon">
									<span class="icon">
										<svg>
											<use xlink:href="#icon_phone"></use>
										</svg>
									</span>
								</span>
								<span class="btn-text">Заказать звонок</span>
							</a>

						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- header menu -->
		<div class="nav hidden-sm hidden-xs">
			<div class="container">
				<div class="nav-wrap">
					<a href="#" class="nav-link link-discount">
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
						<menu class="nav-items">
						
<?php if ($categories) { ?>
    <?php foreach ($categories as $category) { ?>
    <li class="nav-item"><a href="<?php echo $category['href']; ?>" class="nav-link"><span><?php echo $category['name']; ?></span></a>
      <?php if ($category['children']) { ?>
     
	 
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul class="nav-items_sub">
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li class="nav-item_sub"><a href="<?php echo $category['children'][$i]['href']; ?>" class="nav-link_sub" ><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
    
      <?php } ?>
    </li>
    <?php } ?>
  </ul>

<?php } ?>
				
						</menu>
					</nav>

				</div>
			</div>
		</div>
	</header>
	
	
	
<section>
	<!-- Navbar -->
	<div id="navbar" class="nav navbar hidden-sm hidden-xs">
		<div class="container">
			
				<div class="navbar-logo-wrap">
					<a href="/" class="navbar-logo">
						<picture>
							<img src="images/logo-small.svg" alt="ВЕЛОСКЛАД">
						</picture>
					</a>
				</div>
		
				<div class="nav-wrap navbar-wrap">
					
					
		<!-- header menu -->
		
	<header>
		<div class="nav hidden-sm hidden-xs">
			<div class="container">
				<div class="nav-wrap">
					<a href="#" class="nav-link link-discount">
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
						<menu class="nav-items">
						
<?php if ($categories) { ?>
    <?php foreach ($categories as $category) { ?>
    <li class="nav-item"><a href="<?php echo $category['href']; ?>" class="nav-link"><span><?php echo $category['name']; ?></span></a>
      <?php if ($category['children']) { ?>
     
	 
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul class="nav-items_sub">
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li class="nav-item_sub"><a href="<?php echo $category['children'][$i]['href']; ?>" class="nav-link_sub" ><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>

<?php } ?>

		
							
						</menu>
					</nav>
				</div>
			</div>
		</div>
	</header>					
					
</section>		
	
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
---------
		<!-- add to cart -->
		<?php echo $cart; ?>

-----------
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

					
				


