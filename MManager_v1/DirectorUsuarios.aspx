
<%@ Page Title="" Language="C#" MasterPageFile="~/MPdirector.master" AutoEventWireup="true" CodeFile="DirectorUsuarios.aspx.cs" Inherits="DirectorIncidencias" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentWeb" Runat="Server">
    <div class="panel panel-danger">
      <div class="panel-heading">
          <h2>Usuarios</h2>
      </div>
      <div class="panel-body">
          <asp:SqlDataSource ID="dtlView" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [USER] WHERE [IdUser] = @IdUser" InsertCommand="INSERT INTO [USER] ([IdUser], [nombre], [pass], [IdRol]) VALUES (@IdUser, @nombre, @pass, @IdRol)" SelectCommand="SELECT [IdUser], [nombre], [pass], [IdRol] FROM [USER] WHERE ([IdUser] = @IdUser)" UpdateCommand="UPDATE [USER] SET [nombre] = @nombre, [pass] = @pass, [IdRol] = @IdRol WHERE [IdUser] = @IdUser">
              <DeleteParameters>
                  <asp:Parameter Name="IdUser" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="IdUser" Type="String" />
                  <asp:Parameter Name="nombre" Type="String" />
                  <asp:Parameter Name="pass" Type="String" />
                  <asp:Parameter Name="IdRol" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:ControlParameter ControlID="grdIncidencias" Name="IdUser" PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="nombre" Type="String" />
                  <asp:Parameter Name="pass" Type="String" />
                  <asp:Parameter Name="IdRol" Type="String" />
                  <asp:Parameter Name="IdUser" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlRol" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ROL]"></asp:SqlDataSource>
          <asp:Label ID="lblMensajes" runat="server" Text="Mensaje de error"></asp:Label>
          <br />
          <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Nuevo Usuario" />
          <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="IdUser" DataSourceID="dtlView" ForeColor="#333333" GridLines="None" Height="50px" OnItemDeleted="dtlIncidencias_ItemDeleted" OnItemInserted="dtlIncidencias_ItemInserted" OnItemUpdated="dtlIncidencias_ItemUpdated" OnItemCommand="DetailsView1_ItemCommand">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
              <EditRowStyle BackColor="#999999" />
              <FieldHeaderStyle BackColor="#E9ECF1" CssClass="dtlViewHeader" Font-Bold="True" />
              <Fields>
                  <asp:TemplateField HeaderText="Nick" SortExpression="IdUser">
                      <EditItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("IdUser") %>'></asp:Label>
                      </EditItemTemplate>
                      <InsertItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IdUser") %>'></asp:TextBox>
                      </InsertItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("IdUser") %>'></asp:Label>
                      </ItemTemplate>
                      <ItemStyle CssClass="dtlViewItem" />
                  </asp:TemplateField>
                  <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre">
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="pass" HeaderText="Contraseña" SortExpression="pass" >
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:TemplateField HeaderText="Rol" SortExpression="IdRol">
                      <EditItemTemplate>
                          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlRol" DataTextField="IdRol" DataValueField="IdRol" SelectedValue='<%# Bind("IdRol") %>'>
                          </asp:DropDownList>
                      </EditItemTemplate>
                      <InsertItemTemplate>
                          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlRol" DataTextField="IdRol" DataValueField="IdRol" SelectedValue='<%# Bind("IdRol") %>' Width="65%">
                          </asp:DropDownList>
                      </InsertItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("IdRol") %>'></asp:Label>
                      </ItemTemplate>
                      <ItemStyle CssClass="dtlViewItem" />
                  </asp:TemplateField>
                  <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True">
                  <ControlStyle CssClass="dtlViewComands" />
                  <ItemStyle CssClass="dtlViewComands" />
                  </asp:CommandField>
              </Fields>
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" CssClass="d" ForeColor="#333333" />
          </asp:DetailsView>
          <hr />
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdUser], [nombre], [pass], [IdRol] FROM [USER]"></asp:SqlDataSource>
          <asp:GridView ID="grdIncidencias" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdUser" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%"  CssClass="grdView" PagerStyle-CssClass="pgr">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
                  <asp:BoundField DataField="IdUser" HeaderText="Nick" ReadOnly="True" SortExpression="IdUser" />
                  <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                  <asp:BoundField DataField="pass" HeaderText="Contraseña" SortExpression="pass" Visible="False" />
                  <asp:BoundField DataField="IdRol" HeaderText="Rol" SortExpression="IdRol" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" CssClass="grdHeaderStyle" />
              <PagerSettings FirstPageText="Primera" LastPageText="Última" Mode="NextPrevious" NextPageText="Siguiente &gt;" PreviousPageText="&lt; Anterior" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
      </div>
    </div>
</asp:Content>

