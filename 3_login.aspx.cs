using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class _3_login : System.Web.UI.Page
{
    //Website1.ConnectionClass objConnection3;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["EndSemProjectConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Validate_User"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", txtbox_username.Text);
                    cmd.Parameters.AddWithValue("@Password", txtbox_password.Text);
                    cmd.Connection = con;
                    con.Open();
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
                switch (userId)
                {
                    case -1:
                        verification.Text = "Username and/or password is incorrect.";
                        break;
                   /* case -2:
                        verification.Text = "Account has not been activated.";
                        break;*/
                    default:
                    Session.Add("Name", txtbox_name.Text);
                    Response.Redirect("Homepage.aspx");
                        //Session.Add("Name", txtbox_name.Text);
                        
                    break;
                }
            }

    }

    protected void btn_adminlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminLogin.aspx");
    }
}