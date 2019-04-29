<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1 style="color:white; margin-left: 5px;">
            <i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard
            <!--<small>Control panel</small>-->
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <?php if($role == ROLE_ADMIN){ ?>
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->

                <!-- small box -->
                <a href="<?= base_url('userListing'); ?>" class="small-box-footer">
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3><?=totalUsers();?></h3>
                            <p>Users</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <div class="small-box-footer">
                            More info <i class="fa fa-arrow-circle-right"></i>
                        </div>
                    </div>
                </a>
            </div><!-- ./col -->
            <?php } ?>
            <div class="col-lg-3 col-xs-6">
                <a href="<?= base_url('categories-list'); ?>" class="small-box-footer">
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3><?=totalCategory();?></h3>
                            <p>Content Store</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <div class="small-box-footer">
                            More info <i class="fa fa-arrow-circle-right"></i>
                        </div>
                    </div>
                </a>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <a href="<?= base_url('categories-list'); ?>" class="small-box-footer">
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3><?=totalVideos()?><sup style="font-size: 20px"></sup></h3>
                            <p>Total Video</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <div class="small-box-footer">
                            More info <i class="fa fa-arrow-circle-right"></i>
                        </div>
                    </div>
                </a>
            </div><!-- ./col -->
            <?php if($role == ROLE_ADMIN){ ?>
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <a href="<?= base_url('plansListing'); ?>" class="small-box-footer">
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3><?=totalPlan();?></h3>
                            <p>Subscription</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-pie-graph"></i>
                        </div>
                        <div class="small-box-footer">
                            More info <i class="fa fa-arrow-circle-right"></i>
                        </div>
                    </div>
                </a>
            </div><!-- ./col -->
            <?php } ?>
        </div>
    </section>
</div>