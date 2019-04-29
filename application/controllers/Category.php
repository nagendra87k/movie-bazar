<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Category extends BaseController{

    public function __construct(){

        parent::__construct();
        $this->load->model('category_model','category');
        $this->isLoggedIn();
    }
    function categoryListing(){

            $searchText = $this->security->xss_clean($this->input->post('searchText'));
            $data['searchText'] = $searchText;
            $this->load->library('pagination');
            $count = $this->category->categoryListingCount($searchText);
            $returns = $this->paginationCompress ( "userListing/", $count, 10 );
            $data['results'] = $this->category->categoryListing($searchText, $returns["page"], $returns["segment"]);
            $this->global['pageTitle'] = 'Movie Bazar : Category Listing';
            $this->loadViews("categories/categories", $this->global, $data, NULL);
    }
    public function addNewCategory(){

        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {

            $this->load->library('form_validation');
            $this->form_validation->set_rules('name','Name','trim|required|max_length[128]');
            if($this->form_validation->run() == FALSE) {
                $this->global['pageTitle'] = 'Movie Bazar : Add New Category';
                $this->loadViews("categories/addNewCategory", $this->global, NULL, NULL);
            } else {
                $name = ucwords(strtolower($this->security->xss_clean($this->input->post('name'))));
                $data = array('category_name'=>$name);
                $result = $this->category->addNewCategory($data);
                if($result > 0) {
                    $this->session->set_flashdata('success', 'New Category created successfully');
                } else {
                    $this->session->set_flashdata('error', 'Category creation failed');
                }

                redirect('categories-list');
            }
        }
    }

    public function updateCategory(){

        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $this->load->library('form_validation');
            $categoryId = $this->uri->segment(2);
            $this->form_validation->set_rules('name','Category Name','trim|required|max_length[128]');
            if($this->form_validation->run() == FALSE) {
                if($categoryId == null) {
                    redirect('categories-list');
                }
                $data['categories'] = $this->category->getCategoryById($categoryId);
                $this->global['pageTitle'] = 'Movie Bazar : Edit Category';
                $this->loadViews("categories/editCategory", $this->global, $data, NULL);
            }
            else {
                $name = $this->security->xss_clean($this->input->post('name'));
                $data = array('category_name'=>$name,'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));

                $result = $this->category->editCategory($data, $categoryId);

                if($result == true)
                {
                    $this->session->set_flashdata('success', 'Category updated successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Category updation failed');
                }

                redirect('categories-list');
            }
        }
    }

    function deleteCategory()
    {
        if($this->isAdmin() == TRUE)
        {
            echo(json_encode(array('status'=>'access')));
        }
        else
        {
            $categoryId = $this->input->post('categoryId');
            $data = array('isDeleted'=>1,'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));
            $result = $this->category->deleteCategory($categoryId, $data);

            if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
            else { echo(json_encode(array('status'=>FALSE))); }
        }
    }


    /*function addVideoByCategory(){

        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $this->global['pageTitle'] = 'Movie Bazar : Add Video';
            $this->loadViews("categories/addNewVideo", $this->global, NULL, NULL);
        }
    }


    function videosListing()
    {
        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $searchText = $this->security->xss_clean($this->input->post('searchText'));
            $data['searchText'] = $searchText;

            $this->load->library('pagination');

            $count = $this->category->categoryListingCount($searchText);

            $returns = $this->paginationCompress ( "userListing/", $count, 10 );

            $data['results'] = $this->category->categoryListing($searchText, $returns["page"], $returns["segment"]);

            $this->global['pageTitle'] = 'Movie Bazar : Video Listing';

            //$this->loadViews("categories/categories", $this->global, $data, NULL);
            $this->loadViews("categories/videos", $this->global, $data, NULL);
        }
    }*/

    function checkCategoryIsExist(){
        echo "loaded";die;
    }

    function pageNotFound(){

        $this->global['pageTitle'] = 'Movie Bazar : 404 - Page Not Found';
        $this->loadViews("404", $this->global, NULL, NULL);
    }

    /**
     * This function used to show login history
     * @param number $userId : This is user id
     */

}

?>