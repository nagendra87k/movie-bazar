<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Video_model extends CI_Model{

    function videoListingCount($searchText = '',$categoryId, $subCategoryId){
        $this->db->select('t1.*');
        $this->db->from('tbl_videos as t1');
        if(!empty($searchText)) {
            $likeCriteria = "(t1.name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('t1.category_id', $categoryId);
        $this->db->where('t1.sub_category_id', $subCategoryId);
        if(getRole() != 1)
        $this->db->where('t1.created_by', getUserId());
        $this->db->where('t1.is_deleted', 0);
        $query = $this->db->get();
        return $query->num_rows();
    }

    function videoListing($categoryId, $subCategoryId, $searchText = '', $page, $segment){
        $this->db->select('t1.*');
        $this->db->from('tbl_videos as t1');
        if(!empty($searchText)) {
            $likeCriteria = "(t1.name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('t1.is_deleted', 0);
        $this->db->where('t1.category_id', $categoryId);
        $this->db->where('t1.sub_category_id', $subCategoryId);
        if(getRole() != 1)
            $this->db->where('t1.created_by', getUserId());
        //$this->db->limit($page, $segment);
        $query = $this->db->get();
        $result = $query->result();
        return $result;
    }
    function addNewVideo(){
        $post = $this->input->post();

        $ins = array();
        if(!empty($post['subscription'])){ $ins['subscription'] = $post['subscription']; }else{ $ins['subscription'] = 0; }
        //$ins['plan_id'] = $post['plan_id'];
        $ins['category_id'] = $post['category_id'];
        $ins['sub_category_id'] = $post['sub_category_id'];
        $ins['name'] = $post['name'];
        $ins['tags'] = $post['tags'];
        $ins['directed_by'] = $post['directed_by'];
       // $ins['studio'] = $post['studio'];
        $ins['language'] = $post['language'];
        $ins['hours_duration'] = $post['hours_duration'];
        $ins['minutes_duration'] = $post['minutes_duration'];
        if(!empty($post['release_year']))
        $ins['release_year'] =  date('Y-m-d', strtotime(str_replace('-','/', $post['release_year'])));
        $ins['subtitle'] = $post['subtitle'];
        $ins['audio'] = $post['audio'];
        $ins['budget'] = $post['budget'];
        $ins['rating'] = $post['rating'];
        $ins['subscription'] = $post['subscription'];
        $ins['description'] = $post['description'];
        if(getRole()== ROLE_ADMIN)
            $ins['is_published'] = 1;
        $ins['created_by'] = getUserId();
        $ins['created_on'] = date('Y-m-d H:i:s');
        $this->db->insert('tbl_videos', $ins);
        $insert_id = $this->db->insert_id();
        $up = array();
        if (!empty($_FILES['poster_image']['name'])) {
            $config = array();
            $config['upload_path'] = POSTER;
            $ext = end(explode(".", $_FILES['poster_image']['name']));
            $config['file_name'] = $upload_config['file_name'] = $insert_id.'-'.$post['category_id']. '.' . $ext;
            $config['allowed_types'] = 'png|jpg|jpeg';

            $config['overwrite'] = TRUE;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('poster_image')){
                $result = $this->upload->data();
                $up['poster'] = $result['file_name'];
            }else{
                echo $this->upload->display_errors();die;
            }
        }
        if (!empty($_FILES['trailer']['name'])) {
            $config = array();
            $config['upload_path'] = TRAILER;
           // $config['max_size']    = '1024';
            $ext = end(explode(".", $_FILES['trailer']['name']));
            $config['file_name'] = $upload_config['file_name'] = $insert_id.'-'.$post['category_id']. '.' . $ext;
            $config['allowed_types'] = 'mp4';
            $config['max_size'] = '3072';
            $config['overwrite'] = TRUE;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('trailer')){
                $result = $this->upload->data();
                $up['trailer'] = $result['file_name'];
            }else{
                echo $this->upload->display_errors();die;
            }
        }


        if (!empty($_FILES['full_video']['name'])) {
            $config = array();
            $config['upload_path'] = VIDEOS;
           // $config['max_size']    = '1024';
            $ext = end(explode(".", $_FILES['full_video']['name']));
            $config['file_name'] = $upload_config['file_name'] = $insert_id.'-'.$post['category_id']. '.' . $ext;
            $config['allowed_types'] = 'mp4 | avi';
            $config['overwrite'] = TRUE;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('full_video')){
                $result = $this->upload->data();
                $up['full_video'] = $result['file_name'];
            }else{
                echo $this->upload->display_errors();die;
            }
        }
        if(!empty($up)){
            $this->db->where('id',$insert_id);
            $this->db->update('tbl_videos', $up);
            $insert_id = $this->db->insert_id();
        }
        return $insert_id;
    }


    function getVideoDetailsById($videoId){
        $this->db->where('id', $videoId);
        $query = $this->db->get('tbl_videos');
        return $query->row();
    }

    function updateVideo($videoId){

        $post = $this->input->post();
        $up = array();
        $up['category_id'] = $post['category_id'];
        if(isset($post['subscription'])){ $up['subscription'] = $post['subscription']; }else{$ins['subscription'] = 0;}
        $up['name'] = $post['name'];
        $up['directed_by'] = $post['directed_by'];
        $up['tags'] = $post['tags'];
        //$up['studio'] = $post['studio'];
        $up['language'] = $post['language'];
        $up['hours_duration'] = $post['hours_duration'];
        $up['minutes_duration'] = $post['minutes_duration'];
        if(!empty($post['release_year']))
            $up['release_year'] =  date('Y-m-d', strtotime(str_replace('-','/', $post['release_year'])));
        $up['subtitle'] = $post['subtitle'];
        $up['audio'] = $post['audio'];
        $up['budget'] = $post['budget'];
        $up['rating'] = $post['rating'];
        $up['subscription'] = $post['subscription'];
        $up['video_url'] = $post['video_url'];
        if(getRole()==ROLE_ADMIN)
            $up['is_published'] = 1;
        $up['description'] = $post['description'];
        $up['modified_by'] = getUserId();
        $up['modified_on'] = date('Y-m-d H:i:s');

        // Load Library
        $this->load->library('s3_upload');
        $sample_file = TRAILER."2-2.mp4";

        $file_url = $this->s3_upload->upload_file($sample_file);

        var_dump($file_url);
        die;

        if (!empty($_FILES['poster_image']['name'])) {
            $config = array();
            $config['upload_path'] = POSTER;
            $ext = end(explode(".", $_FILES['poster_image']['name']));
            $config['file_name'] = $upload_config['file_name'] = $videoId.'-'.$post['category_id']. '.' . $ext;
            $config['allowed_types'] = 'png|jpg|jpeg';
            $config['overwrite'] = TRUE;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('poster_image')){
                $result = $this->upload->data();
                $up['poster'] = $result['file_name'];
            }else{
                echo $this->upload->display_errors();die;
            }
        }
        if (!empty($_FILES['trailer']['name'])) {
            $config = array();
            $config['upload_path'] = TRAILER;
            //$config['max_size']    = '1024';
            $ext = end(explode(".", $_FILES['trailer']['name']));
            $config['file_name'] = $upload_config['file_name'] = $videoId.'-'.$post['category_id']. '.' . $ext;
            $config['allowed_types'] = 'mp4';
            $config['overwrite'] = TRUE;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('trailer')){
                $result = $this->upload->data();
                $up['trailer'] = $result['file_name'];
            }else{
                echo $this->upload->display_errors();die;
            }
        }
        if (!empty($_FILES['full_video']['name'])) {
            $config = array();
            $config['upload_path'] = VIDEOS;
            //$config['max_size']    = '1024';
            $ext = end(explode(".", $_FILES['full_video']['name']));
            $config['file_name'] = $upload_config['file_name'] = $videoId.'-'.$post['category_id']. '.' . $ext;
            $config['allowed_types'] = 'mp4';
            $config['overwrite'] = TRUE;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('full_video')){
                $result = $this->upload->data();
                $up['full_video'] = $result['file_name'];
            }else{
                echo $this->upload->display_errors();die;
            }
        }
        $this->db->trans_start();
        $this->db->where('id',$videoId);
        $this->db->update('tbl_videos', $up);
        $this->db->trans_complete();

        return TRUE;
    }

    function deleteVideo($videoId, $data){
        $this->db->where('id', $videoId);
        $this->db->update('tbl_videos', $data);
        return $this->db->affected_rows();
    }
    function videoPublished($videoId, $data){
        $this->db->where('id', $videoId);
        $this->db->update('tbl_videos', $data);
        return $this->db->affected_rows();
    }
    function getPlans(){
        $this->db->where('is_deleted', 0);
        $query = $this->db->get('tbl_plan');
        $result = $query->result();
        return $result;
    }


}

