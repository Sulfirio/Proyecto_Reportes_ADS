<!DOCTYPE html>
<?php
    include '../php/conexion.php';
    $valorSeleccionado = $_POST['valor'];
    /*echo "Recibí el valor: " . $valorSeleccionado;*/
    $datosEst = $conexion->query("SELECT * FROM estimacion WHERE idEstimacion = '{$valorSeleccionado}'");
    $suma = 0;
    ?>
<html lang = "es">
<head>
    <meta charset = "UTF-8">
    <meta http-equiv= "X-UA-Compatible" content = "IE-edge">
    <meta name = "viewport" content = "width-device-width, initial-scale=1.0">
    <title>Tablas muestra</title>
</head>
<table border ="1px">
    <thead>
    <th>ID Estimacion</th>
    <th>Clave Concepto</th>
    <th>ID Estimador</th>
    <th>Frente de Obra</th>
    <th>Razón social</th>
    <th>Neto</th>
    </thead>
<tbody>
    <?php while($user = mysqli_fetch_array($datosEst)){ 
                $suma = $suma + $user['neto'];?>
                <tr>
                <td><?php echo $user['idEstimacion'];?></td>
                <td><?php echo $user['claveConcepto'];?></td>
                <td><?php echo $user['idEstimador'];?></td>
                <td><?php echo $user['noFrenteObra'];?></td>
                <td><?php echo $user['razSoc'];?></td>
                <td><?php echo $user['neto'];?></td>

            </tr>
        <?php ?>
    <?php } ?>
            <tr>
                <th><?php echo "TOTAL"?></th>
                <td><?php echo $suma?></td>
            </tr>
</tbody>

</html>