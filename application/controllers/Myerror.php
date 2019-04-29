<?php
//application/controllers/Myerror.php
class Myerror extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->output->set_status_header('404');
        $data['content'] = 'error_404'; // Let View name
        $this->load->view('errors/html/error_404',$data);// loading view
    }
}