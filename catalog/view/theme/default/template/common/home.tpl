<?php echo $header; ?>	


<div id="content"><?php echo $content_top; ?>

	<!-- News and Articles-->
	<section class="news">
		<div class="container">
			<div class="section-title">
				<h2 class="title">Новости и статьи</h2>
			</div>
			<div class="news-wrap">
				<div class="row">
					<div class="col-md-4">
						<article class="post-preview">
							<a href="#" class="post-preview-link"></a>
							<time class="post-preview-time">02 Ноября 2017</time>
							<h5 class="title post-preview-title">Зачем нужен велосипедный шлем</h5>
							<p class="post-preview-text">Защита от веток, случайных камней, столкновений с предметами и неосторожных падений – малый перечень функций...</p>
							<a href="#" class="link post-preview-more">Читать подробнее</a>
						</article>
					</div>
					<div class="col-md-4">
						<article class="post-preview">
							<a href="#" class="post-preview-link"></a>
							<time class="post-preview-time">28 Мая 2017</time>
							<h5 class="title post-preview-title">Акция месяца! Black Friday в магазине ВЕЛОСКЛАД!</h5>
							<p class="post-preview-text">Проведите всемирный день шоппинга, Black Friday, с пользой – приобретите велосипед.</p>
							<a href="#" class="link post-preview-more">Читать подробнее</a>
						</article>
					</div>
					<div class="col-md-4">
						<article class="post-preview">
							<a href="#" class="post-preview-link"></a>
							<time class="post-preview-time">02 февраля 2017</time>
							<h5 class="title post-preview-title">Правильное управление велосипедом</h5>
							<p class="post-preview-text">Среди множества велосипедистов, в первую очередь начинающих, есть те, кому очень хочеться покататься в этом новом году...</p>
							<a href="#" class="link post-preview-more">Читать подробнее</a>
						</article>
					</div>
				</div>
			</div>
			<a href="#" class="btn btn_default news-btn">
				<span class="btn-text">Все новости и статьи</span>
			</a>
		
		</div>
	</section>

	<!-- Brands and About-->
	<section class="about">
		<div class="container">
			<div class="section-title">
				<?php echo $content_bottom; ?>
			</div>		
			
			<!-- about company -->
			<div class="about-text-wrap">
			<div class="section-title">
				<h2 class="title">Интернет-магазин ВЕЛОСКЛАД</h2>
			</div>
			<p class="text about-text">Наш интернет магазин велосипедов от производителя презентует горные, подростковые, городские, женские и детские велосипеды. Доставка осуществляется посредством Новой почты. Вне зависимости от стоимости покупки, транспортировка оплачивается за наш счет. В наличии доступны только новые модели зарубежного и отечественного производства. Все велосипеды проходят обязательную предпродажную проверку.</p>
			<p class="text about-text">По мере необходимости, наш интернет-магазин велосипедов проведет индивидуальную консультацию, в рамках которой ответят на все вопросы, связанные с выбором велосипедов, оплатой, доставкой и так далее.</p>
			<a href="#" class="link about-link">О магазине</a>
		</div>
		
		
	</section>	
	
<?php echo $footer; ?>	


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
	
	