
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
                    <i class="fa fa-list-alt"></i> Video Management
           <!-- <small>Add / Edit Category</small>-->
                </h3>
            </div>
            
        </div>
    </section>
   
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-8" style="margin-left: 20px;">
                <!-- general form elements -->
                <div class="box box-primary" style="border:2px solid #1d4650;">
                    <div class="box-header">
                        <h3 class="box-title">Enter Category Details</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <?php $this->load->helper("form"); ?>
                    <form  id="editVideo" action="" method="post" role="form" enctype="multipart/form-data">
                        <input type="hidden" value="<?=$video->category_id; ?>" name="category_id" id="category_id" />
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="name">Name<span class="text-danger">*</span></label>
                                        <input name="name" placeholder="Movie Name" class="form-control" type="text" value="<?=$video->name;?>"/>
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
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <?php
                                        if(!empty($video->poster)){?>
                                            <img src="<?php echo base_url().'uploads/posters/'.$video->poster; ?>" class="img-rounded" alt="Poster" width="300px" height="300px">
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="Directed">Genre(Tag)</label>
                                        <input class="form-control" type="text" data-role="tagsinput" name="tags" value="<?=$video->tags;?>">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="Directed">Directed By<span class="text-danger">*</span></label>
                                        <input name="directed_by" placeholder="" class="form-control" type="text" value="<?=$video->directed_by;?>"/>
                                    </div>
                                </div>
                                <!--<div class="col-md-6">
                                    <div class="form-group">
                                        <label for="studio">Studio</label>
                                        <input name="studio" placeholder="" class="form-control" type="text" value="<?/*=$video->studio;*/?>"/>
                                    </div>
                                </div>-->
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="Language">Language</label>
                                        <input name="language" class="form-control" type="text" value="<?=$video->language;?>"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="hr_duration">Hours(Duration)</label>
                                        <select class="form-control" name="hours_duration">
                                            <option value="">--HOURS--</option>
                                            <option value="1" <?=($video->hours_duration == 1)?'selected="selected"':'';?>>1</option>
                                            <option value="2" <?=($video->hours_duration == 2)?'selected="selected"':'';?>>2</option>
                                            <option value="3" <?=($video->hours_duration == 3)?'selected="selected"':'';?>>3</option>
                                            <option value="4" <?=($video->hours_duration == 4)?'selected="selected"':'';?>>4</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="mi_duration">Minutes(Duration)</label>
                                        <select class="form-control" name="minutes_duration">
                                            <option value="">--Minutes--</option>
                                            <?php
                                            $i;
                                            for ($i=0;$i <=59;$i++){ ?>

                                            <option value="<?=sprintf("%02d", $i);?>" <?=($video->minutes_duration == sprintf("%02d", $i))?'selected="selected"':'';?>><?=sprintf("%02d", $i);?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="release_year">Release Year</label>
                                        <input id="release_year" name="release_year" width="270" value="<?=(!empty($video->release_year))?date('Y-m-d', strtotime(str_replace('-','/', $video->release_year))):'';?>"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subtitle">Subtitle</label>
                                        <select class="form-control" name="subtitle">
                                            <option value="Hindi" <?=($video->subtitle = 'Hindi')?'selected="selected"':'';?>>Hindi</option>
                                            <option value="English" <?=($video->subtitle = 'English')?'selected="selected"':'';?>>English</option>
                                            <option  value="Urdu" <?=($video->subtitle = 'Urdu')?'selected="selected"':'';?>>Urdu</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="audio">Audio</label>
                                        <select  class=" col-md-2 form-control" name="audio">
                                            <option value="HHD" <?=($video->audio = 'HHD')?'selected="selected"':'';?>>HHD</option>
                                            <option value="Normal" <?=($video->audio = 'Normal')?'selected="selected"':'';?>>Normal</option>
                                        </select>
                                    </div>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="trailer">Trailer</label>
                                        <?php
                                        if(!empty($video->trailer)){?>
                                            <div align="center" class="embed-responsive embed-responsive-16by9">
                                                <video  class="embed-responsive-item">
                                                    <source src="<?php echo base_url().'uploads/trailers/'.$video->trailer; ?>" type="video/mp4">
                                                </video>
                                            </div>
                                        <?php } ?><br>
                                        <input type="file" class="" name="trailer"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="full_video">Full Video URL:</label>
                                        <?php if(!empty($video->video_url)){?>
                                        <div align="center">
                                        <!--<div align="center" class="embed-responsive embed-responsive-16by9">-->
                                            <!--<video  class="embed-responsive-item">
                                                <source src="<?php /*echo base_url().'uploads/videos/'.$video->video_url; */?>" type="video/mp4">
                                            </video>-->
                                           
                                            <iframe title="YouTube video player" class="youtube-player" type="text/html"
                                                    width="640" height="390" src="<?=$video->video_url; ?>"
                                                    frameborder="0" allowFullScreen></iframe>
                                        </div>
                                        <?php } ?>
                                        <input type="file" class="" name="full_video"/>
                                        <input type="text" class="form-control" name="video_url" placeholder="Please put video url here." value="<?=$video->video_url;?>"/>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">


                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subscription">Subscription</label>
                                        <select  class="col-md-2 form-control" name="subscription" id="subscription">
                                            <option value="0" <?=($video->subscription == 0)?'selected="selected"':'';?>>Free</option>
                                            <option value="1" <?=($video->subscription == 1)?'selected="selected"':'';?>>Paid</option>
                                        </select>
                                    </div>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="budget">Budget</label>
                                        <input class="form-control" type="text" name="budget" id="budget" value="<?=(!empty($video->budget))?$video->budget:'';?>"/>
                                        <!--<span class="text-warning">Please enter amount indian rupees.</span>-->
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="rating">Rating</label>
                                        <input class="form-control" type="text" name="rating" id="rating" value="<?=(!empty($video->rating))?$video->rating:'';?>"/>
                                       <!-- <span class="text-warning">Please enter rating 1 to 5.</span>-->
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <textarea class="form-control" name="description"><?=$video->description;?></textarea>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- /.box-body -->

                        <div class="box-footer">
                            <!--<input type="submit" class="btn btn-primary" value="Submit" />-->
                            <button class="btn pull-right" style="background-color:#0f1d32; color:white;" >Submit</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-3">
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
        if($('#subscription').val()==0){
            $('#plan').hide();
        }
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

<script type="text/javascript">
    $('#editVideo').submit(function() {
        var pass = true;
        if(pass == false){
            return false;
        }
        $(".loading").show();
        return true;
    });
</script>
<script type="text/javascript">
    $('#release_year').datepicker({
        uiLibrary: 'bootstrap',
      //  minDate:new Date(),
        format: 'yyyy-mm-dd'
    });
</script>
