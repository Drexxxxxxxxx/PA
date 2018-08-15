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

    <style type="text/css">
        /* WebKit and Opera browsers */
        @-webkit-keyframes spinner {
            from {
                -webkit-transform: rotateY(0deg);
            }

            to {
                -webkit-transform: rotateY(-360deg);
            }
        }

        /* all other browsers */
        @keyframes spinner {
            from {
                -moz-transform: rotateY(0deg);
                -ms-transform: rotateY(0deg);
                transform: rotateY(0deg);
            }

            to {
                -moz-transform: rotateY(-360deg);
                -ms-transform: rotateY(-360deg);
                transform: rotateY(-360deg);
            }
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
      
        <div class=" fill" style="position: absolute; z-index: -1">
            <div id="myCarousel" class="carousel slide">
                <div class="carousel-inner">
                    <div class="active item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/1.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/2.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/3.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/4.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/6.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/7.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/8.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/9.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/10.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/11.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/12.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/13.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/14.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/15.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/16.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/17.jpg');">
                            <div class="container">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="fill" style="background-image: url('Imagens/imagens_cinzas/18.jpg');">
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

        <div style="position: relative; z-index: 9999; text-align: center; color: black; height: 91%;">
            <div style="position: absolute; max-height: 80%; max-width: 98%; min-width: 200px; top: 50%; left: 0%; right: 0%; transform: translate(-0%, -50%); z-index: 2;">
                <asp:Image ID="spinner" runat="server" ImageUrl="~/Imagens/Logos/lg_preto.png" Width="200px" /><br />
                <asp:Label ID="Label2" runat="server" Text="BREVEMENTE" CssClass="LabelPortal"></asp:Label><br />

            </div>
        </div>
    </form>
</body>
</html>
