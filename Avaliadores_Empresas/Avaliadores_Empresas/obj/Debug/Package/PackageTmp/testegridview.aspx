<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation ="false" CodeBehind="testegridview.aspx.cs" Inherits="Avaliadores_Empresas.testegridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
        <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                                         <input id="Latlnglat" type="hidden" runat="server" />
                                                 <input id="Hidden1" type="hidden" runat="server" />

        <div>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <asp:ListBox ID="ListBox1" runat="server">
            </asp:ListBox>

            <input id="Button1" type="button" value="button" onclick="load()"/>
           <input id="Button3" type="button" value="button" onclick="load2()"/>
            <asp:Button ID="Button2" runat="server" Text="Aceitar" OnClientClick="load2()" OnClick="Button2_Click" />
            <script type="text/javascript">
                function load() {

                    var teste = "";
                    document.getElementById("ListBox1").options.length = 0;
                    var opt = document.createElement("option");
                    document.getElementById("ListBox1").options.add(opt);
                    teste += "Teste,";
                    teste += "Teste2,";
                    var hidden = <%=Latlnglat.ClientID %>;
                    hidden.value = teste;
                    opt.text = teste;
                    opt.value = teste;
                    alert(teste.toString());
                }

                function load2() {
                    var e = document.getElementById("ListBox1");
                    var value = e.options[e.selectedIndex].value;
                    alert(value);
                    var hidden2 = <%=Hidden1.ClientID %>;
                    hidden2.value = value;

                    document.getElementById("ListBox1").options.length = 0;
                                }
               
 

                </script>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
