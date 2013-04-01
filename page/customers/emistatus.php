<?php
class page_customers_emistatus extends page_customer{

	function init(){
		parent::init();

		$sale=$this->add('Model_Sale');
		$sale->addCondition('customer_id',$this->api->auth->model->id);
		$form=$this->add('Form');
		$field_sale=$form->addField('dropdown','sales','Select Sale')->setEmptyText("Select Any");
		$form->addSubmit("Get List");
		$field_sale->setModel($sale);

		$grid=$this->add('Grid');

		$emi=$this->add('Model_Emi');

		if($_GET['filter']){
			if($_GET['sales_id'])
			$emi->addCondition('sales_id',$_GET['sales_id']);
		}else{
			$emi->addCondition('id',-1);
		}


		$grid->setModel($emi,array('due_date','paid_date','EMIAmount','AmountPaid'));

		if($form->isSubmitted()){
			$grid->js()->reload(array("sales_id"=>$form->get('sales'),
								"filter"=>1))->execute();
		}


	}
}