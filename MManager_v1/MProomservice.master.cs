using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MPdirector : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUserMenu.Text = Convert.ToString(Session["IdUser"]);
        lblUserPage.Text = Convert.ToString(Session["IdRol"]);
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/Index.aspx", false);
    }
}
