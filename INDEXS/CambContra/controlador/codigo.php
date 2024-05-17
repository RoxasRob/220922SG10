<?php
//require '../IngresarCorreo/correo.php'; 
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Obtener los números ingresados por el usuario desde el formulario
    $numero1 = $_POST['numero1'];
    $numero2 = $_POST['numero2'];
    $numero3 = $_POST['numero3'];
    $numero4 = $_POST['numero4'];

    // Obtener el código almacenado en la sesión
    $codigoEnviado = $_SESSION['verification_code'];

    // Construir el código ingresado por el usuario
    $codigoIngresado = $numero1 . $numero2 . $numero3 . $numero4;

    // Verificar si los códigos coinciden
    if ($codigoIngresado == $codigoEnviado) {
        // Los códigos coinciden, redirigir al usuario a la página "CambioContra.html"
        header('Location: ../CambiarContra/CambioContra.html');
        exit();
    } else {
        // Los códigos no coinciden, hacer algo aquí (por ejemplo, mostrar un mensaje de error)
        header('Location: ../IngresarCorreo/correo.html');
        exit();
       }
} else {
    // La solicitud no es de tipo POST, redirigir a la página de ingreso del código
    header('Location: codigo.html');
    exit();
   }
?>