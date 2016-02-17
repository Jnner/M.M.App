using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class DirectorIncidencias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["IdRol"]) != "SuperUser")
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
        // CONTROLAR ERROR DUPLICADO DE USUARIO
        /*string StrCadenaConexion = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("~/App_Data/MManager02.mdf") + ";Integrated Security=True;Connect Timeout=30";
        string StrComandoSqlUsu = "INSERT USUARIO " + "(Login, Password, Rol, Nombre) VALUES (" + "'" + strUsu + "','" + strPass + "','" + "U" + "','" + strNom + "');";
        try
        {
            SqlConnection conexion = new SqlConnection(StrCadenaConexion);
            SqlCommand comandoUsu = new SqlCommand(StrComandoSqlUsu, conexion);

            comandUser.Connection.Open();
            Int32 inRegistrosAfectados2 = comandoUsu.ExecuteNonQuery();
            comandoUsu.Connection.Close();

            if (inRegistrosAfectados2 == 1)
            {
                lblMensajes.Visible = true;
                lblMensajes.Text = "Usuario registrado correctamente";
            }
            else
            {
                lblMensajes.Visible = true;
                lblMensajes.Text = "Error al insertar el registro";
            }
        }
        catch (SqlException ex)
        {
            string StrError = "<p>Se han producido errores en el acceso a la base de datos.</p>";
            StrError = StrError + "<div>Código: " + ex.Number + "</div>";
            StrError = StrError + "<div>Descripción: " + ex.Message + "</div>";

            lblMensajes.Visible = true;
            lblMensajes.Text = StrError;
            return;
        }*/
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
}