<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Video extends CI_Controller{

    public function __construct(){

        parent::__construct();
        $this->load->model('AuthLogin_model', 'model');

        $check_auth_client = $this->model->check_auth_client();
        if ($check_auth_client != true) {
            die($this->output->get_output());
        }

    }


    public function getVideoDetails(){

        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'GET' || $this->uri->segment(4) == '' || is_numeric($this->uri->segment(4)) == FALSE) {
            json_output(400, array('status' => 400, 'message' => 'Bad request.'));
        }else {
            $check_auth_client = $this->model->check_auth_client();
            if ($check_auth_client == true) {
                $response = $this->model->auth();
                if ($response['status'] == 200) {
                    $this->output->set_content_type('application/json');
                    $this->model->getVideoDetails($this->uri->segment(4));
                }
            }
        }
    }
}