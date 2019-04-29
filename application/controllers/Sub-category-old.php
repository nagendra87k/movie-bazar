<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class SubCategory extends BaseController{

    public function __construct(){
        parent::__construct();
        $this->load->model('Sub_Category_model','sub_category');
        $this->isLoggedIn();
    }



     function subCategoriesList(){
        echo "Loade";die;
        $catId = $this->uri->segment(2);
        $searchText = $this->security->xss_clean($this->input->post('searchText'));
        $data['searchText'] = $searchText;
        $this->load->library('pagination');
        $count = $this->sub_category->subCategoryCount($catId,$searchText);
        $returns = $this->paginationCompress ( "userListing/", $count, 10 );
        $data['results'] = $this->sub_category->getSubCategoryList($catId,$searchText, $returns["page"], $returns["segment"]);
        $this->global['pageTitle'] = 'Movie Bazar : Sub-Category Listing';
        $this->loadViews("sub-categories/sub_categories", $this->global, $data, NULL);
    }
    public function addNewCategory(){

        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {

            $this->load->library('form_validation');
            $this->form_validation->set_rules('name','Name','trim|required|max_length[128]');
            if($this->form_validation->run() == FALSE) {
                $this->addNew();
            } else {

                $name = ucwords(strtolower($this->security->xss_clean($this->input->post('name'))));
                $data = array('category_name'=>$name);
                //$this->load->model('category');
                $result = $this->sub_category->addNewCategory($data);

                if($result > 0) {
                    $this->session->set_flashdata('success', 'New Category created successfully');
                } else {
                    $this->session->set_flashdata('error', 'Category creation failed');
                }

                redirect('categoriesList');
            }
        }
    }

    /**
     * This function is used to load the add new form
     */
    function addNew()
    {
        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {

           // $this->load->model('category');
            // $data['roles'] = $this->category->getUserRoles();

            $this->global['pageTitle'] = 'Movie Bazar : Add New Category';

            $this->loadViews("sub-categories/addNewCategory", $this->global, NULL, NULL);
        }
    }


    /**
     * This function is used load user edit information
     * @param number $userId : Optional : This is user id
     */
    function editCategory(){
        $categoryId = $this->uri->segment(2);
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        } else {

            if($categoryId == null) {
                redirect('categoriesList');
            }

            $data['categories'] = $this->sub_category->getCategoryById($categoryId);
            $this->global['pageTitle'] = 'Movie Bazar : Edit Category';

            $this->loadViews("sub-categories/editCategory", $this->global, $data, NULL);
        }
    }


    /**
     * This function is used to edit the user information
     */
    function updateCategory()
    {
        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $this->load->library('form_validation');

            $categoryId = $this->input->post('categoryId');

            $this->form_validation->set_rules('name','Category Name','trim|required|max_length[128]');


            if($this->form_validation->run() == FALSE) {
                $this->editCategory($categoryId);
            }
            else {
                $name = $this->security->xss_clean($this->input->post('name'));
                $data = array('category_name'=>$name,'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));

                $result = $this->sub_category->editCategory($data, $categoryId);

                if($result == true)
                {
                    $this->session->set_flashdata('success', 'Category updated successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Category updation failed');
                }

                redirect('categoriesList');
            }
        }
    }


    /**
     * This function is used load user edit information
     * @param number $userId : Optional : This is user id
     */


    /**
     * This function is used to delete the user using userId
     * @return boolean $result : TRUE / FALSE
     */
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
            // print_r($data);die;
            $result = $this->sub_category->deleteCategory($categoryId, $data);

            if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
            else { echo(json_encode(array('status'=>FALSE))); }
        }
    }


    function addVideoByCategory(){

        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $this->global['pageTitle'] = 'Movie Bazar : Add Video';
            $this->loadViews("sub-categories/addNewVideo", $this->global, NULL, NULL);
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

            $count = $this->sub_category->categoryListingCount($searchText);

            $returns = $this->paginationCompress ( "userListing/", $count, 10 );

            $data['results'] = $this->sub_category->categoryListing($searchText, $returns["page"], $returns["segment"]);

            $this->global['pageTitle'] = 'Movie Bazar : Video Listing';

            //$this->loadViews("categories/categories", $this->global, $data, NULL);
            $this->loadViews("sub-categories/videos", $this->global, $data, NULL);
        }
    }






    /**
     * Page not found : error 404
     */
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