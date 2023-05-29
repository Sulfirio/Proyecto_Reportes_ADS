$(document).ready(function() {
    $('#form_reporte').submit(function(e) {
        e.preventDefault();

        var idCapturador = $('#idCapturador').val();
        var numero = $('#numero').val();
        var aprobado = $('input[name="aprobado"]:checked').val() == 'SI' ? 1 : 0;

        $.ajax({
            url: 'php/muestraInsert.php', // Reemplaza esto con la ruta a tu archivo PHP
            type: 'POST',
            data: {
                capturador: idCapturador,
                numero: numero,
                aprobado: aprobado
            },
            success: function(response) {
                alert('Reporte enviado con éxito.');
            },
            error: function() {
                alert('Ocurrió un error al enviar el reporte.');
            }
        });
    });
});
