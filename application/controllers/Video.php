<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Video extends BaseController
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('video_model','video');
        $this->load->model('cast_model','cast');
        $this->isLoggedIn();
        $this->load->library('form_validation');
    }



    function videosListing(){


        $categoryId = $this->uri->segment(3);
        $subCategoryId = $this->uri->segment(2);
        $searchText = $this->security->xss_clean($this->input->post('searchText'));
        $data['searchText'] = $searchText;
        $this->load->library('pagination');
        $count = $this->video->videoListingCount($searchText,$categoryId,$subCategoryId);
        $returns = $this->paginationCompress ( "videosListing/", $count, 10 );
        $data['results'] = $this->video->videoListing($categoryId, $subCategoryId, $searchText, $returns["page"], $returns["segment"]);
        $this->global['pageTitle'] = 'Movie Bazar : Video Listing';
        $this->loadViews("videos/videos", $this->global, $data, NULL);

    }



    function addNewVideo(){

        $this->global['pageTitle'] = 'Movie Bazar : Add Video';
        $this->form_validation->set_rules('name','video name','required');
		
        $data['plans'] = $this->video->getPlans();
        if($this->form_validation->run() == FALSE) {
            $this->loadViews("videos/addNewVideo", $this->global, $data, NULL);
        } else {
            $result = $this->video->addNewVideo();
            if($result > 0) {
                $this->session->set_flashdata('success', 'New Category created successfully');
            } else {
                $this->session->set_flashdata('error', 'Category creation failed');
            }

            redirect('videos-list/'.$this->input->post('sub_category_id').'/'.$this->input->post('category_id'));
        }
    }

    function updateVideo(){

        $videoId = $this->uri->segment(2);
        $this->global['pageTitle'] = 'Movie Bazar : Edit Video';
        $data['video'] = $this->video->getVideoDetailsById($videoId);
        $data['plans'] = $this->video->getPlans();
        $this->form_validation->set_rules('name','video name','required');
        if($this->form_validation->run() == FALSE) {
            $this->loadViews("videos/editVideo", $this->global, $data, NULL);
        }
        else {
            $result = $this->video->updateVideo($videoId);
            if($result == true) {
                $this->session->set_flashdata('success', 'Video updated successfully');
            }
            else {
                $this->session->set_flashdata('error', 'Video updation failed');
            }
            redirect('videos-list/'.$data['video']->sub_category_id.'/'.$data['video']->category_id);
        }
    }
    public function viewVideo(){

            $videoId = $this->uri->segment(2);
            $this->global['pageTitle'] = 'Movie Bazar : Edit Video';
            $data['video'] = $this->video->getVideoDetailsById($videoId);
            $data['cast'] = $this->cast->getCastDetailsById($videoId);
            $data['plans'] = $this->video->getPlans();
            $this->loadViews("videos/viewVideo", $this->global, $data, NULL);

    }

    public function deleteVideo(){

        $videoId = $this->input->post('videoId');
        $data = array('is_deleted'=>1,'modified_by'=>$this->vendorId, 'modified_on'=>date('Y-m-d H:i:s'));
        $result = $this->video->deleteVideo($videoId, $data);
        if ($result > 0) {
            echo(json_encode(array('status'=>TRUE)));
        } else {
            echo(json_encode(array('status'=>FALSE)));
        }
    }

    public function addFullVideo(){

        $videoId = $this->uri->segment(2);
        $this->global['pageTitle'] = 'Movie Bazar : Edit Video';
        $data['video'] = $this->video->getVideoDetailsById($videoId);
        $this->loadViews("videos/addFullVideo", $this->global, $data, NULL);
    }
    public function videoPublished(){

        $videoId = $this->input->post('videoId');
        $published = $this->input->post('is_published');
        $data = array('is_published '=>$published,'modified_by'=>$this->vendorId, 'modified_on'=>date('Y-m-d H:i:s'));
        $result = $this->video->videoPublished($videoId, $data);
        if ($result > 0) {
            echo(json_encode(array('status'=>TRUE)));
        } else {
            echo(json_encode(array('status'=>FALSE)));
        }
    }
   /* public function uploadVideo(){

        header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
        header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
        header("Cache-Control: no-store, no-cache, must-revalidate");
        header("Cache-Control: post-check=0, pre-check=0", false);
        header("Pragma: no-cache");


        @set_time_limit(5 * 60);
        $targetDir = ini_get("upload_tmp_dir") . DIRECTORY_SEPARATOR . "plupload";
        $cleanupTargetDir = true; // Remove old files
        $maxFileAge = 5 * 3600; // Temp file age in seconds


        if (!file_exists($targetDir)) {
            @mkdir($targetDir);
        }
        if (isset($_REQUEST["name"])) {
            $fileName = $_REQUEST["name"];
        } elseif (!empty($_FILES)) {
            $fileName = $_FILES["file"]["name"];
        } else {
            $fileName = uniqid("file_");
        }

        $filePath = $targetDir . DIRECTORY_SEPARATOR . $fileName;

        $chunk = isset($_REQUEST["chunk"]) ? intval($_REQUEST["chunk"]) : 0;
        $chunks = isset($_REQUEST["chunks"]) ? intval($_REQUEST["chunks"]) : 0;

        if ($cleanupTargetDir) {
            if (!is_dir($targetDir) || !$dir = opendir($targetDir)) {
                die('{"jsonrpc" : "2.0", "error" : {"code": 100, "message": "Failed to open temp directory."}, "id" : "id"}');
            }

            while (($file = readdir($dir)) !== false) {
                $tmpfilePath = $targetDir . DIRECTORY_SEPARATOR . $file;

                // If temp file is current file proceed to the next
                if ($tmpfilePath == "{$filePath}.part") {
                    continue;
                }

                // Remove temp file if it is older than the max age and is not the current file
                if (preg_match('/\.part$/', $file) && (filemtime($tmpfilePath) < time() - $maxFileAge)) {
                    @unlink($tmpfilePath);
                }
            }
            closedir($dir);
        }

        if (!$out = @fopen("{$filePath}.part", $chunks ? "ab" : "wb")) {
            die('{"jsonrpc" : "2.0", "error" : {"code": 102, "message": "Failed to open output stream."}, "id" : "id"}');
        }

        if (!empty($_FILES)) {
            if ($_FILES["file"]["error"] || !is_uploaded_file($_FILES["file"]["tmp_name"])) {
                die('{"jsonrpc" : "2.0", "error" : {"code": 103, "message": "Failed to move uploaded file."}, "id" : "id"}');
            }

            // Read binary input stream and append it to temp file
            if (!$in = @fopen($_FILES["file"]["tmp_name"], "rb")) {
                die('{"jsonrpc" : "2.0", "error" : {"code": 101, "message": "Failed to open input stream."}, "id" : "id"}');
            }
        } else {
            if (!$in = @fopen("php://input", "rb")) {
                die('{"jsonrpc" : "2.0", "error" : {"code": 101, "message": "Failed to open input stream."}, "id" : "id"}');
            }
        }

        while ($buff = fread($in, 4096)) {
            fwrite($out, $buff);
        }

        @fclose($out);
        @fclose($in);
        if (!$chunks || $chunk == $chunks - 1) {
            rename("{$filePath}.part", $filePath);
        }
        die('{"jsonrpc" : "2.0", "result" : null, "id" : "id"}');
    }*/



    function pageNotFound(){

        $this->global['pageTitle'] = 'Movie Bazar : 404 - Page Not Found';
        $this->loadViews("404", $this->global, NULL, NULL);
    }
}

?>