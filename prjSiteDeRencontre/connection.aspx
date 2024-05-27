<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="connection.aspx.cs" Inherits="prjSiteDeRencontre.connection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .body {
            background-image: url('images/bg.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            width: 100%;
            height: 890px;
            margin-top: 0px;
            margin-bottom: 0px;
            margin-right: 0px;
            float: right;
            overflow-x: hidden;
        }
        .he1 {
            color: black;
            font-size: 50px;
            width: 30%;
            margin-bottom: 3px;
            height: 37px;
            text-align: center;
            margin-top: 6%;
            margin-left: 10%;
            display: inline;
        }
         .he3 {
            margin-top: 100px;
            padding-top: 0px;
            border: 0.3px solid black;
            width: 100%;
            text-align: center;
            margin-right: 25%;
        }
         
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            width: 130px;
            height: 50px;
            background-color: #00b800;
            color: white;
            font-size: 25px;
            border-radius: 5px;
            margin-top: 20px;
            position: absolute;
            right: 79px;
            top: 528px;
        }
        .subtitle {
    margin-left: 39%;
  color:black;
    font-size: 22px;
    margin-top: 2px;
}
         
    </style>
     <link href="css/style.css" rel="stylesheet"  type="text/css"/>

</head>
<body class="body">
    <div class="login">
    <form id="form1" runat="server" class="form">
        
          <div class="header">
                <h1 class="he1">
                    <asp:Image ID="imgLogo" runat="server" CssClass="image" Height="85px" Width="108px" DescriptionUrl="~/images/logoC.png" ImageUrl="~/images/logoC.png" />FriendBook</h1>
                <hr class="he3" />
               <div class="subtitle">BENVENUE<br /><br /> Connecter-vous  </div>
            </div>
         <div class="container">
            <div class="auto-style4">
                <asp:Label ID="lblPseudo" runat="server" Text="Pseudo : " CssClass="label" Font-Bold="False" Font-Size="Larger" Font-Strikeout="False" ForeColor="#FF3300"></asp:Label><br />
                <asp:TextBox ID="txtPseudo" CssClass="auto-style17" runat="server" Width="183px"></asp:TextBox>
                </div>
                <br /><br />
            <div class="auto-style4">
                <asp:Label ID="lblPassword" runat="server" CssClass="label" Text="Mot de passe : " Font-Size="Larger" ForeColor="#FF3300"></asp:Label><br />
                <asp:TextBox ID="txtMot2passeC"  CssClass="auto-style17" runat="server" TextMode="Password" Width="191px"></asp:TextBox>
                <br />
                <br />
            </div>
                <div  >
                    <asp:Button ID="btnConnection" runat="server" CssClass="auto-style1" BackColor="#FF3300" Text="Connection" Width="200px" OnClick="btnConnection_Click" BorderStyle="Groove" />
                 </div>
                 
                <div>
                    <asp:Label ID="lblErreur" Font-Bold="True" ForeColor="Black" runat="server"></asp:Label>
                </div>
             </div>
    </form>
         </div>
</body>
</html>
