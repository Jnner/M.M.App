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
        if (Convert.ToString(Session["IdRol"]) != "SuperUser")
        {
            Response.Redirect("~/IndexLogin.aspx");
        }
        if (!IsPostBack) {
            DetailsView1.Visible = false;
            btnInsert.Visible = true;
        }
        else {
            DetailsView1.Visible = true;
            btnInsert.Visible = false;
        }
    }
    // Funcion del boton nuevo
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        DetailsView1.Visible = true;
        DetailsView1.ChangeMode(DetailsViewMode.Insert);
        btnInsert.Visible = false;
    }
    // Control DetailsView para botones pulsados
    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("cancel", StringComparison.CurrentCultureIgnoreCase))
        {
            DetailsView1.Visible = false;
            btnInsert.Visible = true;
            grdInstalaciones.DataBind();
        }
    }
    protected void dtlInstalaciones_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        DetailsView1.Visible = false;
        btnInsert.Visible = true;
        grdInstalaciones.DataBind();
    }
    protected void dtlInstalaciones_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        DetailsView1.Visible = false;
        btnInsert.Visible = true;
        grdInstalaciones.DataBind();
    }
    protected void dtlInstalaciones_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        grdInstalaciones.DataBind();
    }
}