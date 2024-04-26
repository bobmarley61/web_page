<?php require_once("config.php"); 
session_start();
ob_start();

if(isset($_POST['do-registr'])){
    $login = $_POST['login'];
    $password = $_POST['password'];
    $name_user = $_POST['name_user'];
    $surname_user = $_POST['surname_user'];
    $middlename_user = $_POST['middlename_user'];
    $datebirth_user = $_POST['datebirth_user'];
    $phone_user = $_POST['phone_user'];
    $email_user = $_POST['email_user'];

    if(!empty($login)){
        mysqli_query($conDB, "INSERT INTO `pduser` (`name_user`, `surname_user`, `middlename_user`, `datebirth_user`, `phone_user`, `email_user`, `login`, `password`) VALUES ('$name_user', '$surname_user', '$middlename_user', '$datebirth_user', '$phone_user', '$email_user', '$login', '$password')");
    }
};
if(isset($_POST['do-auth'])){
    $login = $_POST['login'];
    $password = $_POST['password'];
    $query_auth = mysqli_query($conDB, "SELECT * from pduser WHERE login = '$login' AND password = '$password'");
    if(mysqli_num_rows($query_auth) == 1){
        $row_auth = mysqli_fetch_assoc($query_auth);
        $_SESSION['user'] = array($row_auth['login'], $row_auth['password'], $row_auth['name_user']);
        if($login == 'admin' && $password == '1234' ){
            header("location: admin");
        }
        else{
            header("location: users");
        }
    }
}
?>
<html>
<head>
<link rel="stylesheet" href='style.css'>
    <title>Регистрация и авторизация</title>
</head>
<body class="home">
    <div align="center">
        <h1 style="margin:30px">Добро пожаловать в магазин Японских автозапчастей<br>Japain Auto Parts<h1><br>
    </div>
    <div align="center">
        <a class="hreff" href="index.php?link=registr">Зарегестрироваться</a><br><br><br>
        <a class="hreff" href="index.php?link=auth">Авторизоваться</a>
    </div>
    
<?php
    $link = $_GET['link'];

    if($link == 'registr') require_once("authreg/reg.php");
    if($link == 'auth') require_once("authreg/auth.php");
    else exit();

?>
</body>
</html>