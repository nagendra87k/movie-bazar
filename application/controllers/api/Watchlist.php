<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Watchlist extends CI_Controller{

    public function __construct(){

        parent::__construct();
        $this->load->model('AuthLogin_model', 'model');

        $check_auth_client = $this->model->check_auth_client();
        if ($check_auth_client != true) {
            die($this->output->get_output());
        }

    }


    public function createWatchlist(){

        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'POST') {
            json_output(400, array('status' => 400, 'message' => 'Bad request.'));
        }else {
            $check_auth_client = $this->model->check_auth_client();
            if ($check_auth_client == true) {
                $response = $this->model->auth();
                if ($response['status'] == 200) {
                    $post = json_decode(file_get_contents('php://input'), TRUE);
                    $resp = $this->model->createWatchlist($post['uid'],$post['video_id']);
                    json_output($response['status'], $resp);
                }
            }
        }
    }
    public function getWatchlist(){

        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'GET' || $this->uri->segment(4) == '' || is_numeric($this->uri->segment(4)) == FALSE) {
            json_output(400, array('status' => 400, 'message' => 'Bad request.'));
        }else {
            $check_auth_client = $this->model->check_auth_client();
            if ($check_auth_client == true) {
                $response = $this->model->auth();
                if ($response['status'] == 200) {
                    $this->output->set_content_type('application/json');
                    $resp = $this->model->getWatchlist($this->uri->segment(4));
                }
            }
        }
    }
    public function videoRemoveFromWatchlist(){

        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'PUT') {
            json_output(400, array('status' => 400, 'message' => 'Bad request.'));
        }else {
            $check_auth_client = $this->model->check_auth_client();
            if ($check_auth_client == true) {
                $response = $this->model->auth();
                if ($response['status'] == 200) {
                    $post = json_decode(file_get_contents('php://input'), TRUE);
                    $resp = $this->model->videoRemoveFromWatchlist($post['uid'],$post['video_id']);
                    json_output($response['status'], $resp);
                }
            }
        }
    }
}