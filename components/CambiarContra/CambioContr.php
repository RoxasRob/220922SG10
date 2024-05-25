<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "appSigma";

// Establecer la conexión a la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Error de conexión a la base de datos: " . $conn->connect_error);
}

session_start();
$email = $_SESSION['email']; // Obtén el nombre de usuario de la sesión o de donde corresponda

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Obtener la contraseña actual y la nueva contraseña del formulario
    $contrasenaActual = $_POST['contrasena_actual'];
    $nuevaContrasena = $_POST['contraseña_nueva'];

    // Consulta SQL para obtener el ID del usuario
    $sql = "SELECT id FROM users WHERE email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows === 1) {
        $row = $result->fetch_assoc();
        $id = $row['id'];

        // Consulta SQL para obtener la contraseña actual almacenada en la base de datos
        $sql = "SELECT contraseña FROM users WHERE id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($result->num_rows === 1) {
            $row = $result->fetch_assoc();
            $contrasenaAlmacenada = $row['contraseña'];

            // Verificar si la contraseña actual coincide con la contraseña almacenada
            if ($contrasenaActual === $contrasenaAlmacenada) {
                // La contraseña actual coincide, actualizar la contraseña en la base de datos
                $sql = "UPDATE users SET contraseña = ?, contraseña_anterior = ? WHERE id = ?";
                $stmt = $conn->prepare($sql);
                $stmt->bind_param("ssi", $nuevaContrasena, $contrasenaActual, $id);
                if ($stmt->execute() === TRUE) {
                    echo "Contraseña actualizada correctamente.";
                } else {
                    echo "Error al actualizar la contraseña: " . $conn->error;
                    exit;
                }
            } else {
                echo "La contraseña actual ingresada no coincide con la contraseña almacenada.";
                exit;
            }
        } else {
            echo "Error al obtener la contraseña almacenada.";
            exit;
        }
    } else {
        echo "No se encontró el usuario en la base de datos.";
        exit;
    }
    $stmt->close();
} else {
    echo 'Acceso denegado.';
    exit;
}

// Cerrar la conexión a la base de datos
$conn->close();
?>