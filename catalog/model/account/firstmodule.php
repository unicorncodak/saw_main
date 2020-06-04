<?php
class ModelAccountfirstmodule extends Model {

	public function checkRegisteredEmail($data) {
  	   
	   $query=$this->db->query("SELECT * FROM " . DB_PREFIX . "first_module where email='".$data['firstmodule_email']."'");
	   
	   return $query->num_rows;
	   
	}

	public function UpdateRegisterEmail($data) {
  	   
	   $query=$this->db->query("UPDATE  " . DB_PREFIX . "first_module SET name ='".$data['firstmodule_spouse_name']."' where email='".$data['firstmodule_email']."'");

	}

	public function subscribe($data) {

		   $this->db->query(" INSERT INTO " . DB_PREFIX . "first_module SET email='".$data['firstmodule_email']."',name='".$data['firstmodule_spouse_name']."' ,spouse_dob='".$data['firstmodule_spouse_dob']."'");
	}

	public function birthdayReminder($data){
		$query = $this->db->query(" SELECT * FROM " . DB_PREFIX ."first_module WHERE DATE_ADD(STR_TO_DATE(spouse_dob, '%m/%d/%Y'), INTERVAL YEAR(CURDATE())-YEAR(STR_TO_DATE(spouse_dob, '%m/%d/%Y'))
                         + IF(DAYOFYEAR(CURDATE()) > DAYOFYEAR(STR_TO_DATE(spouse_dob, '%m/%d/%Y')),1,0) YEAR) BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 1 DAY) AND (MONTH(STR_TO_DATE(spouse_dob, '%m/%d/%Y')) <> MONTH(CURDATE()) OR DAY(STR_TO_DATE(spouse_dob, '%m/%d/%Y')) <> DAY(CURDATE())) ");
		return $query->rows;
	}
}
?>
