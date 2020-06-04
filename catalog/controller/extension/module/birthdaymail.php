<?php
class ControllerExtensionModuleBirthdaymail extends Controller {
	private $error = array();

	public function index() {
        /**
         * In order to get the value from the backend, we will use $this->config->get()
         * The argument passed in the get method must be same as the name of field we used in the admin end
         */

        $this->language->load('extension/module/firstmodule');
	 
		$this->load->model('account/firstmodule');

       
 		$arrs = $this->model_account_firstmodule->birthdayReminder($this->request->post);
 		
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
						$mail->setSubject(sprintf($this->language->get('mail_subject'), html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8')));
						$mail->setHtml($message);
						$mail->send();
					}
       // return $this->load->view('extension/module/firstmodule', $data);
    }
}