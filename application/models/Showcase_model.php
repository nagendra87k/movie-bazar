<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Showcase_model extends CI_Model{

    function showcaseListingCount($searchText = '', $categoryId){

        $this->db->select('t1.*');
        $this->db->from('tbl_showcase as t1');
        /*if (!empty($searchText)) {
            $likeCriteria = "(t1.name  LIKE '%" . $searchText . "%')";
            $this->db->where($likeCriteria);
        }*/
        $this->db->where('t1.category_id', $categoryId);
        $this->db->where('t1.is_deleted', 0);
        $query = $this->db->get();
        return $query->num_rows();

    }

    function showcaseListing($categoryId, $searchText = '', $page, $segment){
        $this->db->select('t1.*');
        $this->db->from('tbl_showcase as t1');
        /*if(!empty($searchText)) {
            $likeCriteria = "(t1.name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }*/
        $this->db->where('t1.is_deleted', 0);
        $this->db->where('t1.category_id', $categoryId);
        //$this->db->limit($page, $segment);
        $query = $this->db->get();
        $result = $query->result();
        return $result;
    }

    function addNewShowcase($categoryId){

        $post = $this->input->post();
        $ins = array();
        $ins['category_id'] = $post['category_id'];
        $ins['movie_id'] = $post['book'];
        $ins['created_by'] = 2;
        $ins['created_on'] = date('Y-m-d H:i:s');
        $this->db->insert('tbl_showcase', $ins);
        $insert_id = $this->db->insert_id();
        $up = array();
        if (!empty($_FILES['showcase_img_uri']['name'])) {
            $config = array();
            $config['upload_path'] = SHOWCASE;
            $ext = end(explode(".", $_FILES['showcase_img_uri']['name']));
            $config['file_name'] = $upload_config['file_name'] = $insert_id.'-'.$categoryId. '.' . $ext;
            $config['allowed_types'] = 'png|jpg|jpeg';
            $config['overwrite'] = TRUE;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('showcase_img_uri')){
                $result = $this->upload->data();
                $up['showcase_img_uri'] = $result['file_name'];
            }else{
                echo $this->upload->display_errors();die;
            }
        }
        if(!empty($up)){
            $this->db->where('id',$insert_id);
            $this->db->update('tbl_showcase', $up);
            $insert_id = $this->db->insert_id();
        }
        return $insert_id;
    }

    function updateShowcase($id,$categoryId){

        $post = $this->input->post();
        $up = array();
        $up['category_id'] = $categoryId;
        $up['movie_id'] = $post['book'];
        $up['modified_by'] = 2;
        $up['modified_on'] = date('Y-m-d H:i:s');

        if (!empty($_FILES['showcase_img_uri']['name'])) {
            $config = array();
            $config['upload_path'] = SHOWCASE;
            $ext = end(explode(".", $_FILES['showcase_img_uri']['name']));
            $config['file_name'] = $upload_config['file_name'] = $id.'-'.$categoryId. '.' . $ext;
            $config['allowed_types'] = 'png|jpg|jpeg';
            $config['overwrite'] = TRUE;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('showcase_img_uri')){
                $result = $this->upload->data();
                $up['showcase_img_uri'] = $result['file_name'];
            }else{
                echo $this->upload->display_errors();die;
            }
        }
        $this->db->trans_start();
        $this->db->where('id',$id);
        $this->db->update('tbl_showcase', $up);
        $this->db->trans_complete();

        return TRUE;
    }

    function deleteShowcase($id, $data){

        $this->db->where('id', $id);
        $this->db->update('tbl_showcase', $data);
        return $this->db->affected_rows();
    }

    public function getVideoByCategoryId($categoryId){
        $this->db->where('is_deleted', 0);
        $this->db->where('category_id', $categoryId);
        $query = $this->db->get('tbl_videos');
        $result = $query->result();
        return $result;
    }
    public function getShowcaseById($id){

        $this->db->where('id', $id);
        $query = $this->db->get('tbl_showcase');
        return $query->row();

    }
}