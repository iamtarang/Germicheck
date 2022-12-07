using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class AdminView : System.Web.UI.Page
{
    Website1.ConnectionClass objConnection;
    protected void Page_Load(object sender, EventArgs e)
    {
        objConnection = new Website1.ConnectionClass();
        GridView1.DataSource = objConnection.bindGridView();
        GridView1.DataBind();

        objConnection = new Website1.ConnectionClass();
        GridView2.DataSource = objConnection.bindGridView2();
        GridView2.DataBind();
    }

    protected void txtbox_srchname_TextChanged(object sender, EventArgs e)
    {
        //objConnection = new Website1.ConnectionClass();
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["EndSemProjectConnectionString"].ConnectionString);
        SqlCommand cmdSelect = new SqlCommand("SELECT * FROM tblUser WHERE Name LIKE '%" + txtbox_srchname.Text + "%'",sqlConnection);
        cmdSelect.Parameters.AddWithValue("Name", txtbox_srchname.Text);
        sqlConnection.Open();

        GridView1.DataSource = cmdSelect.ExecuteReader();
        GridView1.DataBind();
    }
}