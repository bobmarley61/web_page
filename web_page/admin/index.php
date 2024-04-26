<?php require_once("config.php"); 
session_start();
ob_start();
?>
<html>
<head>

	<meta charset="UTF-8">
	<title>JAP</title>
	<link rel="stylesheet" href='style.css'>
</head>
  <body>
    <div class="header" id="header">
		<div class="header_section" style="font-family: Intro;">
			<div class="headerlogo">
				<img src="img/logo.png"  />
			</div>
			<div class="header_item headerButton"><a href="#catalog">Заявки</a></div>
			<div class="header_item headerButton"><a href="#contacts">Контакты</a></div>
			<div class="header_item headerButton"><a><?php
				echo ("Добро пожаловать ".$_SESSION['user'][2]);
			?> <a href="/index.php?link=logout">Выйти из админки</a></a></div>
		</div>
</div>
	</div>
	<a href="#header"> <img src="img/up.png" alt="arrow" align="right" width="50" height="50" style="margin-right:130px; position: fixed;
top: 90%;
left: 90%;
right: 0;"/></a>
	<div class="slide1">
			<div class="slide1text" style="background-image: url(img/main.png);">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<h1 class="slide1title1">КАЧЕСТВО</h1>
				<h1 class="slide1title2">УДОБСТВО</h1>
				<h1 class="slide1title3">НАДЁЖНОСТЬ</h1>
				<div class="slide1title41">Магазин</div>
				<div class="slide1title42">японских</div>
				<div class="slide1title43">автозапчастей</div>
			</div>
	</div>

<div class="slide2">
			<div class="slide2">
					<div class="slide2title" id="catalog">ЗАЯВКИ НА ДОСТАВКУ</div>
					<div class="scroll-table">
	<table>
		<thead>
			<tr>
				<th>Имя пользователя</th>
				<th>Телефон</th>
				<th>Почта</th>
				<th>Номера запчастей</th>
				<th>VIN код автомобиля</th>
			</tr>
		</thead>
	</table>	
	<div class="scroll-table-body">
		<table>
			<tbody>
			<?php 

		$adds = mysqli_query($conDB, "SELECT * FROM `basket`");
		while ($row = mysqli_fetch_assoc($adds)) { ?>
			<tr>
				<td><?php echo $row['name_user']; ?></td>
				<td><?php echo $row['phone_user']; ?></td>
				<td><?php echo $row['email_user']; ?></td>
				<td><?php echo $row['name_of_parts']; ?></td>
				<td><?php echo $row['vin_code']; ?></td>

		<?php }
		
		?>
					</tbody>
				</table>
<form method="post" align="center">
	<br>
	<br>
	<input type="text" name="del"><br>
	<input type="submit" value="Удалить запись" name="deln"><br><hr>
</form>
<?php 
	if (isset($_POST['deln'])) {
		$namefordel = $_POST['del'];

		mysqli_query($conDB, "DELETE FROM `basket`
			WHERE `name_user`='$namefordel'");
		header("location: index.php");
	}
?>
			</div>	
		</div>
	</div>		
</div>



<div class="footer" id="contacts" style="margin-top: 60px;
	background-image: url(img/footer.png); ;
	height: 120px;">
	<div class="navigate" align="right" style="margin-right: 20px; padding: 10px;">
		<br>
			<a href="#catalog" style="margin-right: 95px; padding: 10px;">Каталог</a>
			<br>
			<a href="#order" style="margin-right: 85px; padding: 10px;">Доставка</a>
			<br>
			<p style="margin-right: 55px; padding: 0px; font-family: Intro;">8 (995) 432 45 56</p>
		</div>
					<br>
					<br>
		
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script>
  $(document).ready(function(){
  $("a[href*='#']").on("click", function(e){
    var anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: $(anchor.attr('href')).offset().top
    }, 777);
    e.preventDefault();
    return false;
  });
});
</script>
</html>
