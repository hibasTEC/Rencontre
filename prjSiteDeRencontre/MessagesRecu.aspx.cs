using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace prjSiteDeRencontre
{
    public partial class MessagesRecu : System.Web.UI.Page
    {
        //variable global a la page
        static Int32 refM;
        protected void Page_Load(object sender, EventArgs e)
        {
            //recupere l id du membre
            refM = Convert.ToInt32(Session["userId"]);
            //ouvrir la connection
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=friendbookDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            mycon.Open();
            //creer la requette sql
            string sql = "SELECT idMembres,Nom FROM MembresSite WHERE idMembres =" + refM;
            //creer la commande
            SqlCommand mycmd = new SqlCommand(sql, mycon);
            //ouvrirle  data reader
            SqlDataReader myrder = mycmd.ExecuteReader();
            //si recupere le nom avec affichage d'un msg bienvenu
            if (myrder.Read())
            {
                lblNom.Text = "Bienvenue " + myrder["Nom"].ToString();
            }
            myrder.Close();

            //recuperation des messages recus par Memmbre courant
            sql = "SELECT Messages.RefMessage,Messages.Titre,MembresSite.Nom," +
                "Messages.Nouveau FROM Messages, MembresSite" +
                " WHERE MembresSite.idMembres = Messages.Envoyeur AND Receveur = " + refM;
            SqlCommand mycmd2 = new SqlCommand(sql, mycon);
            SqlDataReader rdrMsg = mycmd2.ExecuteReader();
            Int16 nbMsg = 0;
            //executer la requette
            while (rdrMsg.Read() == true)
            {
                nbMsg++;
                Int32 refMsg = Convert.ToInt32(rdrMsg["RefMessage"].ToString());

                //creation dynamique du tableau
                TableRow uneLigne = new TableRow();

                TableCell uneCell = new TableCell();
                uneCell.Text = rdrMsg["Titre"].ToString();
                uneLigne.Cells.Add(uneCell);

                uneCell = new TableCell();
                uneCell.Text = rdrMsg["Nom"].ToString();
                uneLigne.Cells.Add(uneCell);

                uneCell = new TableCell();
                uneCell.Text = "<a href='LireMessage.aspx?refM=" + refMsg + "' >Lire</a> ";
                uneLigne.Cells.Add(uneCell);
                     

                uneCell = new TableCell();
                uneCell.Text = "<a href = 'effacerMessage.aspx?refM=" + refMsg + "' > Effacer </ a > ";
                uneLigne.Cells.Add(uneCell);
                //verifier si le message est nouveau et changer la couleur de la ligne par consequence
                if (rdrMsg["Nouveau"].ToString() == "True")
                {
                    uneLigne.BackColor = System.Drawing.Color.Orange;
                }
                else {
                    uneLigne.BackColor = System.Drawing.Color.SandyBrown;
                }


                tabMessages.Rows.Add(uneLigne);

            }
            rdrMsg.Close();
            lblNbMsg.Text += "<br />Vous avez " + nbMsg + " Messages";
            mycon.Close();
        }
    }
}