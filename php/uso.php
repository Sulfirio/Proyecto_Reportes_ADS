<?php
session_start();
include 'conexion.php';
if(isset($_SESSION['userID'])){
    $userID = $_SESSION['userID'];

    $userType = $conexion->query("SELECT userType FROM usuario where IDUser = '{$_SESSION['userID']}'");
    $u = mysqli_fetch_row($userType);

    if($u[0] == 1){
        echo "Residente: " . $userID;

        $fr = $conexion->query("SELECT frenteObra from residente WHERE IDUser = '{$userID}'");
        $temp = 0;
        while($row = mysqli_fetch_array($fr)){
            $temp = $row['frenteObra'];
        }
        $_SESSION['frenteRes'] = $temp;
        
    }
    if($u[0] == 2){
        echo "Supervisor: " . $userID;

        $fr = $conexion->query("SELECT frenteObra from supervisor WHERE IDUser = '{$userID}'");
        $send = array();
        while($f = mysqli_fetch_array($fr)){
        array_push($send,$f['frenteObra']);
        }
        $_SESSION['frente'] = $send;
    }
    if($u[0] == 3){
        echo "Superintendente: " . $userID;
    }
    if($u[0] == 4){
        echo "Personal directivo: " . $userID;
    }
} else {
    echo "Debes iniciar sesión primero.";
}
?>