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
                    <a class="btn btn-default" href="<?php echo base_url(); ?>addNewPlan"><i class="fa fa-plus"></i>Add New</a>
            </div>
        </div>
		</section>
        
   
    <section class="content">
        <div class="row">
		<div class="col-md-6">
		<h3>
            <i class="fa fa-list-alt"></i> Plans Management
            <small>Add, Edit, Delete</small>
        </h3>
		</div>
              <!--<div class="col-md-6 text-right">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?php /*echo base_url();*/ ?>addNewPlan"><i class="fa fa-plus"></i>Add New</a>
                </div>
            </div>-->
        </div>
        <div class="row">
            <div class="col-xs-12">
                <!--<div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Plans List</h3>
                        <div class="box-tools">
                            <form action="<?php/* echo base_url()*/ ?>plansListing" method="POST" id="searchList">
                                <div class="input-group">
                                    <input type="text" name="searchText" value="<?php /*echo $searchText; */?>" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-default searchList"><i class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>--><!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-bordered">
                            <tr style="background-color:#0f1d32;color: white;">
                                <th class="text-center">Name</th>
                                <th class="text-center">Alias Name</th>
                                <th class="text-center">Amount in (Rs)</th>
                                <th class="text-center">Description</th>
                                <th class="text-center">Days</th>
                                <th class="text-center">Actions</th>
                            </tr>
                            <tbody>
                            <?php if(!empty($results)) {
                                $i=0;
                                foreach($results as $record) { ?>
                                    <tr style="border:2px solid #1d4650;"> <!--style="background-color: <?/*($i%2==0)?'#acb8be':'#f0ec95';*/?>"-->
                                        <td style="background-color:#0f1d32;color: white" class="text-center"><?= $record->name;?></td>
                                        <td  style="background-color:white;color: black;" class="text-center"><?= $record->alias_name;?></td>
                                        <td  style="background-color:white;color: black;" class="text-center"><?= $record->amount;?></td>
                                        <td  style="background-color:white;color: black;" class="text-center"><?= $record->description;?></td>
                                        <td  style="background-color:white;color: black;" class="text-center"><?= $record->days;?></td>

                                        <td  style="background-color:white;color: black;" class="text-center">
                                            <a class="btn btn-sm" style="background-color:#0f1d32; color:white" href="<?= base_url('updatePlan/'.$record->id); ?>" title="Edit"><i class="fa fa-pencil" style="color:white;"></i>&nbsp; Edit</a>
                                            <a class="btn btn-sm btn-danger deletePlane" href="#" data-userid="<?php echo $record->id; ?>" title="Delete"><i class="fa fa-trash"></i>&nbsp; Delete</a>
                                        </td>
                                    </tr>
                                <?php $i++;}
                            } ?>
                            </tbody>
                        </table>
                    </div><!-- /.box-body -->
                    <div class="box-footer clearfix">
                        <?php echo $this->pagination->create_links(); ?>
                    </div>
                </div><!-- /.box -->
            </div>
        </div>
    </section>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/plan.js" charset="utf-8"></script>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('ul.pagination li a').click(function (e) {
            e.preventDefault();
            var link = jQuery(this).get(0).href;
            var value = link.substring(link.lastIndexOf('/') + 1);
            jQuery("#searchList").attr("action", baseURL + "userListing/" + value);
            jQuery("#searchList").submit();
        });
    });
</script>
