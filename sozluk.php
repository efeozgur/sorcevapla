<?php require('sozlukvt.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sözlük</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/sozlukstil.css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>
	<div style='height: 40px; background: #344E67' id="usttaraf">
		<div class="col-md-2"><img src="img/ululogo1.png" alt=""></div>
		<div class="col-md-8"><input class="form-control" type="text"></div>
		<div class="col-md-2">
			<input class="btn btn-danger" type="submit" value="Kayıt Ol">
			<input class="btn btn-success" type="submit" value="Giriş Yap">
		</div>
	</div>

	
	<div class="col-md-2" id="soltaraf">
		<ul>
		<?php 
			$sorgu = mysqli_query($baglan, "select * from basliklar order by id desc");
			while ($row = mysqli_fetch_array($sorgu)) {
				extract($row);
				$basliklink = str_replace(" ", "+", $baslik);
				$sayibul= mysqli_query($baglan, "select * from cevaplar where cevapID='$id'");
				$sayi = mysqli_num_rows($sayibul);
		?>
			<li><?php echo "<a target='pen' title='baslikbul' href='gelbakim.php?basliklink=$basliklink&ilkentry=$ilkentry'>".$baslik."<span style='float:right' class='badge'>".$sayi."</span></a>";  ?></li>
<?php } ?>

		</ul>
	</div>
	<div id="ortataraf" class="col-md-9">
		<iframe name="pen" src="gelbakim.php" frameborder="0" width="1200" height="800"></iframe>
	</div>
	<div class="col-md-1" id="sagtaraf"></div>
</body>
</html>