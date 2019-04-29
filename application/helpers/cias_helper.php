<?php if(!defined('BASEPATH')) exit('No direct script access allowed');


/**
 * This function is used to print the content of any data
 */
function pre($data)
{
    echo "<pre>";
    print_r($data);
    echo "</pre>";
}

/**
 * This function used to get the CI instance
 */
if(!function_exists('get_instance'))
{
    function get_instance()
    {
        $CI = &get_instance();
    }
}

/**
 * This function used to generate the hashed password
 * @param {string} $plainPassword : This is plain text password
 */
if(!function_exists('getHashedPassword'))
{
    function getHashedPassword($plainPassword)
    {
        return password_hash($plainPassword, PASSWORD_DEFAULT);
    }
}

/**
 * This function used to generate the hashed password
 * @param {string} $plainPassword : This is plain text password
 * @param {string} $hashedPassword : This is hashed password
 */
if(!function_exists('verifyHashedPassword'))
{
    function verifyHashedPassword($plainPassword, $hashedPassword)
    {
        return password_verify($plainPassword, $hashedPassword) ? true : false;
    }
}

/**
 * This method used to get current browser agent
 */
if(!function_exists('getBrowserAgent'))
{
    function getBrowserAgent()
    {
        $CI = get_instance();
        $CI->load->library('user_agent');

        $agent = '';

        if ($CI->agent->is_browser())
        {
            $agent = $CI->agent->browser().' '.$CI->agent->version();
        }
        else if ($CI->agent->is_robot())
        {
            $agent = $CI->agent->robot();
        }
        else if ($CI->agent->is_mobile())
        {
            $agent = $CI->agent->mobile();
        }
        else
        {
            $agent = 'Unidentified User Agent';
        }

        return $agent;
    }
}

if(!function_exists('setProtocol'))
{
    function setProtocol()
    {
        $CI = &get_instance();
                    
        $CI->load->library('email');
        
        $config['protocol'] = PROTOCOL;
        $config['mailpath'] = MAIL_PATH;
        $config['smtp_host'] = SMTP_HOST;
        $config['smtp_port'] = SMTP_PORT;
        $config['smtp_user'] = SMTP_USER;
        $config['smtp_pass'] = SMTP_PASS;
        $config['charset'] = "utf-8";
        $config['mailtype'] = "html";
        $config['newline'] = "\r\n";
        $CI->email->initialize($config);
        
        return $CI;
    }
}

if(!function_exists('emailConfig'))
{
    function emailConfig()
    {
        $CI = &get_instance();
        $CI->load->library('email');
        $config['protocol'] = PROTOCOL;
        $config['smtp_host'] = SMTP_HOST;
        $config['smtp_port'] = SMTP_PORT;
        $config['mailpath'] = MAIL_PATH;
        $config['charset'] = 'UTF-8';
        $config['mailtype'] = "html";
        $config['newline'] = "\r\n";
        $config['wordwrap'] = TRUE;
    }
}

if(!function_exists('resetPasswordEmail'))
{
    function resetPasswordEmail($detail)
    {
        $data["data"] = $detail;
        // pre($detail);
        // die;
        
        $CI = setProtocol();
        $CI->email->from(EMAIL_FROM, FROM_NAME);
        $CI->email->subject("Reset Password");
        $CI->email->message($CI->load->view('email/resetPassword', $data, TRUE));
        $CI->email->to($detail["email"]);
        $status = $CI->email->send();
        
        return $status;
    }
}

if(!function_exists('setFlashData'))
{
    function setFlashData($status, $flashMsg)
    {
        $CI = get_instance();
        $CI->session->set_flashdata($status, $flashMsg);
    }
}
if(!function_exists('totalVideo')){
    function totalVideo($categoryId){
        $CI = get_instance();
        $CI->db->where('category_id', $categoryId);
        $CI->db->where('is_deleted', 0);
        if(getRole() != 1)
            $CI->db->where('created_by', getUserId());
        $query = $CI->db->get('tbl_videos');
        return $query->num_rows();
    }
}
if(!function_exists('publishedVideo')){
    function publishedVideo($categoryId){
        $CI = get_instance();
        $CI->db->where('category_id', $categoryId);
        $CI->db->where('is_published', 1);
        $CI->db->where('is_deleted', 0);
        if(getRole() != 1)
            $CI->db->where('created_by', getUserId());
        $query = $CI->db->get('tbl_videos');
        return $query->num_rows();
    }
}
if(!function_exists('unpublishedVideo')){
    function unpublishedVideo($categoryId){
        $CI = get_instance();
        $CI->db->where('category_id', $categoryId);
        $CI->db->where('is_published', 0);
        $CI->db->where('is_deleted', 0);
        if(getRole() != 1)
            $CI->db->where('created_by', getUserId());
        $query = $CI->db->get('tbl_videos');
        return $query->num_rows();
    }
}

