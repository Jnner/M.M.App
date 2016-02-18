<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<%@ OutputCache Duration="1" VaryByParam="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                    <h2>
                        <img src="Images/logo.png" />
                        Maintenance Manager App</h2>
                </div>
                <%--navbar menu principal--%>
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <%--<div class="navbar-header">
                <a class="navbar-brand" href="#"></a>
            </div>--%>
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Acerca de MMApp</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="IndexLogin.aspx"><span class="glyphicon glyphicon-log-in"></span>Acceder</a></li>
                        </ul>
                    </div>
                </nav>
                <%--/#navbar menu principal--%>
                <div class="panel-body">


                    <div class="container">
                        <div class="jumbotron">
                            <h1>Qué es M.M.App</h1>
                            <p>Esta aplicación está diseñada para gestionar los partes de incidencias de las instalaciones de un Hotel.</p>
                            <p>Esta aplicación esta pensada para acceder por Wi-fi desde el movil o por ordenador. Y ayudará al personal del Hotel a conseguir los objetivos principales a la hora de gestionar incidencias en un Hotel.</p>
                        </div>
                            <div class="col-sm-3">
                                <div class="circle circle2">
                                    <h2>UNO<p>Rapidez</p>
                                    </h2>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="circle circle3">
                                    <h2>DOS<p>Coordinación</p>
                                    </h2>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="circle">
                                    <h2>TRES<p>Organización</p>
                                    </h2>
                                </div>
                            </div>
                        </div>

                    <div class="container">
                        <div class="jumbotron layout-table">
                                <div class="col-sm-6 col-md-3">
                                    <div class="panel panel-default panel-card">
                                        <div class="panel-heading">
                                            <img src="Images/cards-image.jpg" />
                                            <%--<button class="btn btn-primary btn-sm" role="button">Follow</button>--%>
                                        </div>
                                        <div class="panel-figure">
                                            <img class="img-responsive img-circle" src="Images/director.jpg" />
                                        </div>
                                        <div class="panel-body text-center margin-bottom">
                                            <h4 class="panel-header">DIRECTOR</h4>
                                        </div>
                                        <div class="panel-thumbnails">
                                            <h4>Permisos</h4>
                                            <div class="row">
                                                <div class="col-xs-4">
                                                    <b>Inci.</b>
                                                </div>
                                                <div class="col-xs-4">
                                                    <b>Us.</b>
                                                </div>
                                                <div class="col-xs-4">
                                                    <b>Inst.</b>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-4">
                                                    C,E,B
                                                </div>
                                                <div class="col-xs-4">
                                                    C,E,B
                                                </div>
                                                <div class="col-xs-4">
                                                    -
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <div class="panel panel-default panel-card">
                                        <div class="panel-heading">
                                            <img src="Images/cards-image.jpg" />
                                            <%--<button class="btn btn-primary btn-sm" role="button">Follow</button>--%>
                                        </div>
                                        <div class="panel-figure">
                                            <img class="img-responsive img-circle" src="Images/tecnico.jpg" />
                                        </div>
                                        <div class="panel-body text-center margin-bottom">
                                            <h4 class="panel-header">TÉCNICO</h4>
                                        </div>
                                        <div class="panel-thumbnails">
                                            <h4>Permisos</h4>
                                            <div class="row">
                                                <div class="col-xs-4">
                                                    <b>Inci.</b>
                                                </div>
                                                <div class="col-xs-4">
                                                    <b>Us.</b>
                                                </div>
                                                <div class="col-xs-4">
                                                    <b>Inst.</b>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-4">
                                                    C,E
                                                </div>
                                                <div class="col-xs-4">
                                                    -
                                                </div>
                                                <div class="col-xs-4">
                                                    C,E,B
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <div class="panel panel-default panel-card">
                                        <div class="panel-heading">
                                            <img src="Images/cards-image.jpg" />
                                            <%--<button class="btn btn-primary btn-sm" role="button">Follow</button>--%>
                                        </div>
                                        <div class="panel-figure">
                                            <img class="img-responsive img-circle" src="Images/recepcion.jpg" />
                                        </div>
                                        <div class="panel-body text-center margin-bottom">
                                            <h4 class="panel-header">RECEPCIÓN</h4>
                                        </div>
                                        <div class="panel-thumbnails">
                                            <h4>Permisos</h4>
                                            <div class="row">
                                                <div class="col-xs-4">
                                                    <b>Inci.</b>
                                                </div>
                                                <div class="col-xs-4">
                                                    <b>Us.</b>
                                                </div>
                                                <div class="col-xs-4">
                                                    <b>Inst.</b>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-4">
                                                    C
                                                </div>
                                                <div class="col-xs-4">
                                                    -
                                                </div>
                                                <div class="col-xs-4">
                                                    -
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <div class="panel panel-default panel-card">
                                        <div class="panel-heading">
                                            <img src="Images/cards-image.jpg" />
                                            <%--<button class="btn btn-primary btn-sm" role="button">Follow</button>--%>
                                        </div>
                                        <div class="panel-figure">
                                            <img class="img-responsive img-circle" src="Images/roomservice.jpg" />
                                        </div>
                                        <div class="panel-body text-center margin-bottom">
                                            <h4 class="panel-header">SERVICIO HABITACIONES</h4>
                                        </div>
                                        <div class="panel-thumbnails">
                                            <h4>Permisos</h4>
                                            <div class="row">
                                                <div class="col-xs-4">
                                                    <b>Inci.</b>
                                                </div>
                                                <div class="col-xs-4">
                                                    <b>Us.</b>
                                                </div>
                                                <div class="col-xs-4">
                                                    <b>Inst.</b>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-4">
                                                    C,E
                                                </div>
                                                <div class="col-xs-4">
                                                    -
                                                </div>
                                                <div class="col-xs-4">
                                                    -
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>


                </div>
            </div>
    </form>
    <footer>
        <p><strong>Maintenance Manager App</strong></p>
        <p>2016 · <strong>JazProjects</strong></p>
    </footer>
</body>
</html>
