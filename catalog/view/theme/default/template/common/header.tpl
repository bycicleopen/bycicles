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
<?php var_dump($informations); ?>
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
	

					
				


