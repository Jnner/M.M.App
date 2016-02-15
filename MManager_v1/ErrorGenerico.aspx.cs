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
        try
        {

        }
        catch (SqlException ex)
        {
            string StrError = "<p>No se puede dejar el Nick vacio</p>";
            StrError += "<div>Código: " + ex.Number + "</div>";
            StrError += "<div>Descripción: " + ex.Message + "</div>";
            lblMensajes.Text = StrError;
            lblMensajes.Visible = true;
            return;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["IdRol"]) != "Recepcion")
        {
            Response.Redirect("~/RecepcionIncidencias.aspx");
        }
        if (Convert.ToString(Session["IdRol"]) != "RoomService")
        {
            Response.Redirect("~/RoomServiceIncidencias.aspx");
        }
        if (Convert.ToString(Session["IdRol"]) != "Tecnico")
        {
            Response.Redirect("~/TecnicoIncidencias.aspx");
        }
        if (Convert.ToString(Session["IdRol"]) != "SuperUser")
        {
            Response.Redirect("~/DirectorIncidencias.aspx");
        }
    }
}