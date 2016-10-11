<?php require('config.php'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Sorular</title>
	<link rel="stylesheet" href="css/stilim.css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" />

</head>
<script>
	
</script>

<body>
	<div class="scroll" id="deneme">
	<?php 
		$sorgu = mysqli_query($baglan, "select * from sorular order by id desc");
		while ($row=mysqli_fetch_array($sorgu)) {
		
	 ?>
	 <div id="cerceve" style="border-radius: 10px;"> 
		<ul>
			<li style="border-radius: 5px; font-size: 20px"><?php echo $row['soru']; ?> <span>  <button>Cevap Ver</button>  </span></li>
			<div class="ici">
				<ul>
					<li><img width="10" src="img/kisi.png" /> <?php echo $row['gonderen']; ?> tarafından soruldu. </li>
					<li>Soruya 3 cevap verilmiş</li>
					<li><?php echo $row['tarih']; ?>  tarihinde soruldu</li>
					<li>kez izlendi</li>
				</ul>
			</div>
		</ul>
	</div>
		<?php } ?>
	</div>
</body>
</html>