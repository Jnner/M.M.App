<%@ Page Title="" Language="C#" MasterPageFile="~/MPtecnico.master" AutoEventWireup="true" CodeFile="TecnicoInstalaciones.aspx.cs" Inherits="DirectorInstalaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentWeb" Runat="Server">
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
          <asp:DetailsView ID="dtlInstalaciones" runat="server" AutoGenerateRows="False" CellPadding="4" CssClass="dtlView" DataKeyNames="IdInstalacion" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" OnItemDeleted="dtlInstalaciones_ItemDeleted" OnItemInserted="dtlInstalaciones_ItemInserted" OnItemUpdated="dtlInstalaciones_ItemUpdated">
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
                  <asp:CommandField ButtonType="Button" ShowInsertButton="True" ShowDeleteButton="True" ShowEditButton="True" >
                  <ControlStyle CssClass="dtlViewComands" />
                  </asp:CommandField>
              </Fields>
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#E3EAEB" CssClass="dtlViewField" />
          </asp:DetailsView>
          <hr />
          <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [INSTALACION]"></asp:SqlDataSource>
          <asp:GridView ID="grdInstalaciones" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdInstalacion" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%" CssClass="grdView" PagerStyle-CssClass="pgr">
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

