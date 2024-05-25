<?php
    include("Conexion.php");

    if (isset($_POST['Usuarios']) && isset($_POST['Clave'])) {
        function validate($data){
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
?>