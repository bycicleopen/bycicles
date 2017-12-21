	<!-- Brands and About-->
	<section class="about">
		<div class="container">
			<div class="section-title">
				<h2 class="title">Бренды</h2>
				<div class="section-pagination hidden-xs">
					<a href="#" class="link section-link">Посмотреть все</a>
					
					
					<div class="pagination-list">
						<button class="pagination-item">
							<span class="icon">
								<svg>
									<use xlink:href="#icon_arwleft"></use>
								</svg>
							</span>
						</button>
						<button class="pagination-item">
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
				<div class="slider-brands-wrap">
					<div class="slider-items-brands">



						
							
							   <?php foreach ($banners as $banner) { ?>
									<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
										<div class="brand-item">
											<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></li>
										</div>
									</div>
								<?php } ?>
								
						
							
			

					</div>	
				</div>	
			</div>	
	
		</div>
</section>


<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?> ul').jcarousel({
	vertical: false,
	visible: <?php echo $limit; ?>,
	scroll: <?php echo $scroll; ?>
});
//--></script>