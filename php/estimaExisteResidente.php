<?php
    session_start();
    include 'conexion.php';  
    $user = $_SESSION['userID'];
    $var = 5;
    $datos = $conexion->query("SELECT * FROM estimacion WHERE idEstimador = '{$user}';"); 
    $numeros = array();
    for($i = 0; $i<100;$i++){
        array_push($numeros,0);
    }

    while($row = mysqli_fetch_array($datos)){
        $numeros[$row[0]] = 1;
    }

    $total = array();

    for($i = 0; $i < 100; $i++){
        if($numeros[$i] == 1){
            array_push($total,$i);
        }
    }

    echo json_encode($total);
?>