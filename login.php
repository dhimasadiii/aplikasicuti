<?php $pagedesc = "Log in"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<title><?php echo $pagedesc ?></title>

	<link href="libs/images/header.JPG" rel="icon" type="images/x-icon">

	<!-- Bootstrap Core CSS -->
	<link href="libs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom CSS -->
	<link href="dist/css/style.css" type="text/css" rel="stylesheet">
	<link href="dist/css/styles.css" rel="stylesheet">
	<link href="dist/css/offline-font.css" rel="stylesheet">
	<link href="dist/css/custom.css" rel="stylesheet">	

	<!-- Custom Fonts -->
	<link href="libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<!-- jQuery -->
	<script src="libs/jquery/dist/jquery.min.js"></script>
	<script src="script.js"></script>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body style="background-color: #f1f4f6">


  

	<section id="main-wrapper" style="margin-top: 100px">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4"><?php include("layout_alert.php"); ?></div>
			</div><!-- /.row -->
			<div class="row">
				<div id="page-wrapper" class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4" style="background-color: #ffffff; border-radius: 3px; webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05); box-shadow: 0 1px 1px rgba(0,0,0,.05)">
					<div class="row">
						<div class="col-lg-12">
							<br/>
						
							<center><img src="libs/images/logout.png" width="450" height="90"></center>
							<h2 class="text-center">Sistem Informasi Pengajuan Cuti<br/> <b>PT. United Tractors. Tbk</b></h2>
							<h2 class="text-center">Site Bendili<br/>
						</div>
					</div><!-- /.row -->
					<div class="row">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-body">
									<form action="login_auth.php" method="post">
										<div class="form-group">
											<input type="text" class="form-control" name="username" placeholder="Username" required>
										</div>
										<div class="form-group">
											<input type="password" class="form-control" name="password" placeholder="Password" required>
										</div>
										<div class="form-group">
											<select class="form-control" name="akses" required>
											<option value="" class="text-center"> Login Sebagai </option>
											<option value="Admin">Administrator</option>
											<option value="Mng">Depthead</option>
											<option value="Spv">Supervisor</option>
											<option value="Lead">Pegawai</option>
											
											</select>
										</div>
										<div class="form-group">
											<input type="submit" class="btn btn-success btn-block" name="login" value="Login">
										</div>
									</form>
								</div>
							</div>
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div><!-- /.container -->
	</section>
	
	<!-- footer-bottom -->
	<div class="navbar navbar-inverse navbar-fixed-bottom footer-bottom">
	
			<p class="text-center" style="color: #D1C4E9 ; margin: 0 0 5px; padding: 0"><small>PT United Tractors. Tbk Site Bendili</small></p>
		</div>
	</div><!-- /.footer-bottom -->

	<!-- Bootstrap Core JavaScript -->
	<script src="libs/bootstrap/dist/js/bootstrap.min.js"></script>

</body>
</html>