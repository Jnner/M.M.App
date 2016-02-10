using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DirectorIncidencias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void dtlIncidencias_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        grdIncidencias.DataBind();
    }
    protected void dtlIncidencias_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        grdIncidencias.DataBind();
    }
    protected void dtlIncidencias_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        grdIncidencias.DataBind();
    }
}