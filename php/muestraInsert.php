<?php
                include 'conexion.php';
                if($_SERVER["REQUEST_METHOD"] == "POST") {
                $reportes = $conexion->query("SELECT * FROM reporte");
                $a;

                while($usuarios = mysqli_fetch_array($reportes)){
                    $a = $usuarios['folio'];
                }
                $a = $a+1;
                echo $a;
                $b =  $_POST['numero'];
                $c = $_POST['capturador'];
                $d = $_POST['aprobado'];
                $sql = "INSERT INTO reporte (folio, nivelUrg, idCapturador, aprobado) VALUES ($a,$b,'$c',$d)";
                $exito = mysqli_query($conexion, $sql);
                if($exito){
                    echo "Logrado";
                }else{
                    echo "Ocurrio un error";
                }
            }

?>