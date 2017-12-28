
	<!-- Slider -->
	<section class="slider">
		<div class="container">
			<div class="slider-wrap">
				<!-- paginator -->
				<div class="slider-points">
					<ul>
						<li>
							<a href="#"></a></li>
						<li>
							<a href="#"></a></li>
						<li>
							<a href="#" class="is-active"></a></li>
						<li>
							<a href="#"></a></li>
					</ul>
				</div>
				<div class="slider-arrows hidden-xs hidden-sm">
					<button class="paginator-item btn-slider btn-slider_left">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_arwleft"></use>
							</svg>
						</span>
					</button>
					<button class="paginator-item btn-slider btn-slider_right">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_arwright"></use>
							</svg>
						</span>
					</button>
				</div>
				<!-- end -->
				<!-- slider item -->
			
			    <?php foreach ($banners as $banner) { ?>
				<div class="slider-item">
					<a href="<?php echo $banner['link']; ?>" class="slider-link"></a>
					<div class="slider-item-content">
						<div class="slider-text">
							<span class="slider-title">Горный велосипед</span>
							<span class="slider-title_sub"><?php echo $banner['title']; ?>"</span>
							<p class="slider-descr">У подросткового велосипеда трансмиссия на 18 передач, амортизирующая вилка, которая поможет сделать езду намного более комфортной, надёжные и простых дисковые тормоза!</p>
							<div class="slider-price-wrap">
								<span class="slider-price"><?php echo $banner['psprice']; ?></span>
								<span class="slider-price_old"><?php echo $banner['price']; ?></span>
							</div>
							<a href="<?php echo $banner['link']; ?>" class="btn btn_act slider-btn_act">Перейти к товару</a>
						</div>
						<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="slider-image hidden-xs hidden-sm">
						<span class="slider-price-bonus hidden-xs hidden-sm">+<?php echo $banner['benefit']; ?>
							<span class="slider-price-bonus_currency">грн*</span>
						</span>
						<span class="slider-price-bonus_descr hidden-xs hidden-sm">* Внимание, БОНУС действительный до <?php echo $banner['date_end']; ?></span>
					</div>
				</div>
				<?php } ?>

				

				
			</div>
		</div>
	</section>

	

<script type="text/javascript"><!--
$(document).ready(function() {
	$('#slideshow<?php echo $module; ?>').nivoSlider();
});
--></script>