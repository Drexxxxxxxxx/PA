<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaTestePaypal.aspx.cs" Inherits="Avaliadores_Empresas.PaginaTestePaypal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
        <asp:Button ID="Button1" runat="server" Text="Comprar por 10€ Paypal" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Comprar por 10€ Stripe" />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Pagamento por referencia" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
