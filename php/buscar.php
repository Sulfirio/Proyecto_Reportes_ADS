<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    include 'conexion.php';
    $search = mysqli_real_escape_string($conexion, $_POST['miCuadro']);
    $selected_colum = $conexion->real_escape_string($_POST['columna'] ?? '');
    $datos = $conexion->query("SELECT * FROM usuario WHERE {$selected_colum} = '{$search}'");

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
    exit();
}
?>

