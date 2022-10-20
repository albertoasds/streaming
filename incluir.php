<?php

include("conecta.php");

$nome = "teste";
$email = $_GET["email"];
$senha = $_GET["senha"];

$sql = "INSERT INTO usuarios (NOME, EMAIL, SENHA) VALUES ('$nome', '$email', '$senha')";
$queryinclude = mysqli_query($db,$sql) or die(mysqli_error($db));
header("location:index.html");
?>