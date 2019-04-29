<div class="content-wrapper">
    <!-- Content Header (Page header) -->
	<section class="content-header">
	<div class="row">
	 <div class="col-md-4" style="margin-left: 5px;padding-top:6px;">
                <button onclick="window.history.go(-1); return false;" class="btn btn-default"><i
                            class="fa fa-arrow-left"></i>&nbsp;Back</button>
            </div>
	</div>
	</section>
    <section class="content-header">
        <div class="row">
            <div class="col-md-8">
                <h3 style="color:white; margin-left: 5px;">
                    <i class="fa fa-list-alt"></i> Sub Category Management
                   <!-- <small>Add / Edit Category</small>-->
                </h3>
            </div>
            <!--<div class="col-md-4 text-right">
                <button onclick="window.history.go(-1); return false;" class="btn btn-default"><i class="fas fa-arrow-alt-circle-left"></i>&nbsp;Back</button>
            </div>-->
        </div>
    </section>

    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->
                <div class="box box-primary" style="border:2px solid #1d4650;">
                    <div class="box-header">
                        <h3 class="box-title">Enter Sub Category Details</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addSubCategory" action="" method="post" role="form">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="name">Name</label>
                                        <input type="text" class="form-control required" value="<?= set_value('name'); ?>" id="name" name="name" maxlength="128">
                                    </div>

                                </div>
                            </div>
                        </div><!-- /.box-body -->

                        <div class="box-footer">
                            <input type="hidden" name="cat_Id" value="<?=$this->uri->segment(2);?>">
                            <input type="submit" class="btn pull-right" style="background-color:#0f1d32; color:white;" value="Submit" />

                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-4">
                <?php
                $this->load->helper('form');
                $error = $this->session->flashdata('error');
                if($error)
                {
                    ?>
                    <div class="alert alert-danger alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <?php echo $this->session->flashdata('error'); ?>
                    </div>
                <?php } ?>
                <?php
                $success = $this->session->flashdata('success');
                if($success)
                {
                    ?>
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <?php echo $this->session->flashdata('success'); ?>
                    </div>
                <?php } ?>

                <div class="row">
                    <div class="col-md-12">
                        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
<script src="<?php echo base_url(); ?>assets/js/category.js" type="text/javascript"></script>

<script type="text/javascript">
    $('#addSubCategory').submit(function() {
        var pass = true;
        if(pass == false){
            return false;
        }
        $(".loading").show();
        return true;
    });
</script>
