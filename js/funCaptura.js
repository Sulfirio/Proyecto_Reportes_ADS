var selected = []; // Variable para almacenar las claves seleccionadas

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
            var checkbox = document.createElement('input');
            checkbox.type = 'checkbox';
            checkbox.value = clave;
            checkbox.addEventListener('change', function(){
                // Verifica si la casilla ha sido seleccionada
                if(this.checked){
                    // Si es así, agrega la clave al array
                    selected.push(this.value);
                } else {
                    // Si no, elimina la clave del array
                    var index = selected.indexOf(this.value);
                    if(index > -1){
                        selected.splice(index, 1);
                    }
                }
            });
            var text = document.createTextNode(clave + " / " + nombre);
            box.appendChild(text);
            box.appendChild(checkbox);
            document.getElementById('container').appendChild(box);
        }
    }
});

// Mostrar claves seleccionadas al hacer clic en el botón
document.getElementById('showSelected').addEventListener('click', function(){
    alert(selected.join(', '));
});

// Manejador de eventos para el cuadro de entrada para el primer cuadro de texto!!!
document.getElementById('userInput0').addEventListener('input', function(){
    console.log('El usuario escribió en 0: ' + this.value);
});

document.getElementById('userInput1').addEventListener('input', function(){
    console.log('El usuario escribió en 1: ' + this.value);
});