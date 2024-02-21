<?php
	include("connectDB.php");
	include("dist/function/format_tanggal.php");
	include("dist/function/format_rupiah.php");
	$mulai 	 = $_GET['awal'];
	$selesai = $_GET['akhir'];
	$output = '';
	$sql = "SELECT users_logs.*, users.* FROM users, users_logs WHERE users.username=users_logs.username
			AND users_logs.checkindate BETWEEN '$mulai' AND '$selesai'
			ORDER BY users_logs.checkindate DESC";
	$query = mysqli_query($conn,$sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Report Absensi</title>	
	<!-- jQuery -->
	<script src="libs/jquery/dist/jquery.min.js"></script>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<section id="body-of-report">
		<div class="container-fluid">
			<h4 class="text-center">REPORT ABSENSI</h4>
		
			<br />
			<table class="table table-bordered table-keuangan">
				<thead>
					<tr>
								<th width="1%">No</th>
								<th width="7%">Nama</th>
								<th width="2%">ID</th>
								<th width="5%">Tanggal</th>
								<th width="5%">Jam Masuk</th>
                            	<th width="5%">Jam Keluar</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$i=1;
						while($data = mysqli_fetch_array($query)) {
							echo '<tr>';
							echo '<td class="text-center">'. $i .'</td>';
							echo '<td>'. $data['username'] .'</td>';
							echo '<td>'. $data['serialnumber'] .'</td>';
                        	echo '<td class="text-center text-nowrap">'. format_tanggal($data['checkindate']) .'</td>';
							echo '<td>'. $data['timein'] .'</td>';
                       		echo '<td>'. $data['timeout'] .'</td>';
							echo '</tr>';
							$i++;
						}
					
					$output .= '</table>';
					header('Content-Disposition: attachment; filename=User_Log.xls');
					
					echo $output;
					exit();
			  
					?>
				</tbody>
			</table>
			<br />
		</div><!-- /.container -->
	</section>
</body>
</html>