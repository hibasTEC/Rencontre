<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accueil.aspx.cs" Inherits="prjSiteDeRencontre.accueil" %>

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
        .auto-style1 {
            width: 36%;
            height: 401px;
        }
        .auto-style2 {
            width: 342px;
            height: 152px;
        }
        .auto-style3 {
            margin-left: 240px;
        }
        .titre{
            color:red;
        }
        .sousTit{
            color:beige
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><center>
            <h1 class="titre"> Bienvenue Dans Friendly</h1>
            <h5 class="sousTit">cherchez vous un Friend FRIENDLY est làà pour vous</h5>
             </center>
        </div>
        <asp:Label ID="lblNom" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
        
    <div style="background-color:#F4CA8A" class="auto-style1"><p> Avec Friend Book vous pouvez chercher votre partenaire
     <br />  avec les critaire que vous desirez et même de communiquer<br /> avec lui</p> 
      
        
        <br />
       <img  src="images/img4.jpg" class="auto-style2" />
        <br />
        <p> clicker est choisiser les critaire de la personne que vous désirer </p>
        <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="btnRecherche" runat="server" BackColor="#FF9933" BorderColor="#FF9933" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" ForeColor="Red" Height="35px" Text="Chercher " Width="101px" OnClick="btnRecherche_Click" />
        &nbsp;&nbsp;&nbsp; 
            <asp:Button ID="btnMessageRecu" runat="server" BackColor="#FF9933" BorderColor="#FF9933" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" ForeColor="Red" Height="35px" OnClick="btnMessageRecu_Click" Text=" Mes Messages Reçu" Width="149px" />
           &nbsp; <asp:Button ID="btnEcrire" runat="server" Text="Ecrire Message" BackColor="#FF9933" BorderColor="#FF9933" BorderStyle="Solid" Width="140px" Font-Bold="True" Font-Italic="True" ForeColor="Red" Height="33px" OnClick="btnEcrire_Click" />
        </p>
        <p class="auto-style3"> 

            &nbsp;</p>

    </div>
        
    </form>
    </body>
</html>
