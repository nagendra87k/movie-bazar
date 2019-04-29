<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="row " style="padding-top:6px;padding-bottom:6px;">
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
			 <?php if(getRole()==1){?>
             <a class="btn btn-default pull-right" href="<?=base_url('add-showcase/'.$this->uri->segment(2)); ?>"><i class="fa fa-plus"></i> &nbsp;Add New</a>
             <?php } ?>
            </div>
        </div>
    </section>
    <section class="content-header">
	<div class="row">
		<div class="col-md-6">
        <h3 style="color:white; margin-left: 5px;">
            <i class="fa fa-list-alt"></i> Showcase Management
            <small style="color:white;">Add, Edit, Delete</small>
        </h3>
		</div>
        <!--<?php /*if(getRole()==1){?>
        <a class="btn btn-primary pull-right" href="<?=base_url('add-showcase/'.$this->uri->segment(2)); ?>"><i class="fa fa-plus"></i> &nbsp;Add New</a>
        <?php } */?>-->
		</div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                   <!-- <div class="box-header">
                        <h3 class="box-title">Showcase List</h3>
                        <div class="box-tools">
                            <form action="<?/*base_url('sub-category-list/'.$this->uri->segment(2)); */?>" method="POST" id="searchList">
                                <div class="input-group">
                                    <input type="text" name="searchText" value="<?php /*echo $searchText; */?>" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-default searchList"><i class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>-->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-bordered">
                            <tr style="background-color:#0f1d32;color: white;"><!--style="background-color: #00a1dc"-->
                                <th class="text-center">Banner Image</th>
                                <th class="text-center">Video Name</th>
                                <?php if(getRole()==1){?>
                                    <th class="text-center">Actions</th>
                                <?php }?>
                            </tr>
                            <tbody>
                            <?php if(!empty($results)) {
                                $i=0;
                                foreach($results as $record) { ?>
                                    <tr style="border: 4px solid white;"> <!--style="background-color: <?/*($i%2==0)?'#acb8be':'#f0ec95';*/?>"-->
                                        <td  style="background-color:#0f1d32;color: white"  class="text-center">
                                            <img src="<?= base_url('uploads/showcase/'. $record->showcase_img_uri)?>" width="300px" height="300px"/>
                                        </td>
                                        <td style="background-color:white;color: black; font-size:18px;" class="text-center"><?= getMovieNameByMovieId($record->movie_id);?></td>
                                        <?php if(getRole()==1){?>
                                            <td style="background-color:white;color: black;" class="text-center">
                                                <a class="btn btn-sm"  style="background-color:#0f1d32; color:white;" href="<?= base_url('update-showcase/'.$record->id.'/'.$record->category_id); ?>" title="Edit"><i class="fa fa-pencil"></i>&nbsp; Edit</a>
                                                <a class="btn btn-sm btn-danger deleteShowcase"  data-id="<?php echo $record->id; ?>" title="Delete"><i class="fa fa-trash"></i>&nbsp; Delete</a>
                                            </td>
                                        <?php } ?>
                                    </tr>
                                <?php $i++;}?>
                            <?php }else{?>
                                <tr>
                                    <td colspan="5" class="text-center text-danger">Showcase not added. please add Showcase.</td>
                                </tr>

                            <?php } ?>
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
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/category.js" charset="utf-8"></script>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('ul.pagination li a').click(function (e) {
            e.preventDefault();
            var link = jQuery(this).get(0).href;
            var value = link.substring(link.lastIndexOf('/') + 1);
            jQuery("#searchList").attr("action", baseURL + "showcase-list/" + value);
            jQuery("#searchList").submit();
        });
    });
</script>
<script type="text/javascript">
    $('#searchList').submit(function() {
        var pass = true;
        if(pass == false){
            return false;
        }
        $(".loading").show();
        return true;
    });
</script>
