<?php
include("Conexion.php");

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "appSigma";

// Establecer la conexión a la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Error de conexión a la base de datos: " . $conn->connect_error);
}

if (isset($_POST['email']) && isset($_POST['Codigo'])) {
    function validate($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $Usuarios = validate($_POST['Usuarios']);
    $Clave = validate($_POST['Clave']);

    if (empty($Usuarios)) {
        header("Location: index.php?error=Necesito su Usuario");
        exit();
    } elseif (empty($Clave)) {
        header("Location: index.php?error=Necesito su Clave");
        exit();
    } else {
        $hashed_clave = password_hash($Clave, PASSWORD_DEFAULT);
    }
}
