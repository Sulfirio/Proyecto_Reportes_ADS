<!DOCTYPE html>
<?php
                include '../php/conexion.php';
                $frentes = $conexion->query("SELECT * FROM frenteobra");
                $usersP1 = $conexion->query("SELECT usuario.IDUser, usuario.nombre, superintendente.frenteObra FROM usuario, superintendente where usuario.IDUser = superintendente.IDUser 
                                            UNION 
                                            SELECT usuario.IDUser, usuario.nombre, supervisor.frenteObra FROM usuario, supervisor where usuario.IDUser = supervisor.IDUser");
                
                
                
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
        <th>Frente de obra</th>
        <th>ID Usuario</th>
        <th>Nombre Usuario</th>
    </thead>
<tbody>
    <?php $arreglo1 = [];
                $contador = 0;
                while($row = mysqli_fetch_row($frentes)){
                    array_push($arreglo1, $row[0]);
                    $contador += 1;
                }?>
        <?php 
            while($user = mysqli_fetch_array($usersP1)){ ?>
                        <tr>
                        <td><?php echo $user['IDUser'];?></td>
                        <td><?php echo $user['nombre'];?></td>
                        <td><?php echo $user['frenteObra'];?></td>
                        </tr>
                <?php
                }?>
</tbody>

</html>