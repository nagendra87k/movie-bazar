<!DOCTYPE html>
<html>
<head>
    <style>
        #imag{
            width: 96px;
            height: 96px;
            margin: 0 auto 10px;
            display: block;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            border-radius: 50%;
            border: 2px solid black;
        }
        #inputEmail  {
            direction: ltr;
            height: 44px;
            font-size: 16px;
        }

        #inputPassword {
            direction: ltr;
            height: 44px;
            font-size: 16px;
        }

    </style>
    <meta charset="UTF-8">
    <title>Movie Bazaar | Admin System Log in</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link href="<?php echo base_url(); ?>assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.css" rel="stylesheet" type="text/css" />



    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-page">
<div class="login-box">
    <!-- <div class="login-logo">
       <a href="#"><b>Movie Bazaar</b></a>
     </div>-->
	 <!--<div>
       <b style="color:white; font-size:20px;">Please Login to upload your Movies,TV Shows And Short Movies.</b>
     </div>-->
    <div class="login-box-body">
        <img id= "imag" class="profile-img-card center"  src="assets/images/avtar.png" />
        <?php $this->load->helper('form'); ?>
        <div class="row">
            <div class="col-md-12">
                <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
            </div>
        </div>
        <?php $activation = $this->session->flashdata('activation');
        if($activation){?>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $activation; ?>
            </div>
        <?php }?>
        <?php

        $this->load->helper('form');
        $error = $this->session->flashdata('error');
        if($error)
        {
            ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $error; ?>
            </div>
        <?php }
        $success = $this->session->flashdata('success');
        if($success)
        {
            ?>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $success; ?>
            </div>
        <?php } ?>

        <form action="<?php echo base_url(); ?>loginMe" method="post">
            <div class="form-group has-feedback" style="padding-top:5px;">
                <div class="input-group">
                    <span class="input-group-addon" style=" /*background-color: #1ab2ff;*/"><span style=" background-color: #ffffff;" class="glyphicon glyphicon-user"></span></span>
                    <input type="email" id="inputEmail" class="form-control" placeholder="Email" name="email" required autofocus/>
                </div>

            </div>
            <div class="form-group has-feedback">
                <div class="input-group">
                    <span class="input-group-addon" style=" /*background-color: #1ab2ff;*/"><span style=" background-color: #ffffff;" class="glyphicon glyphicon-lock"></span></span>
                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required />
                </div>
                <a class="pull-right" href="<?=base_url() ?>forgotPassword">Forgot your password?</a>
            </div>

            <div class="row">
                <!-- <div class="col-xs-8">
                    <div class="checkbox icheck">
                      <label>
                        <input type="checkbox"> Remember Me
                      </label>
                    </div>
                </div> -->
                <div class="col-xs-12" style="padding-top: 20px;">
                    <input type="submit" style="background: #2d384a;" class="btn btn-block btn-primary" value="Login" />
                </div>
            </div>
    </form>
        <hr/>
        Don't have an account?&nbsp;<a class="text-right" href="<?php echo base_url('signup')?>">Create Account</a>
        <hr>
        <p style="color:black;">Please Login to upload your Movies,TV Shows And Short Movies.</p>

</div><!-- /.login-box-body -->
</div><!-- /.login-box -->

<script src="<?php echo base_url(); ?>assets/js/jQuery-2.1.4.min.js"></script>
<script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>