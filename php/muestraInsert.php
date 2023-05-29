<!DOCTYPE html>
<?php
                include 'conexion.php';
                $reportes = $conexion->query("SELECT * FROM reporte");
                $a;

                while($usuarios = mysqli_fetch_array($reportes)){
                    $a = $usuarios['folio'];
                }
                $a = $a+1;
                echo $a;
                $b = 1;
                $c = "UserA";
                $d = 0;
                $sql = "INSERT INTO reporte (folio, nivelUrg, idCapturador, aprobado) VALUES ($a,$b,'UserB',0)";
                $exito = mysqli_query($conexion, $sql);
                if($exito){
                    echo "Logrado";
                }else{
                    echo "Ocurrio un error";
                }
            ?>