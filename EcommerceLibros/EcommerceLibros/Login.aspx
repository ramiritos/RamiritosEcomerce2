﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EcommerceLibros.Login" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="styles/StyleSheetEC.css">
</head>
<body>

    <section class="login">
        <h2>Iniciar Sesión</h2>
        <form action="/login" method="POST">
            <label for="email">Correo Electrónico</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Contraseña</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Iniciar Sesión</button>
        </form>
        <p>¿No tienes una cuenta? <a href="/registro">Regístrate aquí</a></p>
    </section>

</body>
</html>
