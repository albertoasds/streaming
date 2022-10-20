<?php

include("conecta.php");

$email = $_GET["email"];
$senha = $_GET["senha"];

$sql =  "Select * from " . $DbName . ".usuarios WHERE EMAIL ='$email' ";
$querylogar = mysqli_query($db,$sql) or die(mysqli_error($db));
$camposusuario = mysqli_fetch_array($querylogar);
if(mysqli_num_rows($querylogar) > 0){
    header("location:multicine.html");
}else{
    //echo "<script>alert('Email não Cadastrado');</script>";
    echo "<script>setTimeout(function(){alert('Email não Cadastrado'), window.location = 'index.html'; },1000)</script>";
    
}

?>