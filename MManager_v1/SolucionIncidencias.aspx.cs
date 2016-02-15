using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IndexDirector : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["IdRol"]) != "Recepcion" &&
            Convert.ToString(Session["IdRol"]) != "RoomService" &&
            Convert.ToString(Session["IdRol"]) != "Tecnico" &&
            Convert.ToString(Session["IdRol"]) != "SuperUser")
        {
            Response.Redirect("~/IndexLogin.aspx");
        }
    }
}