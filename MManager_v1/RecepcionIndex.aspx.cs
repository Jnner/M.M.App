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
        if (Convert.ToString(Session["rol"]) != "Recepcion")
        {
            Response.Redirect("~/IndexLogin.aspx");
        }
    }
    protected void dtlUsuarios_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        
    }
    protected void grdPersonal_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        grdPersonal.DataBind();
    }
}