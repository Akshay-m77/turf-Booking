<?php
	include("auth.php");
	include('../connect/db.php');
	$Log_Id=$_SESSION['SESS_SHOPS_ID'];
?>	
<!DOCTYPE html>
<html>

<head>

 	<title>Turf Finding</title>
    <link rel="icon" type="text/css" sizes="16x16" href="../images/logo.png">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  
    <?php
		include('include/css.php');
  	?> 
       
</head>

<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">
    
		<header class="main-header">
			<?php
				include("include/header.php");
			?>
		</header>

		<aside class="main-sidebar">
			<?php
				include("include/leftmenu.php");
			?>
		</aside>

		<div class="content-wrapper">
			<?php
				include("include/topmenu.php");
			?>
		</div>
        
      <div class="row">
        <div class="">
          <div class="">
            <div class="col-xs-12">
            
              <div class="box box-danger">            
                <div class="box-body no-padding">
                	<div class="panel panel-primary">
                        <div class="panel-heading">
                        	All Turf Details Update
                        </div>
                        <div class="panel-body">                            
                       <!-- Col Start -->
                       <?php
                        $result = $db->prepare("select * from product where Log_Id='$Log_Id'");
                        $result->execute();
                        $row_count =  $result->rowcount();
                        for($i=0; $rows = $result->fetch(); $i++)
                        {
							$turfrid = $rows['turfrid'];
							?>
                           <div class="col-md-4">
                              <!-- Widget: user widget style 1 -->
                              <div class="box box-widget widget-user">
                                <!-- Add the bg color to the header using any of the bg-* classes -->
                                <div class="widget-user-header bg-purple-active">
                                  <h3 class="widget-user-username"><?php echo $rows['name'];?></h3>
                                  <h5 class="widget-user-desc"><?php echo $rows['licenno'];?></h5>
                                </div>
                                <div class="widget-user-image">
                                  <img class="img-circle" src="../photo/<?php echo $rows['photo'];?>" alt="User Avatar">
                                </div>
                                <div class="box-footer">
                                  <div class="row">
                                    <div class="col-sm-4 border-right">
                                      <div class="description-block">
                                        <h5 class="description-header"><?php echo $rows['rate'];?></h5>
                                        <span class="description-text">AMOUNT</span>
                                      </div>
                                      <!-- /.description-block -->
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-sm-4 border-right">
                                      <div class="description-block">
                                        <h5 class="description-header"><?php echo $rows['qty'];?></h5>
                                        <span class="description-text">QUANTITY</span>
                                      </div>
                                      <!-- /.description-block -->
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-sm-4">
                                      <div class="description-block">
                                      <a href="product_update_edit.php<?php echo '?turfrid='.$turfrid; ?>" class="btn btn-block btn-primary">Update</a>
                                      </div>
                                      <!-- /.description-block -->
                                    </div>
                                    <!-- /.col -->
                                  </div>
                                  <!-- /.row -->
                                </div>
                              </div>
                              <!-- /.widget-user -->
                            </div>
                          <!-- Col End -->
                          <?php }?>  
                        </div>
					</div>
                </div>
              
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  
		<?php
  			include("include/footer.php");
		?>
        
		<div class="control-sidebar-bg"></div>
        
		<?php
  			include("include/js.php");
		?>        
	</div>

</body>
</html>
