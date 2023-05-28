<?php
include 'conexion.php'; // Reemplaza 'Prueba.php' con el nombre de tu archivo de conexión a la base de datos
$tableName = $conexion->real_escape_string($_POST['tableName']);
$result = $conexion->query("SHOW COLUMNS FROM {$tableName}");

if ($result->num_rows > 0) {
    $columns = array();
    while($column = $result->fetch_array()) {
        $columns[] = $column['Field'];
    }
    echo json_encode($columns);
} else {
    echo json_encode(array('No hay columnas en esta tabla.'));
}
?>