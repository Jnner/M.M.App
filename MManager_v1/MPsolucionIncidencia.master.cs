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
        if (Convert.ToString(Session["IdRol"]) == "Recepcion")
        {
            Response.Redirect("~/RecepcionIncidencias.aspx");
        }
        if (Convert.ToString(Session["IdRol"]) == "RoomService")
        {
            Response.Redirect("~/RoomServiceIncidencias.aspx");
        }
        if (Convert.ToString(Session["IdRol"]) == "Tecnico")
        {
            Response.Redirect("~/TecnicoIncidencias.aspx");
        }
        if (Convert.ToString(Session["IdRol"]) == "SuperUser")
        {
            Response.Redirect("~/DirectorIncidencias.aspx");
        }
    }
}
