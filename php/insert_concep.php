<?php
    include 'conexion.php';
    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $reportes = $conexion->query("SELECT * FROM conceptos");
        $a=0;
        while($usuarios = mysqli_fetch_array($reportes)){
            $a = $usuarios['clave'];
        }
        $a = $a+1;
        $b =  $_POST['nombre'];
        $c = $_POST['descripcion'];
        $d = $_POST['unidad'];
        $e = $_POST['precio'];
        $f = $e * $d;
        $sql = "INSERT INTO conceptos (clave, nombre, descripcion, unidad, precioUni, importe, nivelAprobacion)
        VALUES ($a,'$b','$c',$d,$e,$f,1)";
        $exito = mysqli_query($conexion, $sql);
        if($exito){
            echo "Logrado";
        }else{
            echo "Ocurrio un error";
        }
    }

?>