﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PublicarPedidoAvaliacao1.aspx.cs" Inherits="Avaliadores_Empresas.PublicarPedidoAvaliacao1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
           <asp:Label ID="Label2" runat="server" Text="Denominação da avaliação"></asp:Label>
           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
           <asp:Label ID="Label3" runat="server" Text="Localidade"></asp:Label>
           <asp:DropDownList ID="DropDownList1" runat="server">
           </asp:DropDownList>
            <br />
           <asp:Label ID="Label4" runat="server" Text="Deadline"></asp:Label>
           <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
           <br />
           <asp:Button ID="Button1" runat="server" Text="Registar" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Voltar" />
                </asp:Panel>
    </form>
</body>
</html>
