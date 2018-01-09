<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div class="select-wrap select-wrap_lang"><?php echo $text_language.":"; ?>
	<!--select class="input_select input_lang" onchange="$('input[name=\'language_code\']').attr('value', 'this.options[this.selectedIndex].value'); $(this).parent().parent().submit();"-->
  <!--select name = "mysel" class="input_select input_lang" onchange="$('input[name=\'language_code\']').attr('value', this.options[this.selectedIndex].value); $(this).parent().parent().submit();" -->
<select name = "mysel" class="input_select input_lang" >
  <?php foreach ($languages as $language) { ?>
  
					
						
								<option value="<?php echo $language['code']; ?>"><p onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();"><?php echo $language['code']; ?></p></option>
			<!--option value="<?php echo $language['code']; ?>" ><?php echo $language['code']; ?></option-->					
				
							
						


  


  <?php } ?>
</select>
 
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
	
	<!--img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();" /-->
  </div>
</form>
<?php } ?>
