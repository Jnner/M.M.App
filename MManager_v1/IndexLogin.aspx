<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IndexLogin.aspx.cs" Inherits="Index" %>

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
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
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
                <li><a href="About.aspx">Acerca de MMApp</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Acceder</a></li>
            </ul>
            </div>
        </nav>
        <%--/#navbar menu principal--%>
            <asp:Login ID="Login1" runat="server" align="center" OnAuthenticate="Login1_Authenticate">
                <LayoutTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;" id="tableLogin">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr>
                                        <td align="center" colspan="2" class="auto-style1">Inicia Sesión</td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Usuario</asp:Label>
                                        </td>
                                        <td>
                                            <br />
                                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Entrar" ValidationGroup="Login1" CssClass="btn-login" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
        <br />
        <br />
    </div>
        <asp:Label ID="lblMensajes" runat="server" Text="MensajesError" ForeColor="#006600" Visible="False"></asp:Label>
    </div>
    </form>
</body>
</html>
