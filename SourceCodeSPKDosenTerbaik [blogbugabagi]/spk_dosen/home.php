<div id="ww">
	    <div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 centered">
					<img src="assets/img/ristekdikti.png" width="30%" alt="Stanley">
					<h1><?= date('Y') ?></h1>
					<?php
            			$sq = mysql_query("select status from tb_pengaturan where pengaturan='pengumuman'");
            			$st = mysql_fetch_array($sq);
            			if($st['status']=="1"){
              				?><hr><h3><a href="?ap=pengumuman">Pemilihan Dosen Terbaik</a></h3><hr><?php
            			}
          			?>
					<p>Silahkan Login sebagai dosen untuk mendaftar sebagai peserta pemilihan dosen terbaik.</p>
					<p>Silahkan Login sebagai mahasiswa, pimpinan dan LPPM untuk melakukan penilaian terhadap dosen peserta</p>

				</div><!-- /col-lg-8 -->
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /ww -->