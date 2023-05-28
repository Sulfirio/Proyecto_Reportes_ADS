<?php
include '../php/conexion.php';
$selected_table = 'usuario';
$result = $conexion->query("SHOW COLUMNS FROM {$selected_table}");

$options = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $options[] = $row['Field'];
    }
} 
echo json_encode($options);
?>