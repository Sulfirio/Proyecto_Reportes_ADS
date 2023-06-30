$(document).ready(function() {
    $.ajax({
        url: 'php/VisualFrente.php', // Reemplaza 'ruta-al-archivo-php.php' con la ruta correcta hacia tu archivo PHP
        type: 'GET',
        success: function(response) {
            $('.Frente_visual').html(response);
        },
        error: function() {
            alert('Error al cargar los datos.');
        }
    });


});