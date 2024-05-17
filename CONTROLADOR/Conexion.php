<?php
    $host ="localhost";
    $User ="root";
    $pass = "";
    $db = "sigma00";
    $conexion = mysqli_connect($host, $User, $pass, $db);
    if (!$con) {
        echo "No Conexion";
    }