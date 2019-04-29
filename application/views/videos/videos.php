<?php
$categoryId = (!empty($this->uri->segment(3)) ? $this->uri->segment(3) : null);
$subCategoryId = (!empty($this->uri->segment(2)) ? $this->uri->segment(2) : null);
?>
<link href="http://jquery-az.com/boots/css/bootstrap-switch/bootstrap-switch.css" rel="stylesheet">
<div class="content-wrapper">
    <section class="content-header">
        <div class="row" style="padding-top:6px;padding-bottom:6px;">
            <div class="col-md-2" style="margin-left: 5px;">
                <button onclick="window.history.go(-1); return false;" class="btn btn-default"><i
                        class="fa fa-arrow-left"></i>&nbsp;Back
                </button>
            </div>
            <div class="col-md-6">
                <form action="" method="POST" id="searchList">
                    <div class="input-group">
                        <input type="text" name="searchText" value="<?php echo $searchText; ?>"
                               class="form-control input-sm pull-right""
                        placeholder="Search"/>
                        <div class="input-group-btn">
                            <button class="btn btn-sm btn-default searchList"><i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-md-2 pull-right text-right" style="margin-right:5px;">
                <a class="btn btn-sm btn-default pull-right"
                   href="<?= base_url('add-video/' . $categoryId . '/' . $subCategoryId) ?>"
                   title="Edit"><i class="fa fa-plus"></i>&nbsp;Add video</a>
            </div>
        </div>
    </section>
    <section class="content-header">
        <div class="col-md-6">
            <h4>
                <i class="fa fa-video-camera"></i> <b>Video
                    List</b>&nbsp;(<?= getCatNameById($categoryId) . ' -> ' . getSubCatNameById($subCategoryId); ?>)
            </h4>
        </div>
        <div class="col-md-6">
            <span class="list-style-buttons  pull-right" style="padding: 10px;">
				<a href="javascript:void(0)" title="Grid" id="gridview" class="switcher"><img
                        src="<?=base_url('assets/images/grid-view.png'); ?>"
                        alt="Grid"></a>
				<a href="javascript:void(0)" title="List" id="listview" class="switcher active"><img
                        src="<?=base_url('assets/images/list-view-active.png'); ?>" alt="List"></a>
        </span>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <!--<div class="box">-->


                <div class="box-body no-padding table-responsive">
                    <ul id="products" class="list clearfix">
                        <?php if (!empty($results)) {
                            $i = 1;
                            foreach ($results as $record) { ?>
                                <!-- row 1 -->
                                <li style="background-color:#0f1d32;color: white; border: 2px solid white;"
                                    class="clearfix <?/*($i % 2 == 0) ? 'alt' : '' */ ?>">
                                    <section class="left">
                                        <img src="<?php echo base_url() . 'uploads/posters/' . $record->poster; ?>"
                                             class="img-rounded" alt="Poster" width="300px" height="300px"
                                             alt="default thumb" class="thumb"/>
                                        <h3 style="color:white;"><?php echo $record->name ?></h3>
                                        <h4  style="color:white;"
                                             class="meta">Directed by :&nbsp;<?php echo $record->directed_by ?></h4>
                                    </section>

                                    <section class="right">
                                        <!--<span class="price"><?php /*echo $record->directed_by */ ?></span>-->
                                        <span class="darkview">
					                   <a href="<?= base_url('/viewVideo/' . $record->id) ?>"> <button
                                               class="btn btn-default btn-block"><i class="fa fa-info-circle"></i>&nbsp;Details</button></a><br>
                                                  <button class="btn btn-default btn-block" data-toggle="modal" data-target="#notification-<?=$record->id;?>"><i class="fa fa-bell"></i>&nbsp Send Notification</button><br>

					                   <a href="<?= base_url('/updateVideo/' . $record->id) ?>"> <button
                                               class="btn btn-default btn-block"><i class="fa fa-edit"></i>&nbsp;Edit</button></a><br>
                                                 <a href="<?= base_url('/addFullVideo/' . $record->id) ?>"> <button
                                                         class="btn btn-default btn-block"><i
                                                             class="fa fa-edit"></i>&nbsp; Full Video</button></a><br>

                                            <?php if (isCastAndCrewExist($record->id)) { ?>
                                                <a href="<?= base_url('/update-cast-and-crew/' . $record->id) ?>"><button
                                                        class="btn btn-default btn-block"><i
                                                            class="fa fa-edit"></i>&nbsp;Edit Cast & Crew</button></a>
                                            <?php } else { ?>
                                                <a href="<?= base_url('/add-cast-and-crew/' . $record->id) ?>"><button
                                                        class="btn btn-default btn-block"><i
                                                            class="fa fa-plus-circle"></i>&nbsp;Add Cast & Crew</button></a>
                                            <?php } ?>
                                            <br><a class="deleteVideo"  data-id="<?php echo $record->id; ?>" title="Delete"><button
                                                        class="btn btn-danger btn-block"><i
                                                            class="fa fa-trash"></i>&nbsp;Delete</button></a>
					                </span>
                                        <div class="row">
                                            <div class="col-sm-6 col-lg-4" style="padding-top: 17px;">
                                                <p><input type="checkbox"
                                                          data-handle-width="100" <?= ($record->is_published == 1) ? 'checked="true"' : ''; ?>
                                                          data-on-color="success" data-off-color="danger"
                                                          class="alert-status switch"
                                                          id="switch-<?= $record->id; ?>" data-size="normal"
                                                          name="my-checkbox" data-video-id="<?= $record->id; ?>"
                                                          data-on-text="<?= ($record->is_published == 1) ? 'Released' : 'Release'; ?>"
                                                          data-off-text="Unreleased"></p>
                                            </div>
                                            <script type="text/javascript">
                                                $('#switch-<?=$record->id;?>').on('switchChange.bootstrapSwitch', function (event, state) {
                                                    var videoId = $(this).data('video-id');

                                                    if ($("#switch-<?=$record->id;?>").is(':checked')) {

                                                        var confirmation = confirm("Are you sure you want to release this video?");
                                                        if (confirmation) {
                                                            $.ajax({
                                                                type: "POST",
                                                                url: baseURL + "video/videoPublished",
                                                                data: {"videoId": videoId, "is_published": 1},
                                                                success: function (data) {
                                                                    if (data.status = true) {
                                                                        alert("Video successfully released.");
                                                                    }
                                                                },
                                                                error: function () {
                                                                    alert('Failed!');
                                                                }
                                                            });
                                                        }
                                                    } else {
                                                        var confirmation = confirm("Are you sure you want to unrelease this video?");
                                                        if (confirmation) {
                                                            $.ajax({
                                                                type: "POST",
                                                                url: baseURL + "video/videoPublished",
                                                                data: {"videoId": videoId, "is_published": 0},
                                                                success: function (data) {
                                                                    if (data.status = true) {
                                                                        alert("Video successfully unreleased.");
                                                                    }
                                                                },
                                                                error: function () {
                                                                    alert('Failed!');
                                                                }
                                                            });
                                                        }
                                                    }
                                                });

                                            </script>

                                        </div>
                                    </section>
                                </li>
                                <div class="modal fade" id="notification-<?=$record->id;?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h3 class="modal-title" id="exampleModalLabel">Send Notification</h3>
                                            </div>
                                            <div class="modal-body">
                                                <form id="notification" method="post" action="">
                                                    <div class="form-group">
                                                        <label for="recipient-name" class="col-form-label">Title:</label>
                                                        <input type="text" class="form-control" id="title_<?=$record->id;?>" name="title"/>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="message-text" class="col-form-label">Message:</label>
                                                        <textarea class="form-control" id="body_message_<?=$record->id;?>" name="body_message"></textarea>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-primary sendNotification" data-video-id="<?=$record->id;?>" data-poster-uri="<?=(!empty($record->poster))?base_url() . 'uploads/posters/' . $record->poster:''?>" >Send message</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <?php $i++;
                            }
                        } else { ?>
                            <li class="text-center text-danger">No video found. Please add video.</li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</div>

<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/videos.js" charset="utf-8"></script>
<script src="http://jquery-az.com/boots/js/bootstrap-switch/highlight.js"></script>
<script src="http://jquery-az.com/boots/js/bootstrap-switch/bootstrap-switch.js"></script>
<script src="http://jquery-az.com/boots/js/bootstrap-switch/main.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery('ul.pagination li a').click(function (e) {
            e.preventDefault();
            var link = jQuery(this).get(0).href;
            var value = link.substring(link.lastIndexOf('/') + 1);
            jQuery("#searchList").attr("action", baseURL + "videosListing/"+<?=$categoryId?>+
            "/" + value
        )
            ;
            jQuery("#searchList").submit();
        });
    });

    $(function() {
        $('.sendNotification').on('click',function() {
            var video_id = $(this).data('video-id');
            var title = $('#title_'+video_id).val();
            var message = $('#body_message_'+video_id).val();

            var poster_uri = $(this).data('poster-uri');
            $.ajax({
                type: "POST",
                url: baseURL + 'fcmPushNotification/sendPushNotification',
                data: {title:title, message:message, video_id:video_id, poster_uri:poster_uri},
                success: function(response) {
                    alert("Notification sent successfully.")
                    $('#notification-'+video_id).modal('hide');
                },
                error: function() {
                    alert('Something went wrong. Please try again.');
                }
            });
            return false;
        });
    });


</script>