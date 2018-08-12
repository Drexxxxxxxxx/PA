<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registar_Empresas.aspx.cs" Inherits="Avaliadores_Empresas.Registar_Empresas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="stylesheets/add_empresas.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
     
    </style>
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
            <div style="position: absolute; overflow-y: auto; padding-top: 10px; max-height: 95%; max-width: 100%; min-width: 200px; top: 50%; left: 0%; right: 0%; transform: translate(-0%, -50%); z-index: 2;">
                <div class="Div364">
                    <div class="DivsContacto">
                        <asp:Label ID="Label1" runat="server" CssClass="LabelPaddingright" Text="Nome"></asp:Label>
                        <asp:TextBox ID="nome_emp" CssClass="textboxContactos" runat="server"></asp:TextBox>

                    </div>
                    <br />
                    <br />
                    <div class="DivsContacto">
                        <asp:Label ID="Label2" runat="server" CssClass="LabelPaddingright" Text="Email"></asp:Label><asp:TextBox ID="email_emp" CssClass="textboxContactos" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="DivsContacto">
                        <asp:Label ID="Label3" runat="server" CssClass="LabelPaddingright" Text="Número de telefone"></asp:Label>
                        <asp:TextBox ID="mobile_emp" CssClass="textboxContactos" MaxLength="9" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="DivsContacto">
                        <asp:Label ID="Label4" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="39px" Text="Morada"></asp:Label><asp:TextBox ID="morada_emp" CssClass="textboxContactos" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="DivsContacto">
                        <asp:Label ID="Label5" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="39px" Text="Password"></asp:Label><asp:TextBox ID="pass_emp" runat="server" CssClass="textboxContactos" TextMode="Password"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="DivsContacto">
                        <asp:Label ID="Label6" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="39px" Text="Confirmar Password"></asp:Label><asp:TextBox ID="confpass_emp" runat="server" CssClass="textboxContactos" TextMode="Password"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="DivsContacto">
                        <asp:Label ID="Label7" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="39px" Text="Nº Registo"></asp:Label><asp:TextBox ID="nregisto_emp" CssClass="textboxContactos" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="DivsContacto">
                        <asp:Label ID="Label8" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="39px" Text="Apólice Seguro"></asp:Label><asp:TextBox ID="apoliceseguro_emp" CssClass="textboxContactos" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="DivsContacto">
                        <asp:Label ID="Label9" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="39px" Text="Validade do Apólice de Seguro"></asp:Label><asp:TextBox ID="validseguro_emp" CssClass="textboxContactos" TextMode="Date" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="DivsContacto">
                        <asp:Button ID="btn_regist_emp" runat="server" CssClass="buttonsobrenos" OnClick="btn_regist_emp_Click" Text="Registar" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
