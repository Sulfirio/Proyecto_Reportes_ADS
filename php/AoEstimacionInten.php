<?php
    include 'conexion.php';
    $eleccion = $_POST['estado'];
    $var = $_POST['valor'];

    $sql = "UPDATE estimacion set nvAprobacion = {$eleccion} where idEstimacion = {$var}";
    $exito = mysqli_query($conexion, $sql);

    if ($exito) {
        echo 'success';
    } else {
        echo 'failure';
    }
?>