<?php require('config.php');

	$soru = $_POST['soru'];
	$cevap = $_POST['cevap'];
	$kategori = $_POST['kategori'];

	$soru = addslashes($soru);
	$cevap = addslashes($cevap);

	if (!empty($soru) && (!empty($cevap))) {
		# code...
	
		$kayit = mysqli_query($baglan, "insert into sorucevap (soru, cevap, kategori) values ('$soru', '$cevap', '$kategori')");
		if ($kayit) {
			echo "ok";
		} else { echo "hata";}
	
}
 ?>