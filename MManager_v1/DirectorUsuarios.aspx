<%@ Page Title="" Language="C#" MasterPageFile="~/MPdirector.master" AutoEventWireup="true" CodeFile="DirectorUsuarios.aspx.cs" Inherits="DirectorUsuarios" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentWeb" Runat="Server">
    <div class="panel panel-danger">
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
          <asp:DetailsView ID="dtlUsuarios" runat="server" AutoGenerateRows="False" CellPadding="4" CssClass="dtlView" DataKeyNames="IdUser" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" OnItemCreated="dtlUsuarios_ItemCreated" OnItemDeleted="dtlUsuarios_ItemDeleted" OnItemInserted="dtlUsuarios_ItemInserted" OnItemUpdated="dtlUsuarios_ItemUpdated">
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
                  <asp:BoundField DataField="pass" HeaderText="Contraseña" SortExpression="pass">
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="rol" HeaderText="Rol" SortExpression="rol">
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True">
                  <ControlStyle CssClass="dtlViewComands" />
                  </asp:CommandField>
              </Fields>
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#E3EAEB" CssClass="dtlViewField" />
          </asp:DetailsView>
          <hr />
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [USER]"></asp:SqlDataSource>
          <asp:GridView ID="grdUsuarios" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%" DataKeyNames="IdUser" CssClass="grdView" PagerStyle-CssClass="pgr">
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
</asp:Content>

