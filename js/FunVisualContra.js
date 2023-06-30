$(document).ready(function() {
    $.ajax({
        url: 'php/Ver_contratista.php', // Reemplaza 'ruta-al-archivo-php.php' con la ruta correcta hacia tu archivo PHP
        type: 'GET',
        success: function(response) {
            $('.Contratista_ver').html(response);
        },
        error: function() {
            alert('Error al cargar los datos.');
        }
    });


});