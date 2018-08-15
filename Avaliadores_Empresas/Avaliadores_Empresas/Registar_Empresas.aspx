<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registar_Empresas.aspx.cs" Inherits="Avaliadores_Empresas.Registar_Empresas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <link runat="server" rel="icon" href="Imagens/Logos/favicon.ico" type="image/x-icon" />
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
        <div class="container outer-div">
            <div class="inner-div">
                &nbsp;&nbsp;
                <div class="row">
                    <div class="col-sm-12">
                        <h1 style="text-align: center">Registar Empresa </h1>
                    </div>
                </div>
                &nbsp;
                <div class="row">
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="Label1" runat="server" CssClass="LabelPaddingright" Height="100%" Text="Nome"></asp:Label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="nome_emp" width="100%" CssClass="textboxContactos" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        &nbsp;
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="Label2" runat="server" CssClass="LabelPaddingright" Height="100%" Text="Email"></asp:Label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="email_emp" width="100%" CssClass="textboxContactos" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        &nbsp;
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="Label3" runat="server" CssClass="LabelPaddingright"  Height="100%" Text="Número de telefone"></asp:Label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="mobile_emp" width="100%" CssClass="textboxContactos" MaxLength="9" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        &nbsp;
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="Label4" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="100%" Text="Morada"></asp:Label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="morada_emp" width="100%" CssClass="textboxContactos" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        &nbsp;
                        
                        &nbsp;

                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="Label7" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="100%" Text="Nº Registo"></asp:Label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="nregisto_emp" width="100%" CssClass="textboxContactos" runat="server"></asp:TextBox>

                            </div>
                        </div>
                        &nbsp;
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="Label8" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="100%" Text="Apólice Seguro"></asp:Label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="apoliceseguro_emp" width="100%" CssClass="textboxContactos" runat="server"></asp:TextBox>

                            </div>
                        </div>
                        &nbsp;
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="Label9" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="100%" Text="Validade do Apólice de Seguro"></asp:Label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="validseguro_emp" width="100%" CssClass="textboxContactos" TextMode="Date" runat="server"></asp:TextBox>

                            </div>
                        </div>
                        &nbsp;

                        
                        &nbsp; 
                    </div>
                </div>
                &nbsp; 
                &nbsp; 
                <div class="row">
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="Label5" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="100%" Text="Password"></asp:Label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="pass_emp" runat="server" width="100%" CssClass="textboxContactos" TextMode="Password"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Label ID="Label6" runat="server" CssClass="LabelPaddingright LabelDescricao" Height="100%" Text="Confirmar Password"></asp:Label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="confpass_emp" runat="server" width="100%" CssClass="textboxContactos" TextMode="Password"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                    &nbsp;

                </div>


                <div class="row">
                    <div class="col-sm-12" style="text-align: center">
                        <asp:Button ID="btn_regist_emp" runat="server" CssClass="buttonsobrenos" OnClick="btn_regist_emp_Click" Text="Registar" />
                    </div>
                </div>
                <p></p>
                &nbsp;
            </div>

        </div>

    </form>
</body>
</html>
