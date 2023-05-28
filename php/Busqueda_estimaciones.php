<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Busqueda</title>
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
</head>
<body>
    <form action="" method="POST">
        <label for="columnas">Selecciona una columna:</label><br>
        <?php
        include 'conexion.php'; // Reemplaza 'conexion.php' con el nombre de tu archivo de conexión a la base de datos
        $selected_table = 'estimacion'; // Reemplaza 'usuario' con el nombre de tu tabla

        $result = $conexion->query("SHOW COLUMNS FROM {$selected_table}");

        if ($result->num_rows > 0) {
            echo '<select id="columnas" name="columna">';
            echo '<option selected="true" disabled="disabled">Elige una columna</option>'; // Esta es la opción predeterminada
            while($row = $result->fetch_assoc()) {
                echo '<option value="' . $row['Field'] . '">' . $row['Field'] . '</option>';
            }
            echo '</select>';
        } else {
            echo 'No hay columnas en la tabla seleccionada.';
        }
        ?>
        <br>
        <label for="miCuadro">Busqueda:</label><br>
        <input type="text" id="miCuadro" name="miCuadro"><br>
        <button type="submit">Buscar</button>
    </form>
    <table id="miTabla">
    <tbody>
            <?php 
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                include 'conexion.php';
                $search = mysqli_real_escape_string($conexion, $_POST['miCuadro']);
                $selected_colum = $conexion->real_escape_string($_POST['columna'] ?? '');
                $datos = $conexion->query("SELECT * FROM estimacion WHERE {$selected_colum} = '{$search}'");

                if ($datos->num_rows > 0){
                    while($user = $datos->fetch_assoc()) {
                        echo "<tr>";
                        foreach ($user as $column => $value) {
                                echo "<td><strong>" . $column . "</strong></td>";
                        }
                        echo "</tr>";

                        echo "<tr>";
                        foreach ($user as $value) {
                                echo "<td>" . $value . "</td>";
                        }
                        echo "</tr>";
                    }
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