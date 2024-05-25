<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>SIGMA</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Mulish&display=swap"
            rel="stylesheet"
        >
        <link rel="stylesheet" href="../assets/styles/stylecel_Regis.css">
        <link rel="stylesheet" href="../assets/styles/styleweb_Regis.css" id="style-sheet">
    </head>
    <body>
    
    <div class="resolucion">
        <div class="desktop">
        </div>
        <div class="tablet">
            
        </div>
        <div class="movil">
            
        </div>
    </div>

        <div class="background"></div>

        <div class="centering">

            <form class="my-form" method="post" action="InicioSesion.php">
                
                <div class="login-welcome-row">
                                        
                    <h1>REGISTRO</h1>
                </div>
                <div class="text-field">
                    <label for="email">Ingrese Correo electrónico:</label>
                    <input
                        aria-label="Email"
                        type="email"
                        id="email"
                        name="email"
                        placeholder="Tu correo electrónico"
                        required
                    >
                    <img
                        alt="Email Icon"
                        title="Email Icon"
                        src="../assets/images/correo.png"
                    >
                </div>
                <div class="text-field">
                    <label for="password">Ingrese Contraseña:</label>
                    <input
                        id="password"
                        type="password"
                        aria-label="Password"
                        name="password"
                        placeholder="Tu contraseña"
                        title="Mínimo 6 caracteres al menos 1 Alfabeto y 1 Número"
                        pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$"
                        required
                    >
                    <img
                        alt="Password Icon"
                        title="Password Icon"
                        src="../assets/images/bloquear.png"
                    >
                </div>
            
                <input type="submit" class="my-form__button" value="REGISTRARSE" >
                <div class="my-form__actions">
                
                <div class="my-form__signup">
                <span>¿Tienes una cuenta?</span>
                <a href="#" title="Registrate">Inicio Sesion</a>
                </div>
                    
                </div>
            </form>
        </div>
        <script src="../assets/js/scriptcel_Regi.js"></script>

    </body>
</html>