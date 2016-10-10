<?php require('config.php'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Sor-Cevapla</title>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/offcanvas.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/stilim.css" />
	<script type="text/javascript">

		function kaydetLan(){
			var soru = $("input[name=soru]").val();
			var cevap = $("textarea[name=cevap]").val();
			var kategori = $("select[name=kategori]").val();
			var degerler = "soru="+soru+"&cevap="+cevap+"&kategori="+kategori; 
			$.ajax({
				type:"POST",
				url:"kayit.php",
				data:degerler, 
				success:function(sonuc){
					if (sonuc=="ok") {
						$("#tamam").show();
						setTimeout(function() { $('#tamam').hide(500); }, 2000);
						setTimeout(function(){$('input[name]').val('');},2000);
						setTimeout(function(){$('textarea[name]').val('');},2000);
						$("input[name=soru]").focus();
					} else if(sonuc=="hata"){
						$("#hata").show();
						setTimeout(function() { $('#hata').hide(500); }, 2000);
						setTimeout(function(){$('input[name]').val('');},2000);
						setTimeout(function(){$('textarea[name]').val('');},2000);
					}
				}
			})

	}


	</script>
</head>
<body>
	<div id="deneme"> <h4 style="text-align: center;">Soru Cevap Şeysi</h4>
		<table class="table table-striped">
		<form action="kayit.php" method="POST" onsubmit="return false">
			<tr>
				<td>Soru</td>
				<td><input name="soru" class="form-control" type="text" /></td>
			</tr>			
			<tr>
				<td>Cevap</td>
				<td><textarea style="resize: none" name="cevap" id="" class="form-control" cols="30" rows="10"></textarea></td>
			</tr>			
			<tr>
				<td>Kategori</td>
				<td><select name="kategori" class="form-control" name="" id="">
				<?php 
					$sorgu = mysqli_query($baglan, "select * from kategoriler");
					while ($row=mysqli_fetch_array($sorgu)) { ?>
					<option value="<?php echo $row['kategori']; ?>"><?php echo $row['kategori']; ?></option>
					<?php } ?>
					
				</select></td>
			</tr>
			<tr>		
				<td></td>
				<td><input class="form-control" type="submit" value="Kaydet" onclick="kaydetLan()" /></td>
			</tr>
		</form>
		</table>
		<div style="display: none;" id="tamam">
			<pre>Kayıt Başarıyla Yazıldı...!!!</pre>
		</div>
		<div style="display: none;" id="hata">
			<pre>Kayıt Veritabanına <kbd>yazılamadı</kbd></pre>
		</div>
	</div>
</body>
</html>