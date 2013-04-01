<?php
class page_customers_profile extends page_customer{

	function init(){
		parent::init();

		$form=$this->add('Form');
		// $customer=$this->add('Model_Customer');
		$form->setModel($this->api->auth->model);
		$form->addField('password','password');
		$form->addField('password','repassword');
		$form->addSubmit('Upadate');

		if($form->isSubmitted()){
		
			if($form->get('password')!=$form->get('repassword'))
				$form->displayError('password',"Password Does not Match");
			$form->model['password'] = $form->get('password');
			$form->update();
			$form->js(null,$form->js()->univ()->successMessage('Profile Update SuccesessFuly'))->reload()->execute();
		}
	}
}