<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Cast_model extends CI_Model
{
    function addCastAndCrew(){

        $post = $this->input->post();
        $ins = array();
        $ins['video_id'] = $post['video_id'];
        $ins['starring'] = $post['starring'];
        $ins['screenplay_by'] = $post['screenplay_by'];
        $ins['story_by'] = $post['story_by'];
        $ins['music_by'] = $post['music_by'];
        $ins['cinematography'] = $post['cinematography'];
        $ins['edited_by'] = $post['edited_by'];
        $ins['produced_by'] = $post['produced_by'];
        $ins['production_company'] = $post['production_company'];
        $ins['distributed_by'] = $post['distributed_by'];
        $ins['created_by'] = 2;
        $ins['created_on'] = date('Y-m-d H:i:s');

        $response = $this->db->insert('tbl_cast_crew', $ins);
		
        if($response){
        return true;
        }else{
        return false;
        }
    }

    function getCastDetailsById($videoId){
        $this->db->where('video_id', $videoId);
        $query = $this->db->get('tbl_cast_crew');
        return $query->row();
    }
    function updateCastAndCrew($videoId){

        $post = $this->input->post();
        $up = array();
        $up['video_id'] = $post['video_id'];
        $up['starring'] = $post['starring'];
        $up['screenplay_by'] = $post['screenplay_by'];
        $up['story_by'] = $post['story_by'];
        $up['music_by'] = $post['music_by'];
        $up['cinematography'] = $post['cinematography'];
        $up['edited_by'] = $post['edited_by'];
        $up['produced_by'] = $post['produced_by'];
        $up['production_company'] = $post['production_company'];
        $up['distributed_by'] = $post['distributed_by'];
        $up['modified_by'] = 2;
        $up['modified_on'] = date('Y-m-d H:i:s');
        $this->db->where('video_id',$videoId);
        $response = $this->db->update('tbl_cast_crew', $up);

        if($response){
        return true;
        }else{
        return false;
        }
    }

}
?>