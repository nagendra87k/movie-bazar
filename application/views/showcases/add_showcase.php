<link href="<?php echo base_url(); ?>assets/plugins/tag-input/tagsinput.css" rel="stylesheet" type="text/css">
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
                    <i class="fa fa-list-alt"></i> Showcase Management
                    <!--<small>Add / Edit Category</small>-->
                </h3>
            </div>
           <!-- <div class="col-md-4 text-right">
                <button onclick="window.history.go(-1); return false;" class="btn btn-default"><i class="fas fa-arrow-alt-circle-left"></i>&nbsp;Back</button>
            </div>-->
        </div>
    </section>


    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->
                <div class="box box-primary " style="border:2px solid #1d4650; ">
                    <div class="box-header">
                        <h3 class="box-title">Showcase Details</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addShowcase" action="" method="post" role="form" enctype="multipart/form-data">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="name">Banner Image</label>
                                        <input type="file" class="required"  id="showcase_img_uri" name="showcase_img_uri" />
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label for="Directed">Select Video Name</label>
                                                <select class="form-control"   name="book" id="book">
                                                    <option value="">--Select--</option>
                                                    <?php foreach ($videos as $video){?>
                                                    <option value="<?=$video->id;?>"><?=$video->name;?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div><!-- /.box-body -->

                        <div class="box-footer">
                            <input type="hidden" name="category_id" value="<?=$this->uri->segment(2);?>">
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.11.1/typeahead.bundle.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/tag-input/tagsinput.js"></script>
<script src="<?php echo base_url(); ?>assets/js/category.js" type="text/javascript"></script>


<script type="text/javascript">
    $('#addShowcase').submit(function() {
        var pass = true;
        if(pass == false){
            return false;
        }
        $(".loading").show();
        return true;
    });
</script>