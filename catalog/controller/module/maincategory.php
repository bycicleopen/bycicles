<?php  
class ControllerModuleMainCategory extends Controller {
	protected function index($setting) {
		$this->language->load('module/MainCategory');
		
    	$this->data['heading_title'] = $this->language->get('heading_title');
		
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}
		
		if (isset($parts[0])) {
			$this->data['MainCategory_id'] = $parts[0];
		} else {
			$this->data['MainCategory_id'] = 0;
		}
		
		if (isset($parts[1])) {
			$this->data['child_id'] = $parts[1];
		} else {
			$this->data['child_id'] = 0;
		}
							
		$this->load->model('catalog/MainCategory');

		$this->load->model('catalog/product');

		$this->data['categories'] = array();

		$categories = $this->model_catalog_MainCategory->getCategories(0);
		
		//Показывать или нет количество товаров
		$show_product_count = $this->config->get('config_product_count');

		foreach ($categories as $MainCategory) {
			//Будем вычислять кол-во товаров в категориях только если это кол-во надо показывать
			if ($show_product_count) {
				$total = $this->model_catalog_product->getTotalProducts(array('filter_MainCategory_id' => $MainCategory['MainCategory_id']));
			}

			$children_data = array();

			$children = $this->model_catalog_MainCategory->getCategories($MainCategory['MainCategory_id']);

			foreach ($children as $child) {
				//Будем вычислять кол-во товаров в категориях только если это кол-во надо показывать
				if ($show_product_count) {
					$data = array(
						'filter_MainCategory_id'  => $child['MainCategory_id'],
						'filter_sub_MainCategory' => true
					);

					$product_total = $this->model_catalog_product->getTotalProducts($data);

					$total += $product_total;
				}

				$children_data[] = array(
					'MainCategory_id' => $child['MainCategory_id'],
					'name'        => $child['name'] . ($show_product_count ? ' (' . $product_total . ')' : ''),
					'href'        => $this->url->link('product/MainCategory', 'path=' . $MainCategory['MainCategory_id'] . '_' . $child['MainCategory_id'])	
				);		
			}

			$this->data['categories'][] = array(
				'MainCategory_id' => $MainCategory['MainCategory_id'],
				'name'        => $MainCategory['name'] . ($show_product_count ? ' (' . $total . ')' : ''),
				'children'    => $children_data,
				'href'        => $this->url->link('product/MainCategory', 'path=' . $MainCategory['MainCategory_id'])
			);	
		}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/MainCategory.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/MainCategory.tpl';
		} else {
			$this->template = 'default/template/module/MainCategory.tpl';
		}
		
		$this->render();
  	}

}
?>