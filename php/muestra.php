<!DOCTYPE html>
<?php
    include '../php/conexion.php';
    $datos = $conexion->query("SELECT * FROM usuario");
    $datos2 = $conexion->query("SELECT * FROM documento");
    $state = 0;
    $search = "UserA";

    $datosF = $conexion->query("SHOW TABLES FROM admin;");
    $arreglo1 = [];
    $contador = 0;
    while($row = mysqli_fetch_row($datosF)){
        //echo "Table: {$row[0]}\n";
        array_push($arreglo1, $row[0]);
        //echo " | $arreglo1[$contador]        -";
        $contador += 1;
    }

    $datosE = $conexion->query("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'admin' AND TABLE_NAME = 'captura';");
    $arreglo2 = [];
    $contador = 0;
    while($row = mysqli_fetch_row($datosE)){
        //echo "Table: {$row[0]}\n";
        array_push($arreglo2, $row[0]);
        //echo " | $arreglo2[$contador]        -";
        $contador += 1;
    }
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
        <th>ID Estimadocion</th>
        <th>ID Estimador</th>
        <th>RFC</th>
        <th>Razon social</th>
        <th>Subtotal</th>
        <th>IVA</th>
        <th>Retencion</th>
        <th>Neto</th>
        <th>No. Frente de Obra</th>
        <th>Justificacion</th>
        <th>Clave concepto</th>
    </thead>
<tbody>
    <?php while($user = mysqli_fetch_array($datos)){ ?>
                <tr>
                <td><?php echo $user['idEstimacion'];?></td>
                <td><?php echo $user['idEstimador'];?></td>
                <td><?php echo $user['rfc'];?></td>
                <td><?php echo $user['razSoc'];?></td>
                <td><?php echo $user['subtotal'];?></td>
                <td><?php echo $user['IVA'];?></td>
                <td><?php echo $user['retencion'];?></td>
                <td><?php echo $user['neto'];?></td>
                <td><?php echo $user['noFrenteObra'];?></td>
                <td><?php echo $user['justificacion'];?></td>
                <td><?php echo $user['claveConcepto'];?></td>
            </tr>
        <?php ?>
    <?php } ?>
</tbody>

</html>