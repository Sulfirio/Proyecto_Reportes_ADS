<?php
    include '../php/conexion.php';
    $datos = $conexion->query("SELECT * FROM usuario where userType = 1");
    $datos2 = $conexion->query("SELECT * FROM usuario where userType = 2");
    $datos3 = $conexion->query("SELECT * FROM usuario where userType = 3");
    $datos4 = $conexion->query("SELECT * FROM usuario where userType = 4");
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
        <th>Nombre</th>
        <th>RFC</th>
        <th>Frente de obra.</th>
    </thead>
<tbody>
<?php 
        while($user = mysqli_fetch_array($datos)){ 
                $consulta = $conexion->query("SELECT frenteObra FROM residente where IDUser = '{$user['IDUser']}'");
                $res = 0;
                while($row = mysqli_fetch_array($consulta)){
                    $res = $row[0];
                } 
                $final = $conexion->query("SELECT nombre FROM frenteobra where idFrente = {$res}");
                $nombre = mysqli_fetch_row($final);?>
                <tr>
                <td><?php echo $user['IDUser'];?></td>
                <td><?php echo "Residente";?></td>
                <td><?php echo $user['nombre'];?></td>
                <td><?php echo $user['RFC'];?></td>
                <td><?php echo $nombre[0];?></td>
                </tr>
    <?php } ?>
    <?php 
        while($user = mysqli_fetch_array($datos2)){ 
                $consulta = $conexion->query("SELECT frenteObra FROM supervisor where IDUser = '{$user['IDUser']}'");
                $res = 0;
                while($row = mysqli_fetch_array($consulta)){
                    $res = $row[0];
                } 
                $final = $conexion->query("SELECT nombre FROM frenteobra where idFrente = {$res}");
                $nombre = mysqli_fetch_row($final);?>
                <tr>
                <td><?php echo $user['IDUser'];?></td>
                <td><?php echo "Supervisor";?></td>
                <td><?php echo $user['nombre'];?></td>
                <td><?php echo $user['RFC'];?></td>
                <td><?php echo $nombre[0];?></td>
                </tr>
    <?php } ?>
    <?php 
        while($user = mysqli_fetch_array($datos3)){ ?>
                <tr>
                <td><?php echo $user['IDUser'];?></td>
                <td><?php echo "Superintendente";?></td>
                <td><?php echo $user['nombre'];?></td>
                <td><?php echo $user['RFC'];?></td>
                <td><?php echo "N/A";?></td>
                </tr>
    <?php } ?>
    <?php 
        while($user = mysqli_fetch_array($datos4)){  ?>
                <tr>
                <td><?php echo $user['IDUser'];?></td>
                <td><?php echo "Personal directivo";?></td>
                <td><?php echo $user['nombre'];?></td>
                <td><?php echo $user['RFC'];?></td>
                <td><?php echo "N/A";?></td>
                </tr>
    <?php } ?>

</tbody>

</html>