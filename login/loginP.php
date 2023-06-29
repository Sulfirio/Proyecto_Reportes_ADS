<?php
session_start(); // Iniciar sesión

include('../php/conexion.php');

// Obtener los datos del formulario
$email = $_POST['inputEmail'] ?? null;
$password = $_POST['inputPassword'] ?? null;
$remember = isset($_POST['inputRememberPassword']);

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

    // Guardar información de inicio de sesión en una cookie si se selecciona "Recuerda mi contraseña"
    if ($remember) {
        setcookie('loginEmail', $email, time() + (30 * 24 * 60 * 60)); // Cookie válida por 30 días
        setcookie('loginPassword', $password, time() + (30 * 24 * 60 * 60)); // Cookie válida por 30 días
    } else {
        // Si no se selecciona "Recuerda mi contraseña", eliminar las cookies existentes
        setcookie('loginEmail', '', time() - 3600);
        setcookie('loginPassword', '', time() - 3600);
    }

    // Redirigir a diferentes páginas según el tipo de usuari
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
    // Mostrar mensaje de error y redirigir al formulario de inicio de sesión
    header("Location: login.php?error=1");
    exit();
}
?>
