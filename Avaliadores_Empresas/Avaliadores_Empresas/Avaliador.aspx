﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Avaliador.aspx.cs" Inherits="Avaliadores_Empresas.Avaliador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link runat="server" rel="icon" href="Imagens/Logos/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="stylesheets/style_avaliadores.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <title>Avaliadores </title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section>
                <nav class="navbar navbar-inverse" style="z-index:99999">
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
            </section>

            <section>
                <div id="DivBtns" class="DivBtn" runat="server" style="z-index: 500">
                    <div class="DivBtns_In">
                        <div class="row">
                            <div class="col-sm-12" style="position: absolute; z-index: 3;">
                                <div class="div_esquerda col-sm-3">
                                    <ul style="list-style-type: none;">
                                        <li style="margin-bottom: 10px">
                                            <asp:Button ID="BtnPerfil" CssClass="btn btn-dark" runat="server" Height="35px" Text="Perfil" Width="215px" OnClick="BtnPerfil_Click" />
                                        </li>
                                        <li style="margin-bottom: 10px">
                                            <asp:Button ID="BtnAvaliacoesDisponiveis" CssClass="btn btn-dark" runat="server" Height="35px" Text="Avaliações Disponiveis" Width="215px" OnClick="BtnAvaliacoesDisponiveis_Click" />
                                        </li>
                                        <li>
                                            <asp:Button ID="BtnTrabalhosRealizados" CssClass="btn btn-dark" runat="server" Height="35px" Text="Trabalhos realizados" Width="215px" OnClick="BtnTrabalhosRealizados_Click" />
                                        </li>
                                    </ul>
                                    <br />
                                    <br />
                                </div>
                                <div class="div_direita col-sm-8">
                                    <asp:Panel ID="DivPerfil" CssClass="DivBtn" runat="server" Visible="False">
                                        <div style="display: inline">

                                            <%-- <asp:Label ID="LblPerfilNome" runat="server" Text="Nome"></asp:Label>--%>
                                            <asp:TextBox ID="TxtPerfilNome" Style="width: 75%;" class="form-control" placeholder="Nome" runat="server"></asp:TextBox>
                                            <br />

                                            <%--                                        <asp:Label ID="LblPerfilEmail" runat="server" Text="Email"></asp:Label>--%>
                                            <asp:TextBox ID="TxtPerfilEmail" Style="width: 75%;" placeholder="Email" class="form-control" runat="server"></asp:TextBox>
                                            <br />

                                            <%--                                        <asp:Label ID="LblPerfilTelemovel" runat="server" Text="Telemóvel"></asp:Label>--%>
                                            <asp:TextBox ID="TxtPerfilTelemovel" Style="width: 50%;" placeholder="Telemovel" class="form-control" runat="server"></asp:TextBox>
                                            <br />

                                            <%--                                        <asp:Label ID="LblPerfilNRegisto" runat="server" Text="Número de Registo"></asp:Label>--%>
                                            <asp:TextBox ID="TxtPerfilNRegisto" Style="width: 50%;" placeholder="Numero de Registo" class="form-control" runat="server"></asp:TextBox>
                                            <br />

                                            <%--                                        <asp:Label ID="LblPerfilApoliceSeguro" runat="server" Text="Apolice Seguro"></asp:Label>--%>
                                            <asp:TextBox ID="TxtPerfilApoliceSeguro" Style="width: 50%;" placeholder="Apolice Seguro" class="form-control" runat="server"></asp:TextBox>
                                            <br />

                                            <%--                                        <asp:Label ID="LblPerfilValidadeApolice" runat="server" Text="Validade Apolice"></asp:Label>--%>
                                            <asp:TextBox ID="TxtPerfilValidadeApolice" Style="width: 35%;" placeholder="Validade Apolice" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                            <br />

                                            <%--                                        <asp:Label ID="LblPerfilMorada" runat="server" Text="Morada"></asp:Label>--%>
                                            <asp:TextBox ID="TxtPerfilMorada" placeholder="Morada" Style="width: 50%;" class="form-control" runat="server"></asp:TextBox>
                                            <br />

                                            <asp:Button ID="BtnPerfilConfirmar" CssClass="btn btn-dark" runat="server" Text="Confirmar" OnClick="BtnPerfilConfirmar_Click" />
                                        </div>
                                        <div style="display: inline-block">
                                            <asp:DropDownList ID="dpPerfilArea" runat="server"></asp:DropDownList>
                                            <asp:Button ID="BtnPerfilDropdown" CssClass="btn btn-dark" runat="server" Text="Add" OnClick="BtnPerfilDropdown_Click" />
                                            <br />
                                            <asp:ListBox ID="LBoxPerfilArea" runat="server"></asp:ListBox>
                                            <br />
                                            <asp:Button ID="Button1" CssClass="btn btn-dark" runat="server" OnClick="Button1_Click" Text="Apagar Área Selecionada" />
                                            <br />
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                        </div>

                                    </asp:Panel>

                                    <asp:Panel ID="DivAvaliacoesDisponiveis" CssClass="DivBtn" runat="server" Visible="False">
                                        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                                        <asp:ListBox ID="ListBox2" runat="server"></asp:ListBox>
                                        <asp:ListBox ID="ListBox3" runat="server"></asp:ListBox>
                                        <asp:ListBox ID="ListBox4" runat="server"></asp:ListBox>
                                        <asp:ListBox ID="ListBox5" runat="server"></asp:ListBox>
                                        <asp:GridView ID="GridView1" runat="server">
                                        </asp:GridView>
                                    </asp:Panel>

                                    <asp:Panel ID="DivTrabalhosRealizados" CssClass="DivBtn" runat="server" Visible="False">
                                        <asp:Label ID="LblTrabalhosRealizados" runat="server" Text="LblTrabalhosRealizados"></asp:Label>

                                    </asp:Panel>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
