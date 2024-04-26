<?php require_once("config.php"); 
session_start();
ob_start();
?>
<html>
<head>

	<meta charset="UTF-8">
	<title>JAP</title>
	<link rel="stylesheet"  href='style.css'>
</head>
  <body>
    <div class="header" id="header">
		<div class="header_section" style="font-family: Intro;">
			<div class="headerlogo">
				<img src="img/logo.png"  />
			</div>
			<div class="header_item headerButton"><a href="#catalog">Каталог</a></div>
			<div class="header_item headerButton"><a href="#order">Как заказать?</a></div>
			<div class="header_item headerButton"><a href="#contacts">Контакты</a></div>
			<div class="header_item headerButton"><a><?php
				echo ("Добро пожаловать ".$_SESSION['user'][2]);
			?> <a href="/index.php?link=logout">Выйти из аккаунта</a></a></div>
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
					<div class="slide2title" id="catalog">КАТАЛОГ</div>
					<form action="" method="post" id="catal">
					<div class="fio_container" align="center">
        			<input style="width: 400px;
						height: 50px;
						border-radius: 0 0 0 0; 
						margin-left: 30px; " type="text" name="vin_code_1" maxlength="25" placeholder="   Введите VIN код автомобиля"><br>
					<div  class="button2" align="center">
		<input style="width: 244px;
	height: 60px;
	border-radius: 100px 100px 100px 100px;
	background-color: #FAC32E;
	color: #000000;
   padding: 3px;
   margin-top: 30px;
   margin-left: 30px;
   font-family: Intro;" type="submit" name="send_1" id="send_1" value="Найти запчасти" /><br><br>
		
		

	<div class="scroll-table">
	<table>
		<thead>
			<tr>
				<th>Номер запчасти</th>
				<th>Название запчасти</th>
				<th>Цена запчасти</th>
				<th>Узел запчасти</th>
				<th>VIN код запчасти</th>
			</tr>
		</thead>
	</table>	
	<div class="scroll-table-body">
		<table>
			<tbody>
			<?php 
		if (isset($_POST['send_1'])) {
		$vin_code = $_POST['vin_code_1'];

		$adds = mysqli_query($conDB, "SELECT * FROM `name_of_part` INNER JOIN `vin_part` using(part_number) WHERE `vin_code`='$vin_code'");
		while ($row = mysqli_fetch_assoc($adds)) { ?>
			<tr>
				<td><?php echo $row['part_number']; ?></td>
				<td><?php echo $row['part_name']; ?></td>
				<td><?php echo $row['part_price']; ?></td>
				<td><?php echo $row['part_node']; ?></td>
				<td><?php echo $row['vin_code']; ?></td>

		<?php }
		}
		?>
			</tbody>
		</table>
	</div>	
</div>
</div>	
</div>
</div>
</div>

<div class="slide4">
		<div class="slide4">
			<div class="slide4title" id="order" style="color: #C57806;
	font-family: Intro;
	font-size: 64px;
	line-height: 250%;
	margin-top: 60px;
	margin-left: 215px;">ДОСТАВКА</div>
					<div class="slide4text" style="text-indent: 25%;
	font-family: Courier New;
	color: #000;">
					<p style="text-indent: 25%;"> Бесплатная доставка  по городу осуществляется от суммы заказа 5.500₽ </p>
					<br>
					<p style="text-indent: 25%;"> При сумме заказа менее 5.500₽ стоимость доставки составит 550₽</p>
					<p style="text-indent: 25%;"> Стоимость доставки за пределы города составит 1050₽</p>
					<br>
					<p style="text-indent: 25%;"> Время доставки  от 3ёх часов после подтверждения заказа оператором</p>
					<br>
					<p style="text-indent: 25%; font-family: Intro;"> Заказы принимаются</p>
					<p style="text-indent: 25%; font-family: Intro;"> ПН-ВС с 10:00 до 22:00</p>
					<img src="img/arrow.png" alt="arrow" align="right" width="29" height="104" style="margin-right:130px;  border: 8px solid #ffffff;"/>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<p style="font-family: Courier New; margin-left: 150px;" > Оставьте данные, и наш оператор свяжется с вами</p>
					<div class="form">
					<form action="" method="post" id="call">
    <div class="fio_container" >
        <input style="width: 400px;
	height: 50px;
	border-radius: 0 0 0 0; margin-left: 115px; " type="text" name="name_user" maxlength="25" placeholder="   Имя"><br><br>
        <input style="width: 400px;
	height: 50px;
	border-radius: 0 0 0 0; margin-left: 430px;" type="text" name="phone_user" maxlength="25" placeholder="   Телефон"><br><br>
        <input style="width: 400px;
	height: 50px;
	border-radius: 0 0 0 0; margin-left: 430px;" type="text" name="email_user" maxlength="25" placeholder="   E-mail"><br><br>
		<input style="width: 400px;
	height: 50px;
	border-radius: 0 0 0 0; margin-left: 430px;" type="text" name="name_of_parts" maxlength="25" placeholder="   Номера запчастей"><br><br>
		<input style="width: 400px;
	height: 50px;
	border-radius: 0 0 0 0; margin-left: 430px;" type="text" name="vin_code" maxlength="25" placeholder="   VIN автомобиля"><br>
    </div>

    <div  class="button2">
		<input style="width: 244px;
	height: 60px;
	border-radius: 100px 100px 100px 100px;
	background-color: #FAC32E;
	color: #000000;
   padding: 3px;
   margin-top: 30px;
   margin-left: 220px;
   font-family: Intro;" type="submit" name="send" id="send" value="Отправить заявку" />
   <?php 
	if (isset($_POST['send'])) {
		$name_user = $_POST['name_user'];
		$email_user = $_POST['email_user'];
		$phone_user = $_POST['phone_user'];
		$name_of_parts = $_POST['name_of_parts'];
		$vin_code = $_POST['vin_code'];

		mysqli_query($conDB, "INSERT INTO `basket` VALUES ('$name_user', '$phone_user', '$email_user', '$name_of_parts', '$vin_code')");
	}
		?>

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
