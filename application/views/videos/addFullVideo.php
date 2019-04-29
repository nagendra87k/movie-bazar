<link href="<?php echo base_url(); ?>assets/plugins/resumable-file-upload/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
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
                <h3 style="color:white; margin-left: 5px;"><i class="fa fa-list-alt"></i> Add Full Video</h3>
            </div>

        </div>
    </section>
    
    <section class="content">
        <div class="row">
            <!--<div class="col-lg-offset-2 col-lg-8">
                <div class="page-header">
                    <h1> Resumable file upload<small> <br/>with Resumable.js and Resumable.php</small></h1>
                </div>
            </div>-->

            <div class="col-lg-offset-2 col-lg-8">
                <button type="button" class="btn btn-success" aria-label="Add file" id="add-file-btn">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add file
                </button>
                <button type="button" class="btn btn-info" aria-label="Start upload" id="start-upload-btn">
                    <span class="glyphicon glyphicon-upload" aria-hidden="true"></span> Start upload
                </button>
                <button type="button" class="btn btn-warning" aria-label="Pause upload" id="pause-upload-btn">
                    <span class="glyphicon glyphicon-pause " aria-hidden="true"></span> Pause upload
                </button>
            </div>


            <div class="col-lg-offset-2 col-lg-8">
                <p>
                <div class="progress hide" id="upload-progress">
                    <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"   style="width: 0%">
                        <span class="sr-only"></span>
                    </div>
                </div>
                </p>
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
<script src="<?php echo base_url(); ?>assets/js/addUser.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/plugins/resumable-file-upload/bower_components/resumablejs/resumable.js" type="application/javascript"></script>
<script src="<?php echo base_url(); ?>assets/plugins/resumable-file-upload/bower_components/jquery/dist/jquery.min.js" type="application/javascript"></script>
<script src="<?php echo base_url(); ?>assets/plugins/resumable-file-upload/bower_components/bootstrap/dist/js/bootstrap.min.js" type="application/javascript"></script>

<script type="text/javascript">
    var r = new Resumable({
        target: "<?= base_url('assets/plugins/resumable-file-upload/upload.php'); ?>",
        testChunks: true
    });

    r.assignBrowse(document.getElementById('add-file-btn'));

    $('#start-upload-btn').click(function(){
        r.upload();
    });

    $('#pause-upload-btn').click(function(){
        if (r.files.length>0) {
            if (r.isUploading()) {
                return  r.pause();
            }
            return r.upload();
        }
    });

    var progressBar = new ProgressBar($('#upload-progress'));

    r.on('fileAdded', function(file, event){
        progressBar.fileAdded();
    });

    r.on('fileSuccess', function(file, message){
        progressBar.finish();
    });

    r.on('progress', function(){
        progressBar.uploading(r.progress()*100);
        $('#pause-upload-btn').find('.glyphicon').removeClass('glyphicon-play').addClass('glyphicon-pause');
    });

    r.on('pause', function(){
        $('#pause-upload-btn').find('.glyphicon').removeClass('glyphicon-pause').addClass('glyphicon-play');
    });

    function ProgressBar(ele) {
        this.thisEle = $(ele);

        this.fileAdded = function() {
            (this.thisEle).removeClass('hide').find('.progress-bar').css('width','0%');
        },

            this.uploading = function(progress) {
                (this.thisEle).find('.progress-bar').attr('style', "width:"+progress+'%');
            },

            this.finish = function() {
                (this.thisEle).addClass('hide').find('.progress-bar').css('width','0%');
            }
    }
</script>