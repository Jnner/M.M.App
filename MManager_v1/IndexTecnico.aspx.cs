using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class IndexDirector : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["rol"]) != "SuperUser")
        {
            Response.Redirect("~/IndexLogin.aspx");
        }
        lblDatosUser.Text = Convert.ToString(Session["rol"]) +
        " - " + Convert.ToString(Session["nombre"]);
    }
}