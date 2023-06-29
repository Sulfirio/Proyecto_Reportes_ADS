$(document).ready(function(){
    $("#submitButton").click(function(e){
        e.preventDefault(); // Evita que el formulario se envíe de la manera predeterminada

        $.ajax({
            url: 'php/insert_concep.php', // El archivo PHP al que quieres enviar los datos
            type: 'post',
            data: $("#myForm").serialize(), // Serializa los datos del formulario para el envío
            success: function(response){
                // Aquí puedes manejar la respuesta del servidor
                if(response.trim() == "Logrado") {
                    alert("Los datos se han insertado exitosamente en la base de datos.");
                } else if(response.trim() == "Ocurrio un error") {
                    alert("Ha ocurrido un error al intentar insertar los datos en la base de datos.");
                } else {
                    alert("Respuesta desconocida del servidor: " + response);
                }
            },
            error: function(jqXHR, textStatus, errorThrown){
                // Esto se ejecutará si la solicitud de AJAX falla
                alert("Error en la solicitud AJAX: " + textStatus);
            }
        });
    });
});