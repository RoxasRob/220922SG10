// Función para cambiar la hoja de estilo cuando la pantalla se minimiza
function toggleStyleSheet() {
    var styleSheet = document.getElementById('style-sheet');

    if (window.innerWidth <= 768) { // Cambia el número según lo que consideres "minimizado"
        styleSheet.href = 'Stylecel.css'; // Ruta al archivo CSS para pantalla minimizada
    } else {
        styleSheet.href = 'Styleweb.css'; // Ruta al archivo CSS para pantalla completa
    }
}

// Llamar a la función al cargar la página y al redimensionar la ventana
window.addEventListener('load', toggleStyleSheet);
window.addEventListener('resize', toggleStyleSheet);
    
    
    
    // Llamar a la función al cargar la página y al redimensionar la ventana
    window.addEventListener('load', toggleStylesheet);
    window.addEventListener('resize', toggleStylesheet);