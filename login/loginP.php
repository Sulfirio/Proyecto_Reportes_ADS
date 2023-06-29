<?php
session_start(); // Iniciar sesión

include('../php/conexion.php');

// Obtener los datos del formulario
$email = $_POST['inputEmail'] ?? null;
$password = $_POST['inputPassword'] ?? null;

// Consulta para obtener el usuario y su tipo
$sql = "SELECT l.IDUser, u.userType
        FROM login l
        INNER JOIN usuario u ON l.IDUser = u.IDUser
        WHERE l.IDUser = ? AND l.password = ?";
$stmt = mysqli_prepare($conexion, $sql);
mysqli_stmt_bind_param($stmt, "ss", $email, $password);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

// Verificar si se encontró un usuario
if ($row = mysqli_fetch_assoc($result)) {
    $userType = $row['userType'];

    // Almacenar el ID del usuario en la sesión
    $_SESSION['userID'] = $row['IDUser'];

    // Redirigir a diferentes páginas según el tipo de usuario
    switch ($userType) {
        case 1:
            header("Location: ../InicioU1.php");
            break;
        case 2:
            header("Location: ../InicioU2.php");
            break;
        case 3:
            header("Location: ../InicioU3.php");
            break;
        case 4:
            header("Location: ../InicioU4.php");
            break;
    }
} else {
    header("Location: login.php");
}
?>