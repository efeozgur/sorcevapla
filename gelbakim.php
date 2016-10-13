<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="css/sozlukstil.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script>
		$(function(){
			$("p#ucnokta").click(function(event) {
				var hangisi = $("p#ucnokta").index(this);		
				$("div#gizli").eq(hangisi).slideToggle(300);
			});			
			
		});	
	</script>
	<script src="ckeditor/ckeditor.js"></script>
</head>
<style>
	#entrygir {margin:20px;}
</style>
<body>
<div id="hangi"></div>
<?php 
	require('sozlukvt.php');
	$baslik = $_GET['basliklink'];
	$ilkentry = $_GET['ilkentry'];
	$sorgu = mysqli_query($baglan, "select * from basliklar where baslik='$baslik'");
	$satir = mysqli_fetch_array($sorgu);
	$id = $satir[0];
	$cevapsorgu = mysqli_query($baglan, "select * from cevaplar where cevapID='$id'");
	echo "<div class='cevapsayfasi'><h2>". $baslik ."</h2>";
	echo "<ol>";
	while ($row = mysqli_fetch_array($cevapsorgu)) {
		extract($row);

		echo "<li>".$cevap?>
		<center><p id="ucnokta" style="text-align: center; border:1px solid #ddd; margin-top:10px; width: 50px">...</p></center>
		<div style="display: none; margin-top:30px" id="gizli">
			<span style="font-size:12px" class="label label-warning">:)</span>			
			<span style="font-size:12px" class="label label-success">:))</span>			
			<span style="font-size:12px" class="label label-danger">:(</span>		
			<span class="label label-primary" style="float:right; font-size:10px; font-family: tahoma"><?php echo $yazar;?></span>	
			<span class="label label-danger" style="float:right; font-size:10px; font-family: tahoma;  margin-right: 5px"><?php echo $tarih;?></span>	
		</div>
		


		<?php


		echo "</li>";
	}
	echo "</ol></div>";
 ?>	

<div id="entrygir">
	<form action="gelbakim.php" method="POST">
		<textarea name="entry" id="" class="ckeditor" cols="30" rows="10"></textarea>
		<input class="form-control" type="text" name="yazar">
		<input class="form-control" type="submit" value="Cevap">
	</form>
</div>
<div id="postedildimi">
	<?php 

			if ($_POST) {
				$baslik = $_POST['basliklink'];
				//echo  $basliklink;
				$idbul = mysqli_query($baglan, "select * from basliklar where baslik='$baslik'");
				$ro = mysqli_fetch_array($idbul);
				$idm = $ro[0];

				$entry = $_POST['entry'];
				$yazarim = $_POST['yazar'];
			

				$sorgu = mysqli_query($baglan, "insert into cevaplar (cevap, cevapID, yazar) values ('$entry','$idm','$yazarim')");

				if ($sorgu) {
					echo "tamam";
				}else {echo mysqli_error($baglan);}
		
			}

	 ?>
</div>
</body>
</html>
