<?php
$domena = 'example.com';
$login = 'login';
$haslo = 'password';
$connect = mysqli_connect($domena, $login, $haslo) or die('Błąd podczas łączenia z bazą danych.');
mysqli_select_db($connect, 'db');
mysqli_set_charset($connect, "utf8");
?>
