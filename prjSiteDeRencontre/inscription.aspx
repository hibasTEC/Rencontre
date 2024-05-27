<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="prjSiteDeRencontre.inscription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
    <style type="text/css">
        .auto-style1 {
            
            color: #000000;
        }
        .bg{

            background-image:url(images/bg.jpg) ;
            background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;

            
             
      
        }
        .titreIns{
            color: #FF9933;
            margin-left:0px;
            
        }
        .table {
            width: 30%;
            background-color:#F4CA8A ;
             font-weight:bold;
            border-radius:15px;
            
        }
        .auto-style4 {
            height: 23px;
            width: 10px;
        }
        .auto-style9 {
            height: 23px;
            width: 242px;
        }
        .auto-style10 {
            width: 242px;
        }
        .auto-style11 {
            height: 23px;
            width: 208px;
        }
        .auto-style12 {
            width: 208px;
        }
        .auto-style13 {
            width: 208px;
            height: 26px;
        }
        .auto-style14 {
            width: 242px;
            height: 26px;
        }
        .auto-style15 {
            height: 26px;
            width: 10px;
        }
        .auto-style16 {
            width: 5%;
            height: 68px;
        }
        .auto-style17 {
            width: 10px;
        }
    </style>
</head>
<body class="bg">
    <form id="form1" runat="server">
        <div>
        <img src="images/logoC.png" class="auto-style16" />
            <div class="auto-style1">
                <h1 class="titreIns"><strong>Inscrivez - vous et devenez Membre de FriendBook</strong></h1></div>
        </div>
    <table class="table"   border="0">
        <tr>
            <td class="auto-style11">Nom</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtNom" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Prenom</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtPrenom" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Je suis </td>
            <td class="auto-style10">
                <asp:DropDownList ID="cboGenre" runat="server" Height="16px" OnSelectedIndexChanged="cboGenre_SelectedIndexChanged" Width="202px">
                </asp:DropDownList>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Jour</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtJour" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style13">Mois</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtMois" runat="server" TextMode="Month"></asp:TextBox>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style12">Annee</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtAnnee" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Adresse Email</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="195px"></asp:TextBox>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Mot de passe</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtMot2Pass" runat="server" TextMode="Password" Width="194px"></asp:TextBox>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Pseudo</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtPseudo" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Code Postal</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtCodePostal" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Taille</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtTaille" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Poids</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtPoids" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Origine</td>
            <td class="auto-style10">
                <asp:DropDownList ID="cboOrigine" runat="server" Height="18px" Width="203px">
                </asp:DropDownList>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Religion</td>
            <td class="auto-style10">
                <asp:DropDownList ID="cboReligion" runat="server" Height="20px" Width="203px">
                </asp:DropDownList>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Type de corps</td>
            <td class="auto-style10">
                <asp:DropDownList ID="cboCorps" runat="server" Height="17px" Width="203px">
                </asp:DropDownList>
            </td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Button ID="btnInscription" runat="server" OnClick="btnInscription_Click" Text="Inscription" Width="208px" BackColor="OrangeRed" Font-Bold="True" Font-Italic="True" />
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lbmMessageInscription" runat="server"></asp:Label>
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style4"></td>
        </tr>
    </table>
    </form>
    </body>
</html>
