<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepagebottstrap.aspx.cs" Inherits="Avaliadores_Empresas.Homepagebottstrap" %>

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
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">

                    <div style="max-width: 100%;">
                        <div class="dropdown">
                            <asp:ImageButton OnClick="ImageButton1_Click" ID="ImageButton1" runat="server" ImageUrl="~/Imagens/Logos/lg_azul.png" Width="70px" />
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
        <div class=" fill" style="position:absolute;z-index:-1">
            <div id="myCarousel" class="carousel slide">
                <div class="carousel-inner">
                    <div class="active item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/1.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/2.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/3.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/4.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/6.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/7.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/8.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/9.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/10.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/11.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/12.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/13.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/14.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/15.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/16.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/17.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_em_azul/18.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>

        
        <script>
            var currentSlide;
            var rand;
            $(document).ready(function () {
                currentSlide = Math.floor((Math.random() * $('.item').length));
                rand = currentSlide;
                $('#myCarousel').carousel(currentSlide);
                $('#myCarousel').fadeIn(10000);
                setInterval(function () {
                    while (rand == currentSlide) {
                        rand = Math.floor((Math.random() * $('.item').length));
                    }
                    currentSlide = rand;
                    $('#myCarousel').carousel(rand);
                }, 12500);
            });

            $('.carousel').carousel();


        </script>

        <div style="position: relative; z-index: 9999; text-align: center; color: white; height: 91%;">
            <div style="position: absolute; max-height: 80%; max-width: 98%; min-width: 200px; top: 50%; left: 0%; right: 0%; transform: translate(-0%, -50%); z-index: 2;">
                <asp:Label ID="Label1" CssClass="labelFont" runat="server" Text="Bem vindo ao teu"></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text="PORTAL DO AVALIADOR" CssClass="LabelPortal"></asp:Label><br />
                <asp:Button ID="Button1" runat="server" CssClass="buttonsobrenos" Text="Sobre nós" OnClick="Button1_Click" />
            </div>
        </div>
    </form>
</body>
<script>
    /* When the user clicks on the button,
    toggle between hiding and showing the dropdown content */
    function myFunction() {
        document.getElementById("myDropdown").classList.toggle("show");
    }

    function filterFunction() {
        var input, filter, ul, li, a, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        div = document.getElementById("myDropdown");
        a = div.getElementsByTagName("a");
        for (i = 0; i < a.length; i++) {
            if (a[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
                a[i].style.display = "";
            } else {
                a[i].style.display = "none";
            }
        }
    }
</script>
</html>
