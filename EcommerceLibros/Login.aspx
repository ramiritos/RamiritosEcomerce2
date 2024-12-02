<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EcommerceLibros.Login" %>

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
        <form id="form2" runat="server">
            <asp:label ID="txtEmail" runat="server" for="email">Correo Electrónico</asp:label>
            <input type="email" id="email" name="email" required>

            <asp:label ID="txtPassword" runat="server" for="password">Contraseña</asp:label>
            <input type="password" id="password" name="password" required>

            <asp:Button Text="Iniciar sesión" runat="server" CssClass="buttom" OnClick="btnLogin_Click" />
            <asp:Label ID="lblError" Text="" runat="server" />
        </form>
        <p>¿No tienes una cuenta? <a href="/registro">Regístrate aquí</a></p>
    </section>
    
</body>
</html>
