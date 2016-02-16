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
        if (Convert.ToString(Session["IdRol"]) != "Tecnico")
        {
            Response.Redirect("~/IndexLogin.aspx");
        }
        if (!IsPostBack)
        {
            DetailsView1.Visible = false;
        }
        else
        {
            DetailsView1.Visible = true;
        }
    }
    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        grdPersonal.DataBind();
    }
}