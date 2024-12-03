<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pago.aspx.cs" Inherits="EcommerceLibros.pago" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Información de Pago</title>
    <style type="text/css">
        .btn {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Información de Pago</h2>
            <div class="payment-form">
                <!-- Número de tarjeta -->
                <label for="card-number">Número de Tarjeta:</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Ingrese su número de tarjeta" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Buscar" CssClass="btn" OnClick="SearchCard_Click" />
                <br />

                <!-- Fecha de expiración y CVV -->
                <label for="expiration-date">Fecha:</label>
                <asp:TextBox ID="TxtFecha" runat="server" CssClass="form-control" placeholder="MM/AA"></asp:TextBox>
                <label for="cvv">CVV:</label>
                <asp:TextBox ID="Txtcvv" runat="server" CssClass="form-control" placeholder="123"></asp:TextBox>
                <br />

                <!-- Banco -->
                <label for="bank">Banco:</label>
                <asp:TextBox ID="Txtbanco" runat="server" CssClass="form-control" placeholder="Ingrese su banco"></asp:TextBox>
                <br />

                <!-- Botones -->
                 <asp:Label ID="lblTotal" runat="server" Text="Total:"></asp:Label>
                 <asp:TextBox ID="pagotoltal" runat="server" CssClass="form-control" OnTextChanged="pagotoltal_TextChanged"></asp:TextBox>

                <asp:Button ID="Button2" runat="server" Text="Pagar" CssClass="btn" OnClick="ProcessPayment_Click" />
                <asp:Button ID="Button3" runat="server" Text="Cancelar" CssClass="btn" OnClick="CancelPayment_Click" />
                <asp:Button ID="Button4" runat="server" Text="Nuevo Método de Pago" CssClass="btn" OnClick="NewPaymentMethod_Click" />
            </div>
        </div>
    </form>
</body>
</html>

