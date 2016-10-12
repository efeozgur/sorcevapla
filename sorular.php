<?php require('config.php'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Sorular</title>
	<link rel="stylesheet" href="css/stilim.css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<style>
		.degisken {background: green; color:white; }
		.degisken1 {background: green; color:white; }
	</style>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script>
$(function(){

		$("button").mousemove(function(event) {
			var deger = $("button").index(this);
			$("button").eq(deger).addClass('degisken');

		});
		$("button").mouseleave(function(event) {
			var deger = $("button").index(this);
			$("button").eq(deger).removeClass('degisken');
		});;

})

		
	</script>
</head>
<body>
	<div class="scroll" id="deneme">
	<?php 

	
		$sayfa = $_GET['sahife'];
		if (empty($sayfa) && (is_numeric($sayfa))) {
			
		$sayfa=1; } else {
	



		$kacar = 5; 
	


		$sorgu = mysqli_query($baglan, "select * from sorular order by id desc");
		$kayitsayisi = mysqli_num_rows($sorgu);
		$sayfasayisi = ceil($kayitsayisi/$kacar);
		$nerden = ($sayfa*$kacar)-$kacar;

		$bul = mysqli_query($baglan, "select * from sorular order by id desc limit $nerden, $kacar");

		while ($row=mysqli_fetch_array($bul)) {
			extract($row);
		
	 ?>
	 <div id="cerceve" style="border-radius: 10px;"> 
		<ul>
			<li style="border-radius: 5px; font-size: 20px"><?php echo $soru; ?> <span>  <button name="buton">Cevap Ver</button>  </span></li>
			<div class="ici">
				<ul>
					<li id="degisken"><img width="10" src="img/kisi.png" /> <?php echo $gonderen; ?> tarafından soruldu. </li>
					<li>Soruya 3 cevap verilmiş</li>
					<li><?php echo $row['tarih']; ?>  tarihinde soruldu</li>
					<li>kez izlendi</li>
				</ul>
			</div>

		</ul>
	</div>
		<?php } ?>
		<div class="temizle sayfalama">
			<?php 
				echo "<ul>";
				for ($i=1; $i <= $sayfasayisi; $i++) { 
					echo "<li><a href='sorular.php?sahife=$i'>$i</a></li>";
				}
				echo "</ul>";

			 ?>
		</div>
		<?php } ?>
	</div>

</body>
</html>