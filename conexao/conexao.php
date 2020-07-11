<?php
	$servidor = "localhost";
	$usuario = "phpmyadmin";
	$senha = "123456";
	$dbname = "projguia";
	
	//Criando a conexao
	$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);