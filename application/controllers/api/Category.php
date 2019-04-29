<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends CI_Controller {

    public function __construct(){

        parent::__construct();
        $this->load->model('AuthLogin_model','model');

        $check_auth_client = $this->model->check_auth_client();
		if($check_auth_client != true){
			die($this->output->get_output());
		}

    }

    public function getAllCategory()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'GET'){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            $check_auth_client = $this->model->check_auth_client();
            if($check_auth_client == true){
                $response = $this->model->auth();
                if($response['status'] == 200){
                    $resp = $this->model->getAllCategorry();
                    json_output($response['status'],$resp);
                }
            }
        }
    }

    public function getAllSubCategory(){

        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'GET' || $this->uri->segment(4) == '' || is_numeric($this->uri->segment(4)) == FALSE){
       // if($method != 'GET'){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            $check_auth_client1 = $this->model->check_auth_client();
            if($check_auth_client1 == true){
                $response1 = $this->model->auth();
                if($response1['status'] == 200){
                    //$this->output->set_content_type('application/json');
                  $resp1 = $this->model->getAllSubCategory($this->uri->segment(4));
                    json_output($response1['status'],$resp1);
                }
            }
        }
    }

    /*public function create()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'POST'){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            $check_auth_client = $this->MyModel->check_auth_client();
            if($check_auth_client == true){
                $response = $this->MyModel->auth();
                $respStatus = $response['status'];
                if($response['status'] == 200){
                    $params = json_decode(file_get_contents('php://input'), TRUE);
                    if ($params['title'] == "" || $params['author'] == "") {
                        $respStatus = 400;
                        $resp = array('status' => 400,'message' =>  'Title & Author can\'t empty');
                    } else {
                        $resp = $this->MyModel->book_create_data($params);
                    }
                    json_output($respStatus,$resp);
                }
            }
        }
    }

    public function update($id)
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'PUT' || $this->uri->segment(3) == '' || is_numeric($this->uri->segment(3)) == FALSE){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            $check_auth_client = $this->MyModel->check_auth_client();
            if($check_auth_client == true){
                $response = $this->MyModel->auth();
                $respStatus = $response['status'];
                if($response['status'] == 200){
                    $params = json_decode(file_get_contents('php://input'), TRUE);
                    $params['updated_at'] = date('Y-m-d H:i:s');
                    if ($params['title'] == "" || $params['author'] == "") {
                        $respStatus = 400;
                        $resp = array('status' => 400,'message' =>  'Title & Author can\'t empty');
                    } else {
                        $resp = $this->MyModel->book_update_data($id,$params);
                    }
                    json_output($respStatus,$resp);
                }
            }
        }
    }

    public function delete($id)
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'DELETE' || $this->uri->segment(3) == '' || is_numeric($this->uri->segment(3)) == FALSE){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {
            $check_auth_client = $this->MyModel->check_auth_client();
            if($check_auth_client == true){
                $response = $this->MyModel->auth();
                if($response['status'] == 200){
                    $resp = $this->MyModel->book_delete_data($id);
                    json_output($response['status'],$resp);
                }
            }
        }
    }*/

}
