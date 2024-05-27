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
    public partial class Recherche : System.Web.UI.Page
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

                string sql = "SELECT idMembres,Genre,Origine,Religion,Type2Corps FROM MembresSite ";
                //creer la commande
                SqlCommand mycmd = new SqlCommand(sql, mycon);
                //creer le datareader
                SqlDataReader myrder = mycmd.ExecuteReader();

                while (myrder.Read())//==true
                {
                    //recupérer les nom et les numero des membres
                    string genre = myrder["Genre"].ToString();
                    //creer une list avec un text et valeur
                    ListItem el = new ListItem();
                    el.Text = genre;
                    //ajouter l element au comboBox
                   cboGenre.Items.Add(el);
                    //recupérer les nom et les numero des membres
                    string origine= myrder["Origine"].ToString();
                    //creer une list avec un text et valeur
                    ListItem elO = new ListItem();
                    elO.Text = origine;
                    //ajouter l element au comboBox
                    cboOrigine.Items.Add(elO);
                    //recupérer les nom et les numero des membres
                    string religion = myrder["Religion"].ToString();
                    //creer une list avec un text et valeur
                    ListItem elR = new ListItem();
                    elR.Text = religion;
                    //ajouter l element au comboBox
                    cboReligion.Items.Add(elR);
                    //recupérer les nom et les numero des membres
                    string type = myrder["Type2Corps"].ToString();
                    //creer une list avec un text et valeur
                    ListItem elC = new ListItem();
                    elC.Text = type;
                    //ajouter l element au comboBox
                    cboTypeCorps.Items.Add(elC);
                }
                //fermer la lecture
                myrder.Close();

                //fermer la conection?
                mycon.Close();

            }
        }

        protected void idRecherche_Click(object sender, EventArgs e)
        {

            //stocker les info
            Int32 refEnv = Convert.ToInt32(Session["userId"]);
           string Genre=(cboGenre.SelectedItem).ToString();
            string Origine = (cboOrigine.SelectedItem).ToString();
            string religion = (cboReligion.SelectedItem).ToString();
            string corps= (cboTypeCorps.SelectedItem).ToString();
            //le titre ext un chzmps obligatoire
           
            
            // creer la connection
                SqlConnection mycon = new SqlConnection();
                mycon.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=friendbookDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                mycon.Open();

                //string sql = "INSERT INTO Messages(Titre,Message,Envoyeur,Receveur,Nouveau) " +
                // "VALUES('" + tit + "','" + mess + "'," + refEnv + "," + refDest + ",'True')";
                //creer la requette sql pour inserer les donnée
                string sql = "SELECT * FROM MembresSite WHERE Genre='"+Genre+"' AND Origine='"+Origine+"' AND Religion='"+religion +"'AND Type2Corps='"+corps+"'";
                //executer la commande
                SqlCommand mycmd = new SqlCommand(sql, mycon);

                SqlDataReader rder = mycmd.ExecuteReader();
            if (rder.Read())
            {
                lblResultat.Text = "Nom :" + rder["Nom"]+"<br/>";
                lblResultat.Text += "Prénom :" + rder["Prenom"] + "<br/>";
                lblResultat.Text += "Taille :" + rder["Taille"] + "<br/>";
                lblResultat.Text += "Poids :" + rder["Poids"] + "<br/>";


            }
            else
            {
                lblResultat.Text = "Nom" ;
            }
                //fermer la connection
                mycon.Close();
            //transferer vers la page suivant
            // Server.Transfer("accueilOmnivox.aspx");
           
           
            // Server.Transfer("accueil.aspx");
        }
    }
}