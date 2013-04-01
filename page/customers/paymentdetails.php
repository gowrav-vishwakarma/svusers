<?php
class page_customers_paymentdetails extends page_customer{

	function init(){
		parent::init();

		$sale=$this->add('Model_Sale');
		$deposite=$this->add('Model_Deposite');
	
		$sale->addCondition('customer_id',$this->api->auth->model->id);
		$form=$this->add('Form');
		$sale_field=$form->addField('dropdown','sales')->setEmptyText("Select Sale");
		$sale_field->setModel($sale);

		$form->addSubmit("Get List");

		$grid=$this->add('Grid');

		if($_GET['filter']){
			if($_GET['sales_id'])
				$sale->addCondition('sales_id',$_GET['sales_id']);
		}else{
			$sale->addCondition('id',-1);
		}

		$grid->setModel($deposite);

		if($form->isSubmitted()){
			$grid->js()->reload(array("sale_id"=>$form->get('sales'),
										"filter"=>1))->execute();
		}
	
	}
}