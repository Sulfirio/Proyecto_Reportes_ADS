$(document).ready(function() {
    $.ajax({
        url: 'php/muestraFrentes.php', // Reemplaza 'ruta-al-archivo-php.php' con la ruta correcta hacia tu archivo PHP
        type: 'GET',
        success: function(response) {
            $('.frentes_data_container').html(response);
        },
        error: function() {
            alert('Error al cargar los datos.');
        }
    });


});