if(!function_exists('totalUsers')){
    function totalUsers(){
        $CI = get_instance();
        $CI->db->where('roleid!=', 1);
        $CI->db->where('isDeleted', 0);
        $query = $CI->db->get('tbl_users');
        return $query->num_rows();
    }
}
if(!function_exists('totalSubCategory')){
    function totalSubCategory($id){
        $CI = get_instance();
        $CI->db->where('cat_id', $id);
        $CI->db->where('is_deleted', 0);
        $query = $CI->db->get('tbl_sub_categories');
        return $query->num_rows();
    }
}
if(!function_exists('totalCategory')){
    function totalCategory(){
        $CI = get_instance();
        $CI->db->where('isDeleted', 0);
        $query = $CI->db->get('tbl_categories');
        return $query->num_rows();
    }
}
if(!function_exists('totalVideosByCategory')){
    function totalVideosByCategory($id){
        $CI = get_instance();
        $CI->db->where('sub_category_id', $id);
        $CI->db->where('is_deleted', 0);
        if(getRole() != 1)
            $CI->db->where('created_by', getUserId());
        $query = $CI->db->get('tbl_videos');
        return $query->num_rows();
    }
}
if(!function_exists('totalVideos')){
    function totalVideos(){
        $CI = get_instance();
        $CI->db->where('is_deleted', 0);
        if(getRole() != 1)
            $CI->db->where('created_by', getUserId());
        $query = $CI->db->get('tbl_videos');
        return $query->num_rows();
    }
}
if(!function_exists('totalPlan')){
    function totalPlan(){
        $CI = get_instance();
        $CI->db->where('is_deleted', 0);
        $query = $CI->db->get('tbl_plan');
        return $query->num_rows();
    }
}
if (!function_exists('getRole')) {
    function getRole(){

        $CI = &get_instance();
        $session = $CI->session->userdata();
        return $session['role'];
    }
}
if(!function_exists('isCastAndCrewExist')){
    function isCastAndCrewExist($videoId){
        $CI = get_instance();
        $CI->db->where('video_id', $videoId);
        $query = $CI->db->get('tbl_cast_crew');
        if($query->num_rows() > 0){
            return true;
        }else{
            return false;
        }

    }
}
if(!function_exists('getCatNameById')){
    function getCatNameById($id){
        $CI = get_instance();
        $CI->db->where('id', $id);
        $CI->db->where('isDeleted', 0);
        $query = $CI->db->get('tbl_categories');
        if($query->num_rows()> 0) {
             return $query->row()->category_name;
        }else{
            return "N/A";
        }
    }
}
if(!function_exists('getSubCatNameById')){
    function getSubCatNameById($id){
        $CI = get_instance();
        $CI->db->where('id', $id);
        $CI->db->where('is_deleted', 0);
        $query = $CI->db->get('tbl_sub_categories');
        if($query->num_rows()> 0) {
            return $query->row()->name;
        }else{
            return "N/A";
        }
    }
}
if(!function_exists('getMovieNameByMovieId')){
    function getMovieNameByMovieId($id){
        $CI = get_instance();
        $CI->db->where('id', $id);
        $query = $CI->db->get('tbl_videos');
        if($query->num_rows()> 0) {
            return $query->row()->name;
        }else{
            return "N/A";
        }
    }
}
if (!function_exists('getUserId')) {
    function getUserId(){

        $CI = &get_instance();
        $session = $CI->session->userdata();
        return $session['userId'];
    }
}

?>