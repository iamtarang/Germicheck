using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_redir_reg_Click(object sender, EventArgs e)
    {
        Response.Redirect("2_registration.aspx");
    }

    protected void btn_redir_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("3_login.aspx");
    }
}