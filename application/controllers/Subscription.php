<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Subscription extends BaseController{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('subscription_model','subscription');
        $this->isLoggedIn();
        $this->load->library('form_validation');
        $this->load->library('pagination');
    }



    function plansListing(){

        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $categoryId = $this->uri->segment(2);
            $searchText = $this->security->xss_clean($this->input->post('searchText'));
            $data['searchText'] = $searchText;

            $count = $this->subscription->plansListingCount($searchText);
            $returns = $this->paginationCompress ( "plansListing/", $count, 10 );
            $data['results'] = $this->subscription->plansListing($searchText, $returns["page"], $returns["segment"]);
            $this->global['pageTitle'] = 'Movie Bazar : Plan Listing';
            $this->loadViews("subscriptions/plans", $this->global, $data, NULL);
        }
    }



    function addNewPlan(){
        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $this->global['pageTitle'] = 'Movie Bazar : Add Plan';
            $this->form_validation->set_rules('name','Name','trim|required|max_length[128]');
            if($this->form_validation->run() == FALSE) {
                $this->loadViews("subscriptions/addPlan", $this->global, NULL, NULL);
            } else {
                $result = $this->subscription->addNewPlan();
                if($result > 0) {
                    $this->session->set_flashdata('success', 'New Plan created successfully');
                } else {
                    $this->session->set_flashdata('error', 'Plan creation failed');
                }

                redirect('plansListing');
            }
        }
    }

    function updatePlan(){

        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $PlanId = $this->uri->segment(2);
            $this->global['pageTitle'] = 'Movie Bazar : Edit Plan';
            $data['plans'] = $this->subscription->getPlanDetailsById($PlanId);
            $this->form_validation->set_rules('name','Name','trim|required|max_length[128]');
            if($this->form_validation->run() == FALSE) {
                $this->loadViews("subscriptions/editPlan", $this->global, $data, NULL);
            }
            else {
                $result = $this->subscription->updatePlan($PlanId);
                if($result == true) {
                    $this->session->set_flashdata('success', 'Plan updated successfully');
                }
                else {
                    $this->session->set_flashdata('error', 'Plan updation failed');
                }
                redirect('plansListing');
            }
        }
    }

    function deletePlan(){

        if($this->isAdmin() == TRUE) {
            echo(json_encode(array('status'=>'access')));
        }
        else {
            $planId = $this->input->post('planId');
            $data = array('is_deleted'=>1,'modified_by'=>$this->vendorId, 'modified_on'=>date('Y-m-d H:i:s'));
            $result = $this->subscription->deletePlan($planId, $data);
            if ($result > 0) {
                echo(json_encode(array('status'=>TRUE)));
            } else {
                echo(json_encode(array('status'=>FALSE)));
            }
        }
    }



    function pageNotFound(){

        $this->global['pageTitle'] = 'Movie Bazar : 404 - Page Not Found';
        $this->loadViews("404", $this->global, NULL, NULL);
    }
}

?>