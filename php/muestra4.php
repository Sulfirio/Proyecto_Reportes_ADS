<!DOCTYPE html>
<?php
    include '../php/conexion.php';
    $datos = $conexion->query("SELECT * FROM usuario");
    $datos2 = $conexion->query("SELECT * FROM documento");
    $state = 0;
    $search = "UserA";
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Busqueda</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function() {
        $('#tablas').change(function() {
            var tableName = $(this).val();
            $.ajax({
                url: 'columnas_ahora.php',
                type: 'post',
                data: {tableName: tableName},
                dataType: 'json',
                success:function(response) {
                    var len = response.length;
                    $("#columnas").empty();
                    for(var i = 0; i<len; i++) {
                        var column = response[i];
                        $("#columnas").append("<option value='"+column+"'>"+column+"</option>");
                    }
                }
            });
        });
    });
    </script>
    <style>
    #miTabla {
        border-collapse: collapse;
        
    }
    
    #miTabla td, #miTabla th {
        border: 1px solid black;
        padding: 8px;
        white-space: nowrap;
    }
    </style>
    <script>
    function mostrarValor() {
        var valor = document.getElementById('miCuadro').value;
        var tabla = document.getElementById('miTabla');
        var nuevaFila = tabla.insertRow();
        var nuevaCelda1 = nuevaFila.insertCell();
        nuevaCelda1.textContent ="A buscar"
        var nuevaCelda2 = nuevaFila.insertCell();
        nuevaCelda2.textContent = valor;
    }
    </script>
</head>
<body>
    <form action="" method="POST">
    <label for="tablas">Selecciona una tabla:</label><br>
        <select id="tablas" name="tabla">
            <?php 
            include '../php/conexion.php'; // Reemplaza 'Prueba.php' con el nombre de tu archivo de conexión a la base de datos
            $result = $conexion->query("SHOW TABLES");
            $selected_table = $_POST['tabla'] ?? null;

            if ($result->num_rows > 0) {
                while($table = $result->fetch_array()) {
                    $selected = $table[0] === $selected_table ? 'selected' : '';
                    echo '<option value="' . $table[0] . '" ' . $selected . '>' . $table[0] . '</option>';
                }
            } else {
                echo '<option>No hay tablas en la base de datos.</option>';
            }
            ?>
        </select>
        <br>
        <label for="columnas">Selecciona una columna:</label><br>
        <select id="columnas" name="columna">
            <option>Elige una tabla primero</option>
        </select>
        <br>
        <label for="miCuadro">Busqueda:</label><br>
        <input type="text" id="miCuadro" name="miCuadro"><br>
        <button type="submit">Buscar</button>
    </form>
    <table id="miTabla">
    <tbody>
            <?php 
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                include '../php/conexion.php';
                $search = mysqli_real_escape_string($conexion, $_POST['miCuadro']);
                $selected_table = $conexion->real_escape_string($_POST['tabla'] ?? '');
                $selected_colum = $conexion->real_escape_string($_POST['columna'] ?? '');
                $datos = $conexion->query("SELECT * FROM {$selected_table} WHERE {$selected_colum} = '{$search}'");

                if ($datos->num_rows > 0){
                    while($user = $datos->fetch_assoc()) { ?>
                        <tr>
                            <td><?php echo $user[$selected_colum];?></td>
                        </tr>
                    <?php } 
                } else { ?>
                    <tr>
                        <td><?php echo "No hay resultado";?></td>
                    </tr>
                <?php }
            }
            ?>
        </tbody>

    </table>
</body>
</html>