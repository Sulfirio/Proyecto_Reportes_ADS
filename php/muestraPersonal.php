<!DOCTYPE html>
<?php
                include '../php/conexion.php';
                $datos = $conexion->query("SELECT * FROM usuario");
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
        <th>Tipo de usuario</th>
    </thead>
<tbody>
    <?php while($user = mysqli_fetch_array($datos)){ ?>
                <tr>
                <td><?php echo $user['IDUser'];?></td>
                <td><?php echo $user['userType'];?></td>
            </tr>
        <?php ?>
    <?php } ?>
</tbody>

</html>