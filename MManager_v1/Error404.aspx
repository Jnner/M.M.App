<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Error404.aspx.cs" Inherits="IndexDirector" %>

<%@ OutputCache Duration="1" VaryByParam="None" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentWeb" runat="Server">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h2>Un pequeño percance...</h2>
        </div>
        <div class="panel-body">
            Consulta con el creador de esta aplicación (Info@jazprojects.com) para solucionarlo en la próxima versión en la que estamos trabajando.<br />
            <br />
            <div class="center">
                <asp:Label ID="lblMensajes" runat="server" Text="MensajesError" ForeColor="#006600" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="&lt; volver a mi cuenta" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
</asp:Content>
