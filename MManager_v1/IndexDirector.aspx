<%@ Page Title="" Language="C#" MasterPageFile="~/MPdirector.master" AutoEventWireup="true" CodeFile="IndexDirector.aspx.cs" Inherits="IndexDirector" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<asp:Content ID="Content3" ContentPlaceHolderID="DatosUser" Runat="Server">
    <asp:Label ID="lblDatosUser" runat="server" Text="Datos User"></asp:Label>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentWeb" Runat="Server">
        <div class="panel panel-danger">
      <div class="panel-heading">
          <h2><img src="Images/logo.png" /> El Señor Director</h2>
      </div>
        <div class="panel-body">
            <p>BIENVENIDO A SU PANEL DE CONTROL QUERIDISIMO SEÑOR DIRECTOR</p>
      </div>
    </div>
</asp:Content>