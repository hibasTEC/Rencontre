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
    public partial class effacerMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int32 refMsg = Convert.ToInt32(Request.QueryString["refM"].ToString());

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=friendbookDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            mycon.Open();

            string sql = "DELETE FROM Messages WHERE Messages.RefMessage =" + refMsg;
            SqlCommand mycmd = new SqlCommand(sql, mycon);
            mycmd.ExecuteNonQuery();
            mycon.Close();
            Server.Transfer("accueil.aspx");
        }
    }
}