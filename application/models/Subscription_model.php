<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Subscription_model extends CI_Model
{

    function plansListingCount($searchText = '')
    {
        $this->db->select('t1.*');
        $this->db->from('tbl_plan as t1');
        if(!empty($searchText)) {
            $likeCriteria = "(t1.name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('t1.is_deleted', 0);
        $query = $this->db->get();
        return $query->num_rows();
    }

    function plansListing($searchText = '', $page, $segment)
    {
        $this->db->select('t1.*');
        $this->db->from('tbl_plan as t1');
        if(!empty($searchText)) {
            $likeCriteria = "(t1.name  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('t1.is_deleted', 0);
        $this->db->limit($page, $segment);
        $query = $this->db->get();
        $result = $query->result();
        return $result;
    }
    function addNewPlan(){

        $post = $this->input->post();
        $ins = array();
        $ins['name'] = $post['name'];
        $ins['alias_name'] = $post['alias_name'];
        $ins['amount'] = $post['amount'];
        $ins['description'] = $post['description'];
        $ins['days'] = $post['days'];
        $ins['created_by'] = 2;
        $ins['created_on'] = date('Y-m-d H:i:s');
        $this->db->trans_start();
        $this->db->insert('tbl_plan', $ins);
        $insert_id = $this->db->insert_id();
        $this->db->trans_complete();
        return $insert_id;
    }


    function getPlanDetailsById($Plan){

        $this->db->where('is_deleted', 0);
        $this->db->where('id', $Plan);
        $query = $this->db->get('tbl_plan');
        return $query->row();
    }


    function updatePlan($planId){

        $post = $this->input->post();

        $up = array();
        $up['name'] = $post['name'];
        $up['alias_name'] = $post['alias_name'];
        $up['amount'] = $post['amount'];
        $up['description'] = $post['description'];
        $up['days'] = $post['days'];
        $up['modified_by'] = 2;
        $up['modified_on'] = date('Y-m-d H:i:s');
        $this->db->trans_start();
        $this->db->where('id',$planId);
        $this->db->update('tbl_plan', $up);
        $this->db->trans_complete();
        return TRUE;
    }

    function deletePlan($planId, $data){
        $this->db->where('id', $planId);
        $this->db->update('tbl_plan', $data);
        return $this->db->affected_rows();
    }
    function getPlans(){
        $this->db->where('is_deleted', 0);
        $query = $this->db->get('tbl_plan');
        $result = $query->result();
        return $result;
    }


}

