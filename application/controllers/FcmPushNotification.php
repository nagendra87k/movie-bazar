<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class FcmPushNotification extends CI_Controller{


    public function sendPushNotification(){
        $this->load->model('fcmPushNotification_model', 'prod');
        $topic  ='global';
        $post = $this->input->post();

        $data = array();
        $data["title"] = $post['title'];
        $data["body"] = $post['message'];
        $data["video_id"] = $post['video_id'];
        $data["poster_url"]= $post['poster_uri'];

        $response = $this->prod->sendPushNotificationToAndroid($topic, $data);
        $obj = json_decode($response);

        $message_id = $obj->{'message_id'};
        if (!empty($message_id)) {
            //$this->resource_model->storeNotificationDetails($message_id, getUser());
            echo json_encode(array('status' => true, 'message_id' => $obj));
        } else {
            echo json_encode(array('status' => false, 'message' => 'Failed!'));
        }

    }
}