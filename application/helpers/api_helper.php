<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


if (!function_exists('videoAddedInWatchlist')) {
    function videoAddedInWatchlist($uid,$vedioId){

        $CI = get_instance();
        $CI->db->where('uid', $uid);
        $CI->db->where('video_id', $vedioId);
        $CI->db->where('is_deleted', 0);
        $query = $CI->db->get('tbl_watchlist');
        if($query->num_rows() > 0){
            return 1;
        }else{
            return 0;
        }
    }
}
?>