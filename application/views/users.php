<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="row" style="padding-top:6px;padding-bottom:6px;">
            <div class="col-md-2" style="margin-left: 5px;">
                <button onclick="window.history.go(-1); return false;" class="btn btn-default"><i
                            class="fa fa-arrow-left"></i>&nbsp;Back
                </button>
            </div>
            <div class="col-md-6">
                <form action="<?php echo base_url() ?>userListing" method="POST" id="searchList">
                    <div class="input-group">
                        <input type="text" name="searchText" value="<?php echo $searchText; ?>"
                               class="form-control input-sm pull-right"
                               placeholder="Search"/>
                        <div class="input-group-btn">
                            <button class="btn btn-sm btn-default searchList"><i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-2 pull-right text-right" style="margin-right: 5px;">
                <a class="btn btn-default" href="<?php echo base_url(); ?>addNew"><i class="fa fa-plus"></i> Add New</a>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <h3>
                    <i class="fa fa-users"></i> User Management
                </h3>
            </div>

           <!-- <div class="col-md-6 text-right">
                <div class="form-group" style="vertical-align: middle">
                    <a class="btn btn-primary" href="<?php /*echo base_url(); */?>addNew"><i class="fa fa-plus"></i> Add New</a>
                </div>
            </div>-->
        </div>
        <div class="row">
            <div class="col-xs-12">
                <!-- <div class="box">-->
                <!--<div class="box-header">
                    <h3 class="box-title">Users List</h3>
                    <div class="box-tools">
                        <form action="<?php /*echo base_url() */?>userListing" method="POST" id="searchList">
                            <div class="input-group">
                                <input type="text" name="searchText" value="<?php /*echo $searchText; */?>"
                                       class="form-control input-sm pull-right" style="width: 150px;"
                                       placeholder="Search"/>
                                <div class="input-group-btn">
                                    <button class="btn btn-sm btn-default searchList"><i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>--><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                    <table class="table table-bordered table-hover">
                        <tr style="background-color:#0f1d32;color:white;">
                            <!-- <th>Id</th>-->
                            <th class="text-center">Name</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Mobile</th>
                            <th class="text-center">Role</th>
                            <th class="text-center">Actions</th>
                        </tr>
                        <?php
                        if (!empty($userRecords)) {
                            $i = 0;
                            foreach ($userRecords as $record) {
                                ?>
                                <tr style="border:2px solid #1d4650;">
                                    <td style="background-color:#0f1d32;color: white" class="text-center"><?php echo $record->name ?></td>
                                    <td style="background-color:white;color: black;" class="text-center"><?php echo $record->email ?></td>
                                    <td style="background-color:white;color: black;" class="text-center"><?php echo $record->mobile ?></td>
                                    <td style="background-color:white;color: black;" class="text-center"><?php echo $record->role ?></td>
                                    <td style="background-color:white;color: black;" class="text-center">
                                        <a class="btn btn-sm " style="background-color:#0f1d32;"
                                           href="<?= base_url() . 'login-history/' . $record->userId; ?>"
                                           title="Login history"><i class="fa fa-history" style="color:white;" ></i></a> |
                                        <a class="btn btn-sm" style="background-color:#0f1d32;"
                                           href="<?php echo base_url() . 'editOld/' . $record->userId; ?>" title="Edit"><i
                                                    class="fa fa-pencil" style="color:white;"></i></a>
                                        <a class="btn btn-sm btn-danger deleteUser" href="#"
                                           data-userid="<?php echo $record->userId; ?>" title="Delete"><i
                                                    class="fa fa-trash"></i></a>
                                        <!-- <a class="btn btn-sm btn-info approved" data-userid="<?php /*echo $record->userId; */
                                        ?>" title="Approved">approve</a>-->
                                    </td>
                                </tr>
                                <?php
                                $i++;
                            }
                        }
                        ?>
                    </table>

                </div><!-- /.box-body -->
                <div class="box-footer pull-right clearfix">
                    <?php echo $this->pagination->create_links(); ?>
                </div>
                <!--</div>--><!-- /.box -->
            </div>
        </div>
    </section>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {

        jQuery('ul.pagination li a').click(function (e) {
            e.preventDefault();
            var link = jQuery(this).get(0).href;
            var value = link.substring(link.lastIndexOf('/') + 1);
            jQuery("#searchList").attr("action", baseURL + "userListing/" + value);
            jQuery("#searchList").submit();
        });


        jQuery(document).on("click", ".approved", function () {


            var userId = $(this).data("userid");
            approveURL = baseURL + "approved";
            var confirmation = confirm("Are you sure to be approved?");

            if (confirmation) {
                jQuery.ajax({
                    type: "POST",
                    dataType: "json",
                    url: approveURL,
                    data: {userid: userId}
                }).done(function (data) {
                    console.log(data);
                    // currentRow.parents('tr').remove();
                    if (data.status = true) {
                        alert("Activation Link sent your email.");
                    }
                    else if (data.status = false) {
                        alert("opration failed! please try again.");
                    }
                    else {
                        alert("Access denied..!");
                    }
                });
            }
        });
    });

    $('#dpto-dropdown select').change(function () {

        var classId = $(this).val();
        var publisherId = <?=$this->uri->segment(3);?>
            $.ajax({
                url: base_url + "test/getSubjectByClass",
                async: false,
                type: "POST",
                data: "class_id=" + classId + '&publisher_id=' + publisherId,
                dataType: "JSON",

                success: function (data) {
                    $('#ciudad').html(data);
                }
            })
    });

</script>
