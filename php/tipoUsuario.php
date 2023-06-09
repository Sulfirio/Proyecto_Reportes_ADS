<?php
// Realizar la conexión a la base de datos
include '../php/conexion.php';

// Realizar la consulta a la tabla usuario
$sql = "SELECT IDUser, userType FROM usuario";
$result = $conexion->query($sql);

// Generar el contenido HTML dinámico
if ($result->num_rows > 0) {
    // Obtener el primer resultado de la consulta
    $row = $result->fetch_assoc();
    
    // Obtener la cadena de texto según el userType
    $userType = $row["userType"];
    $userTypeText = "";
    
    switch ($userType) {
        case 1:
            $userTypeText = "Supervisor";
            break;
        case 2:
            $userTypeText = "Superintendente";
            break;
        case 3:
            $userTypeText = "Residente";
            break;
        case 4:
            $userTypeText = "Personal directivo";
            break;
        default:
            $userTypeText = "Desconocido";
    }
    
    // Imprimir el contenido dinámico en lugar del texto estático
    echo "<h1>Sistema gestor: " . $row["IDUser"] . " - " . $userTypeText . "</h1>";
} else {
    echo "No se encontraron usuarios.";
}
?>