<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Showcase extends BaseController{

    public function __construct(){

        parent::__construct();
        $this->isLoggedIn();
        $this->load->library('form_validation');
        $this->load->library('pagination');
        $this->load->model('showcase_model','showcase');
    }


    public function ShowcaseList(){

       /* if(getRole() == 1 || getRole() == 2 || getRole() == 3) {
            $this->loadThis();
        } else {*/
            $categoryId = $this->uri->segment(2);
            $searchText = $this->security->xss_clean($this->input->post('searchText'));
            $data['searchText'] = $searchText;

            $count = $this->showcase->showcaseListingCount($searchText,$categoryId);
            $returns = $this->paginationCompress ( "videosListing/", $count, 10 );
            $data['results'] = $this->showcase->showcaseListing($categoryId, $searchText, $returns["page"], $returns["segment"]);
            $this->global['pageTitle'] = 'Movie Bazar : Showcase Listing';
            $this->loadViews("showcases/showcases", $this->global, $data, NULL);
        //}
    }
    function addShowcase(){

        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $categoryId = $this->uri->segment(2);
            $this->global['pageTitle'] = 'Movie Bazar : Add Showcase';
            $this->form_validation->set_rules('book','Book','trim|required');
            $data['videos'] = $this->showcase->getVideoByCategoryId($categoryId);
            if($this->form_validation->run() == FALSE) {
                $this->loadViews("showcases/add_showcase", $this->global, $data, NULL);
            } else {
                $result = $this->showcase->addNewShowcase($categoryId);
                if($result > 0) {
                    $this->session->set_flashdata('success', 'Showcase created successfully');
                } else {
                    $this->session->set_flashdata('error', 'creation failed');
                }

                redirect('showcase-list/'.$categoryId);
            }
        }
    }

    function updateShowcase(){

        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $showcaseId = $this->uri->segment(2);
            $categoryId = $this->uri->segment(3);
            $this->global['pageTitle'] = 'Movie Bazar : Edit Showcase';
            $data['result'] = $this->showcase->getShowcaseById($showcaseId);
            $data['videos'] = $this->showcase->getVideoByCategoryId($categoryId);
            $this->form_validation->set_rules('book','Book','trim|required');
            if($this->form_validation->run() == FALSE) {
                $this->loadViews("showcases/edit_showcase", $this->global, $data, NULL);
            }
            else {
                $result = $this->showcase->updateShowcase($showcaseId,$categoryId);
               // die;
                if($result == true) {
                    $this->session->set_flashdata('success', 'Showcase updated successfully');
                }
                else {
                    $this->session->set_flashdata('error', 'updation failed');
                }
                redirect('showcase-list/'.$categoryId);
            }
        }
    }
    function deleteShowcase()
    {
        if($this->isAdmin() == TRUE)
        {
            echo(json_encode(array('status'=>'access')));
        }
        else
        {
            $id = $this->input->post('id');
            $data = array('is_deleted'=>1,'modified_by'=>$this->vendorId, 'modified_on'=>date('Y-m-d H:i:s'));
            $result = $this->showcase->deleteShowcase($id, $data);

            if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
            else { echo(json_encode(array('status'=>FALSE))); }
        }
    }



    function pageNotFound(){

        $this->global['pageTitle'] = 'Movie Bazar : 404 - Page Not Found';
        $this->loadViews("404", $this->global, NULL, NULL);
    }
}