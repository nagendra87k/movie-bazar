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
                    <i class="fa fa-list-alt"></i> Add Video
                </h3>
            </div>
            <!--<div class="col-md-4 text-right">
                <button onclick="window.history.go(-1); return false;" class="btn btn-default"><i class="fas fa-arrow-alt-circle-left"></i>&nbsp;Back</button>
            </div>-->
        </div>
    </section>
    <section class="content-header">

    </section>
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->
                <div class="box box-primary" style="border:2px solid #1d4650;">
                    <div class="box-header">
                        <h3 class="box-title">Enter Video Details</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form role="form" id="addNewVideo" action="" method="post" role="form" enctype="multipart/form-data">
                        <input type="hidden" value="<?=$this->uri->segment(2); ?>" name="category_id" id="category_id" />
                        <input type="hidden" value="<?=$this->uri->segment(3); ?>" name="sub_category_id" id="sub_category_id" />
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="name">Name<span class="text-danger">*</span></label>
                                        <input name="name" placeholder="Movie Name" class="form-control" type="text" value="<?php echo set_value('email');?>"/>
                                    </div>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="poster">Poster<span class="text-danger">*</span></label>
                                        <input type="file"  name="poster_image" id="poster_image"/>
                                        <span class="text-warning">Size of image should not be less than 1500*900 for better resolution in Mobile,Tablet and TV devices. For Ultra HD
										size please upload image having 4096*2160 resolution.</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="Directed">Genre(Tag)</label>
                                        <input class="form-control" type="text" data-role="tagsinput" name="tags" >
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="Directed">Directed By<span class="text-danger">*</span></label>
                                        <input name="directed_by" placeholder="" class="form-control" type="text"/>
                                    </div>
                                </div>
                               <!-- <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="studio">Studio</label>
                                        <input name="studio" placeholder="" class="form-control" type="text"/>
                                    </div>
                                </div>-->
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="Language">Language</label>
                                        <input name="language" class="form-control" type="text"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="hr_duration">Hours(Duration)</label>
                                        <select class="form-control" name="hours_duration">
                                            <option value="">--HOURS--</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="mi_duration">Minutes(Duration)</label>
                                        <select class="form-control" name="minutes_duration">
                                            <option value="">--Minutes--</option>
                                            <?php
                                            for ($i=0;$i <=59;$i++){ ?>

                                                <option value="<?=sprintf("%02d", $i);?>"><?=sprintf("%02d", $i);?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="release_year">Release Year</label>
                                        <input id="release_year" name="release_year" width="270" />
                                    </div>
                                        <!--<select class="form-control" name="release_year">
                                            <option value="">--Year--</option>
                                            <?php/*
                                            $firstYear = (int)date('Y') - 84;
                                            $lastYear = $firstYear + 96;
                                            for($i=$firstYear;$i<=$lastYear;$i++)
                                            {
                                            echo '<option value='.$i.'>'.$i.'</option>';
                                            }*/?>
                                            <option selected value="2018">2018</option>
                                            <option value="2017">2017</option>
                                            <option value="2016">2016</option>
                                            <option value="2015">2015</option>
                                            <option value="2014">2014</option>
                                            <option value="2013">2013</option>
                                            <option value="2012">2012</option>
                                            <option  value="2011">2011</option>
                                        </select>-->
                                    </div>
                                </div>
                            

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subtitle">Subtitle</label>
                                        <select class="form-control" name="subtitle">
                                            <option value="Hindi">Hindi</option>
                                            <option selected value="English">English</option>
                                            <option  value="Urdu">Urdu</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="audio">Audio</label>
                                        <select  class=" col-md-2 form-control" name="audio">
                                            <option value="HHD">HHD</option>
                                            <option selected value="Normal">Normal</option>
                                        </select>
                                    </div>
                                </div>
                            </div><br>
			
                            <div class="row">
							
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="trailer">Trailer</label><br>
                                        <input type="file" class="" name="trailer"/>
                                    </div>
                                </div>
								<br>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="full_video">Full</label>
                                        <input type="file" class="" name="full_video"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subscription">Subscription</label>
                                        <select  class="col-md-2 form-control" name="subscription" id="subscription">
                                            <option value="0">Free</option>
                                            <option value="1">Paid</option>
                                        </select>
                                    </div>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="budget">Budget</label>
                                        <input class="form-control" type="text" name="budget" id="budget" />
                                        <!--<span class="text-warning">Please enter amount indian rupees.</span>-->
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="rating">Rating</label>
                                        <input class="form-control" type="text" name="rating" id="rating" />
                                        <!--<span class="text-warning">Please enter rating 1 to 5.</span>-->
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <textarea class="form-control" name="description"></textarea>
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
                <div class="alert alert-success">
                    All star(<span class="text-danger">*</span>) fields are mandatory.
                </div>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.11.1/typeahead.bundle.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/tag-input/tagsinput.js"></script>
<script src="<?php echo base_url(); ?>assets/js/videos.js" type="text/javascript"></script>
<script type="text/javascript">
    /*$('#addNewVideo').submit(function() {
        var pass = true;
        if(pass == false){
            return false;
        }
        $(".loading").show();
        return true;
    });*/
</script>
<script type="text/javascript">
    $('#release_year').datepicker({
        uiLibrary: 'bootstrap',
      //  minDate:new Date(),
        format: 'dd-mm-yyyy'
    });
</script>
<script type="text/javascript">
/*var attachement = document.getElementById('poster_image');
attachement.onchange = function() {
	alert("ok");
    var file = attachement.files[0];
    if (file.size < 800000) {
         //Now Here I need to update <span> 

       alert('Filesize must 800kb or below'); // don't want alert message
    }
};*/
</script>