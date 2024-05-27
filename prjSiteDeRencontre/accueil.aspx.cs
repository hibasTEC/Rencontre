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
    public partial class accueil : System.Web.UI.Page
    {
        static Int32 refM;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                //recupere l id du membre
                 refM = Convert.ToInt32(Session["userId"]);
                //ouvrir la connection
                SqlConnection mycon = new SqlConnection();
                mycon.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=friendbookDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                mycon.Open();
                //creer la requette sql
                string sql = "SELECT idMembres,Nom,Prenom FROM MembresSite WHERE idMembres =" + refM;
                //creer la commande
                SqlCommand mycmd = new SqlCommand(sql, mycon);
                //ouvrirle  data reader
                SqlDataReader myrder = mycmd.ExecuteReader();
                //si recupere le nom avec affichage d'un msg bienvenu
                if (myrder.Read())
                {
                    lblNom.Text = "Bienvenue " + myrder["Nom"].ToString()+" "+ myrder["Prenom"].ToString();
                    lblNom.Text += "<br/>Chercher vous un Friend et envoyer lui  un message" ;
                }
                myrder.Close();

             }
        }

        protected void btnRecherche_Click(object sender, EventArgs e)
        {
            Server.Transfer("Recherche.aspx");
        }

        protected void btnMessageRecu_Click(object sender, EventArgs e)
        {
            Server.Transfer("MessagesRecu.aspx");
        }

        protected void btnEcrire_Click(object sender, EventArgs e)
        {
            Server.Transfer("envoiMessage.aspx");
        }
    }
}