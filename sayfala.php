<?php 
	require('config.php');

	$sayfa = $_GET['s'];
	if (!empty($sayfa)&& (!is_numeric($sayfa))) {
		$sayfa=1;
	}

	$kacar = 3; 
	$ksayisi = mysqli_num_rows(mysqli_query($baglan, "select * from sorular"));
	$sayfasayisi = ceil($ksayisi/$kacar); 
	$nerden = ($sayfa*$kacar)-$kacar;
	$bul = mysqli_query($baglan, "select * from sorular order by id desc limit $nerden, $kacar");
	while ($goster = mysqli_fetch_array($bul)) {
		extract($goster);
		echo "<p>". $soru."</p>";
	}
	echo "<ul style='list-style:none'>";
	for ($i=1; $i <= $sayfasayisi; $i++) { 
		echo "<li style='border:1px solid #ddd; float:left'><a style='padding:15px; display:block' href='sayfala.php?s=$i'>$i</a></li>";
	}

	echo "</ul>";
 ?>