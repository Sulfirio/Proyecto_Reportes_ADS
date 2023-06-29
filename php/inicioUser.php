<?php
session_start(); 

// Verificar si el usuario ha iniciado sesión y obtener el nombre de usuario
if (isset($_SESSION['userID'])) {
    $userID = $_SESSION['userID'];
} else {
    // El usuario no ha iniciado sesión, redirigir a la página de inicio de sesión
    header("Location: login/login.php");
    exit();
}
?>