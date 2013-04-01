<?php
class page_customers_dashboard extends page_customer{
	function init(){
		parent::init();

		$v=$this->add('View_CustomerDetails');
		$v->setModel($this->api->auth->model->ref('Purchases')->tryLoadAny());

	}
}






