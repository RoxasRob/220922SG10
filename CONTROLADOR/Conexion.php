<?php
    $host ="localhost";
    $User ="root";
    $pass = "";
    $db = "proyectomovil";
    $conexion = mysqli_connect($host, $User, $pass, $db);
    if (!$con) {
        echo "No Conexion";
    }