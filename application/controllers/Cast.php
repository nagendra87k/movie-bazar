<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Cast extends BaseController
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('video_model','video');
        $this->load->model('cast_model','cast');
        $this->isLoggedIn();
        $this->load->library('form_validation');
    }


    function addCastAndCrew(){
        $videoId = $this->uri->segment(2);
        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $this->global['pageTitle'] = 'Movie Bazar : Add Cast & Crew';
            $this->form_validation->set_rules('starring','Starring','trim|required');
            if($this->form_validation->run() == FALSE) {
                $this->loadViews("cast/addCast", $this->global, NULL, NULL);
            } else {
                $result = $this->cast->addCastAndCrew();
                if($result > 0) {
                    $this->session->set_flashdata('success', 'Cast&crew added successfully');
                } else {
                    $this->session->set_flashdata('error', 'Opration failed');
                }
                $video['row'] = $this->video->getVideoDetailsById($videoId);
                $categoryId =  $video['row']->category_id;
                $subCategoryId =  $video['row']->sub_category_id;
                redirect('videos-list/'.$subCategoryId.'/'.$categoryId);
            }
        }
    }

    function updateCastAndCrew(){

        if($this->isAdmin() == TRUE) {
            $this->loadThis();
        } else {
            $videoId = $this->uri->segment(2);
            $this->global['pageTitle'] = 'Movie Bazar : Edit Cast & Crew';
            $data['cast'] = $this->cast->getCastDetailsById($videoId);
            $this->form_validation->set_rules('starring','Starring','trim|required');
            $video['row'] = $this->video->getVideoDetailsById($videoId);
            $categoryId =  $video['row']->category_id;
            $subCategoryId =  $video['row']->sub_category_id;
            if($this->form_validation->run() == FALSE) {
                $this->loadViews("cast/editCast", $this->global, $data, NULL);
            }
            else {
                $result = $this->cast->updateCastAndCrew($videoId);
                if($result == true) {
                    $this->session->set_flashdata('success', 'Cast & Crew updated successfully');
                }
                else {
                    $this->session->set_flashdata('error', 'updation failed');
                }
               redirect('videos-list/'.$subCategoryId.'/'.$categoryId);
			 
            }
        }
    }

    function pageNotFound(){

        $this->global['pageTitle'] = 'Movie Bazar : 404 - Page Not Found';
        $this->loadViews("404", $this->global, NULL, NULL);
    }
}

?>