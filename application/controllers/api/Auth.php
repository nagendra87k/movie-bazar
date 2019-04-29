<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

    public function __construct(){

        parent::__construct();
        $this->load->model('AuthLogin_model','auth');
    }

    public function login()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'POST'){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            $check_auth_client = $this->auth->check_auth_client();
            if($check_auth_client == true){
                $params = json_decode(file_get_contents('php://input'), TRUE);
                //$params = $this->input->post();
                $emailId = $params['email_id'];
                $password = $params['password'];
                $response = $this->auth->login($emailId,$password);
                json_output($response['status'],$response);
            }
        }
    }

    public function logout()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'GET'){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            $check_auth_client = $this->auth->check_auth_client();
            if($check_auth_client == true){
                $response = $this->auth->logout();
                json_output($response['status'],$response);
            }
        }
    }

}
