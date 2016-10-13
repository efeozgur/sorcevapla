<?php require('sozlukvt.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Değer</title>
<script src="ckeditor/ckeditor.js" type="text/javascript"></script> 
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
	#kayitalani {margin:20px;}
</style>
<body>
<div id="kayitalani">
<h3>Entry Kayıt</h3>
	<form action="ekaydet.php" method="POST">
		<input name="baslik" class="form-control" type="text" placeholder="Başlık Giriniz">
		<textarea name="entry" class='ckeditor' rows="5"></textarea>
		<input name="yazar" class="form-control" type="text" placeholder="Yazar Adı">
		<input class="form-control" type="submit" value="Kaydet">
	</form>
</div>

<div id="postet">
	<?php 
		if ($_POST) {
			$baslik = $_POST['baslik'];
			$entry = $_POST['entry'];
			$yazar = $_POST['yazar'];

			$bkayit = mysqli_query($baglan, "insert into basliklar (baslik, ilkentry, yazar)values('$baslik','$entry','$yazar')");
			$sonkayitbul = mysqli_query($baglan, "select * from basliklar order by id desc limit 1");
			$row = mysqli_fetch_array($sonkayitbul);
			$id= $row[0];
			$entry = $row[2];
			$yazarim = $row[3];
			$ekayit = mysqli_query($baglan, "insert into cevaplar (cevap, cevapID, yazar) values ('$entry','$id','$yazarim')");
		}
	 ?>
</div>


</body>
</html>