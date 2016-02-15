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
        if (Convert.ToString(Session["IdRol"]) != "Recepcion")
        {
            Response.Redirect("~/IndexLogin.aspx");
        }
        if (!IsPostBack)
        {
            DetailsView1.Visible = false;
            btnInsert.Visible = true;
        }
        else
        {
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
            grdIncidencias.DataBind();
        }
    }
    protected void dtlIncidencias_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        DetailsView1.Visible = false;
        btnInsert.Visible = true;
        grdIncidencias.DataBind();
    }
    protected void dtlIncidencias_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        DetailsView1.Visible = false;
        btnInsert.Visible = true;
        grdIncidencias.DataBind();
    }
    protected void dtlIncidencias_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        grdIncidencias.DataBind();
    }
    // FUNCION AUTORELLENADO DEL CAMPO IdUser EN EL DETAILSVIEW DEPENDIENDO DEL USER LOGEADO
    protected void DetailsView1_DataBound(object sender, EventArgs e)
    {
        if (DetailsView1.CurrentMode == DetailsViewMode.Insert || DetailsView1.CurrentMode == DetailsViewMode.Edit)
        {
            DateTime hoy = DateTime.Today;
            TextBox TextBox1 = DetailsView1.FindControl("TextBox1") as TextBox;
            TextBox TextBox2 = DetailsView1.FindControl("TextBox2") as TextBox;

            TextBox1.Text = Session["IdUser"].ToString();

            TextBox2.Text = hoy.ToShortDateString();
        }
    }
    // NO FUNCIONA: para mostrar un textbox para intro numero si se elige el lugar 'habitacion'
    //protected void DropDownList2_Unload(object sender, EventArgs e)
    //{
    //    DropDownList DropDownList2 = DetailsView1.FindControl("DropDownList2") as DropDownList;
    //    TextBox TextBox3 = DetailsView1.FindControl("TextBox3") as TextBox;

    //    if (DropDownList2.SelectedValue == "Habitación")
    //    {
    //        TextBox3.Visible = true;
    //        TextBox3.Text = "Nº";
    //    }
    //    else
    //    {
    //        TextBox3.Visible = false;
    //    }
    //}
}