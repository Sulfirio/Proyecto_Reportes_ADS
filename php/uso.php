<?php
session_start();
if(isset($_SESSION['userID'])){
    $userID = $_SESSION['userID'];
    echo "Supervisor: " . $userID;
} else {
    echo "Debes iniciar sesión primero.";
}
?>
