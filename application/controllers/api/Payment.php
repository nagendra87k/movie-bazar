<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payment extends CI_Controller
{

    public function __construct(){

        parent::__construct();
        $this->load->model('AuthLogin_model', 'model');

    }

    public function sucess(){
        $this->global['message'] = 'Movie Bazar : Add Cast & Crew';
        $this->load->view("subscriptions/sucess", $this->global, NULL, NULL);
    }
    public function failure()
    {
        $this->global['message'] = 'Movie Bazar : Add Cast & Crew';
        $this->load->view("subscriptions/failure", $this->global, NULL, NULL);
    }
    public function transectionAddSever(){

        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'POST'){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            $check_auth_client = $this->model->check_auth_client();
            if ($check_auth_client == true) {
                $response = $this->model->auth();
                if ($response['status'] == 200) {
                    $resp = $this->model->createTransection();
                    json_output($response['status'], $resp);
                }
            }
        }
    }
}