<!DOCTYPE html>
<?php
    include 'conexion.php';
    session_start();    
    $valorSeleccionado = $_POST['valor'];
    $var = 1;
    $datosEst = $conexion->query("SELECT * FROM reporte WHERE folio = {$valorSeleccionado};");
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
    <th>Flio</th>
    <th>Nivel Urgencia</th>
    <th>Aprobado</th>
    <th>Frente de Obra</th>
    </thead>
<tbody>

<?php 
        
        while($user = mysqli_fetch_array($datosEst)){
            $fr = $conexion->query("SELECT nombre FROM frenteobra where idFrente = {$user['frenteObra']}");
            $b = mysqli_fetch_row($fr);
            $aux = "No";
            if($user['aprobado'] == 1){
                $aux = "Si";
            }
            $color = "#49F024";
            if($user['nivelUrg'] == 2){
                $color = "#FA9708";
            }
            if($user['nivelUrg'] == 3){
                $color = "#FF0400";
            }?>
            <tr>
            <td><?php echo $user['folio'];?></td>
            <td style="background-color: <?php echo $color;?>;"><?php echo $user['nivelUrg'];?></td>
            <td><?php echo $aux;?></td>
            <td><?php echo $b[0];?></td>

                    </tr>
                <?php ?>
            <?php }?>
</tbody>
</html>