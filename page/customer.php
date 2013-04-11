<?php
class page_customer extends Page{
	function init(){
		parent::init();

		$m=$this->add('Menu');
		$m->addMenuItem('customers_dashboard','Home');
		$m->addMenuItem('customers_profile','Upadte Your Profile');
		$m->addMenuItem('customers_emistatus','Your EMI Status');
		$m->addMenuItem('customers_paymentdetails','My Payment Status');
		$m->addMenuItem('customers_mypayouts','My Payouts');
	}
}