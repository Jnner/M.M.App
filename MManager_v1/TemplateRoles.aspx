
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TemplateRoles.aspx.cs" Inherits="director" %>

<%-- Agregue aquí los controles de contenido --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Menu" Runat="Server">
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav disabled">
	        <li class="sidebar-brand">
                <a href="Index.aspx"><img src="Images/logo.png" /> M.M.App</a>
	        </li>
	        <li>
		        <a href="director.aspx">INCIDENCIAS</a>
	        </li>
            <li>
		        <a href="director.aspx">USUARIOS</a>
	        </li>
            <li>
		        <a href="director.aspx">INSTALACIONES</a>
	        </li>
	        <li>
                <a href="mpAyuda.aspx">Ayuda</a>
	        </li>
	        <li>
                <a href="mpContactos.aspx">Contactos</a>
	        </li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentWeb" Runat="Server">
    <div class="panel panel-danger">
      <div class="panel-heading">
          <h2>Incidencias</h2>
      </div>
      <div class="panel-body">
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [INCIDENCIA] WHERE [IdIncidencia] = @IdIncidencia" InsertCommand="INSERT INTO [INCIDENCIA] ([objeto], [comentario], [fecha], [IdUser], [IdInstal]) VALUES (@objeto, @comentario, @fecha, @IdUser, @IdInstal)" SelectCommand="SELECT * FROM [INCIDENCIA] WHERE ([IdIncidencia] = @IdIncidencia)" UpdateCommand="UPDATE [INCIDENCIA] SET [objeto] = @objeto, [comentario] = @comentario, [fecha] = @fecha, [IdUser] = @IdUser, [IdInstal] = @IdInstal WHERE [IdIncidencia] = @IdIncidencia">
              <DeleteParameters>
                  <asp:Parameter Name="IdIncidencia" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="objeto" Type="String" />
                  <asp:Parameter Name="comentario" Type="String" />
                  <asp:Parameter Name="fecha" Type="String" />
                  <asp:Parameter Name="IdUser" Type="String" />
                  <asp:Parameter Name="IdInstal" Type="Int32" />
              </InsertParameters>
              <SelectParameters>
                  <asp:ControlParameter ControlID="grdIncidencias" Name="IdIncidencia" PropertyName="SelectedValue" Type="Int32" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="objeto" Type="String" />
                  <asp:Parameter Name="comentario" Type="String" />
                  <asp:Parameter Name="fecha" Type="String" />
                  <asp:Parameter Name="IdUser" Type="String" />
                  <asp:Parameter Name="IdInstal" Type="Int32" />
                  <asp:Parameter Name="IdIncidencia" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:DetailsView ID="dtlIncidencias" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="IdIncidencia" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" CssClass="dtlView" HorizontalAlign="Center" OnItemDeleted="dtlIncidencias_ItemDeleted" OnItemInserted="dtlIncidencias_ItemInserted" OnItemUpdated="dtlIncidencias_ItemUpdated">
              <AlternatingRowStyle BackColor="White" />
              <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" CssClass="dtlViewComands" />
              <EditRowStyle BackColor="#7C6F57"/>
              <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" CssClass="dtlViewHeader" />
              <Fields>
                  <asp:BoundField DataField="IdIncidencia" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IdIncidencia" >
                  <ControlStyle CssClass="dtlViewField" />
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="objeto" HeaderText="Objeto" SortExpression="objeto" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="comentario" HeaderText="Comentario" SortExpression="comentario" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="IdUser" HeaderText="IdUser" SortExpression="IdUser" Visible="False" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="IdInstal" HeaderText="IdInstal" SortExpression="IdInstal" Visible="False" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" >
                  <ControlStyle CssClass="dtlViewComands" />
                  <ItemStyle CssClass="dtlViewControlItem" />
                  </asp:CommandField>
              </Fields>
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#E3EAEB" CssClass="dtlViewField" />
          </asp:DetailsView>
          <hr />
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [INCIDENCIA]"></asp:SqlDataSource>
          <asp:GridView ID="grdIncidencias" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdIncidencia" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                  <asp:BoundField DataField="IdIncidencia" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IdIncidencia" />
                  <asp:BoundField DataField="objeto" HeaderText="Objeto" SortExpression="objeto" />
                  <asp:BoundField DataField="comentario" HeaderText="Comentario" SortExpression="comentario" />
                  <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
                  <asp:BoundField DataField="IdUser" HeaderText="IdUser" SortExpression="IdUser" Visible="False" />
                  <asp:BoundField DataField="IdInstal" HeaderText="IdInstal" SortExpression="IdInstal" Visible="False" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerSettings FirstPageText="Primera" LastPageText="Última" Mode="NextPrevious" NextPageText="Siguiente &gt;" PreviousPageText="&lt; Anterior" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
      </div>
    </div>
    <div class="panel panel-success">
      <div class="panel-heading">
          <h2>Usuarios</h2>
      </div>
      <div class="panel-body">
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [USER] WHERE [IdUser] = @IdUser" InsertCommand="INSERT INTO [USER] ([IdUser], [nombre], [pass], [rol]) VALUES (@IdUser, @nombre, @pass, @rol)" SelectCommand="SELECT * FROM [USER] WHERE ([IdUser] = @IdUser)" UpdateCommand="UPDATE [USER] SET [nombre] = @nombre, [pass] = @pass, [rol] = @rol WHERE [IdUser] = @IdUser">
              <DeleteParameters>
                  <asp:Parameter Name="IdUser" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="IdUser" Type="String" />
                  <asp:Parameter Name="nombre" Type="String" />
                  <asp:Parameter Name="pass" Type="String" />
                  <asp:Parameter Name="rol" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:ControlParameter ControlID="grdUsuarios" Name="IdUser" PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="nombre" Type="String" />
                  <asp:Parameter Name="pass" Type="String" />
                  <asp:Parameter Name="rol" Type="String" />
                  <asp:Parameter Name="IdUser" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:DetailsView ID="dtlUsuarios" runat="server" AutoGenerateRows="False" CellPadding="4" CssClass="dtlView" DataKeyNames="IdUser" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center">
              <AlternatingRowStyle BackColor="White" />
              <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" CssClass="dtlViewComands" />
              <EditRowStyle BackColor="#7C6F57" />
              <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" CssClass="dtlViewHeader" />
              <Fields>
                  <asp:BoundField DataField="IdUser" HeaderText="ID" ReadOnly="True" SortExpression="IdUser" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="pass" HeaderText="Contraseña" SortExpression="pass" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="rol" HeaderText="Rol" SortExpression="rol" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" >
                  <ControlStyle CssClass="dtlViewComands" />
                  <ItemStyle CssClass="dtlViewControlItem" />
                  </asp:CommandField>
              </Fields>
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#E3EAEB" CssClass="dtlViewField" />
          </asp:DetailsView>
          <hr />
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [USER]"></asp:SqlDataSource>
          <asp:GridView ID="grdUsuarios" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%" DataKeyNames="IdUser">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                  <asp:BoundField DataField="IdUser" HeaderText="ID" ReadOnly="True" SortExpression="IdUser" />
                  <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                  <asp:BoundField DataField="pass" HeaderText="Contraseña" SortExpression="pass" />
                  <asp:BoundField DataField="rol" HeaderText="Rol" SortExpression="rol" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerSettings Mode="NextPrevious" NextPageText="Siguiente &gt;" PreviousPageText="&lt; Anterior" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
      </div>
    </div>
    <div class="panel panel-success">
      <div class="panel-heading">
          <h2>Instalaciones</h2>
      </div>
      <div class="panel-body">
          <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [INSTALACION] WHERE [IdInstalacion] = @IdInstalacion" InsertCommand="INSERT INTO [INSTALACION] ([tipo], [modelo], [marca], [lugar]) VALUES (@tipo, @modelo, @marca, @lugar)" SelectCommand="SELECT * FROM [INSTALACION] WHERE ([IdInstalacion] = @IdInstalacion)" UpdateCommand="UPDATE [INSTALACION] SET [tipo] = @tipo, [modelo] = @modelo, [marca] = @marca, [lugar] = @lugar WHERE [IdInstalacion] = @IdInstalacion">
              <DeleteParameters>
                  <asp:Parameter Name="IdInstalacion" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="tipo" Type="String" />
                  <asp:Parameter Name="modelo" Type="String" />
                  <asp:Parameter Name="marca" Type="String" />
                  <asp:Parameter Name="lugar" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:ControlParameter ControlID="grdInstalaciones" Name="IdInstalacion" PropertyName="SelectedValue" Type="Int32" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="tipo" Type="String" />
                  <asp:Parameter Name="modelo" Type="String" />
                  <asp:Parameter Name="marca" Type="String" />
                  <asp:Parameter Name="lugar" Type="String" />
                  <asp:Parameter Name="IdInstalacion" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:DetailsView ID="dtlInstalaciones" runat="server" AutoGenerateRows="False" CellPadding="4" CssClass="dtlView" DataKeyNames="IdInstalacion" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center">
              <AlternatingRowStyle BackColor="White" />
              <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" CssClass="dtlViewComands" />
              <EditRowStyle BackColor="#7C6F57" />
              <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" CssClass="dtlViewHeader" />
              <Fields>
                  <asp:BoundField DataField="IdInstalacion" HeaderText="ID" ReadOnly="True" SortExpression="IdInstalacion" InsertVisible="False" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="tipo" HeaderText="Tipo" SortExpression="tipo" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="modelo" HeaderText="Modelo" SortExpression="modelo" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="marca" HeaderText="Marca" SortExpression="marca" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="lugar" HeaderText="Lugar" SortExpression="lugar" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" >
                  <ControlStyle CssClass="dtlViewComands" />
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:CommandField>
              </Fields>
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#E3EAEB" CssClass="dtlViewField" />
          </asp:DetailsView>
          <hr />
          <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [INSTALACION]"></asp:SqlDataSource>
          <asp:GridView ID="grdInstalaciones" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdInstalacion" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                  <asp:BoundField DataField="IdInstalacion" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IdInstalacion" />
                  <asp:BoundField DataField="tipo" HeaderText="Tipo" SortExpression="tipo" />
                  <asp:BoundField DataField="modelo" HeaderText="Modelo" SortExpression="modelo" />
                  <asp:BoundField DataField="marca" HeaderText="Marca" SortExpression="marca" />
                  <asp:BoundField DataField="lugar" HeaderText="Lugar" SortExpression="lugar" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerSettings Mode="NextPrevious" NextPageText="Siguiente &gt;" PreviousPageText="&lt; Anterior" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
      </div>
    </div>
</asp:Content>