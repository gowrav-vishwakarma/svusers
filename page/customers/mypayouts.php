<?php
class page_customers_mypayouts extends page_customer{
	function init(){
		parent::init();

		$grid=$this->add('Grid');
		$closing=$this->add('Model_Closing');
		$closing->addCondition('distributor_id',$this->api->auth->model->id);
		$grid->setModel($closing);
		
	}
}