<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Sub_Category_model extends CI_Model{

    public function subCategoryCount($catId,$searchText = ''){

        $this->db->select('t1.id, t1.name');
        $this->db->from('tbl_sub_categories as t1');
        if(!empty($searchText)) {
            $likeCriteria = "(t1.name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        if(!empty($catId)) {
            $this->db->where('t1.cat_id',$catId);
        }
        $this->db->where('t1.is_deleted', 0);
        $query = $this->db->get();
        return $query->num_rows();
    }


    public function getSubCategoryList($catId, $searchText = '', $page, $segment){

        $this->db->select('t1.*');
        $this->db->from('tbl_sub_categories as t1');
        if(!empty($searchText)) {
            $likeCriteria = "(t1.name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        if(!empty($catId)) {
            $this->db->where('t1.cat_id',$catId);
        }
        $this->db->where('t1.is_deleted', 0);
        $this->db->limit($page, $segment);
        $query = $this->db->get();
        $result = $query->result();
        return $result;
    }

    function addSubCategory($data){
        $this->db->trans_start();
        $this->db->insert('tbl_sub_categories', $data);
        $insert_id = $this->db->insert_id();
        $this->db->trans_complete();
        return $insert_id;
    }


    function getSubCategoryById($subCategoryId)
    {
        $this->db->where('is_deleted', 0);
        $this->db->where('id', $subCategoryId);
        $query = $this->db->get('tbl_sub_categories');
        return $query->row();
    }

    function editSubCategory($data, $subCategoryId){
        $this->db->where('id', $subCategoryId);
        $this->db->update('tbl_sub_categories', $data);
        return TRUE;
    }

    function deleteSubCategory($sub_categoryId){
       $this->db->query("UPDATE tbl_sub_categories t1 INNER JOIN tbl_videos t2 ON (t1.id = t2.sub_category_id) INNER JOIN tbl_cast_crew t3 ON (t2.id = t3.video_id) SET t1.is_deleted = 1, t2.is_deleted = 1, t3.is_deleted = 1 WHERE t1.id = $sub_categoryId");
       return $this->db->affected_rows();
    }


}

