<php? $host="localhost" ; $User="root" ; $pass="" ; $db="proyectomovil" ; $conexion=new mysqli($host,$User,$pass,$db); if ($conexion->connect_error) {
    die("Conexion fallida: " . $conexion->connect_error);
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $User = $_POST['username'];
    $old_password = $_POST['old_password'];
    $new_password = $_POST['new_password'];

    $sql = "SELECT password FROM users WHERE username = ?";
    $stmt = $conexion->prepare($sql);
    $stmt->bind_param("s", $User);
    $stmt->execute();
    $stmt->store_result();
    if ($stmt->num_rows == 1){
    $stmt->bind_result($hashed_password);
    $stmt->fetch();

    if(password_verify($old_password, $hashed_password)){
    $new_hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
    $updateSql = "UPDATE users SET password = ? WHERE username = ?";
    $updateStmt = $conn->prepare($updateSql);
    $updateStmt->bind_param("ss", $new_hashed_password, $User);
    if ($updateStmt->execute()) {
                echo "Contraseña actualizada correctamente.";
            } else {
                echo "Error al actualizar la contraseña.";
            }
        } else {
            echo "La contraseña actual es incorrecta.";
        }
    } else {
        echo "Usuario no encontrado.";
    }
    $stmt->close();
}

$conn->close();
?>


    <!-- //Validación básica de los datos -->
    if (empty($current_password) || empty($new_password) || empty($confirm_password)) {
    echo "Todos los campos son requeridos.";
    } elseif ($new_password != $confirm_password) {
    echo "La nueva contraseña y la confirmación de la contraseña no coinciden.";
    <!-- Verificar la contraseña actual en la base de datos -->
    } else {
    $user_id = 123; // Aquí debes obtener el ID del usuario actual
    $query = "SELECT password FROM users WHERE id = $user_id";
    $result = mysqli_query($connection, $query);
    $row = mysqli_fetch_assoc($result);
    $stored_password = $row["password"];
    }
    <!-- Verifica si la contraseña coincide con la almacenada en la bd  -->
    if (pasword_verify($current_password, $stored_password)){
    <!-- Generar hash de la nueva contraseña -->
    $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
    <!-- Actualiza la contraseña en la bd -->
    $update_query = "UPDATE users SET password = '$hashed_password' WHERE id = $user_id";
    mysqli_query($connection, $update_query);

    echo "¡La contraseña se ha cambiado correctamente!";
    } else {
    echo "La contraseña actual es incorrecta.";
    }
    >