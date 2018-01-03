<?php
class ModelDesignBanner extends Model {	
	public function getBanner($banner_id) {
		//$query = $this->db->query("SELECT bi.*, bid.* FROM " . DB_PREFIX . "banner_image bi LEFT JOIN " . DB_PREFIX . "banner_image_description bid ON (bi.banner_image_id  = bid.banner_image_id) WHERE bi.banner_id = '" . (int)$banner_id . "' AND bid.language_id = '" . (int)$this->config->get('config_language_id') . "'");
	
		$currDate =  date('Y-m-d');
	
		$query_txt = "SELECT distinct bi.*, bid.*, p.price 'price', ps.price 'psprice',p.price-ps.price 'benefit', ps.date_end FROM " . DB_PREFIX . "banner_image bi LEFT JOIN " . DB_PREFIX . "banner_image_description bid ON (bi.banner_image_id  = bid.banner_image_id)
		
	    LEFT JOIN " . DB_PREFIX . "product p ON (p.product_id  = bi.product_id)
	    LEFT JOIN " . DB_PREFIX . "product_special ps ON (ps.product_id  = bi.product_id)
		
		WHERE bi.banner_id = '" . (int)$banner_id . "' AND bid.language_id = '" . (int)$this->config->get('config_language_id') . "'";
		//AND ((ps.date_start = '0000-00-00' OR ps.date_start < '" . $currDate . "') AND (ps.date_end = '0000-00-00' OR ps.date_end > '" . $currDate . "'))";
		$query = $this->db->query($query_txt);
		return $query->rows;
	}
}
?>