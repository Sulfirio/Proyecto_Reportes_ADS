<!DOCTYPE html>
<?php
    include 'conexion.php';
    $var = 1;
    $datosEst = $conexion->query("SELECT * FROM frenteobra;");
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
    <th>ID Frente</th>
    <th>Nombre Frente</th>
    <th>Residente</th>
    <th>Supervisor</th>
    </thead>
<tbody>

<?php 
        
        while($user = mysqli_fetch_array($datosEst)){
            $consulta = $conexion->query("SELECT * FROM supervisor WHERE frenteObra = {$user['idFrente']};");
            $b = mysqli_fetch_row($consulta);
            $consulta = $conexion->query("SELECT * FROM residente WHERE frenteObra = {$user['idFrente']};");
            $c = mysqli_fetch_row($consulta);
            $consulta = $conexion->query("SELECT nombre FROM usuario WHERE IDUser = '{$c[0]}';");
            $e = mysqli_fetch_row($consulta);
            $consulta = $conexion->query("SELECT nombre FROM usuario WHERE IDUser = '{$b[0]}';");
            $f = mysqli_fetch_row($consulta);
            ?>
            <tr>
            <td><?php echo $user['idFrente'];?></td>
            <td><?php echo $user['nombre'];?></td>
            <td><?php echo $e[0];?></td>
            <td><?php echo $f[0];?></td>
            </tr>
            <?php }?>
</tbody>
</html>