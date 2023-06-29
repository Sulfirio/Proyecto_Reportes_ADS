<?php
    include 'conexion.php';
    $eleccion = $_POST['estado'];
    $var = $_POST['valor'];

    $sql = "UPDATE reporte set aprobado = {$eleccion} where folio = {$var}";
    $exito = mysqli_query($conexion, $sql);

    if ($exito) {
        echo 'success';
    } else {
        echo 'failure';
    }
?>
