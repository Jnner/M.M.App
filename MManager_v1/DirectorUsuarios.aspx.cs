using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DirectorUsuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["rol"]) != "SuperUser")
        {
            Response.Redirect("~/IndexLogin.aspx");
        }
    }
    protected void dtlUsuarios_ItemCreated(object sender, EventArgs e)
    {
        
    }
    protected void dtlUsuarios_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        grdUsuarios.DataBind();
    }
    protected void dtlUsuarios_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        grdUsuarios.DataBind();
    }
    protected void dtlUsuarios_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        grdUsuarios.DataBind();
    }
}