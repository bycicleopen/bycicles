

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

	<div class="page-content">
		<div class="container">
		
  <h1><?php echo $heading_title; ?></h1>
  <?php echo $description; ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
		</div>
   </div>
  
  
  
  
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>