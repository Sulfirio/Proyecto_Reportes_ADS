<?php
    include 'conexion.php';    
    $datos = $conexion->query("SELECT * FROM estimacion");
    $count = 1;
    $array = new SplFixedArray(100);
    for($i = 0; $i < $array->getSize(); $i++){
        $array[$i] = 0;
    }
    while($row = mysqli_fetch_row($datos)){
        if($row[0] == $count){
            $array[$count] = 1;
            /*echo $count;*/
            $count = $count + 1;
        }
    }
    $noEst = array();
    for($i = 0; $i < $array->getSize(); $i++){
        if($array[$i] ==1){            
            array_push($noEst, $array[$i]);
            /*8echo $array[$i];*/
        }
    }
    $numeros = array();
    for($i = 0; $i < ($count-1); $i++){
        array_push($numeros, ($i+1));
    }
    

    /*foreach ($numeros as $numero) {
        echo $numero . ", ";
    }*/
    
    echo json_encode($numeros);
?>