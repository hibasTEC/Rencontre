<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LireMessage.aspx.cs" Inherits="prjSiteDeRencontre.LireMessage" %>

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
        .tableau {
            width: 50%;
            background-color:#F4CA8A;
        }
        .auto-style1 {
            width: 268px;
        }
        .auto-style2 {
            width: 50%;
            background-color: #F4CA8A;
            height: 170px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                 <center>
              <h1 class="titre"> Bienvenue Dans Friendly</h1>
            <h4 class="sousTit">Chercher la personne dont vous rêvez</h4>
                </center>
        </div>
        <center>
    <table cellpadding="2" class="auto-style2">
        <tr>
            <td class="auto-style1">Sujet du message :</td>
            <td>
                <asp:Label ID="lblSujet" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">De&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td>
                <asp:Label ID="lblEnvoyeur" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Date&nbsp;&nbsp; :</td>
            <td>
                <asp:Label ID="lblDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Contenu du Message :</td>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">

                <asp:Label ID="lblErreur" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:Label>

            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="idRetour" runat="server" BackColor="#FF9933" BorderColor="#FF9933" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="Retour" Width="277px" OnClick="idRetour_Click" />
            </td>
        </tr>
    </table>
    </form>
      </center>
        </div>
    </form>
</body>
</html>
