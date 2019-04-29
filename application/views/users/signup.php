<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Movie Bazaar | Signup</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link href="<?php echo base_url(); ?>assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css"/>


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
            <p class="login-box-msg"><b style="color:#0f1d32;">Create Account </b></p>
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
        if ($error) {
            ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $error; ?>
            </div>
        <?php }
        $success = $this->session->flashdata('success');
        if ($success) {
            ?>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <?php echo $success; ?>
            </div>
        <?php } ?>


        <form id="addUserInfo" method="post" action="" class="form-horizontal" enctype="multipart/form-data">
            <div class="box-body">
                <div class="row">
                    <label for="fname">Full Name</label>
                    <div class="col-xs-12">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-smile-o" aria-hidden="true"></i></span>
                                <input type="text" class="form-control required" placeholder="Full Name" id="fname"
                                       name="fname" maxlength="128">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <label for="email">Email address</label>
                    <div class="col-xs-12">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                <input type="text" class="form-control required email" placeholder="Email address"
                                       id="email" name="email">
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <label for="password">Password</label>
                    <div class="col-xs-12">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
                                <input type="password" class="form-control required" placeholder="Password" id="password"
                                       name="password" maxlength="20">
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <label for="cpassword">Confirm Password</label>
                    <div class="col-xs-12">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
                                <input type="password" class="form-control required equalTo" placeholder="Confirm Password"
                                       id="cpassword" name="cpassword" maxlength="20">
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <label for="mobile">Mobile Number</label>
                    <div class="col-xs-12">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-phone" aria-hidden="true"></i></span>
                                <input type="text" class="form-control required digits" placeholder="Mobile Number"
                                       id="mobile" name="mobile" maxlength="10">
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12" style="padding-top: 20px;">
                        <input type="submit" style="background: #2d384a;" class="btn btn-block btn-primary" value="Sign Up" />
                    </div>
                </div>
        </form>
        <hr/>
        Remember Your Login?&nbsp;<a class="text-right" href="<?=base_url()?>">Login</a>
    </div><!-- /.login-box-body -->
</div><!-- /.login-box -->

<script src="<?php echo base_url(); ?>assets/js/jQuery-2.1.4.min.js"></script>
<script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/plugins/jquery-validation-1.11.1/dist/jquery.validate.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/jquery-validation-1.11.1/dist/additional-methods.js"></script>
<!--<script src="<?php /*echo base_url(); */ ?>assets/js/login.js" type="text/javascript"></script>-->
<script type="text/javascript">

    "use strict";
    var $validator = $("#addUserInfo").validate({
        ignore: ":hidden:not(textarea)",
        rules: {
            email: {
                required: true,
                remote: {
                    url: "<?=base_url()?>checkEmailExist",
                    type: "post",
                    data: {
                        email: function () {
                            return $("#email").val();
                        }
                    }
                }
            }
        },
        errorClass: 'help-block',
        errorElement: 'span',
        highlight: function (element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
        },
        unhighlight: function (element, errorClass, validClass) {
            $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
        },

        messages: {

            email: {
                required: "Please enter email.",
                remote: jQuery.format("{0} is already in use.")
            }
        }
    });

</script>
</body>
</html>