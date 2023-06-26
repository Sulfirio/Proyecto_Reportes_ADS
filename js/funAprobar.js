$(document).ready(function() {
    $.getJSON("php/estimaExiste2.php", function(data) {
        var select = $("#aproEst");
        select.append('<option selected="true" disabled="disabled">Elige una columna</option>');
        $.each(data, function(index, value) {
            select.append('<option value="' + value + '">' + value + '</option>');
        });
    });
    // Escuchar el evento 'change'
    $("#aproEst").change(function() {
        var valorSeleccionado = $(this).val();  // Obtener el valor seleccionado

        // Hacer la solicitud AJAX a 'manejarSeleccion.php'
        $.post("php/AprobarEst.php", { valor: valorSeleccionado }, function(data) {
            // Puedes hacer algo con 'data', la respuesta del servidor, aquí si lo deseas.
            $("#tablaResultadosApro").html(data);
            /*console.log("Respuesta del servidor: " + data);*/
        });
        // Mostrar los botones
        $("#btnAceptar").show();
        $("#btnRechazar").show();
    });
    $("#btnAceptar").click(function() {
        // Crear una variable con valor de 0
        var estado = 0;
    
        // Valor seleccionado
        var valorSeleccionado = $("#aproEst").val();
    
        // Enviar las variables al archivo PHP
        $.post("php/AoREstimacion.php", { estado: estado, valor: valorSeleccionado }, function(data) {
            // Código para manejar la respuesta del servidor
            if (data.trim() == 'success') {
                alert('Operación realizada exitosamente');
            }
        });
    
        // Deshabilitar los botones y cambiar su color a rojo
        $("#btnAceptar, #btnRechazar").prop('disabled', true).css('background-color', 'red');
    });
    
    $("#btnRechazar").click(function() {
        // Crear una variable con valor de 2
        var estado = 2;
    
        // Valor seleccionado
        var valorSeleccionado = $("#aproEst").val();
    
        // Enviar las variables al archivo PHP
        $.post("php/AoREstimacion.php", { estado: estado, valor: valorSeleccionado }, function(data) {
            // Código para manejar la respuesta del servidor
            if (data.trim() == 'success') {
                alert('Operación realizada exitosamente');
            }
        });
    
        // Deshabilitar los botones y cambiar su color a rojo
        $("#btnAceptar, #btnRechazar").prop('disabled', true).css('background-color', 'red');
    });
    
       
});
