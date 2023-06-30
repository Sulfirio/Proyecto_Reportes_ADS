$(document).ready(function() {
    $.getJSON("php/estimaExisteSuperintendente.php", function(data) {
        var select = $("#estimacionNum");
        select.append('<option selected="true" disabled="disabled">Elige una columna</option>');
        $.each(data, function(index, value) {
            select.append('<option value="' + value + '">' + value + '</option>');
        });
    });
    // Escuchar el evento 'change'
    $("#estimacionNum").change(function() {
        var valorSeleccionado = $(this).val();  // Obtener el valor seleccionado

        // Hacer la solicitud AJAX a 'manejarSeleccion.php'
        $.post("php/tablaEstimacion.php", { valor: valorSeleccionado }, function(data) {
            // Puedes hacer algo con 'data', la respuesta del servidor, aquí si lo deseas.
            $("#tablaResultados").html(data);
            /*console.log("Respuesta del servidor: " + data);*/
        });
    });
});
