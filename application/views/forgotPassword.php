<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Movie Bazar | Admin System Log in</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link href="<?php echo base_url(); ?>assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-page">
<div class="login-box">
    <!--<div class="login-logo">
      <a href="#"><b>Movie Bazaar</b></a>
    </div><!-- /.login-logo -->
    <div class="login-box-body">
        <div>
            <p class="login-box-msg"><b style="color::#0f1d32;">Forgot Password</b></p>
        </div>
        <?php $this->load->helper('form'); ?>
        <div class="row">
            <div class="col-md-12">
                <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
            </div>
        </div>
        <?php
        $this->load->helper('form');
        $error = $this->session->flashdata('error');
        $send = $this->session->flashdata('send');
        $notsend = $this->session->flashdata('notsend');
        $unable = $this->session->flashdata('unable');
        $invalid = $this->session->flashdata('invalid');
        if($error)
        {
            ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $this->session->flashdata('error'); ?>
            </div>
        <?php }

        if($send)
        {
            ?>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $send; ?>
            </div>
        <?php }

        if($notsend)
        {
            ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $notsend; ?>
            </div>
        <?php }

        if($unable)
        {
            ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $unable; ?>
            </div>
        <?php }

        if($invalid)
        {
            ?>
            <div class="alert alert-warning alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $invalid; ?>
            </div>
        <?php } ?>

        <form action="<?php echo base_url(); ?>resetPasswordUser" method="post">
            <div class="form-group has-feedback" style="padding-top:15px; padding-botttom:20px;">
                <div class="input-group">
                    <span class="input-group-addon" ><span  class="glyphicon glyphicon-user"></span></span>
                    <input type="email" class="form-control" placeholder="Email" name="login_email" required />
                </div>

            </div>
            <div class="row">
                <div class="col-xs-12">
                    <input type="submit" style="background: #2d384a;" class="btn btn-block btn-primary" value="Submit" />
                </div>
            </div>
        </form>
        <hr/>
        Remember Your Login?&nbsp;<a class="text-right" href="<?=base_url()?>">Login</a>
    </div>
</div>

<script src="<?php echo base_url(); ?>assets/js/jQuery-2.1.4.min.js"></script>
<script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>