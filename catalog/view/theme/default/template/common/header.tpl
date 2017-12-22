<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<title>Интернет-магазин Велосклад</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- favicon -->
	<link rel="icon" type="image/png" href="images/favicon.png">
	<!-- font -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,700&amp;subset=cyrillic" rel="stylesheet">
	<!-- style -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="css/normal.css">
	<link rel="stylesheet" href="css/general.css">
	<link rel="stylesheet" href="css/styles.css?v=1">
</head>
<body>
	
	<!-- Header -->
	<header class="header">
		<!-- header top -->
		<div class="header-top hidden-sm hidden-xs">
			<div class="container">
				<div class="row">

					<div class="col-md-6">
						<form id="lang" action="" method="" class="form-select form-select_lang">
							<select class="input_select input_lang">
								<option value="ru">RU</option>
								<option value="ua">UA</option>
								<option value="en">EN</option>
							</select>
						</form>
						<nav class="header-nav header-devider">
							<menu class="header-nav_items">
								<li class="header-nav_item">
									<a href="#" class="header-nav_link">О магазине</a></li>
								<li class="header-nav_item">
									<a href="#" class="header-nav_link">Доставка и оплата</a></li>
								<li class="header-nav_item">
									<a href="#" class="header-nav_link">Новости</a></li>
								<li class="header-nav_item">
									<a href="#" class="header-nav_link">Контакты</a></li>
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
									<a href="#" class="header-user_link">
										<span class="header-user-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_cart"></use>
												</svg>
											</span>
										</span>
										<span class="header-user-text">Корзина</span>
										<span class="add-count add-count_cart header-user-count" data-value="3"></span>
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
										<a href="#" class="header-popular_link link">велосипед</a></li>
									<li class="header-popular_item">
										<a href="#" class="header-popular_link link">горные</a></li>
									<li class="header-popular_item">
										<a href="#" class="header-popular_link link">велозапчасти</a></li>
									<li class="header-popular_item">
										<a href="#" class="header-popular_link link">шлем</a></li>
								</menu>
							</div>
							<form id="search" action="" method="" class="header-search">
								<input id="search" type="text" name="search" class="input input_search" placeholder="Быстрый поиск товара">
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

							<a href="#" class="btn btn_cta header-cta visible-lg">
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
	
	


					
				


