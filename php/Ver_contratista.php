<?php
    include '../php/conexion.php';
    $datos = $conexion->query("SELECT * FROM empresa");
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
        <th>ID Usuario</th>
        <th>Nombre</th>
        <th>RFC</th>
        <th>Frente de obra.</th>
    </thead>
<tbody>
<?php 
        while($user = mysqli_fetch_array($datos)){ 
                $consulta = $conexion->query("SELECT frenteObra FROM empresa");
                $res = 0;
                $nombre = mysqli_fetch_row($consulta);
                $frente = "";
                if($user['idCon'] == 0){
                    $frente = "N/A";
                }else{
                    $final = $conexion->query("SELECT nombre FROM frenteobra where idFrente = {$user['frenteobra']}");
                    $nombre = mysqli_fetch_row($final);
                    $frente = $nombre[0];
                }
                ?>
                <tr>
                <td><?php echo $user['idCon'];?></td>
                <td><?php echo $user['nombre'];?></td>
                <td><?php echo $user['RFC'];?></td>
                <td><?php echo $frente;?></td>
                </tr>
    <?php } ?>
</html>