<?php
include 'conexion.php';

$sql = "SELECT clave, nombre FROM conceptos";
$result = $conexion->query($sql);

$data = array();

if ($result->num_rows > 0) {
    // Datos de salida por cada fila
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
} else {
    echo "0 results";
}
$conexion->close();

echo json_encode($data);
?>



