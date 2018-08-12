<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactos.aspx.cs" Inherits="Avaliadores_Empresas.Contactos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="stylesheets/style_contactos.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse" style="z-index: 99999">
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

        <div style="position: relative; text-align: center; height: 91%;">
            <asp:Image ID="Image1" runat="server" Height="100%" ImageUrl="~/imagemfundo.jpg" Width="100%" />
            <div style="position: absolute; width: 100%; top: 0px; height: 100%; z-index: 1; opacity: 0.7; background-color: #5373FE;"></div>
            <div style="position: absolute; overflow-y: auto; padding-top: 10px; max-height: 80%; max-width: 98%; min-width: 200px; top: 50%; left: 0%; right: 0%; transform: translate(-0%, -50%); z-index: 2;">
                <div class="row">
                    <div class="col-sm-12">
                        <h1>Contactos </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <asp:Label ID="Label1" runat="server" CssClass="LabelPaddingright" Text="Nome"></asp:Label>
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TextBox1" CssClass="textboxContactos" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <asp:Label ID="Label2" runat="server" CssClass="LabelPaddingright" Text="Email"></asp:Label>
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TextBox2" CssClass="textboxContactos" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <asp:Label ID="Label3" runat="server" CssClass="LabelPaddingright" Text="Assunto"></asp:Label>
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TextBox3" CssClass="textboxContactos" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <asp:Label ID="Label4" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="39px" Text="Descrição"></asp:Label>
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TextBox4" CssClass="textboxContactos" runat="server" TextMode="MultiLine" Height="178px" Width="247px"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <asp:Button ID="Button1" runat="server" CssClass="buttonsobrenos" Text="Enviar" />
                    </div>
                    <div class="col-sm-6">
                    </div>
                </div>




            </div>

        </div>
    </form>
</body>
</html>
