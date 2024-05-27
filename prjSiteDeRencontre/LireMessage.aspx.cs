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
    public partial class LireMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //recupere l id du msg à lire
            Int32 refMsg = Convert.ToInt32(Request.QueryString["refM"].ToString());
            //creer la connection
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=friendbookDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            mycon.Open();

            // "SELECT * FROM Messages WHERE RefMessage =" + refMsg;
            string sql = "SELECT Messages.*, MembresSite.Nom FROM Messages, MembresSite ";
            sql += "WHERE MembresSite.idMembres = Messages.Envoyeur AND Messages.RefMessage =" + refMsg;
            //creer a commande
            SqlCommand mycmd = new SqlCommand(sql, mycon);
            //ouvrir le dataReader
            SqlDataReader myrder = mycmd.ExecuteReader();
            //si oui
            if (myrder.Read())
            {
                //remplire le lblMessage
              //  string info = "Titre : " + myrder["Titre"].ToString() + " <br />";
               // info += "Date : " + myrder["Date"].ToString() + " <br />";
               // info += "De : " + myrder["Nom"].ToString() + " <br />";
               // info += "Message : " + myrder["Message"].ToString() + " <br />";
              lblSujet.Text = myrder["Titre"].ToString();
                lblDate.Text = myrder["Date"].ToString();
                lblEnvoyeur.Text = myrder["Nom"].ToString();
                lblMessage.Text = myrder["Message"].ToString();
               
            }
            myrder.Close();

            
            sql = "UPDATE Messages SET Nouveau ='false' WHERE Messages.RefMessage =" + refMsg;
            SqlCommand cmd = new SqlCommand(sql, mycon);
            //ouvrir le dataReader
            cmd.ExecuteNonQuery();
            mycon.Close();

        }

        protected void idRetour_Click(object sender, EventArgs e)
        {
            Server.Transfer("accueil.aspx");
        }
    }
}