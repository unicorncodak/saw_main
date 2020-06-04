<?php
class ControllerExtensionModuleFirstmodule extends Controller {
	private $error = array();

	public function index() {
        /**
         * In order to get the value from the backend, we will use $this->config->get()
         * The argument passed in the get method must be same as the name of field we used in the admin end
         */
        $this->language->load('extension/module/firstmodule');
	 
		$this->load->model('account/firstmodule');

        $data['module_firstmodule_heading'] = $this->config->get('module_firstmodule_heading');
        $data['module_firstmodule_description'] = $this->config->get('module_firstmodule_description');
        $data['entry_button'] = $this->language->get('entry_button');
        $data['firstmodule_heading'] = $this->language->get('firstmodule_heading');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
        	if ($this->model_account_firstmodule->checkRegisteredEmail($this->request->post)) {

        		$this->model_account_firstmodule->UpdateRegisterEmail($this->request->post);

        	} else {

        		$this->model_account_firstmodule->subscribe($this->request->post);        		
        	}
        }  else {
			
				// echo a warning div
		}
 		$arrs = $this->model_account_firstmodule->birthdayReminder($this->request->post);
		if(isset($_GET['getparam'])){
			$getparam = $_GET['getparam'];
		} else {
			$getparam = "";
		}
 		if(!empty($getparam)){
 		foreach ($arrs as $arr) {
 						$subject = $this->language->get('mail_subject');
 						$name = $arr['name'];	
 						$email = $arr['email'];
						
						$message = '<p> We wish to remind you that ' . $name . ' birthday is 1 week time. You can customize a birthday gift for 						him/her by clicking <a href="https://www.hazye.ng"> <strong>here<strong></a> 
						<br><br>

						Kind Regards,<br>
						Hazye Team';
						$message .= '</p>';
			 
						$mail = new Mail($this->config->get('config_mail_engine'));
						$mail->parameter = $this->config->get('config_mail_parameter');
						$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
						$mail->smtp_username = $this->config->get('config_mail_smtp_username');
						$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
						$mail->smtp_port = $this->config->get('config_mail_smtp_port');
						$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');				
						$mail->setTo($email);
						$mail->setFrom($this->config->get('config_email'));
						$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
						$mail->setSubject(sprintf($this->language->get('mail_subject'), html_entity_decode($this->config->get('config_name'), 							ENT_QUOTES, 'UTF-8')));
						$mail->setHtml($message);
						$mail->send();
					}
		}
        return $this->load->view('extension/module/firstmodule', $data);
    }
    private function validate() {
    	if ((utf8_strlen($this->request->post['firstmodule_spouse_name']) < 3) || (utf8_strlen($this->request->post['firstmodule_spouse_name']) > 32)) {
      		$this->error['spouse_name'] = $this->language->get('error_name');
    	}

    	if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['firstmodule_email'])) {
      		$this->error['firstmodule_email'] = $this->language->get('error_email');
    	}

		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}  	  
  	}
}