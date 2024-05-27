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
    public partial class inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RemplirComboGenre();
            RemplirComboOrigine();
            RemplirComboReligion();
            RemplirComboCorps();
        }
        private void RemplirComboGenre()
        {

            cboGenre.Items.Add(new ListItem("je suis"));
            cboGenre.Items.Add(new ListItem("Femme"));
            cboGenre.Items.Add(new ListItem("Homme"));
            
        }
        private void RemplirComboOrigine()
        {

            cboOrigine.Items.Add(new ListItem("je suis"));
            cboOrigine.Items.Add(new ListItem("Canadien(ne)"));
            cboOrigine.Items.Add(new ListItem("Français(e)"));
            cboOrigine.Items.Add(new ListItem("marocain(e)"));
            cboOrigine.Items.Add(new ListItem("algérien(ne)"));
            cboOrigine.Items.Add(new ListItem("tunisien(ne)"));
            cboOrigine.Items.Add(new ListItem("chinois(e)"));
            
        }
        private void RemplirComboReligion()
        {

            cboReligion.Items.Add(new ListItem("je suis"));
            cboReligion.Items.Add(new ListItem("musulman(e)"));
            cboReligion.Items.Add(new ListItem("crétien(ne)"));
            cboReligion.Items.Add(new ListItem("aucun"));
            
        }
        private void RemplirComboCorps()
        {

            cboCorps.Items.Add(new ListItem("je suis"));
            cboCorps.Items.Add(new ListItem("mince"));
            cboCorps.Items.Add(new ListItem("grand "));
            cboCorps.Items.Add(new ListItem("mediume"));
            
        }
        protected void cboGenre_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnInscription_Click(object sender, EventArgs e)
        {
            string sql;
            string nom = txtNom.Text.Trim();
            string prenom = txtPrenom.Text.Trim();
            string email = txtEmail.Text.Trim();
            string genre = cboGenre.SelectedItem.Text;
            string origine = cboOrigine.SelectedItem.Text;
            string corps = cboCorps.SelectedItem.Text;
            string religion = cboReligion.SelectedItem.Text;
            string cp = txtCodePostal.Text.Trim();
            string pseudo = txtPseudo.Text.Trim();
            string mdp = txtMot2Pass.Text.Trim();
            String taille = Convert.ToString(txtTaille.Text);
            String poids = Convert.ToString(txtPoids.Text);
            Int32 jour = Convert.ToInt32(txtJour.Text);
            Int32 mois = Convert.ToInt32(txtMois.Text);
            Int32 annee = Convert.ToInt32(txtAnnee.Text);
            Int32 age = DateTime.Now.Year - annee;
            

            if (age >= 18)
            {

                lbmMessageInscription.Text = "vous ne pouvais pas utiliser ce site , vous devais avoir 18ans ou plus";

                SqlConnection mycon = new SqlConnection();
                mycon.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=friendbookDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                mycon.Open();

                sql = "SELECT idMembres FROM MembresSite ";
                sql += "WHERE Pseudo ='" + pseudo + "'";
                SqlCommand mycmd1 = new SqlCommand(sql, mycon);
                SqlDataReader myreader1 = mycmd1.ExecuteReader();
                //deja mombre
                if (myreader1.Read() == true)
                {
                    myreader1.Close();
                    mycon.Close();

                    lbmMessageInscription.Text = "Ce pseudo est déja prie choisissez un autre !";


                }
                else
                {
                    myreader1.Close();


                    sql = "INSERT INTO MembresSite(Nom,Prenom,Genre,Jour,Mois,Annee,AdressEmail,Mot2passe,Pseudo,CodePostal,Taille,Poids,Origine,Religion,Type2Corps) ";
                    sql += "VALUES('" + nom + "','" + prenom + "','" + genre + "','" + jour + "','" + mois + "','" + annee + "','" + email + "','" + mdp + "','" + pseudo + "','" + cp + "','" + taille + "','" + poids + "','" + origine + "','" + religion + "','" + corps + "')";

                    SqlCommand mycmd = new SqlCommand(sql, mycon);

                    //SqlDataReader myrder = mycmd.ExecuteReader();

                    mycmd.ExecuteNonQuery();

                    mycon.Close();

                    
                    Server.Transfer("accueil.aspx");


                }
            }
            else
            {
                lbmMessageInscription.Text = "vous ne pouvais pas utiliser ce site , vous devais avoir 18ans ou plus";

            }
        }



        //}
    }
}
