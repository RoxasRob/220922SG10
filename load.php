<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>SIGMA</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mulish&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/styles/styleload.css">
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

    <div class="logo-container">
        <img src="./assets/images/load.png" alt="Logo" class="logo rotate" id="logo">

        <script>

            const logo = document.getElementById('logo');
            logo.addEventListener('animationend', () => {

                window.location.href = './views/index_Inicio_Sec.php';
            });

        </script>

    </div>

    <body>