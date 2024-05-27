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
    public partial class connection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnection_Click(object sender, EventArgs e)
        {
            string pseudo = txtPseudo.Text.Trim();
            string mdp = txtMot2passeC.Text.Trim();
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=friendbookDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            mycon.Open();
            string sql = "SELECT idMembres FROM MembresSite WHERE Pseudo ='" + pseudo +
                "' AND Mot2passe ='" + mdp + "'";
            SqlCommand mycmd = new SqlCommand(sql, mycon);
          
            SqlDataReader myrder = mycmd.ExecuteReader();




            if (myrder.Read() == false)//si il n'a pas lu ==il n'est pas membre
            {
                mycon.Close();
                lblErreur.Text = "Numero ou Mot de passe invalide ! Essayez de nouveau";
            }
            else
            {
                //sauvegarder le ref membre dans une variable global de session
                Session["userId"] = myrder["idMembres"];
                mycon.Close();//fermer la connection
                Server.Transfer("accueil.aspx");//transferer à l'autre page
            }
            //sql = "INSERT INTO MembresSite(Nom,Pren,Mot2passe,Statut) ";
            //sql += "VALUES('" + nom + "','" + num + "','" + mdp + "','actif')";
            //SqlCommand mycmd2 = new SqlCommand(sql, mycon);
            // mycmd2.ExecuteNonQuery();

            //mycon.Close();


        }
    }
}