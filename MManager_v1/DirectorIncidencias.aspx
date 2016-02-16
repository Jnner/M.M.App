
<%@ Page Title="" Language="C#" MasterPageFile="~/MPdirector.master" AutoEventWireup="true" CodeFile="DirectorIncidencias.aspx.cs" Inherits="DirectorIncidencias" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentWeb" Runat="Server">
    <div class="panel panel-danger">
      <div class="panel-heading">
          <h2>Incidencias</h2>
      </div>
      <div class="panel-body">
          <asp:SqlDataSource ID="dtlView" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [INCIDENCIA] WHERE [IdIncidencia] = @IdIncidencia" InsertCommand="INSERT INTO [INCIDENCIA] ([IdTipo], [IdLugar], [IdUser], [comentario], [fecha]) VALUES (@IdTipo, @IdLugar, @IdUser, @comentario, @fecha)" SelectCommand="SELECT * FROM [INCIDENCIA] WHERE ([IdIncidencia] = @IdIncidencia)" UpdateCommand="UPDATE [INCIDENCIA] SET [IdTipo] = @IdTipo, [IdLugar] = @IdLugar, [IdUser] = @IdUser, [comentario] = @comentario, [fecha] = @fecha WHERE [IdIncidencia] = @IdIncidencia">
              <DeleteParameters>
                  <asp:Parameter Name="IdIncidencia" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="IdTipo" Type="String" />
                  <asp:Parameter Name="IdLugar" Type="String" />
                  <asp:Parameter Name="IdUser" Type="String" />
                  <asp:Parameter Name="comentario" Type="String" />
                  <asp:Parameter Name="fecha" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:ControlParameter ControlID="grdIncidencias" Name="IdIncidencia" PropertyName="SelectedValue" Type="Int32" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="IdTipo" Type="String" />
                  <asp:Parameter Name="IdLugar" Type="String" />
                  <asp:Parameter Name="IdUser" Type="String" />
                  <asp:Parameter Name="comentario" Type="String" />
                  <asp:Parameter Name="fecha" Type="String" />
                  <asp:Parameter Name="IdIncidencia" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:SqlDataSource ID="dtlTipo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO_INSTL]"></asp:SqlDataSource>
          <asp:SqlDataSource ID="dtlLugar" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [LUGAR]"></asp:SqlDataSource>
          <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Nueva Incidencia" />
          <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="IdIncidencia" DataSourceID="dtlView" ForeColor="#333333" GridLines="None" Height="50px" OnDataBound="DetailsView1_DataBound" OnItemDeleted="dtlIncidencias_ItemDeleted" OnItemInserted="dtlIncidencias_ItemInserted" OnItemUpdated="dtlIncidencias_ItemUpdated" OnItemCommand="DetailsView1_ItemCommand">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
              <EditRowStyle BackColor="#999999" />
              <FieldHeaderStyle BackColor="#E9ECF1" CssClass="dtlViewHeader" Font-Bold="True" />
              <Fields>
                  <asp:BoundField DataField="IdIncidencia" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IdIncidencia">
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:TemplateField HeaderText="Avisa" SortExpression="IdUser">
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
                  <asp:TemplateField HeaderText="Fecha" SortExpression="fecha">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("fecha") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <InsertItemTemplate>
                          <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("fecha") %>'></asp:TextBox>
                      </InsertItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label4" runat="server" Text='<%# Bind("fecha") %>'></asp:Label>
                      </ItemTemplate>
                      <ItemStyle CssClass="dtlViewItem" />
                  </asp:TemplateField>
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
                  <asp:BoundField DataField="comentario" HeaderText="Comentario" SortExpression="comentario">
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [INCIDENCIA]"></asp:SqlDataSource>
          <asp:GridView ID="grdIncidencias" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdIncidencia" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%"  CssClass="grdView" PagerStyle-CssClass="pgr">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                  <asp:BoundField DataField="IdIncidencia" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IdIncidencia" />
                  <asp:BoundField DataField="IdTipo" HeaderText="Tipo" SortExpression="IdTipo" />
                  <asp:BoundField DataField="IdLugar" HeaderText="Lugar" SortExpression="IdLugar" />
                  <asp:BoundField DataField="comentario" HeaderText="Comentario" SortExpression="comentario" />
                  <asp:BoundField DataField="IdUser" HeaderText="Avisa" SortExpression="IdUser" />
                  <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
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

