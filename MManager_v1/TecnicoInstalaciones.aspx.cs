using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DirectorInstalaciones : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["rol"]) != "Tecnico")
        {
            Response.Redirect("~/IndexLogin.aspx");
        }
    }
    protected void dtlInstalaciones_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        grdInstalaciones.DataBind();
    }
    protected void dtlInstalaciones_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        grdInstalaciones.DataBind();
    }
    protected void dtlInstalaciones_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        grdInstalaciones.DataBind();
    }
}