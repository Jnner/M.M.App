<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>M.M.App</title>
    <!-- Bootstrap Core CSS -->
    <link href="Style/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="Style/css/simple-sidebar.css" rel="stylesheet" />
    <link href="Style/css/my-settings.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="panel panel-danger">
      <div class="panel-heading">
          <h2><img src="Images/logo.png" /> Maintenance Manager App</h2>
      </div>
        <%--navbar menu principal--%>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
            <%--<div class="navbar-header">
                <a class="navbar-brand" href="#"></a>
            </div>--%>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Inicio</a></li>
                <li><a href="About.aspx">Acerca de MMApp</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="IndexLogin.aspx"><span class="glyphicon glyphicon-log-in"></span> Acceder</a></li>
            </ul>
            </div>
        </nav>
        <%--/#navbar menu principal--%>
        <div class="panel-body">
            <p>Bienvenido a una de las mejores aplicaciones para la gestion y mantenimento de edificios de España.</p>
            <p>Esta aplicación está diseñada para gestionar los partes de incidencias y revisiones periodicas de las instalaciones de un edificio de servicios.</p>
            <p>En el menú de la izquierda encontrarás las diferentes secciones con las que cuenta esta aplicación.</p>
            <p>Si quisieras una vista más amplia del panel de administración en el que estés, pulsa el botón contiguo a la derecha.</p>
      </div>
    </div>
    </div>
    </form>
</body>
</html>
