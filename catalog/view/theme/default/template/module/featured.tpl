	<section class="popular">
		<div class="container">
			<div class="section-title">
				<h2 class="title">Популярные модели</h2>
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

<div class="box">
  <div class="box-heading"><?php echo $heading_title."heading title"; ?></div>
  <div class="box-content">
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
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>

</div>
</div>
