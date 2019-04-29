<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Category_model extends CI_Model
{

    function categoryListingCount($searchText = '')
    {
        $this->db->select('t1.id, t1.category_name');
        $this->db->from('tbl_categories as t1');
        if(!empty($searchText)) {
            $likeCriteria = "(t1.category_name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('t1.isDeleted', 0);
        $query = $this->db->get();

        return $query->num_rows();
    }


    function categoryListing($searchText = '', $page, $segment)
    {
        $this->db->select('t1.id, t1.category_name');
        $this->db->from('tbl_categories as t1');
        if(!empty($searchText)) {
            $likeCriteria = "(t1.category_name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('t1.isDeleted', 0);
        $this->db->limit($page, $segment);
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }

    function addNewCategory($data){
        $this->db->trans_start();
        $this->db->insert('tbl_categories', $data);
        $insert_id = $this->db->insert_id();
        $this->db->trans_complete();
        return $insert_id;
    }


    function getCategoryById($CategoryId)
    {
        $this->db->where('isDeleted', 0);
        $this->db->where('id', $CategoryId);
        $query = $this->db->get('tbl_categories');

        return $query->result();
    }

    function editCategory($data, $CategoryId)
    {
        $this->db->where('id', $CategoryId);
        $this->db->update('tbl_categories', $data);

        return TRUE;
    }

    function deleteCategory($categoryId, $data){
       /* $this->db->where('id', $categoryId);
        $this->db->update('tbl_categories', $data);
        return $this->db->affected_rows();*/
       /* $this->db->set('t1.isDeleted', 1);
        $this->db->set('t2.is_deleted ', 1);
        //$this->db->set('t3.is_deleted', 1);
        $this->db->where('t1.id', $categoryId);
       // $this->db->join('tbl_videos as t3', 't1.id = t3.category_id');
        $this->db->join('tbl_sub_categories as t2', 't1.id = t2.cat_id');
        $this->db->update('tbl_categories as t1');
        return $this->db->affected_rows();*/
        $this->db->query("UPDATE tbl_categories t1 INNER JOIN tbl_sub_categories t2 ON (t1.id = t2.cat_id) INNER JOIN tbl_videos t3 ON (t1.id = t3.category_id) INNER JOIN tbl_showcase t4 ON (t1.id = t4.category_id) INNER JOIN tbl_cast_crew t5 ON (t3.id = t5.video_id) SET t1.isDeleted = 1, t2.is_deleted = 1, t3.is_deleted = 1, t4.is_deleted = 1, t5.is_deleted = 1 WHERE t1.id = $categoryId");
        return $this->db->affected_rows();
    }


}

