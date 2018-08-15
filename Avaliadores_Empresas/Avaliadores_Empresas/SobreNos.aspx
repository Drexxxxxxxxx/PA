<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SobreNos.aspx.cs" Inherits="Avaliadores_Empresas.SobreNos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link runat="server" rel="icon" href="Imagens/Logos/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="stylesheets/style_homepage.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        body, html, header, form {
            background: linear-gradient(to right, #2193b0, #6dd5ed);
            height: 100% !important;
            overflow-x: hidden !important;
            overflow-y: auto !important;
            margin: 0 !important;
        }

        .labelsM {
            font-size: 20px;
            line-height: 250%;
            letter-spacing: 2px;
            font-weight: bold;
            text-align: justify;
        }

        @media (max-width: 1024px) {
            .labelsM {
                font-size: 15px;
            }
        }

        @media (max-width: 768px) {

            li {
                font-size: 12px;
                line-height: 200%;
            }
        }

        .outer-div {
            text-align: center;
        }

        .inner-div {
            display: inline-block;
            text-align: left;
            border-radius: 3px;
        }

        li {
            font-size: 16px;
            line-height: 200%;
            text-align: justify;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">
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


        <div class="outer-div" style="">
            &nbsp;
            <p></p>
            <div class="row inner-div">
                <div class="row">
                    <div class="col-sm-12">
                        <h1 style="text-align: center">Sobre Nós </h1>
                    </div>
                </div>
                &nbsp;
            <p></p>
                <div class="col-sm-12">
                    <asp:Label ID="Label1" CssClass="labelsM" runat="server" Text='"Gere o teu trabalho, negoceia os teus honorários,avalia e ganha o teu lugar no ranking."'></asp:Label><br />
                    <asp:Label ID="Label2" CssClass="labelsM" runat="server" Text='"Obtem os melhores e mais adequados avaliadores para os trabalhos que tens em mãos."'></asp:Label><br />
                    <asp:Label ID="Label3" CssClass="labelsM" runat="server" Text='"Avalia e sê avaliado"'></asp:Label><br />
                    <asp:Label ID="Label4" CssClass="labelsM" runat="server" Text='"Demonstra que a tua empresa é de todas a que presta melhor serviço"'></asp:Label><br />
                    <asp:Label ID="Label5" CssClass="labelsM" runat="server" Text='"Destaca-te!"'></asp:Label><br />
                </div>
            </div>
            &nbsp;
            <p></p>
            &nbsp;
            <div class="outer-div" style="width: 100%;">
                <div class="row inner-div">
                    <div class="col-sm-12" style="border: 1px solid black; border-radius: 5px; padding: 20px; background-color: white;">
                        <ul>
                            <li>Plataforma de gestão de avaliações de imóveis. </li>
                            <li>Local onde as Empresas de avaliação podem publicar os seus trabalhos e obter os melhores profissionais. </li>
                            <li>Motor de pesquisa de trabalhos disponiveis para que o avaliador possa obter e organizar o seu trabalho. </li>
                            <li>Motor de avaliação dos avaliadores e das próprias empresas. </li>
                            <li>Ranking de satisfação para empresas e avaliadores </li>
                        </ul>
                    </div>
                </div>

            </div>

        </div>
        &nbsp;
        <p></p>
        &nbsp;
    </form>
</body>

</html>
