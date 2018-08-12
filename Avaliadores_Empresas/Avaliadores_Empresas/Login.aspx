﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Avaliadores_Empresas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link runat="server" rel="icon" href="Imagens/Logos/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="stylesheets/style_login.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
    <style>
     
    </style>

</head>
<body>
    <form id="form" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">

                    <div style="max-width: 100%;">
                        <div class="dropdown">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagens/Logos/lg_azul.png" Width="70px" />
                            <div id="myDropdown" runat="server" class="dropdown-content">
                                <input type="text" placeholder="Search.." id="myInput" onkeyup="filterFunction()" />
                                <a href="Homepagebottstrap.aspx">Home</a>
                                <a href="Contactos.aspx">Contactos</a>
                                <a href="Registar_Empresas.aspx">Registar Empresa</a>
                                <a href="Registar_Avaliadores.aspx">Registar Avaliador</a>
                                <a href="Login.aspx"><span class="glyphicon glyphicon-log-in" style="padding-right: 2px"></span>Login</a>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </nav>
        <div class="outer-div">
            <div class="inner-div">
                &nbsp;&nbsp;
                <div class="row">
                    <div class="col-sm-12">
                        <h1 style="text-align: center"> Login </h1>
                    </div>
                </div>
                &nbsp;
                <div class="row">
                    <div class="col-sm-6">
                        <asp:Label ID="Label1" runat="server" CssClass="LabelPaddingright" Text="Email"></asp:Label>
                    </div>
                    <div class="col-sm-6">
                       <asp:TextBox ID="txt_email" placeholder="Email" CssClass="textboxContactos" runat="server"></asp:TextBox>
                    </div>
                </div>
                &nbsp;
                <div class="row">
                    <div class="col-sm-6">
                        <asp:Label ID="Label2" runat="server" CssClass="LabelPaddingright" Text="Password"></asp:Label>
                    </div>
                    <div class="col-sm-6">
                         <asp:TextBox ID="txt_pass" placeholder="Password" CssClass="textboxContactos" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                </div>
                &nbsp; 
                <div class="row">
                    <div class="col-sm-6">
                        <asp:Button ID="btn_entrar" runat="server" CssClass="buttonsobrenos" Text="Login" OnClick="btn_entrar_Click" />
                    </div>
                    <div class="col-sm-6">
                         <asp:Label ID="lbl_msg" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    </div>
                </div>
                &nbsp;
            </div>

        </div>
    </form>
</body>
</html>
