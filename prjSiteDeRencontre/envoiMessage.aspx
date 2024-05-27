<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="envoiMessage.aspx.cs" Inherits="prjSiteDeRencontre.envoiMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
           background-image:url(images/bg.jpg) ;
                   background-size: cover;

        }
        table{
            width: 500px;
            margin:auto;
            font-weight:bold;
            border-radius:15px;
            background-color:#F4CA8A;
            padding:2px;

        }
        .auto-style1 {
            width: 448px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div><center>
            <h1 class="titre"> Bienvenue Dans FriendBook</h1>
            <h5 class="sousTit">cherchez vous un Friend FRIENDLY est làà pour vous</h5>
             </center>
        </div>
        <table class="auto-style1">
            <tr>
                <td>Destinataire : </td>
                <td>
                    <asp:DropDownList ID="cboDestinataires" runat="server" Font-Bold="True" Width="308px" Height="20px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Titre Message : </td>
                <td>
                    <asp:TextBox ID="txtTitre" runat="server" Font-Bold="True" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="vertical-align:top">Contenu Message : </td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" Font-Bold="True" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblErreur" runat="server" Font-Bold="True" ForeColor="Red" Width="100%"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnEnvoyer" runat="server" Font-Bold="True" OnClick="btnEnvoyer_Click" Text="Envoyer" Width="135px" BackColor="#FF3300" style="height: 26px" />
                </td>
                <td>
                    <asp:Button ID="btnEffacer" runat="server" Font-Bold="True" OnClick="btnEffacer_Click" Text="Effacer" Width="308px" BackColor="#FF3300" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
