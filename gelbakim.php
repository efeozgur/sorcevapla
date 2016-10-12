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
			$("li").mousemove(function(event) {
				var hangisi = $("li").index(this);		
				$("div#gizli").eq(hangisi).show(3);
			});			
			$("li").mouseleave(function(event) {
				var hangisi = $("li").index(this);		
				$("div#gizli").eq(hangisi).hide(3);
			});

		});	
	</script>
</head>
<body>
<div id="hangi"></div>
<?php 
	require('sozlukvt.php');
	$baslik = @$_GET['basliklink'];
	$ilkentry = @$_GET['ilkentry'];
	$sorgu = mysqli_query($baglan, "select * from basliklar where baslik='$baslik'");
	$satir = mysqli_fetch_array($sorgu);
	$id = $satir[0];
	$cevapsorgu = mysqli_query($baglan, "select * from cevaplar where cevapID='$id'");
	echo "<div class='cevapsayfasi'><h2>". $baslik ."</h2>";
	echo "<ol>";
	while ($row = mysqli_fetch_array($cevapsorgu)) {
		extract($row);

		echo "<li>".$cevap?>
		
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
</body>
</html>
