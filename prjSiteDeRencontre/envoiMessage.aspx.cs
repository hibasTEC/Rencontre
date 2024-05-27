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
    public partial class envoiMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                //creer la cnx
                SqlConnection mycon = new SqlConnection();
                mycon.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=friendbookDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                mycon.Open();
                //creer la req

                string sql = "SELECT idMembres,Nom,Prenom,Origine,Religion,Genre FROM MembresSite ";
                //creer la commande
                SqlCommand mycmd = new SqlCommand(sql, mycon);
                //creer le datareader
                SqlDataReader myrder = mycmd.ExecuteReader();

                while (myrder.Read())//==true
                {
                    //recupérer les nom et les numero des membres
                    string tmp = myrder["Nom"].ToString()+ myrder["Prenom"].ToString() + " ( " + myrder["Genre"].ToString() + " )" + " (origine :" + myrder["Origine"].ToString() + " )" + " (Religion :" + myrder["Religion"].ToString() + " )";
                    //creer une list avec un text et valeur
                    ListItem el = new ListItem();
                    el.Text = tmp;
                    el.Value = myrder["idMembres"].ToString();
                    //ajouter l element au comboBox
                    cboDestinataires.Items.Add(el);
                }
                //fermer la lecture
                myrder.Close();

                //fermer la conection?
                mycon.Close();

            }
        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {
            //stocker les info
            Int32 refEnv = Convert.ToInt32(Session["userId"]);
            Int32 refDest = Convert.ToInt32(cboDestinataires.SelectedItem.Value);
            string tit = txtTitre.Text.Trim();
            string mess = txtMessage.Text.Trim();
            //le titre ext un chzmps obligatoire
            if (tit.Length == 0)
            {
                lblErreur.Text = "Veuillez mettre un Titre à votre messsage";
                txtTitre.Focus();
            }
            else
            {// creer la connection
                SqlConnection mycon = new SqlConnection();
                mycon.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=friendbookDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                mycon.Open();

                //string sql = "INSERT INTO Messages(Titre,Message,Envoyeur,Receveur,Nouveau) " +
                // "VALUES('" + tit + "','" + mess + "'," + refEnv + "," + refDest + ",'True')";
                //creer la requette sql pour inserer les donnée
                string sql = "INSERT INTO Messages(Titre,Message,Envoyeur,Receveur,Nouveau) " +
                   "VALUES(@partit, @parmess, @parrefEnv, @parrefDest,'True')";
                //executer la commande
                SqlCommand mycmd = new SqlCommand(sql, mycon);
                mycmd.Parameters.AddWithValue("partit", tit);
                mycmd.Parameters.AddWithValue("parmess", mess);
                mycmd.Parameters.AddWithValue("parrefEnv", refEnv);
                mycmd.Parameters.AddWithValue("parrefDest", refDest);
                //executer la commande
                mycmd.ExecuteNonQuery();
                //fermer la connection
                mycon.Close();
                //transferer vers la page suivant
               // Server.Transfer("accueilOmnivox.aspx");
                Server.Transfer("MessagesRecu.aspx");
            }
        }

        protected void btnEffacer_Click(object sender, EventArgs e)
        {
            txtMessage.Text = txtTitre.Text = lblErreur.Text = "";
        }
    }
}