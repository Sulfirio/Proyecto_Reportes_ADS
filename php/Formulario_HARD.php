<?php
    include 'conexion.php';

    $sql = "SELECT clave, nombre FROM conceptos";
    $result = $conexion->query($sql);

    $data = array();

    if ($result->num_rows > 0) {
        // Datos de salida por cada fila
        while($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    } else {
        echo "0 results";
    }

        
    $conexion->close();

    echo json_encode($data);
    $id = 0;
    $datos = $conexion->query("SELECT * FROM estimacion");
    while($user = mysqli_fetch_array($datos)){
        $id = $user['idEstimacion'];
    }
    $id = $id+1;
    for($i = 0; $i < count($data);$i++){
        $clave = $conexion->query("SELECT * FROM conceptos where clave = {$data[$i]}");
        $idCon = $data[$i];
        $idEstimador = "Placeholder";
        $noFO = 1;
        $razSoc = "Placeholder";
        $jus = "Placeholder";
        $st = 0;
        while($concepto = mysqli_fetch_array($clave)){
            $st = $concepto['importe'];
        }
        $IVA = 0.16;
        $neto = (1+$IVA) * $st;
        $query = "INSERT INTO estimacion (idEstimacion, claveConcepto, idEstimador, noFrenteObra, razSoc, justificacion,
                subtotal, IVA, neto) VALUES ($id,$idCon,'$idEstimador',$noFO,'$razSoc','$jus',$st,$IVA,$neto)";
        $exito = mysqli_query($conexion, $query);
    }

?>



