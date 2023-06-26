<?php
    session_start();
    $fr = $_SESSION['frente'];
    include 'conexion.php';    
    $var = 5;
    $datos = $conexion->query("SELECT * FROM estimacion WHERE noFrenteObra = {$fr[0]} and nvAprobacion = 1;"); 
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
            //echo $i;
        }
    }

    echo json_encode($total);
?>