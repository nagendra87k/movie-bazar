<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class SubCategory extends BaseController{

    public function __construct(){
        parent::__construct();
        $this->load->model('Sub_Category_model','sub_category');
        $this->isLoggedIn();
    }



     public function subCategoriesList(){

        $catId = $this->uri->segment(2);
        $searchText = $this->security->xss_clean($this->input->post('searchText'));
        $data['searchText'] = $searchText;
        $this->load->library('pagination');
        $count = $this->sub_category->subCategoryCount($catId,$searchText);
        //$returns = $this->paginationCompress ( "subCategoriesList/", $count, 10 );
        $data['results'] = $this->sub_category->getSubCategoryList($catId,$searchText, $returns["page"]='', $returns["segment"]='');
        $this->global['pageTitle'] = 'Movie Bazar : Sub-Category Listing';
        $this->loadViews("sub-categories/sub_categories", $this->global, $data, NULL);
    }
    public function addSubCategory(){

        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {

            $this->load->library('form_validation');
            $this->form_validation->set_rules('name','Name','trim|required|max_length[128]');
            if($this->form_validation->run() == FALSE) {
                $this->global['pageTitle'] = 'Movie Bazar : Add Sub-category';
                $this->loadViews("sub-categories/add_new_sub_category", $this->global, NULL, NULL);
            } else {

                $name = ucwords(strtolower($this->security->xss_clean($this->input->post('name'))));
                $cat_Id = $this->input->post('cat_Id');
                $data = array('name'=>$name,'cat_Id'=>$cat_Id);
                $result = $this->sub_category->addSubCategory($data);
                if($result > 0) {
                    $this->session->set_flashdata('success', 'Sub-category created successfully');
                } else {
                    $this->session->set_flashdata('error', 'creation failed');
                }
                redirect('sub-category-list/'.$cat_Id);
            }
        }
    }

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



    function updateSubCategory(){

        $subCategoryId = $this->uri->segment(2);
        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $this->load->library('form_validation');
            $categoryId = $this->input->post('categoryId');
            $this->form_validation->set_rules('name','Sub category Name','trim|required|max_length[128]');
            if($this->form_validation->run() == FALSE) {
                $data['subCategories'] = $this->sub_category->getSubCategoryById($subCategoryId);
                $this->global['pageTitle'] = 'Movie Bazar : Edit Sub Category';
                $this->loadViews("sub-categories/editSubCategory", $this->global, $data, NULL);
            }
            else {
                $name = $this->security->xss_clean($this->input->post('name'));
                $data = array('name'=>$name,'updated_by'=>$this->vendorId, 'updated_on'=>date('Y-m-d H:i:s'));

                $result = $this->sub_category->editSubCategory($data, $subCategoryId);

                if($result == true)
                {
                    $this->session->set_flashdata('success', 'Sub category updated successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'Sub category updation failed');
                }

                redirect('sub-category-list/'.$categoryId);
            }
        }
    }

    function deleteSubCategory()
    {
        if($this->isAdmin() == TRUE)
        {
            echo(json_encode(array('status'=>'access')));
        }
        else
        {
            $subCategoryId = $this->input->post('sub_CategoryId');
            $data = array('is_deleted'=>1,'updated_by'=>$this->vendorId, 'updated_on'=>date('Y-m-d H:i:s'));
            $result = $this->sub_category->deleteSubCategory($subCategoryId, $data);

            if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
            else { echo(json_encode(array('status'=>FALSE))); }
        }
    }


   /* function addVideoByCategory(){

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
    }*/






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