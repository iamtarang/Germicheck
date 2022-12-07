using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Requirements : System.Web.UI.Page
{
    Website1.ConnectionClass objConnection4;
    protected void Page_Load(object sender, EventArgs e)
    {
        objConnection4 = new Website1.ConnectionClass();


        if (!IsPostBack)
        {
            
            SqlCommand select1 = new SqlCommand("SELECT * FROM tblCity", objConnection4.con());
            
            SqlDataReader rdr1 = select1.ExecuteReader();
            ddl_city.DataSource = rdr1;
            ddl_city.DataTextField = "CityName";
            ddl_city.DataValueField = "CityId";
            ddl_city.DataBind();
        }

    }

    protected void ddl_city_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand select2 = new SqlCommand("select * from tblArea WHERE CityId=@CityId", objConnection4.con());
        select2.Parameters.AddWithValue("CityId", ddl_city.SelectedValue);

        SqlDataReader rdrSelect = select2.ExecuteReader();

        ddl_locality.DataSource = rdrSelect;
        ddl_locality.DataTextField = "AreaName";
        ddl_locality.DataValueField = "AreaId";
        ddl_locality.DataBind();
    }


    protected void btn_submit_Click(object sender, EventArgs e)
    {
        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["EndSemProjectConnectionString"].ConnectionString);
        SqlCommand inst = new SqlCommand("Insert into tblAppointment (SelectedCity, SelectedArea, PremiseType, NoOfRooms, SqrFt, DateTime, Scent, SpecReq) VALUES (@SelectedCity, @SelectedArea, @PremiseType, @NoOfRooms, @SqrFt, @DateTime, @Scent, @SpecReq)", con2);

        inst.Parameters.AddWithValue("SelectedCity", ddl_city.SelectedItem.ToString());
        inst.Parameters.AddWithValue("SelectedArea", ddl_locality.SelectedItem.ToString());
        inst.Parameters.AddWithValue("PremiseType", ddl_premises.SelectedItem.ToString());
        inst.Parameters.AddWithValue("NoOfRooms", txtNoRooms.Text);
        inst.Parameters.AddWithValue("SqrFt", txtbox_areasqft.Text);
        inst.Parameters.AddWithValue("DateTime", Calendar1.SelectedDate);
        inst.Parameters.AddWithValue("UserName", Session["Name"].ToString());
        if (rdbtn_aqua.Checked) 
        { 
            inst.Parameters.AddWithValue("Scent", "Aqua"); 
        }
        else if (rdbtn_jasmine.Checked) 
        {
            inst.Parameters.AddWithValue("Scent", "Jasmine"); 
        }
        else if (rdbtn_lavender.Checked) 
        {
            inst.Parameters.AddWithValue("Scent", "Lavender"); 
        }
        else 
        {
            inst.Parameters.AddWithValue("Scent", "Lemongrass"); 
        }

        inst.Parameters.AddWithValue("SpecReq", txtSpec.Text);
        con2.Open();
        inst.ExecuteNonQuery();

        Response.Redirect("PaymentGateway.aspx");
    }

}