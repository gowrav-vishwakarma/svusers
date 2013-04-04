<?php
class View_CustomerDetails extends View{
	function init(){
		parent::init();
	}

	function setModel($m){
		if(!$m->loaded()) return;
		$this->template->trySet('planning',$m->ref('plot_id')->get('planning'));		
		$this->template->trySet('due_booking_amount',$m['down_payment']-$m['down_payment_submitted']);		
		$over_due_emi = $m->ref('Emi')
							->addCondition('due_date','<',date('Y-m-d'))
							->_dsql()
							->del('field')
							->field('SUM(EMIAmount-AmountPaid)')
							->getOne();
		$this->template->trySet('over_due_emi',$over_due_emi);
		$this->template->trySet('next_emi_date',$next_emi_date=$m->ref('Emi')->addCondition('due_date','>',date('Y-m-d'))->addCondition('EMIAmount','<>','AmountPaid')->tryLoadAny()->get('due_date'));		
		$amount_to_be_submitted = $this->add('Model_Emi')
							->addCondition('sales_id',$m->id)
							->addCondition('due_date','<=',$next_emi_date)
							->_dsql()
							->del('field')
							->field('SUM(EMIAmount-AmountPaid)')
							->getOne();
		$this->template->trySet('amount_to_be_submitted',$amount_to_be_submitted);		
		parent::setModel($m);
	}

	function defaultTemplate(){
		return array('view/customerdetails');
	}
}