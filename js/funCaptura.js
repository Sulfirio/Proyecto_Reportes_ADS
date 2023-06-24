var selectedKeys = []; // Arreglo para almacenar las claves seleccionadas
var selectedValues = []; // Arreglo para almacenar los valores correspondientes

$.ajax({
    url: 'php/Formulario_HARD.php',
    type: 'get',
    dataType: 'JSON',
    success: function(response){
        var len = response.length;
        for(var i=0; i<len; i++){
            var clave = response[i].clave;
            var nombre = response[i].nombre;

            var box = document.createElement('div');
            box.className = 'box';

            // Creamos un campo de entrada de números en lugar de una casilla de verificación
            var numberInput = document.createElement('input');
            numberInput.type = 'number';
            numberInput.placeholder = '0'; // usamos placeholder en lugar de value
            numberInput.addEventListener('change', (function(clave){
                return function(){
                    // Si el campo se deja vacío, se vuelve a establecer a '0'
                    if(this.value === ''){
                        this.value = '0';
                    }

                    // Verificamos si el valor ha cambiado
                    if(this.value != 0){
                        // Si es así, agregamos el valor y la clave a los respectivos arreglos
                        selectedKeys.push(clave);
                        selectedValues.push(this.value);
                    } else {
                        // Si no, eliminamos la clave y el valor de los respectivos arreglos
                        for(var j = 0; j < selectedKeys.length; j++) {
                            if(selectedKeys[j] == clave) {
                                selectedKeys.splice(j, 1);
                                selectedValues.splice(j, 1);
                            }
                        }
                    }
                }
            })(clave));
            
            var text = document.createTextNode(clave + " / " + nombre);
            box.appendChild(text);
            box.appendChild(numberInput);
            document.getElementById('container').appendChild(box);
        }
    }
});

document.getElementById('showSelected').addEventListener('click', function(){
    var keysOutput = "Claves:\n";
    var valuesOutput = "Valores:\n";
    
    for(var i = 0; i < selectedKeys.length; i++) {
        keysOutput += selectedKeys[i] + "\t";
        valuesOutput += selectedValues[i] + "\t";
    }
    
    alert(keysOutput + "\n\n" + valuesOutput);
});

/*/ Recoger el valor de cada textarea
var razonSocial = document.getElementById('userInput0').value;
var justificacion = document.getElementById('userInput1').value;

//Recoger el valor del Mes
var mesSeleccionado = document.getElementById('meses').value;
*/

// Enviando los datos a otro archivo PHP
document.getElementById('sendData').addEventListener('click', function(){
    $.ajax({
        url: 'php/Insert_Form_HARD.php', // Actualiza esto a la URL de tu script PHP
        type: 'post',
        data: {
            keys: JSON.stringify(selectedKeys),
            values: JSON.stringify(selectedValues),
            razonSocial: document.getElementById('userInput0').value,
            justificacion: document.getElementById('userInput1').value,
            mes: document.getElementById('meses').value,
        },
        success: function(response){
            // Esto se ejecuta cuando el servidor responde exitosamente
            console.log(response);
        },
        error: function(jqXHR, textStatus, errorThrown){
            // Esto se ejecuta si ocurre un error
            console.error(textStatus, errorThrown);
        }
    });
});


/*/ Manejador de eventos para el cuadro de entrada para el primer cuadro de texto
document.getElementById('userInput0').addEventListener('input', function(){
    console.log('El usuario escribió en 0: ' + this.value);
});

document.getElementById('userInput1').addEventListener('input', function(){
    console.log('El usuario escribió en 1: ' + this.value);
});*/
