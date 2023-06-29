$(document).ready(function() {
    $.getJSON("php/Env-AproRepo.php", function(data) {
        var select = $("#aproRepor");
        select.append('<option selected="true" disabled="disabled">Elige una columna</option>');
        $.each(data, function(index, value) {
            select.append('<option value="' + value + '">' + value + '</option>');
        });
    });
    // Escuchar el evento 'change'
    $("#aproRepor").change(function() {
        var valorSeleccionado = $(this).val();  // Obtener el valor seleccionado

        // Hacer la solicitud AJAX a 'manejarSeleccion.php'
        $.post("php/mostra-AproRepo.php", { valor: valorSeleccionado }, function(data) {
            // Puedes hacer algo con 'data', la respuesta del servidor, aquí si lo deseas.
            $("#tablaReportes").html(data);
            /*console.log("Respuesta del servidor: " + data);*/
        });
        // Mostrar los botones
        $("#btnAceptarRepo").show();
        $("#btnRechazarRepo").show();
    });
    $("#btnAceptarRepo").click(function() {
        // Crear una variable con valor de 0
        var estado = 1;
    
        // Valor seleccionado
        var valorSeleccionado = $("#aproRepor").val();
    
        // Enviar las variables al archivo PHP
        $.post("php/Up-AproRepo.php", { estado: estado, valor: valorSeleccionado }, function(data) {
            // Código para manejar la respuesta del servidor
            if (data.trim() == 'success') {
                alert('Operación realizada exitosamente');
            }
        });
    
        // Deshabilitar los botones y cambiar su color a rojo
        $("#btnAceptarRepo, #btnRechazarRepo").prop('disabled', true).css('background-color', 'red');
    });
    
    $("#btnRechazarRepo").click(function() {
        // Crear una variable con valor de 2
        var estado = 0;
    
        // Valor seleccionado
        var valorSeleccionado = $("#aproRepor").val();
    
        // Enviar las variables al archivo PHP
        $.post("php/Up-AproRepo.php", { estado: estado, valor: valorSeleccionado }, function(data) {
            // Código para manejar la respuesta del servidor
            if (data.trim() == 'success') {
                alert('Operación realizada exitosamente');
            }
        });
    
        // Deshabilitar los botones y cambiar su color a rojo
        $("#btnAceptarRepo, #btnRechazarRepo").prop('disabled', true).css('background-color', 'red');
    });
    
       
});
