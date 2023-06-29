<?php
    include 'conexion.php';
    $meses = array();
    array_push($meses, "Enero");
    array_push($meses, "Febrero");
    array_push($meses, "Marzo");
    array_push($meses, "Abril");
    array_push($meses, "Mayo");
    array_push($meses, "Junio");
    array_push($meses, "Julio");
    array_push($meses, "Agosto");
    array_push($meses, "Septiembre");
    array_push($meses, "Octubre");
    array_push($meses, "Noviembre");
    array_push($meses, "Diciembre");
    $cantidades = array();
    $suma = 0;
    $sumames = 0;
    for($i = 0; $i < 12; $i++){
        $datos = $conexion->query("SELECT importe FROM estimacion WHERE mes = '{$meses[$i]}'");
        while($user = mysqli_fetch_array($datos)){         
            $sumames += $user['importe'];
        }
        $suma += $sumames;
        array_push($cantidades,$sumames);  
        $sumames = 0;
    }
    
    $result = array("meses" => $meses, "cantidades" => $cantidades);

    echo json_encode($result);
?>
