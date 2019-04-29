<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ForgotPassword extends CI_Controller{

    public function __construct(){
        parent::__construct();
        $this->load->model('AuthLogin_model','auth');
    }
    public function sendSecurityCode($emailId){

        if(!empty($emailId)) {
            $reponse = $this->auth->checkUserExist($emailId);

            if($reponse){

            }
            /*$emailId = $_REQUEST['email'];
            $sql = "SELECT email_id FROM  `gz_app_users`  where email_id ='" . $emailId . "'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                $securityCode = mt_rand(100000, 999999);
                $status = sendMail($emailId, $securityCode);
                if ($status){
                    $sql = "UPDATE gz_app_users SET security_code='".$securityCode."' WHERE email_id='".$emailId."'";
                    if ($conn->query($sql) === TRUE) {
                        echo json_encode(array('status' => 1, 'msg' => 'Security code has send your email!'));
                    }else{
                        echo json_encode(array('status' => 0, 'msg' => 'Update failed. please try again!'));
                    }

                }else{
                    echo json_encode(array('status' => 0, 'msg' => 'Mail failed. please try again!'));
                }
            }else{
                echo json_encode(array('status' => 0, 'msg' => "Email id dosn't exist our system."));
            }*/
        }else {
            echo json_encode(array('status' => 0, 'msg' => 'Email field can not be empty.!'));
        }
    }
    /*public function m2(){
        if(!empty($_REQUEST['email']) && !empty($_REQUEST['security_code'])) {
            $emailId = $_REQUEST['email'];
            $securityCode = $_REQUEST['security_code'];
            $sql = "SELECT security_code FROM  `gz_app_users`  where email_id ='" . $emailId . "'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                $row = mysqli_fetch_row($result);
                $dbSecCode = $row[0];
                if(!empty($dbSecCode)){
                    if($securityCode==$dbSecCode){
                        echo json_encode(array('status' => 1, 'msg' => 'Security code is matched!'));
                    }else{
                        echo json_encode(array('status' => 0, 'msg' => 'Security is not matched!'));
                    }
                }else{
                    echo json_encode(array('status' => 0, 'msg' => 'Security has been not expired!'));
                }
            }else{
                echo json_encode(array('status' => 0, 'msg' => "Email id dosn't exist."));
            }
        }else {
            echo json_encode(array('status' => 0, 'msg' => 'Security code field can not be empty.!'));
        }
    }
    public function m3(){
        if(!empty($_REQUEST['email']) && !empty($_REQUEST['change_password'])) {
            $emailId = $_REQUEST['email'];
            $changePassword = $_REQUEST['change_password'];
            $sql = "UPDATE gz_app_users SET password ='".base64_encode($changePassword)."' WHERE email_id='".$emailId."'";
            if ($conn->query($sql) === TRUE) {
                $appName = $data->getAppNameByEmail($conn, $emailId);
                $status = sendMailRevision($appName, $emailId);
                if($status){
                    echo json_encode(array('status' => 1, 'msg' => 'Password reset successfully done.!'));
                }else{
                    echo json_encode(array('status' => 0, 'msg' => 'Step failed. please try again!'));
                }
            }else{
                echo json_encode(array('status' => 0, 'msg' => 'Step failed. please try again!'));
            }
        }else {
            echo json_encode(array('status' => 0, 'msg' => 'Email and change_password fields can not be empty.!'));
        }
    }
    public function sendMail($email, $securityCode){

        $message = 'To verify your identity, please use the following code :'.$securityCode.'';
        $subject = "Password reset";
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";
        $sendername = strtok($email, "@");
        $headers .= "From: " . $sendername . " <" . $email . ">\r\n" .
            'Reply-To: info@gamooz.com' . "\r\n" .
            'X-Mailer: PHP/' . phpversion();

        $req = emailAPICall($email, $subject, $message, $headers);
        if($req){
            return true;
        }else{
            return false;
        }
    }*/

}