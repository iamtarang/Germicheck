using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


public partial class _Default : System.Web.UI.Page
{
    Website1.ConnectionClass objConnection1;

    //protected void UserCustomValidate(object source, ServerValidateEventArgs args)
    //{
    //    string str = args.Value;
    //    args.IsValid = false;
    //    //checking for input length greater than 2 and less than 10 characters  
    //    if (str.Length < 2 || str.Length > 10)
    //    {
    //        return;
    //    }
    //    //checking for a atleast a single lower letter  
    //    bool lower = false;
    //    foreach (char ch in str)
    //    {
    //        if (ch >= 'a' && ch <= 'z')
    //        {
    //            lower = true;
    //            break;
    //        }
    //    }
    //    if (!lower)
    //    {
    //        return;
    //    }
    //    bool digit = false;
    //    foreach (char ch in str)
    //    {
    //        if (ch >= '0' && ch <= '9')
    //        {
    //            digit = true;
    //            break;
    //        }
    //    }
    //    if (!digit)
    //    {
    //        return;
    //    }
    //    args.IsValid = true;

    //    /*Doubt: Validation for letter,no, '.' and '_'. If done then validate unique username from server.*/
    //}
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    int userId = 0;

    protected void btn_register_Click(object sender, EventArgs e)
    {

        objConnection1 = new Website1.ConnectionClass();

        SqlCommand cmdInsert = new SqlCommand("Insert into tblUser(Name, Username, Email, Phone, Password) VALUES(@Name, @Username, @Email, @Phone, @Password)", objConnection1.con());

        cmdInsert.Parameters.AddWithValue("Name", txtbox_fullname.Text);
        cmdInsert.Parameters.AddWithValue("Username", txtbox_username.Text);
        cmdInsert.Parameters.AddWithValue("Email", txtbox_email.Text);
        cmdInsert.Parameters.AddWithValue("Phone", txtbox_phoneno.Text);
        cmdInsert.Parameters.AddWithValue("Password", txtbox_newpwd.Text);

        cmdInsert.ExecuteNonQuery();


        Session.Add("Name", txtbox_fullname.Text);
        Response.Redirect("Homepage.aspx");
        

    }

}