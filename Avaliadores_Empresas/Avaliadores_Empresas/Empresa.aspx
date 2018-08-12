﻿﻿﻿<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Empresa.aspx.cs" Inherits="Avaliadores_Empresas.Empresa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Empresa</title>
    <link runat="server" rel="icon" href="Imagens/Logos/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="stylesheets/style_empresa.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section>
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
            </section>
            <div class="DivBtns_In">
                <div class="row">
                    <div class="col-sm-12" style="position: absolute; z-index: 500;">
                        <div class="div_esquerda col-sm-3">
                            <ul style="list-style-type: none;">
                                <li style="margin-bottom: 10px">
                                    <asp:Button ID="BtnPerfil" CssClass="btn btn-dark" runat="server" Height="35px" Text="Perfil" Width="215px" OnClick="BtnPerfil_Click" />
                                </li>
                                <li style="margin-bottom: 10px">
                                    <asp:Button ID="BtnPesquisaAvaliacoes" CssClass="btn btn-dark" runat="server" Height="35px" Text="Pesquisa Avaliadores" Width="215px" OnClick="BtnPesquisaAvaliacoes_Click" />
                                </li>
                                <li style="margin-bottom: 10px">
                                    <asp:Button ID="BtnPublicarPedidoAvaliacao" CssClass="btn btn-dark" runat="server" Height="35px" Text="Publicar Pedido Avaliacao" Width="215px" OnClick="BtnPublicarPedidoAvaliacao_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="BtnMinhasAvaliacoes" CssClass="btn btn-dark" runat="server" Height="35px" Text="Minhas avaliações" Width="215px" OnClick="BtnMinhasAvaliacoes_Click" />
                                </li>
                            </ul>
                            <br />
                            <br />
                        </div>

                        <div id="divPesquisarAvaliadores" class="div_direita col-sm-8">
                            <asp:Panel ID="DivPerfil" CssClass="DivBtn" runat="server" Visible="False">

                                <%--<asp:Label ID="LblPerfilNome" runat="server" Text="Nome"></asp:Label>--%>
                                <asp:TextBox ID="TBoxPerfilNome" Style="width: 75%;" placeholder="Nome" CssClass="form-control" runat="server"></asp:TextBox>
                                <br />

                                <%--<asp:Label ID="LblPerfilEmail" runat="server" Text="Email"></asp:Label>--%>
                                <asp:TextBox ID="TBoxPerfilEmail" Style="width: 75%;" placeholder="Email" CssClass="form-control" runat="server"></asp:TextBox>
                                <br />

                                <%--<asp:Label ID="LblPerfilTelefone" runat="server" Text="Telefone"></asp:Label>--%>
                                <asp:TextBox ID="TBoxPerfilTelefone" Style="width: 50%;" placeholder="Telefone" CssClass="form-control" runat="server"></asp:TextBox>
                                <br />

                                <%--<asp:Label ID="LblPerfilNRegisto" runat="server" Text="Número de Registo"></asp:Label>--%>
                                <asp:TextBox ID="TBoxPerfilNRegisto" Style="width: 50%;" placeholder="Número de Registo" CssClass="form-control" runat="server"></asp:TextBox>
                                <br />

                                <%--<asp:Label ID="LblPerfilApoliceSeguro" runat="server" Text="Apolice Seguro"></asp:Label>--%>
                                <asp:TextBox ID="TBoxPerfilApoliceSeguro" Style="width: 50%;" placeholder="Apolice Seguro" CssClass="form-control" runat="server"></asp:TextBox>
                                <br />

                                <%--<asp:Label ID="LblPerfilValidadeApolice" runat="server" Text="Validade Apolice"></asp:Label>--%>
                                <asp:TextBox ID="TBoxPerfilValidadeApolice" Style="width: 35%;" placeholder="Validade Apolice" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                <br />

                                <%--<asp:Label ID="LblPerfilMorada" runat="server" Text="Morada"></asp:Label>--%>
                                <asp:TextBox ID="TBoxPerfilMorada" Style="width: 50%;" placeholder="Morada" CssClass="form-control" runat="server"></asp:TextBox>
                                <br />
                                <asp:Button ID="BtnPerfilConfirmar" CssClass="btn btn-dark" runat="server" Text="Confirmar" OnClick="BtnPerfilConfirmar_Click" />
                                <br />

                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </asp:Panel>

                            <asp:Panel ID="DivPesquisaAvaliacoes" CssClass="DivBtn" runat="server" Visible="False">
                                <input id="LatitudeDragend" type="hidden" value="0" runat="server" />
                                <input id="LongitudeDragend" type="hidden" value="0" runat="server" />
                                <input id="ZoomDragend" type="hidden" value="0" runat="server" />
                                <input id="Latlnglat" type="hidden" runat="server" />
                                <input id="Latlnglng" type="hidden" runat="server" />
                                <input id="Hidden1" type="hidden" runat="server" />
                                <input id="Hidden2" type="hidden" runat="server" />
                                <input id="Hidden3" type="hidden" runat="server" />

                                <asp:TextBox ID="TextBox1" runat="server" onkeydown="return (event.keyCode!=13);"></asp:TextBox>


                                <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

                                <asp:TextBox runat="server" ID="pacinput" class="form-control" type="text" placeholder="Find Address of conflict &#xF002;" Style="display: none" AutoPostBack="True"></asp:TextBox>
                                <div id="googleMapZOOM" style="width: 100%; height: 300px;"></div>


                                <script>    
                                    function load2() {

                                    }

                                    function initAutocomplete() {
                                        var markers = [
                                            <asp:Repeater ID="rptMarkers" runat="server">
                                                <ItemTemplate>
                                                    {
                                                        "id": '<%# Eval("id") %>',
                       "lat": '<%# Eval("Longitude") %>',
                                "lng": '<%# Eval("Latitude") %>',
							    "NomeCidade": '<%# Eval("Nome") %>',
                                "NomeAvaliador": '<%# Eval("Nome2") %>',
                                "Email": '<%# Eval("Email") %>',
                                "Telemovel": '<%# Eval("Telemovel") %>',
                                "idAvaliador": '<%# Eval("idAvaliador") %>',
                    }
                            </ItemTemplate>
                                                <SeparatorTemplate>
                                                    ,
                            </SeparatorTemplate>
                                            </asp:Repeater >
                                           
                    ];
                                        var myLatlng = "";
                                        var data;
                                        var locations = []
                                        for (i = 0; i < markers.length; i++) {
                                            data = markers[i]
                                            myLatlng = new google.maps.LatLng(data.lat, data.lng);
                                            locations.push(myLatlng);
                                        }

                                        var LatitudeDragendvar2 = <%=LatitudeDragend.ClientID %>;
                                        var LongitudeDragendvar2 = <%=LongitudeDragend.ClientID %>;
                                        var ZoomDragendvar = <%=ZoomDragend.ClientID %>;
                                        if (LatitudeDragendvar2.value == "0") {
                                            var mapProp = {
                                                center: { lat: 39.47436540986871, lng: -8.186874453125029 },
                                                zoom: 6,
                                                styles: [{ "featureType": "administrative.country", "elementType": "geometry", "stylers": [{ "visibility": "simplified" }, { "hue": "#ff0000" }] }, { "featureType": "administrative.province", "elementType": "geometry", "stylers": [{ "visibility": "on" }, { "hue": "#ff0000" }, { "invert_lightness": true }] }],

                                            };
                                        }
                                        else {
                                            var mapProp = {
                                                center: { lat: parseFloat(LatitudeDragendvar2.value), lng: parseFloat(LongitudeDragendvar2.value) },
                                                zoom: parseFloat(ZoomDragendvar.value),
                                                styles: [{ "featureType": "administrative.country", "elementType": "geometry", "stylers": [{ "visibility": "simplified" }, { "hue": "#ff0000" }] }, { "featureType": "administrative.province", "elementType": "geometry", "stylers": [{ "visibility": "on" }, { "hue": "#ff0000" }, { "invert_lightness": true }] }],

                                            };
                                        }



                                        var map = new google.maps.Map(document.getElementById("googleMapZOOM"), mapProp);
                                        map.addListener('bounds_changed', function () {

                                            var LatitudeDragendvar = <%=LatitudeDragend.ClientID %>;
                       LatitudeDragendvar.value = map.getCenter().lat();

                       var LongitudeDragendvar = <%=LongitudeDragend.ClientID %>;
                       LongitudeDragendvar.value = map.getCenter().lng();
                       var ZoomDragendvar = <%=ZoomDragend.ClientID %>;
                                            ZoomDragendvar.value = map.getZoom();
                                        });
                                        // Add some markers to the map.
                                        // Note: The code uses the JavaScript Array.prototype.map() method to
                                        // create an array of markers based on a given "locations" array.
                                        // The map() method here has nothing to do with the Google Maps API.
                                        var markers2 = locations.map(function (location, i) {
                                            return new google.maps.Marker({
                                                position: location
                                            });
                                        });

                                        for (var i = 0; i < markers2.length; i++) {
                                            data = markers[i];
                                            (function (i, data) {
                                                google.maps.event.addListener(markers2[i], 'click', function () {
                                                    document.getElementById("tbl").style.visibility = "visible";

                                                    while (tbl.children[0].hasChildNodes && tbl.children[0].children.length != 1) {
                                                        tbl.children[0].removeChild(tbl.children[0].lastChild);
                                                    }

                                                    var tr = document.createElement("tr");
                                                    tr.id = data.id;


                                                    var td = document.createElement("td");

                                                    td.innerText = data.NomeAvaliador;
                                                    td.value = data.idAvaliador;

                                                    tr.appendChild(td);



                                                    tr.style.backgroundColor = "lightgrey";

                                                    for (var c = 0; c < markers.length; c++) {
                                                        var data3 = markers[c]
                                                        if (data3.idAvaliador == data.idAvaliador) {
                                                            var td = document.createElement("td");

                                                            td.innerText = data3.NomeCidade;
                                                            td.value = "ads";

                                                            tr.appendChild(td);



                                                            tr.style.backgroundColor = "lightgrey";

                                                            tr.onmouseover = function () {

                                                                this.style.cursor = "pointer";
                                                            }

                                                            tr.onmouseout = function () {

                                                                this.style.cursor = "auto";
                                                            }

                                                            tr.onclick = function () {
                                                                document.getElementById("tblcontatos").style.visibility = "visible";

                                                                tblcontatos.children[0].removeChild(tblcontatos.children[0].lastChild);


                                                                for (var n = 1; n < tbl.children[0].children.length; n++) {
                                                                    tbl.children[0].children[n].style.backgroundColor = "lightgrey";
                                                                }

                                                                this.style.backgroundColor = "#2E64FE";


                                                                var markers2 = [
                                                                    <asp:Repeater ID="rptMarkers3" runat="server">
                                                                        <ItemTemplate>
                                                                            {
                                                                                "id": '<%# Eval("id") %>',
                       "lat": '<%# Eval("Longitude") %>',
                                "lng": '<%# Eval("Latitude") %>',
							    "NomeCidade": '<%# Eval("Nome") %>',
                                "NomeAvaliador": '<%# Eval("Nome2") %>',
                                "Email": '<%# Eval("Email") %>',
                                "Telemovel": '<%# Eval("Telemovel") %>',
                                "idAvaliador": '<%# Eval("idAvaliador") %>',
                    }
                            </ItemTemplate>
                                                   <SeparatorTemplate>
                                                       ,
                            </SeparatorTemplate>
                                               </asp:Repeater >
                    ];

                                           for (var n = 1; n < tbl.children[0].children.length; n++) {
                                               switch (tbl.children[0].children[n].style.backgroundColor.toString()) {
                                                   case "lightgrey":
                                                       break;
                                                   default:
                                                       var hidden2 = <%=Hidden3.ClientID %>;
                                                       hidden2.value = tbl.children[0].children[n].id;
                                                       break;
                                               }
                                           }
                                           for (var i = 0; i < markers2.length; i++) {
                                               var hidden4 = <%=Hidden3.ClientID %>;
                                               var data2 = markers2[i];
                                               if (hidden4.value == data2.id) {
                                                   var trcontatos = document.createElement("tr");


                                                   var tdcontatos = document.createElement("td");

                                                   tdcontatos.innerText = data2.NomeAvaliador;
                                                   tdcontatos.value = data2.id;

                                                   trcontatos.appendChild(tdcontatos);



                                                   trcontatos.style.backgroundColor = "lightgrey";


                                                   var tdcontatos = document.createElement("td");

                                                   tdcontatos.innerText = data2.Telemovel;
                                                   tdcontatos.value = data2.id;

                                                   trcontatos.appendChild(tdcontatos);



                                                   trcontatos.style.backgroundColor = "lightgrey";


                                                   var tdcontatos = document.createElement("td");

                                                   tdcontatos.innerText = data2.Email;
                                                   tdcontatos.value = data2.id;

                                                   trcontatos.appendChild(tdcontatos);



                                                   trcontatos.style.backgroundColor = "lightgrey";




                                                   tblcontatos.children[0].appendChild(trcontatos);
                                               }

                                           }
                                       }

                                   }

                               }

                               tbl.children[0].appendChild(tr);

                               var idvariavelinc = "";
                               var Nomevariavelinc = "";

                               idvariavelinc += data.id;
                               Nomevariavelinc += data.NomeAvaliador;

                               var hidden1 = <%=Hidden2.ClientID %>;
                               hidden1.value = idvariavelinc;

                               var hidden2 = <%=Hidden1.ClientID %>;
                                                    hidden2.value = Nomevariavelinc;
                                                });
                                            })(i, data);
                                        }


                                        // Add a marker clusterer to manage the markers.
                                        var markerCluster = new MarkerClusterer(map, markers2,
                                            { imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m' });


                                        google.maps.event.addListener(markerCluster, 'clusterclick', function (cluster) {
                                            document.getElementById("tbl").style.visibility = "visible";


                                            while (tbl.children[0].hasChildNodes && tbl.children[0].children.length != 1) {
                                                tbl.children[0].removeChild(tbl.children[0].lastChild);
                                            }

                                            var content = '';

                                            // Convert lat/long from cluster object to a usable MVCObject
                                            var info = new google.maps.MVCObject;
                                            info.set('position', cluster.center_);

                                            //----
                                            //Get markers
                                            var markers3 = cluster.getMarkers();

                                            var titles = "";
                                            //Get all the titles
                                            var myArray = [];
                                            var myArrayNome = [];
                                            var myArrayId = [];
                                            var idvariavelinc = "";
                                            var Nomevariavelinc = "";

                                            for (var i = 0; i < markers3.length; i++) {
                                                for (z = 0; z < markers.length; z++) {
                                                    var data = markers[z]
                                                    myLatlng = new google.maps.LatLng(data.lat, data.lng);

                                                    var strngmyLatlng = myLatlng;
                                                    var strngmarkers3 = markers3[i].getPosition();

                                                    var pesquisa = strngmarkers3.toString();
                                                    pesquisa += data.NomeAvaliador;

                                                    if (strngmyLatlng.toString() == strngmarkers3.toString()) {
                                                        if (myArrayNome.indexOf(pesquisa) === -1) {
                                                            var opt = document.createElement("option");
                                                            opt.text = data.NomeCidade;
                                                            opt.value = data.id;

                                                            myArrayNome.push(pesquisa);
                                                            idvariavelinc += data.id + ",";
                                                            Nomevariavelinc += data.NomeAvaliador + ",";

                                                            if (myArrayId.indexOf(data.idAvaliador) === -1) {
                                                                myArrayId.push(data.idAvaliador);

                                                                var tr = document.createElement("tr");
                                                                tr.id = data.id;


                                                                var td = document.createElement("td");

                                                                td.innerText = data.NomeAvaliador;
                                                                td.value = data.idAvaliador;

                                                                tr.appendChild(td);

                                                                tr.style.backgroundColor = "lightgrey";



                                                                for (var c = 0; c < markers.length; c++) {
                                                                    var data3 = markers[c]
                                                                    if (data3.idAvaliador == data.idAvaliador) {
                                                                        var td = document.createElement("td");

                                                                        td.innerText = data3.NomeCidade;

                                                                        tr.appendChild(td);



                                                                        tr.style.backgroundColor = "lightgrey";

                                                                        tr.onmouseover = function () {

                                                                            this.style.cursor = "pointer";
                                                                        }

                                                                        tr.onmouseout = function () {

                                                                            this.style.cursor = "auto";
                                                                        }

                                                                        tr.onclick = function () {
                                                                            document.getElementById("tblcontatos").style.visibility = "visible";

                                                                            while (tblcontatos.children[0].hasChildNodes && tblcontatos.children[0].children.length != 1) {
                                                                                tblcontatos.children[0].removeChild(tblcontatos.children[0].lastChild);
                                                                            }

                                                                            for (var n = 1; n < tbl.children[0].children.length; n++) {
                                                                                tbl.children[0].children[n].style.backgroundColor = "lightgrey";
                                                                            }

                                                                            this.style.backgroundColor = "#2E64FE";


                                                                            var markers2 = [
                                                                                <asp:Repeater ID="rptMarkers2" runat="server">
                                                                                    <ItemTemplate>
                                                                                        {
                                                                                            "id": '<%# Eval("id") %>',
                       "lat": '<%# Eval("Longitude") %>',
                                "lng": '<%# Eval("Latitude") %>',
							    "NomeCidade": '<%# Eval("Nome") %>',
                                "NomeAvaliador": '<%# Eval("Nome2") %>',
                                "Email": '<%# Eval("Email") %>',
                                "Telemovel": '<%# Eval("Telemovel") %>',
                                "idAvaliador": '<%# Eval("idAvaliador") %>',
                    }
                            </ItemTemplate>
                                                               <SeparatorTemplate>
                                                                   ,
                            </SeparatorTemplate>
                                                           </asp:Repeater >
                    ];

                                                       for (var n = 1; n < tbl.children[0].children.length; n++) {
                                                           switch (tbl.children[0].children[n].style.backgroundColor.toString()) {
                                                               case "lightgrey":
                                                                   break;
                                                               default:
                                                                   var hidden2 = <%=Hidden3.ClientID %>;
                                                                   hidden2.value = tbl.children[0].children[n].id;
                                                                   break;
                                                           }
                                                       }
                                                       for (var i = 0; i < markers2.length; i++) {
                                                           var hidden4 = <%=Hidden3.ClientID %>;
                                                           var data2 = markers2[i];
                                                           if (hidden4.value == data2.id) {
                                                               var trcontatos = document.createElement("tr");


                                                               var tdcontatos = document.createElement("td");

                                                               tdcontatos.innerText = data2.NomeAvaliador;
                                                               tdcontatos.value = data2.id;

                                                               trcontatos.appendChild(tdcontatos);



                                                               trcontatos.style.backgroundColor = "lightgrey";


                                                               var tdcontatos = document.createElement("td");

                                                               tdcontatos.innerText = data2.Telemovel;
                                                               tdcontatos.value = data2.id;

                                                               trcontatos.appendChild(tdcontatos);



                                                               trcontatos.style.backgroundColor = "lightgrey";


                                                               var tdcontatos = document.createElement("td");

                                                               tdcontatos.innerText = data2.Email;
                                                               tdcontatos.value = data2.id;

                                                               trcontatos.appendChild(tdcontatos);



                                                               trcontatos.style.backgroundColor = "lightgrey";




                                                               tblcontatos.children[0].appendChild(trcontatos);
                                                           }

                                                       }
                                                   }
                                               }

                                           }

                                           tbl.children[0].appendChild(tr);

                                       }
                                   }
                               }
                               var hidden1 = <%=Hidden2.ClientID %>;
                               hidden1.value = idvariavelinc;

                               var hidden2 = <%=Hidden1.ClientID %>;
                                                    hidden2.value = Nomevariavelinc;
                                                }

                                                titles += markers3[i].getPosition() + "\n";
                                            }

                                            //----




                                        }); var markers2 = [];



                                        var marker2;

                                        google.maps.event.addListener(map, 'tilesloaded', function () {
                                            var lat2 = '<%= Latlnglat.ClientID %>';
                       var lng2 = '<%= Latlnglng.ClientID %>';
                                            if (document.getElementById(lat2).value != "" && document.getElementById(lng2).value != "") {
                                                var myLatlng = new google.maps.LatLng(document.getElementById(lat2).value, document.getElementById(lng2).value);
                                                markers2.forEach(function (marker2) {
                                                    marker2.setMap(null);
                                                });
                                                marker2.setPosition(myLatlng);
                                            }
                                        });

                                        function placeMarker(location) {
                                            markers2.forEach(function (marker2) {
                                                marker2.setMap(null);
                                            });
                                            marker2.setPosition(location);

                                        }

                                        // Create the search box and link it to the UI element.
                                        var input = document.getElementById('TextBox1');

                                        var searchBox = new google.maps.places.SearchBox(input);

                                        // Bias the SearchBox results towards current map's viewport.
                                        map.addListener('bounds_changed', function () {
                                            searchBox.setBounds(map.getBounds());
                                        });

                                        var markers2 = [];
                                        // Listen for the event fired when the user selects a prediction and retrieve
                                        // more details for that place.
                                        searchBox.addListener('places_changed', function () {
                                            var places = searchBox.getPlaces();

                                            if (places.length == 0) {
                                                return;
                                            }

                                            // Clear out the old markers2.
                                            if (marker2) {
                                                marker2.setPosition(null);
                                            }
                                            markers2.forEach(function (marker2) {
                                                marker2.setMap(null);
                                            });
                                            markers2 = [];

                                            // For each place, get the icon, name and location.
                                            var bounds = new google.maps.LatLngBounds();
                                            places.forEach(function (place) {
                                                if (!place.geometry) {
                                                    console.log("Returned place contains no geometry");
                                                    return;
                                                }
                                                var lat = '<%= Latlnglat.ClientID %>';
                           document.getElementById(lat).value = place.geometry.location.lat();
                           var lng = '<%= Latlnglng.ClientID %>';
                                                document.getElementById(lng).value = place.geometry.location.lng();
                                                // Create a marker for each place.                     

                                                if (place.geometry.viewport) {
                                                    // Only geocodes have viewport.
                                                    bounds.union(place.geometry.viewport);
                                                } else {
                                                    bounds.extend(place.geometry.location);
                                                }

                                            });
                                            map.fitBounds(bounds);
                                        });
                                    }


                                </script>
                                <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
                                </script>
                                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDeVOiLBWezK_PJE24rPdwB1BAOLNowNfQ&libraries=places&callback=initAutocomplete"
                                    async defer></script>
                                <asp:GridView ID="GridView1" runat="server">
                                </asp:GridView>

                                <table id="tbl" width="60%" style="visibility: hidden;" border="1">
                                    <tr>
                                        <td>Nome</td>
                                        <td>Cidades</td>
                                    </tr>
                                </table>
                                <table id="tblcontatos" style="visibility: hidden;" width="60%" border="1">
                                    <tr>
                                        <td>Nome</td>
                                        <td>Contatos</td>
                                        <td>Password</td>
                                    </tr>
                                </table>


                            </asp:Panel>

                            <asp:Panel ID="DivPublicarPedidoAvaliacao" CssClass="DivBtn" runat="server" Visible="False">

                                <asp:Panel ID="Panel2" runat="server">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="col-sm-4">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <asp:Button ID="Button6" CssClass="btn_numeros btn btn-dark" runat="server" Text="1" OnClick="Button6_Click" />

                                                    </div>

                                                </div>
                                                <div class="row" style="padding: 20px;">
                                                    <div class="speech-bubble">
                                                        <p>Inserir </p>
                                                        <p>uma </p>
                                                        <p>avaliação </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <asp:Button ID="Button7" CssClass="btn_numeros btn btn-dark" runat="server" Text="2" OnClick="Button7_Click" />
                                                    </div>
                                                </div>
                                                <div class="row" style="padding: 20px;">
                                                    <div class="speech-bubble">
                                                        <p>Importar </p>
                                                        <p>várias </p>
                                                        <p>avaliações </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <asp:Button ID="Button8" CssClass="btn_numeros btn btn-dark" runat="server" Text="3" />
                                                    </div>
                                                </div>
                                                <div class="row" style="padding: 20px;">
                                                    <div class="speech-bubble">
                                                        <p>Importar </p>
                                                        <p>pacote de  </p>
                                                        <p>avaliações </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </asp:Panel>

                            </asp:Panel>

                            <asp:Panel ID="DivMinhasAvaliacoes" CssClass="DivBtn" runat="server" Visible="False">
                                <asp:GridView ID="GridView2" runat="server">
                                </asp:GridView>
                            </asp:Panel>

                        </div>
                    </div>

                </div>

            </div>




        </div>

    </form>
</body>
</html>
