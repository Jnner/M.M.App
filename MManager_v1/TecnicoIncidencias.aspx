<%@ Page Title="" Language="C#" MasterPageFile="~/MPtecnico.master" AutoEventWireup="true" CodeFile="TecnicoIncidencias.aspx.cs" Inherits="DirectorIncidencias" %>


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
                  <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowInsertButton="True" >
                  <ControlStyle CssClass="dtlViewComands" />
                  </asp:CommandField>
              </Fields>
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#E3EAEB" CssClass="dtlViewField" />
          </asp:DetailsView>
          <hr />
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [INCIDENCIA]"></asp:SqlDataSource>
          <asp:GridView ID="grdIncidencias" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdIncidencia" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%"  CssClass="grdView" PagerStyle-CssClass="pgr">
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
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" CssClass="grdHeaderStyle" />
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
</asp:Content>

