<div id="content">
    <div class="inner">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Push Notification(<?=strtoupper($this->uri->segment(2)) ?>)</h4>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="panel-body">

                        <form  id="push-notification" action="" method="post"  class="form-horizontal" enctype="multipart/form-data">
                            <div  class="tabbable tabs-left">
                                <div class="tab-content">
                                    <div class="form-group">
                                        <label class="control-label col-lg-2">Title<span class="text-danger">*</span>&nbsp;:</label>
                                        <div class="col-lg-8">
                                            <input type="text"  name="title" class="form-control" placeholder="Enter title">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-lg-2">Message<span class="text-danger">*</span> &nbsp;:</label>
                                        <div class="col-lg-8">
                                            <textarea class="form-control" name="message"  rows="4" cols="50" placeholder="Notification message.."></textarea>
                                        </div>
                                    </div>
                                    <div style="clear:both;"></div>
                                    <div class="form-actions no-margin-bottom" style="text-align:right;">
                                        <button onclick="sendPushNotification('<?=$this->uri->segment(2)?>','<?= $this->uri->segment(3); ?>')" class="btn btn-success">SEND</button>
                                    </div>

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>









<!--<div id="content">
    <div class="inner">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12"><?php /*echo validation_errors('<p class="form_error">','</p>'); */?></div>
            <div class="col-md-6 col-sm-6 col-xs-12"><?php /*echo $this->session->flashdata('feedback');*/?></div>
            <div class="col-lg-6"><h3>Push Notification!</h3></div>
        </div>
        <form  id="push-notification" action="" method="post"  class="form-horizontal" enctype="multipart/form-data">
            <div class="form-group">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    Title:<input type="text"  name="title" class="form-control" placeholder="Enter title">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    Message:<textarea class="form-control" name="message"  rows="4" cols="50" placeholder="Notification message!"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    Without Image:<input type="radio" name="is_image" value="0" checked>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    With Image:<input type="radio" name="is_image" value="1">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    Uplaod Notification Image:<input type="file" name="notification_img">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <button onclick="sendPushNotification('<?/*= $this->uri->segment(3); */?>')" class="btn btn-success">Upload</button>
                </div>
            </div>
        </form>
    </div>
</div>-->


