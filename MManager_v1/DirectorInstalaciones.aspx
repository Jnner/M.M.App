
<%@ Page Title="" Language="C#" MasterPageFile="~/MPdirector.master" AutoEventWireup="true" CodeFile="DirectorInstalaciones.aspx.cs" Inherits="DirectorInstalaciones" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentWeb" Runat="Server">
    <div class="panel panel-danger">
      <div class="panel-heading">
          <h2>Instalaciones</h2>
      </div>
      <div class="panel-body">
          <asp:SqlDataSource ID="dtlView" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [INSTALACION] WHERE [IdInstalacion] = @IdInstalacion" InsertCommand="INSERT INTO [INSTALACION] ([IdTipo], [IdLugar], [IdUser], [modelo], [marca]) VALUES (@IdTipo, @IdLugar, @IdUser, @modelo, @marca)" SelectCommand="SELECT * FROM [INSTALACION] WHERE ([IdInstalacion] = @IdInstalacion)" UpdateCommand="UPDATE [INSTALACION] SET [IdTipo] = @IdTipo, [IdLugar] = @IdLugar, [IdUser] = @IdUser, [modelo] = @modelo, [marca] = @marca WHERE [IdInstalacion] = @IdInstalacion">
              <DeleteParameters>
                  <asp:Parameter Name="IdInstalacion" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="IdTipo" Type="String" />
                  <asp:Parameter Name="IdLugar" Type="String" />
                  <asp:Parameter Name="IdUser" Type="String" />
                  <asp:Parameter Name="modelo" Type="String" />
                  <asp:Parameter Name="marca" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:ControlParameter ControlID="grdInstalaciones" Name="IdInstalacion" PropertyName="SelectedValue" Type="Int32" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="IdTipo" Type="String" />
                  <asp:Parameter Name="IdLugar" Type="String" />
                  <asp:Parameter Name="IdUser" Type="String" />
                  <asp:Parameter Name="modelo" Type="String" />
                  <asp:Parameter Name="marca" Type="String" />
                  <asp:Parameter Name="IdInstalacion" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="dtlTipo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO_INSTL]"></asp:SqlDataSource>
          <asp:SqlDataSource ID="dtlLugar" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [LUGAR]"></asp:SqlDataSource>
          <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Nueva Instalación" />
          <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="IdInstalacion" DataSourceID="dtlView" ForeColor="#333333" GridLines="None" Height="50px" OnItemDeleted="dtlInstalaciones_ItemDeleted" OnItemInserted="dtlInstalaciones_ItemInserted" OnItemUpdated="dtlInstalaciones_ItemUpdated" OnItemCommand="DetailsView1_ItemCommand">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
              <EditRowStyle BackColor="#999999" />
              <FieldHeaderStyle BackColor="#E9ECF1" CssClass="dtlViewHeader" Font-Bold="True" />
              <Fields>
                  <asp:BoundField DataField="IdInstalacion" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IdInstalacion">
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:TemplateField HeaderText="Tipo" SortExpression="IdTipo">
                      <EditItemTemplate>
                          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dtlTipo" DataTextField="IdTipo" DataValueField="IdTipo" SelectedValue='<%# Bind("IdTipo") %>'>
                          </asp:DropDownList>
                      </EditItemTemplate>
                      <InsertItemTemplate>
                          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dtlTipo" DataTextField="IdTipo" DataValueField="IdTipo" SelectedValue='<%# Bind("IdTipo") %>'>
                          </asp:DropDownList>
                      </InsertItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("IdTipo") %>'></asp:Label>
                      </ItemTemplate>
                      <ItemStyle CssClass="dtlViewItem" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Lugar" SortExpression="IdLugar">
                      <EditItemTemplate>
                          <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="dtlLugar" DataTextField="IdLugar" DataValueField="IdLugar" SelectedValue='<%# Bind("IdLugar") %>'>
                          </asp:DropDownList>
                      </EditItemTemplate>
                      <InsertItemTemplate>
                          <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="dtlLugar" DataTextField="IdLugar" DataValueField="IdLugar" SelectedValue='<%# Bind("IdLugar") %>'>
                          </asp:DropDownList>
                      </InsertItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("IdLugar") %>'></asp:Label>
                      </ItemTemplate>
                      <ItemStyle CssClass="dtlViewItem" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Usuario" SortExpression="IdUser" Visible="False">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IdUser") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <InsertItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IdUser") %>'></asp:TextBox>
                      </InsertItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label3" runat="server" Text='<%# Bind("IdUser") %>'></asp:Label>
                      </ItemTemplate>
                      <ItemStyle CssClass="dtlViewItem" />
                  </asp:TemplateField>
                  <asp:BoundField DataField="modelo" HeaderText="Modelo" SortExpression="modelo">
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="marca" HeaderText="Marca" SortExpression="marca">
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:CommandField ButtonType="Button" ShowInsertButton="True">
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
          <asp:SqlDataSource ID="grdView" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [INSTALACION]"></asp:SqlDataSource>
          <asp:GridView ID="grdInstalaciones" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdInstalacion" DataSourceID="grdView" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%" CssClass="grdView" PagerStyle-CssClass="pgr">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:BoundField DataField="IdInstalacion" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IdInstalacion" />
                  <asp:BoundField DataField="IdTipo" HeaderText="Tipo" SortExpression="IdTipo" />
                  <asp:BoundField DataField="IdLugar" HeaderText="Lugar" SortExpression="IdLugar" />
                  <asp:BoundField DataField="IdUser" HeaderText="Usuario" SortExpression="IdUser" Visible="False" />
                  <asp:BoundField DataField="modelo" HeaderText="Modelo" SortExpression="modelo" />
                  <asp:BoundField DataField="marca" HeaderText="Marca" SortExpression="marca" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerSettings Mode="NextPrevious" NextPageText="Siguiente &gt;" PreviousPageText="&lt; Anterior" />
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

