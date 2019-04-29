<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Webservices extends BaseController{

    public function __construct(){
        parent::__construct();
        $this->load->model('video_model','video');
    }
    public function getVideosDetails(){
        $this->db->select('t1.*');
        $this->db->from('tbl_videos as t1');
        $this->db->where('t1.is_deleted', 0);
        $query = $this->db->get();
        $result = $query->result();
        echo json_encode($result) ;
    }
}