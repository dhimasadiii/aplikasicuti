<?php 

// koneksi
$conn = new mysqli('localhost', 'root', '', 'biometricattendace');
	// deskripsi halaman
	$pagedesc = "Laporan Data Cuti";
	include("dist/function/format_tanggal.php");
	include("dist/function/format_rupiah.php");

?>

<!DOCTYPE html>
<html>
<head>
  <title>Users Logs</title>
    
  <link rel="stylesheet" type="text/css" href="css/userslog.css">

<script>
  $(window).on("load resize ", function() {
    var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
    $('.tbl-header').css({'padding-right':scrollWidth});
}).resize();
</script>
<script src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha1256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">
</script>
<script src="js/jquery-2.2.3.min.js"></script>
<script src="js/user_log.js"></script>
</head>

<body>
<?php include'header.php'; ?> 
<main>
  	<div class="form-style-5 slideInDown animated">
					        <form method="get" name="laporan" onSubmit="return valid();"> 
									<div class="form-style-5">
										<label>Start Date</label>
										<input type="date" class="form-control" name="awal" placeholder="From Date(dd/mm/yyyy)" required>
									</div>
									<div class="form-style-5">
										<label>End Date</label>
										<input type="date" class="form-control" name="akhir" placeholder="To Date(dd/mm/yyyy)" required>
									</div>
									<div class="form-style-5">
										<input type="submit" name="submit" value="View Report" class="btn btn-primary">
									</div>
								</div>
							</form>
							</div>
						</div>
						<?php
							if(isset($_GET['submit'])){
								$no=0;
								$mulai 	 = $_GET['awal'];
								$selesai = $_GET['akhir'];
								$sql = "SELECT users.*, users_logs.* FROM users, users_logs WHERE users.username=users_logs.username 
										AND users_logs.checkindate BETWEEN '$mulai' AND '$selesai' ORDER BY users_logs.checkindate DESC";
								$query = mysqli_query($conn,$sql);
							?>
			
								<div class="tbl-header slideInRight animated">
    <table cellpadding="0" cellspacing="0" border="0">

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
												echo '<td>'. $data['nrp'] .'</td>';
                        						echo '<td class="text-center text-nowrap">'. format_tanggal($data['checkindate']) .'</td>';
												echo '<td>'. $data['timein'] .'</td>';
                       							echo '<td>'. $data['timeout'] .'</td>';
                        						echo '</tr>';
												$i++;
											}
										?>
									</tbody>
								</table>
                <div class="form-group">
				<div class="form-style-5 slideInDown animated">
									<a href="laporan_cetak.php?awal=<?php echo $mulai;?>&akhir=<?php echo $selesai;?>" target="_blank" class="btn btn-warning"><input type="submit" name="submit" value="Export to Excel" class="btn btn-primary"></a>
							</div>
							</div>
							
			<!-- Large modal -->
			<div class="modal fade bs-example-modal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-body">
							<p></p>
						</div>
					</div>
				</div>
			</div>    
						</div><!-- /.panel -->
					</div><!-- /.col-lg-12 -->
				</div><!-- /.row -->
			<?php }?>
            </div><!-- /.container-fluid -->
        </div><!-- /#page-wrapper -->
<!-- bottom of file -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#tabel-data').DataTable({
			"responsive": true,
			"processing": true,
			"columnDefs": [
				{ "orderable": false, "targets": [4] }
			]
		});
		
		$('#tabel-data').parent().addClass("table-responsive");
	});
</script>
<script>
		var app = {
			code: '0'
		};
</script>

    </table>
   </div>
  </div>
 </div>
 </main>
</section>
</body>
</html>