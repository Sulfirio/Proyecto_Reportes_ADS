<!DOCTYPE html>
<?php
    session_start();
    include 'conexion.php';
    $valorSeleccionado = $_POST['valor'];
    $fr = $_SESSION['frenteRes'];
    $datosEst = $conexion->query("SELECT * FROM estimacion WHERE idEstimacion = {$valorSeleccionado} and noFrenteObra = '{$fr}'");
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
    <th>Mes</th>
    <th>Cantidad</th>
    <th>Importe</th>
    <th>Nivel de aprobacion</th>
    </thead>
<tbody>
    <?php while($user = mysqli_fetch_array($datosEst)){
                $fr = $conexion->query("SELECT nombre FROM frenteobra where idFrente = {$user['noFrenteObra']}");
                $b = mysqli_fetch_row($fr);
                $suma = $suma + $user['importe'];?>
                <tr>
                <td><?php echo $user['idEstimacion'];?></td>
                <td><?php echo $user['claveConcepto'];?></td>
                <td><?php echo $user['idEstimador'];?></td>
                <td><?php echo $b[0];?></td>
                <td><?php echo $user['razSoc'];?></td>
                <td><?php echo $user['mes'];?></td>
                <td><?php echo $user['cantidad'];?></td>
                <td><?php echo $user['importe'];?></td>
                <td><?php echo $user['nvAprobacion'];?></td>

            </tr>
        <?php ?>
    <?php } ?>
            <tr>
                <th><?php echo "TOTAL"?></th>
                <td><?php echo $suma?></td>
            </tr>
</tbody>

</html>