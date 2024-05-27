<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessagesRecu.aspx.cs" Inherits="prjSiteDeRencontre.MessagesRecu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
         body{
           background-image:url(images/bg.jpg) ;
                   background-size: cover;

        }
         .titre{
              color:red;
         }
         .sousTit{
             color:beige;
         }
         .tit{
             color:red;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
              <h1 class="titre"> Bienvenue Dans Friendly</h1>
            <h5 class="sousTit">Lire vos nouveau messages</h5>
                </center>
                <asp:Label ID="lblNom" runat="server" Text=""></asp:Label>
                <br />

                <asp:Label ID="lblNbMsg" runat="server" Text=""></asp:Label>
            <center>
            <asp:Table ID="tabMessages" runat="server" BackColor="#F4CA8A" BorderStyle="Solid" GridLines="Horizontal" Font-Bold="True" Width="528px">
                <asp:TableRow runat="server" BackColor="#F4CA8A" BorderStyle="None">
                    <asp:TableCell runat="server"><p class="tit">Sujets</p></asp:TableCell>
                    <asp:TableCell runat="server"><p class="tit">Envoyeurs</p></asp:TableCell>
                    <asp:TableCell runat="server"><p class="tit">Lire</p> </asp:TableCell>
                    <asp:TableCell runat="server"><p class="tit">Effacer </p></asp:TableCell>
                </asp:TableRow>
                
            </asp:Table>
                <br />
                </center>
        </div>
    </form>
</body>
</html>
