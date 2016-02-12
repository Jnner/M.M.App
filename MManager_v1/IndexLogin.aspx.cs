using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string StrCadenaConexion = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=" +
        Server.MapPath("~/App_Data/MManager02.mdf") + ";Integrated Security=True;Connect Timeout=30";
        string StrComandoSql = "SELECT IdUser, nombre, rol FROM [USER] ";
        StrComandoSql = StrComandoSql + " WHERE IdUser='" + Login1.UserName + "' ";
        StrComandoSql = StrComandoSql + "AND pass='" + Login1.Password + "';";
        try
        {
            SqlConnection conexion = new SqlConnection(StrCadenaConexion);
            SqlCommand comando = new SqlCommand(StrComandoSql, conexion);
            conexion.Open();
            SqlDataReader reader = comando.ExecuteReader();
            if (reader.Read())
            {
                Session.Add("IdUser", reader.GetString(0));
                Session.Add("nombre", reader.GetString(1));
                Session.Add("rol", reader.GetString(2));
                e.Authenticated = true;
                reader.Close();
                comando.Dispose();
                conexion.Close();
                if (Convert.ToString(Session["rol"]) == "Cliente")
                    Response.Redirect("~/IndexCliente.aspx");
                if (Convert.ToString(Session["rol"]) == "Recepcion")
                    Response.Redirect("~/IndexRecepcion.aspx");
                if (Convert.ToString(Session["rol"]) == "Tecnico")
                    Response.Redirect("~/IndexTecnico.aspx");
                if (Convert.ToString(Session["rol"]) == "SuperUser")
                    Response.Redirect("~/IndexDirector.aspx");
            }
            else
            {
                e.Authenticated = false;
                reader.Close();
                comando.Dispose();
                conexion.Close();
            }
        }
        catch (SqlException ex)
        {
            string StrError = "<p>Se han producido errores en el acceso a la base de datos.</p>";
            StrError = StrError + "<div>Código: " + ex.Number + "</div>";
            StrError = StrError + "<div>Descripción: " + ex.Message + "</div>";
            lblMensajes.Text = StrError;
            lblMensajes.Visible = true;
            return;
        }
    }
}