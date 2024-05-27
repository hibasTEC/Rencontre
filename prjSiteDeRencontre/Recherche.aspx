<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recherche.aspx.cs" Inherits="prjSiteDeRencontre.Recherche" %>

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
            background-color: #F4CA8A;

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
            <td class="auto-style1">Genre de la personne chercher :</td>
            <td>
                <asp:DropDownList ID="cboGenre" runat="server" Height="24px" Width="206px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Origine de la personne chercher :</td>
            <td>
                <asp:DropDownList ID="cboOrigine" runat="server" Height="21px" Width="207px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Religion de la personne chercher :</td>
            <td>
                <asp:DropDownList ID="cboReligion" runat="server" Height="21px" Width="208px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Type de corps chercher :</td>
            <td>
                <asp:DropDownList ID="cboTypeCorps" runat="server" Height="22px" Width="207px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="idRecherche" runat="server" BackColor="#FF3300" BorderColor="#FF9933" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" ForeColor="Black" OnClick="idRecherche_Click" Text="Chercher" Width="277px" />
            </td>
        </tr>
    </table>
            <br /><br />
            <div>

                <asp:Label ID="lblResultat" runat="server"></asp:Label>

            </div>

            
    </form>
      </center>
</body>
</html>
