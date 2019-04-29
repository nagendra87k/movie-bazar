<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Controller{

    public function __construct(){

        parent::__construct();
        $this->load->model('AuthLogin_model','auth');
    }

    public function singup(){

        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'POST'){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            $params = json_decode(file_get_contents('php://input'), TRUE);
            //$post = $this->input->post();
            $emailId = $params['email_id'];
            if(!empty($emailId)){
                if($this->auth->checkUserExist($emailId)==TRUE){
                    $resp = $this->auth->createUser();
                    json_output($resp['status'], $resp);
                }else{
                    json_output(400,array('status' => 400,'message' => 'Email id already exisit!.'));
                }
            }else{
                json_output(400,array('status' => 400,'message' => 'Email can not empty'));
            }
        }
    }
    public function forgotPassword(){

        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'POST'){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            //$post = $this->input->post();
            $post = json_decode(file_get_contents('php://input'), TRUE);
            $emailId = $post['email_id'];
            if(!empty($emailId)){
                if($this->auth->checkUserExist($emailId)==false){
                    $resp = $this->auth->generateSecurityCode($emailId);
                    json_output($resp['status'], $resp);
                }else{
                    json_output(400,array('status' => 400,'message' => 'Your email id not exisit in our system!.'));
                }
            }else{
                json_output(400,array('status' => 400,'message' => 'Email can not empty'));
            }
        }
    }
    public function matchSecrityCode(){

        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'POST'){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            $post = json_decode(file_get_contents('php://input'), TRUE);
            $resp = $this->auth->matchSecrityCode($post['security_code'],$post['email_id']);
            json_output($resp['status'], $resp);
        }
    }
    public function resetPassword(){

        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'POST'){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            $post = json_decode(file_get_contents('php://input'), TRUE);
            $resp = $this->auth->resetPassword($post['new_password'],$post['email_id']);
            json_output($resp['status'], $resp);
        }
    }


}