<?php
session_start();
include 'conexion.php';
$var1 = $_SESSION['userID'];
$var2 = $_SESSION['frenteRes'];
if(isset($_POST['keys']) && isset($_POST['values']) && isset($_POST['razonSocial']) && isset($_POST['justificacion'])) {
    $keys = json_decode($_POST['keys']);
    $values = json_decode($_POST['values']);
    $razonSocial = $_POST['razonSocial'];
    $justificacion = $_POST['justificacion'];
    $mes = $_POST['mes'];

    $num = 1;
    $datos = $conexion->query("SELECT * FROM estimacion");
    while($row = mysqli_fetch_array($datos)){
        $num = $row['idEstimacion'];
    }
    $num = $num+1;

    for($i = 0;  $i < count($values); $i++){

        $concepto = $conexion->query("SELECT * FROM conceptos where clave = {$keys[$i]}");
        while($data = mysqli_fetch_array($concepto)){
            $coste = $data['importe'];
        }
        $importe = $values[$i] * $coste;
        $sql = "INSERT INTO estimacion (idEstimacion, claveConcepto,
                            idEstimador, noFrenteObra, razSoc,
                            justificacion, mes, cantidad, importe,nvAprobacion) 
                            VALUES ($num,$keys[$i],'$var1',$var2,'$razonSocial', '$justificacion','$mes',
                            $values[$i],$importe,1)";

        $exito = mysqli_query($conexion, $sql);
    }
}
?>