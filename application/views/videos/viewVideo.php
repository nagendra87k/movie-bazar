<style type="text/css">
    .entry-poster {
        margin: 6px 0 0px 25px;
    }
    . h1 {
        color: #000;
        font-size: 22px;
        font-weight: 700;
        margin-top: 0;
        text-transform: uppercase;
    }
     .duration {
        color: #fe7900;
        font-weight: 700;
        margin-left: 15px;
    }
    .pg {
        background: #fe7900;
        color: #fff;
        font-weight: 700;
        padding: 4px 8px;
        text-transform: uppercase;
    }
     ul.info-list {
        margin-top: 30px;
        padding: 0;
    }
    ul, ol {
        margin-top: 0;
        margin-bottom: 10px;
        list-style: none;
    }
    .rowMargin{
        margin-left: auto !important;
    }
</style>

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
            <i class="fa fa-list-alt"></i> Video Details
            <!--<small>Add / Edit Category</small>-->
        </h3>
		</div>
		<!--<div class="col-md-4 text-right">
                <button onclick="window.history.go(-1); return false;" class="btn btn-default"><i class="fas fa-arrow-alt-circle-left"></i>&nbsp;Back</button>
            </div>-->
			</div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="row rowMargin">
                        <div class="col-md-4">
                            <div class="form-group">
                            <img style="margin-top: 20px;" src="<?php echo base_url().'uploads/posters/'.$video->poster; ?>" alt="<?=$video->name;?>" data-was-processed="true" width="300" height="300">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                            <h1><?=$video->name;?></h1>
                            <div class="entry-pg">
                                <!--<span class="pg">N/R</span>-->
                                <span class="duration"> <i class="fa fa-clock-o"></i> <?=(!empty($video->hours_duration))?$video->hours_duration.' Hours':'';?>  <?=(!empty($video->minutes_duration))?$video->minutes_duration.' Minutes':'';?>  </span>
                            </div>
                            <ul class="info-list">
                                <li> <label>Genre:</label> <span><?=(!empty($video->tags)?preg_replace ("/[^a-zA-Z0-9 ]/", " ", $video->tags):'N/A');?></span></li>
                                <li> <label>Actor:</label> <span><?=(!empty($cast->starring)?$cast->starring:'N/A');?></span></li>
                                <li> <label>Director:</label> <span><?=(!empty($video->directed_by))?$video->directed_by:'N/A';?></span></li>
                                <li> <label>Subtitle:</label> <span><?=(!empty($video->subtitle))?$video->subtitle:'N/A';?></span></li>
                                <li> <label>Release:</label> <span><?=(!empty($video->release_year))? date('Y-m-d', strtotime(str_replace('-','/', $video->release_year))): 'N/A';?></span></li>
                                <li> <label>Audio:</label> <span><?=(!empty($video->audio))?$video->audio:'N/A';?></span></li>
                                <li> <label>Studio:</label> <span><?=(!empty($video->studio))?$video->studio:'N/A';?></span></li>
                                <li> <label>Language:</label> <span><?=(!empty($video->language))?$video->language:'N/A';?></span></li>
                                <li> <label>Subscription:</label> <span><?=($video->subscription == 0)?'Free':'Paid';?></span></li>
                                <li> <label>Budget:</label> <span><?=(!empty($video->budget))?$video->budget:'N/A';?></span></li>
                                <li> <label>Rating:</label> <span><?=(!empty($video->rating))?$video->rating:'N/A';?></span></li>

                            </ul>
                            </div>
                        </div>
                    </div>
                    <?php if(!empty($cast)){?>
                    <div class="row rowMargin">
                        <div class="col-md-6">
                            <div class="form-group">
                                <h1>Cast & Crew</h1>
                                <ul class="info-list">
                                    <li> <label>Produced by:</label> <span><?=(!empty($cast->produced_by))?$cast->produced_by:'N/A';?></span></li>
                                    <li> <label>Screenplay by:</label> <span><?=(!empty($cast->screenplay_by))?$cast->screenplay_by:'N/A';?></span></li>
                                    <li> <label>Story by:</label> <span><?=(!empty($cast->story_by))?$cast->story_by:'N/A';?></span></li>
                                    <li> <label>Music by:</label> <span><?=(!empty($cast->music_by))?$cast->music_by:'N/A';?></span></li>
                                    <li> <label>Cinematography:</label> <span><?=(!empty($cast->cinematography))?$cast->cinematography:'N/A';?></span></li>
                                    <li> <label>Edited by:</label> <span><?=(!empty($cast->edited_by))?$cast->edited_by:'N/A';?></span></li>
                                    <li> <label>Production company:</label> <span><?=(!empty($cast->production_company))?$cast->production_company:'N/A';?></span></li>
                                    <li> <label>Distributed by:</label> <span><?=(!empty($cast->distributed_by))?$cast->distributed_by:'N/A';?></span></li>

                                </ul>
                            </div>
                        </div>
                    </div
                    <?php } ?>
                    <div>
                        <div class="row rowMargin">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <p><?=$video->description;?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="row rowMargin">
                            <?php
                            if(!empty($video->trailer)){?>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="trailer">Trailer</label>

                                        <div align="center" class="embed-responsive embed-responsive-16by9">
                                            <video controls class="embed-responsive-item" style="width: auto;">
                                                <source src="<?php echo base_url().'uploads/trailers/'.$video->trailer; ?>" type="video/mp4">
                                            </video>
                                        </div>
                                </div>
                            </div>
                            <?php } ?>
                            <?php if(!empty($video->full_video)){?>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="full_video">Full</label>

                                        <div align="center" class="embed-responsive embed-responsive-16by9">
                                            <video controls class="embed-responsive-item" style="width: auto;">
                                                <source src="<?php echo base_url().'uploads/videos/'.$video->full_video; ?>" type="video/mp4">
                                            </video>
                                        </div>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
