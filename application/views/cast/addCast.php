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
                     <i class="fa fa-list-alt"></i> Cast & Crew Management
           <!-- <small>Add / Edit Category</small>-->
                </h3>
            </div>
            
        </div>
    </section>
    <section class="content">
        <div class="row">

            <div class="col-md-8">

                <div class="box box-primary" style="border:2px solid #1d4650;">

                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addNewVideo" action="" method="post" role="form" enctype="multipart/form-data">
                        <input type="hidden" value="<?=$this->uri->segment(2); ?>" name="video_id" id="video_id" />
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="name">Starring:</label>
                                        <input name="starring" class="form-control" type="text"/>
                                    </div>

                                </div>
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="name">Screenplay by:</label>
                                        <input name="screenplay_by" class="form-control" type="text" value="<?php echo set_value('email');?>"/>
                                    </div>

                                </div>
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="name">Story by:</label>
                                        <input name="story_by"  class="form-control" type="text" value="<?php echo set_value('email');?>"/>
                                    </div>

                                </div>

                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="name">Music by:</label>
                                        <input name="music_by"  class="form-control" type="text" value="<?php echo set_value('email');?>"/>
                                    </div>

                                </div>
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="name">Cinematography:</label>
                                        <input name="cinematography"  class="form-control" type="text" value="<?php echo set_value('email');?>"/>
                                    </div>

                                </div>
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="name">Edited by:</label>
                                        <input name="edited_by"  class="form-control" type="text" value="<?php echo set_value('email');?>"/>
                                    </div>

                                </div>

                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="name">Produced by:</label>
                                        <input name="produced_by"  class="form-control" type="text" value="<?php echo set_value('email');?>"/>
                                    </div>

                                </div>
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="name">Production company:</label>
                                        <input name="production_company"  class="form-control" type="text" value="<?php echo set_value('email');?>"/>
                                    </div>
                                </div>
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="name">Distributed by:</label>
                                        <input name="distributed_by"  class="form-control" type="text" value="<?php echo set_value('email');?>"/>
                                    </div>

                                </div>
                            </div>
                        </div> <!-- /.box-body -->

                        <div class="box-footer">
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
<script type="text/javascript">
    $(function() {
        $('#plan').hide();
        $('#subscription').change(function(){
            if($('#subscription').val() == 1) {
                $('#plan').show();
            } else {
                $('#plan').hide();
            }
        });
    });
</script>
<script src="<?php echo base_url(); ?>assets/js/videos.js" type="text/javascript"></script>