<?php
    require'connectDB.php';
    $date1 = $_POST['date1'];
    $date2 = $_POST['date2'];
    
    $sql = "SELECT * FROM users_logs WHERE checkindate='$Log_date' ORDER BY id DESC";
    $result = mysqli_query($conn, $sql);
?>
<!DOCTYPE html>
<html lang="en">

<body>
	<section id="header-kop">
		<div class="container-fluid">
			<table class="table table-borderless">
				<tbody>
					<tr>
						<td class="text-left" width="20%">
						<br>
						<br>
							<img src="libs/images/logout.png" alt="logo-dkm" height="50" width="250" />
						</td>
						<td class="text-center" width="60%">
					    <br>
						<br>
						<b>SURAT PERMOHONAN CUTI</b> <br>
						<b>PT. UNITED TRACTORS. Tbk</b> <br>
						<b>SITE BENDILI</b><br>
						<br>
						<td class="text-right" width="20%">
							<img src="libs/images/bendili.png" alt="logo-dkm" width="120" height="120"/>
						</td>
					</tr>
				</tbody>
			</table>
			<hr class="line-top" />
		</div>
	</section>

	<section id="body-of-report">
		<div class="container-fluid">
			<h4 class="text-center">LAPORAN DATA CUTI</h4>
			<h5 class="text-center">Periode <?php echo IndonesiaTgl($mulai) ." - ". IndonesiaTgl($selesai) ?></h5>
			<br />
			<table class="table" bordered="1"> 
				<thead>
					<tr>
                            <TH>ID</TH>
                            <TH>Name</TH>
                            <TH>Serial Number</TH>
                            <TH>Fingerprint ID</TH>
                            <TH>Date log</TH>
                            <TH>Time In</TH>
                            <TH>Time Out</TH>
					</tr>
				</thead>
				<tbody>
					<?php
						$i=1;
						while($data = mysqli_fetch_array($query)) {
							echo '<tr>';
							echo '<td class="text-center">'. $i .'</td>';
							echo '<td>'. $data['no_cuti'] .'</td>';
							echo '<td>'. $data['nama_emp'] .'</td>';
							echo '<td class="text-center text-nowrap">'. format_tanggal($data['tgl_pengajuan']) .'</td>';
							echo '<td class="text-center text-nowrap">'. format_tanggal($data['tgl_awal']) .'</td>';
							echo '<td class="text-center text-nowrap">'. format_tanggal($data['tgl_akhir']) .'</td>';
							echo '<td>'. $data['stt_cuti'] .'</td>';
							echo '</tr>';
							$i++;
						}
					?>
				</tbody>
			</table>
			<br />
		</div><!-- /.container -->
	</section>

	<script type="text/javascript">
		$(document).ready(function() {
			window.print();
		});
	</script>

	<!-- Bootstrap Core JavaScript -->
	<script src="libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- jTebilang JavaScript -->
	<script src="libs/jTerbilang/jTerbilang.js"></script>

</body>
</html>