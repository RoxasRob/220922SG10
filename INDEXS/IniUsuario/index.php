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
        <link rel="stylesheet" href="Styteweb.css">
        <link rel="stylesheet" href="Stylecel.css" id="style-sheet">
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

          
        <!-- <div class="logo-container">
            <img src="assets/sigma.png" alt="Logo" class="logo" >   
                               
        </div> -->
        
        <div class="centering">

            <form class="my-form" method="post" action="InicioSesion.php">
                
                <div class="login-welcome-row">
                                        
                    <h1>BIENVENIDOS</h1>
                </div>
                <div class="text-field">
                    <label for="email">Correo electrónico:</label>
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
                        src="correo.png"
                    > 
                </div>
                <div class="text-field">
                    <label for="password">Contraseña:</label>
                    <input
                        id="password"
                        type="password"
                        aria-label="Password"
                        name="password"
                        placeholder="Tu contraseña"
                        title="Mínimo 6 caracteres"
                        pattern="{6,}$"
                        required
                    >
                    <img
                        alt="Password Icon"
                        title="Password Icon"
                        src="bloquear.png"
                    >
                </div>
                <div class="my-form__row">
                    <span>¿Olvidaste tu contraseña?</span>
                    <a href=".CambContra/CambioContra.html " title="Reset Password">Restablecer la contraseña</a>
                </div>
            
                <input type="submit" class="my-form__button" value="Iniciar Sesion" >
                <div class="my-form__actions">
                
                 <div class="my-form__signup">
                <span>¿No tienes una cuenta?</span>
                 <a href="#" title="Registrate">Registrate</a>
                 </div>
                    
                </div>
            </form>
        </div>
        <script src="script.js"></script>
        <script src="scriptcel.js"></script>

    </body>
</html>





