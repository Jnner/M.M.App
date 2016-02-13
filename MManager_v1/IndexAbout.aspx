<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IndexAbout.aspx.cs" Inherits="About" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
                <li><a href="Index.aspx">Inicio</a></li>
                <li class="active"><a href="#">Acerca de MMApp</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="IndexLogin.aspx"><span class="glyphicon glyphicon-log-in"></span> Acceder</a></li>
            </ul>
            </div>
        </nav>
        <%--/#navbar menu principal--%>
        <div class="panel-body">
            <p>Informacion about</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </div>
    </div>
    </div>
    </form>
</body>
</html>
