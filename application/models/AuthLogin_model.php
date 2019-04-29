<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AuthLogin_model extends CI_Model {

    var $client_service = "frontend-client";
    var $auth_key       = "simplerestapi";

    public function check_auth_client(){
        $client_service = $this->input->get_request_header('Client-Service', TRUE);
        $auth_key  = $this->input->get_request_header('Auth-Key', TRUE);
        if($client_service == $this->client_service && $auth_key == $this->auth_key){
            return true;
        } else {
            return json_output(401,array('status' => 401,'message' => 'Unauthorized.'));
        }
    }

    public function login($emailId,$password)
    {
        $query  = $this->db->select('password,id')->from('tbl_api_users')->where('email_id',$emailId)->get();
        if($query->num_rows() > 0){
            $row = $query->row();
            $hashed_password = $row->password;
            $id              = $row->id;
            if (hash_equals($hashed_password, md5($password))) {
                $last_login = date('Y-m-d H:i:s');
                $token = @crypt(substr( md5(rand()), 0, 7));
                $expired_at = date("Y-m-d H:i:s", strtotime('+24 hours'));
                $this->db->trans_start();
                $this->db->where('id',$id)->update('tbl_api_users',array('last_login' => $last_login));
                $this->db->insert('tbl_users_authentication',array('users_id' => $id,'token' => $token));
                //$this->db->insert('tbl_users_authentication',array('users_id' => $id,'token' => $token,'expired_at' => $expired_at));
                if ($this->db->trans_status() === FALSE){
                    $this->db->trans_rollback();
                    return array('status' => 500,'message' => 'Internal server error.');
                } else {
                    $this->db->trans_commit();
                    return array('status' => 200,'message' => 'Successfully login.','id' => $id, 'token' => $token);
                }
            } else {
                return array('status' => 204,'message' => 'Wrong password.');
            }
        } else {
            return array('status' => 204,'message' => 'Your email or password not matching.');
        }
    }

    public function logout()
    {
        $users_id  = $this->input->get_request_header('User-ID', TRUE);
        $token     = $this->input->get_request_header('Authorization', TRUE);
        $this->db->where('users_id',$users_id)->where('token',$token)->delete('tbl_users_authentication');
        return array('status' => 200,'message' => 'Successfully logout.');
    }

    public function auth()
    {
        $users_id  = $this->input->get_request_header('User-ID', TRUE);
        $token     = $this->input->get_request_header('Authorization', TRUE);
        $q  = $this->db->select('expired_at')->from('tbl_users_authentication')->where('users_id',$users_id)->where('token',$token)->get()->row();
        if($q == ""){
            return json_output(401,array('status' => 401,'message' => 'Unauthorized.'));
        } else {
            /*if($q->expired_at < date('Y-m-d H:i:s')){
                return json_output(401,array('status' => 401,'message' => 'Your session has been expired.'));
            } else {*/
                $updated_at = date('Y-m-d H:i:s');
                //$expired_at = date("Y-m-d H:i:s", strtotime('+12 hours'));
                //$this->db->where('users_id',$users_id)->where('token',$token)->update('tbl_users_authentication',array('expired_at' => $expired_at,'updated_at' => $updated_at));
                $this->db->where('users_id',$users_id)->where('token',$token)->update('tbl_users_authentication',array('updated_at' => $updated_at));
                return array('status' => 200,'message' => 'Authorized.');
           // }
        }
    }

    public function getAllCategorry(){

        $data['categories'] = $this->db->select('id,category_name')->from('tbl_categories')->where('isDeleted',0)->order_by('id','desc')->get()->result();
        return $data;

    }

    public function getAllSubCategory($categoryId){

        $json = null;
        $json = $json .'{';
        $json = $json .'"showcase":[';

        //Showcase
        $this->db->select('id,showcase_img_uri,movie_id');
        $this->db->from('tbl_showcase');
        if(!empty($categoryId))
            $this->db->where('category_id',$categoryId);
        $this->db->where('showcase_img_uri !=',"");
        $this->db->where('movie_id !=',0);
        $this->db->where('is_deleted',0);
        $this->db->order_by('id','desc');
        $query = $this->db->get();
        if($query->num_rows() >0){
            $i=1;
            $total = $query->num_rows();
            foreach ($query->result() as $showcase){
                $json = $json .'{';
                $json = $json .'"id":';
                if(!empty($showcase->id)){
                    $json = $json .$showcase->id;
                }else{
                    $json = $json .'null';
                }
                $json = $json .',"showcase_img_uri":';
                if(!empty($showcase->showcase_img_uri)){
                    $json = $json .'"';
                    $json = $json .base_url('/uploads/showcase/').$showcase->showcase_img_uri;
                    $json = $json .'"';
                }else{
                    $json = $json .'null';
                }
                $json = $json .',"movie_id":';
                if(!empty($showcase->movie_id)){
                    $json = $json .$showcase->movie_id;
                }else{
                    $json = $json .'null';
                }
                $json = $json .'}';
                if($i !=$total){
                    $json = $json .',';
                }
                $i++;
            }
        }
        $json = $json .'],';
        $json = $json .'"sub_category":[';

        //Sub-categry
        $this->db->select('id,name');
        $this->db->from('tbl_sub_categories');
        if(!empty($categoryId))
            $this->db->where('cat_id',$categoryId);
        $this->db->where('is_deleted',0);
        $this->db->order_by('id','desc');
        $query = $this->db->get();
        if($query->num_rows() >0){
            $i=1;
            $total = $query->num_rows();
            foreach ($query->result() as $sub_cat){
                $json = $json .'{';
                $json = $json .'"';
                $json = $json .$sub_cat->name;
                $json = $json .'":[';

                //Vedio
                $this->db->select('id,poster');
                $this->db->from('tbl_videos');
                $this->db->where('sub_category_id',$sub_cat->id);
                $this->db->where('is_deleted',0);
                $this->db->where('is_published ',1);
                $this->db->order_by('id','desc');
                $query = $this->db->get();
                if($query->num_rows() >0) {
                    $j = 1;
                    $totalVedio = $query->num_rows();
                    foreach ($query->result() as $vedio) {
                        $json = $json . '{';
                        $json = $json . '"id":';
                        if (!empty($vedio->id)) {
                            $json = $json . $vedio->id;
                        } else {
                            $json = $json . 'null';
                        }
                        $json = $json . ',"poster_uri":';
                        if (!empty($vedio->poster)) {
                            $json = $json . '"';
                            $json = $json . base_url('/uploads/posters/').$vedio->poster;
                            $json = $json . '"';
                        } else {
                            $json = $json . 'null';
                        }
                        $json = $json . '}';

                        if($j !=$totalVedio){
                            $json = $json .',';
                        }
                        $j++;
                    }
                }
                $json = $json .']';//Vedio
                $json = $json .'}';
                if($i !=$total){
                    $json = $json .',';
                }
                $i++;
            }
        }
        $json = $json .']';//Sub-categry

        $json = $json .'}';
        echo $json;
    }
    public function getVideoDetails($VideoId){
        $userId =  $this->input->get_request_header('User-ID', TRUE);

        $json = null;
        $json = $json .'{';
        $json = $json . '"video":{';
        $this->db->select('*');
        $this->db->from('tbl_videos');
        $this->db->where('id',$VideoId);
        $this->db->where('is_deleted',0);
        $query = $this->db->get();
        if($query->num_rows() >0) {

            foreach ($query->result() as $vedio) {

                $json = $json . '"id":';
                if (!empty($vedio->id)) {
                    $json = $json . $vedio->id;
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"name":';
                if (!empty($vedio->name)) {
                    $json = $json . '"';
                    $json = $json . $vedio->name;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"poster_uri":';
                if (!empty($vedio->poster)) {
                    $json = $json . '"';
                    $json = $json . base_url('/uploads/posters/').$vedio->poster;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"description":';
                if (!empty($vedio->description)) {
                    $json = $json . '"';
                    $json = $json .$vedio->description;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"directed_by":';
                if (!empty($vedio->directed_by)) {
                    $json = $json . '"';
                    $json = $json . $vedio->directed_by;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"tags":';
                if (!empty($vedio->tags)) {
                    $json = $json . '"';
                    $json = $json . $vedio->tags;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"studio":';
                if (!empty($vedio->studio)) {
                    $json = $json . '"';
                    $json = $json . $vedio->studio;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"language":';
                if (!empty($vedio->language)) {
                    $json = $json . '"';
                    $json = $json . $vedio->language;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"duration":';
                if (!empty($vedio->hours_duration)) {
                    $json = $json . '"';
                    $json = $json . $vedio->hours_duration.'-'.$vedio->minutes_duration;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"release_year":';
                if ($vedio->release_year !='0000-00-00 00:00:00') {
                    $json = $json . '"';
                    $json = $json . date('M d, Y', strtotime(str_replace('-','/', $vedio->release_year)));
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"subtitle":';
                if (!empty($vedio->subtitle)) {
                    $json = $json . '"';
                    $json = $json . $vedio->subtitle;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"audio":';
                if (!empty($vedio->audio)) {
                    $json = $json . '"';
                    $json = $json . $vedio->audio;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"budget":';
                if (!empty($vedio->budget)) {
                    $json = $json . '"';
                    $json = $json . $vedio->budget;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"rating":';
                if (!empty($vedio->rating)) {
                    $json = $json . '"';
                    $json = $json . $vedio->rating;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"trailer":';
                if (!empty($vedio->trailer)) {
                    $json = $json . '"';
                    $json = $json . base_url('/uploads/trailers/').$vedio->trailer;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"full_video":';
                //if (!empty($vedio->full_video)) {
                if (!empty($vedio->video_url)) {
                    $json = $json . '"';
                    //$json = $json . base_url('/uploads/videos/').$vedio->full_video;
                    $json = $json . $vedio->video_url;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }

                $json = $json . ',"is_paid":';
                if (!empty($vedio->subscription )) {
                    $json = $json . $vedio->subscription;
                } else {
                    $json = $json . '0';
                }
                $json = $json . ',"is_in_watchlist":';
                if (!empty(videoAddedInWatchlist($userId, $vedio->id))) {
                    $json = $json . videoAddedInWatchlist($userId, $vedio->id);
                } else {
                    $json = $json . '0';
                }

                //Cast and Crew
                $json = $json .',"cast_crew":[';
                $this->db->select('*');
                $this->db->from('tbl_cast_crew');
                if(!empty($VideoId))
                    $this->db->where('video_id',$VideoId);
                $query = $this->db->get();
                if($query->num_rows() >0){

                    foreach ($query->result() as $cast){
                        $json = $json .'{';
                        $json = $json . '"starring":';
                        if (!empty($cast->starring)) {
                            $json = $json . '"';
                            $json = $json . $cast->starring;
                            $json = $json . '"';
                        } else {
                            $json = $json . 'null';
                        }
                        $json = $json . ',"screenplay_by":';
                        if (!empty($cast->screenplay_by)) {
                            $json = $json . '"';
                            $json = $json . $cast->screenplay_by;
                            $json = $json . '"';
                        } else {
                            $json = $json . 'null';
                        }
                        $json = $json . ',"story_by":';
                        if (!empty($cast->story_by)) {
                            $json = $json . '"';
                            $json = $json . $cast->story_by;
                            $json = $json . '"';
                        } else {
                            $json = $json . 'null';
                        }
                        $json = $json . ',"music_by":';
                        if (!empty($cast->music_by)) {
                            $json = $json . '"';
                            $json = $json . $cast->music_by;
                            $json = $json . '"';
                        } else {
                            $json = $json . 'null';
                        }
                        $json = $json . ',"cinematography":';
                        if (!empty($cast->cinematography)) {
                            $json = $json . '"';
                            $json = $json . $cast->cinematography;
                            $json = $json . '"';
                        } else {
                            $json = $json . 'null';
                        }
                        $json = $json . ',"edited_by":';
                        if (!empty($cast->edited_by)) {
                            $json = $json . '"';
                            $json = $json . $cast->edited_by;
                            $json = $json . '"';
                        } else {
                            $json = $json . 'null';
                        }
                        $json = $json . ',"produced_by":';
                        if (!empty($cast->produced_by)) {
                            $json = $json . '"';
                            $json = $json . $cast->produced_by;
                            $json = $json . '"';
                        } else {
                            $json = $json . 'null';
                        }
                        $json = $json . ',"production_company":';
                        if (!empty($cast->production_company)) {
                            $json = $json . '"';
                            $json = $json . $cast->production_company;
                            $json = $json . '"';
                        } else {
                            $json = $json . 'null';
                        }
                        $json = $json . ',"distributed_by":';
                        if (!empty($cast->distributed_by)) {
                            $json = $json . '"';
                            $json = $json . $cast->distributed_by;
                            $json = $json . '"';
                        } else {
                            $json = $json . 'null';
                        }
                        $json = $json .'}';
                    }
                }
                $json = $json .']';
            }
        }
        $json = $json .'}';
        $json = $json .'}';
        echo $json;
    }
    public function createWatchlist($uid,$videoId){

        $this->db->where('uid  ',$uid);
        $this->db->where('video_id ',$videoId);
        $query =  $this->db->get('tbl_watchlist');
       if($query->num_rows() == 0){
           $data = array();
           $data['uid'] =  $uid;
           $data['video_id'] =  $videoId;
           $data['created_on'] =  date('Y-m-d H:i:s');
           $this->db->insert('tbl_watchlist',$data);
           return array('status' => 201,'message' => 'Data has been created.');
       }else{
           $data = array();
           $data['is_deleted '] =  0;
           $data['modified_on'] =  date('Y-m-d H:i:s');
           $this->db->where('uid  ',$uid);
           $this->db->where('video_id ',$videoId);
           $res = $this->db->update('tbl_watchlist',$data);
           if($res){
               return array('status' => 201,'message' => 'Data has been created.');
           }else{
               return array('status' => 404,'message' => 'Data unable to created.');
           }
       }


    }
    public function getWatchlist($uid){

        $json = null;
        $this->db->select('t1.id,t1.video_id,t2.name,t2.poster,t3.category_name');
        $this->db->from('tbl_watchlist as t1');
        $this->db->join('tbl_videos as t2','t1.video_id=t2.id','INNER');
        $this->db->join('tbl_categories as t3','t2.category_id=t3.id','INNER');
        $this->db->where('t1.uid',$uid);
        $this->db->where('t1.is_deleted',0);
        $this->db->order_by('t1.id','ASC');
        $query = $this->db->get();
        $json = $json .'{';
        $json = $json . '"watchlist":[';
        if($query->num_rows() >0) {
            $j = 1;
            $totalVedio = $query->num_rows();
            foreach ($query->result() as $vedio) {
                $json = $json .'{';
                //echo $vedio->id;
                $json = $json . '"id":';
                if (!empty($vedio->id)) {
                    $json = $json . $vedio->id;
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"video_id":';
                if (!empty($vedio->video_id)) {
                    $json = $json . '"';
                    $json = $json . $vedio->video_id;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"name":';
                if (!empty($vedio->name)) {
                    $json = $json . '"';
                    $json = $json . $vedio->name;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"poster":';
                if (!empty($vedio->poster)) {
                    $json = $json . '"';
                    $json = $json . base_url('/uploads/posters/').$vedio->poster;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"category_name":';
                if (!empty($vedio->category_name)) {
                    $json = $json . '"';
                    $json = $json . $vedio->category_name;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . '}';
                if($j !=$totalVedio){
                    $json = $json .',';
                }
                $j++;
            }
        }
        $json = $json . ']';
        $json = $json . '}';
        echo $json;
    }
    public function videoRemoveFromWatchlist($uid,$videoId){

        $data = array();
        $data['is_deleted '] =  1;
        $data['modified_on'] =  date('Y-m-d H:i:s');
        $this->db->where('uid  ',$uid);
        $this->db->where('video_id ',$videoId);
        $res = $this->db->update('tbl_watchlist',$data);
        if($res){
            return array('status' => 200,'message' => 'Data has been deleted.');
        }else{
            return array('status' => 404,'message' => 'Data unable to deleted.');
        }

    }
    public function checkUserExist($emailId){
        if (!empty($emailId)) {
            $this->db->where('email_id', $emailId);
            $query = $this->db->get('tbl_api_users');
            if ($query->num_rows() > 0){
                return false;
            }else{
                return true;
            }
        }
    }
    public function createUser(){

       // $post = $this->input->post();
        $post = json_decode(file_get_contents('php://input'), TRUE);
        $data = array();
        $data['email_id'] =  $post['email_id'];
        $data['password'] =  md5($post['password']);
        $data['first_name'] =  $post['first_name'];
        $data['last_name'] =  $post['last_name'];
        $data['mobile'] =  $post['mobile'];
        $data['created_at'] =  date('Y-m-d H:i:s');
        $res = $this->db->insert('tbl_api_users',$data);
        if($res){
            return array('status' => 201,'message' => 'Data has been created.');
        }else{
            return array('status' => 400,'message' => 'Something went worng!.');
        }

    }
    public function generateSecurityCode($emailId){

        $query  = $this->db->select('id')->from('tbl_api_users')->where('email_id',$emailId)->get();
        if($query->num_rows() > 0){
            $securityCode = mt_rand(100000, 999999);
            $mailStatus = $this->sendMail($emailId, $securityCode);
            $this->db->set('security_code',$securityCode);
            $this->db->where('email_id', $emailId);
            $response = $this->db->update('tbl_api_users');
            if ($response && $mailStatus) {
                return array('status' => 201,'message' => 'Security code sent your email.');
            }else{
                return array('status' => 400,'message' => 'Mail failed. please try again!');
            }

        }else {
            return array('status' => 204,'message' => 'Your email or password not matching.');
        }
    }
    public function matchSecrityCode($securityCode,$emailId){

        $query  = $this->db->select('security_code')->from('tbl_api_users')->where('security_code',$securityCode)->where('email_id',$emailId)->get();
        if($query->num_rows() > 0){
            return array('status' => 201,'message' => 'Security code matched.');
        }else {
            return array('status' => 204,'message' => 'Your security_code not matching with our system!.');
        }
    }
    public function resetPassword($newPassword, $emailId){

        $post = $this->input->post();
        $this->db->set('password', md5($newPassword));
        $this->db->where('email_id',$emailId);
        $response = $this->db->update('tbl_api_users');
        if ($response) {
            return array('status' => 201,'message' => 'your new password set.');
        }else{
            return array('status' => 400,'message' => 'somthing went worng');
        }
    }
    public function sendMail($email, $securityCode){

        $message = 'To verify your identity, please use the following code :'.$securityCode.'';
        $subject = "Password reset";
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";
        $sendername = strtok($email, "@");
        $headers .= "From: " . $sendername . " <" . $email . ">\r\n" .
            'Reply-To: nagendra87k@gmail.com' . "\r\n" .
            'X-Mailer: PHP/' . phpversion();

        $response = mail($email, $subject, $message, $headers);
        if($response){
            return true;
        }else{
            return false;
        }
    }
    public function getSubscriptionPlan(){

        $json = null;
        $this->db->select('*');
        $this->db->from('tbl_plan');
        $this->db->where('is_deleted ',0);
        $this->db->where('name != ',"");
        $this->db->where('amount != ',0);
        $this->db->order_by('id','ASC');
        $query = $this->db->get();
        $json = $json .'{';
        $json = $json . '"plans":[';
        if($query->num_rows() >0) {
            $j = 1;
            $total = $query->num_rows();
            foreach ($query->result() as $vedio) {
                $json = $json .'{';
                $json = $json . '"id":';
                if (!empty($vedio->id)) {
                    $json = $json . $vedio->id;
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"name":';
                if (!empty($vedio->name )) {
                    $json = $json . '"';
                    $json = $json . $vedio->name ;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"alias_name":';
                if (!empty($vedio->alias_name )) {
                    $json = $json . '"';
                    $json = $json .$vedio->alias_name ;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"amount":';
                if (!empty($vedio->amount )) {
                    $json = $json . '"';
                    $json = $json .$vedio->amount;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . ',"description":';
                if (!empty($vedio->description)) {
                    $json = $json . '"';
                    $json = $json . $vedio->description ;
                    $json = $json . '"';
                } else {
                    $json = $json . 'null';
                }
                $json = $json . '}';
                if($j !=$total){
                    $json = $json .',';
                }
                $j++;
            }
        }
        $json = $json . ']';
        $json = $json . '}';
        echo $json;
    }
    public function createTransection(){

        $post = json_decode(file_get_contents('php://input'), TRUE);
        $data = array();
        $data['uid'] =  $post['uid'];
        $data['plan_id'] = $post['plan_id'];
        $data['transaction_id'] =  $post['transaction_id'];
        $data['amount'] =  $post['amount'];
        $data['expiry_days'] =  $post['expiry_days'];
        $data['purchase_date'] = date('Y-m-d H:i:s');
        if(!empty($post['expiry_days']))
        $data['expired_date'] =  date("Y-m-d H:i:s", strtotime("+".$post['expiry_days'] ."days"));;
        $res = $this->db->insert('tbl_subscription_plan',$data);
        if($res){
            return array('status' => 201,'message' => 'Transaction successful added.');
        }else{
            return array('status' => 400,'message' => 'Something went worng!.');
        }

    }

}
