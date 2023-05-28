<!DOCTYPE html>
<?php
                include '../php/conexion.php';
                $frentes = $conexion->query("SELECT * FROM frenteobra");
                $usuarios = $conexion->query("SELECT * FROM usuario");
                $supervisores = $conexion->query("SELECT * FROM supervisor");
                $superint = $conexion->query("SELECT * FROM superintendente");
                
                
                
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
                }
        $contador = 0;$frOb = 0;?>
        <?php while($contador <= 8){
            while($user = mysqli_fetch_array($usuarios)){ 
                        if($user['userType'] == 2){
                            while($sup = mysqli_fetch_array($supervisores)){
                                if($user['IDUser'] == $sup['IDUser']){
                                    $frOb = $sup['frenteObra'];
                                }
                            }?>
                            <tr>
                            <td><?php echo $frOb;?></td>
                            <td><?php echo $user['IDUser'];?></td>
                            <td><?php echo "";?></td>
                        </tr>
                    <?php }
                        if($user['userType'] == 3){
                            while($sup = mysqli_fetch_array($superint)){
                                if($user['IDUser'] == $sup['IDUser']){
                                    $frOb = $sup['frenteObra'];
                                }
                            }?>
                        <tr>
                            <td><?php echo $frOb;?></td>
                            <td><?php echo $user['IDUser'];?></td>
                            <td><?php echo "";?></td>
                        </tr>
                <?php }
                } 
                $contador += 1;
                }?>
</tbody>

</html>