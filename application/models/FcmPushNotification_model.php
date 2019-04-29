<?php

//define('FIREBASE_API_KEY_ANDROID_PROD', 'AAAAiY61pdc:APA91bGtN4ruF3uO9Z2fwNVQRijnivZfN6Ook18c0l8d835jhfEukquFAJUnbmuAmKTZyLDkTy9S452PjC037mXB0Y4UBshICQsSDfZcw6TOPRHN7tTVgbKf8D_xxLxIogCsYMWKgiUBKSsFdgxWczTu6rJ-iyM5Tg');
define('FIREBASE_API_KEY_ANDROID_PROD', 'AAAAcJuc7tY:APA91bEw2wa3Y0X7VrwGOvWC18KZUwR6lHAVxInRGX2JJhHWfAIRILmENLtzkZRS9nkjwnEU7u3AGsZAJ5I-YXKtg-usA6j1w5Sc7ybMsowIl7Ax6O3Fuelo9dTNS1th-O_bPLuqd9gVauI6vG8sX5boI0PqDZkWEg');

class FcmPushNotification_model extends CI_Model{


    public function sendPushNotificationToAndroid($topic, $data){


        $fields = array(
            'to' => '/topics/'.$topic,
            'priority'=>'high',
            'badge' => 1,
            'vibrate' => 1,
            'content-available' => 1,
            'no-cache' => 1,
            'force-start' => 1,
            'visibility' => 1,
            'sound' => 'default',
            'icon' => 'myicon',
            'data' => $data

        );
       $this->requestParms($data);
        $url = 'https://fcm.googleapis.com/fcm/send';
        $headers = array(
            'Authorization: key=' . FIREBASE_API_KEY_ANDROID_PROD,
            'charset:utf-8',
            'Content-Type: application/json'
        );
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
        $result = curl_exec($ch);
        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        }
        curl_close($ch);
        return $result;
    }
    public function requestParms($data){
        echo json_encode($data);
    }
}
?>