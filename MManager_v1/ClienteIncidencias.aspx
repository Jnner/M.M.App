<%@ Page Title="" Language="C#" MasterPageFile="~/MPcliente.master" AutoEventWireup="true" CodeFile="ClienteIncidencias.aspx.cs" Inherits="DirectorIncidencias" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentWeb" Runat="Server">
    <div class="panel panel-danger">
      <div class="panel-heading">
          <h2>Avisar al Técnico</h2>
      </div>
      <div class="panel-body">
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [objeto], [comentario], [fecha], [IdIncidencia] FROM [INCIDENCIA]" DeleteCommand="DELETE FROM [INCIDENCIA] WHERE [IdIncidencia] = @IdIncidencia" InsertCommand="INSERT INTO [INCIDENCIA] ([objeto], [comentario], [fecha]) VALUES (@objeto, @comentario, @fecha)" UpdateCommand="UPDATE [INCIDENCIA] SET [objeto] = @objeto, [comentario] = @comentario, [fecha] = @fecha WHERE [IdIncidencia] = @IdIncidencia">
              <DeleteParameters>
                  <asp:Parameter Name="IdIncidencia" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="objeto" Type="String" />
                  <asp:Parameter Name="comentario" Type="String" />
                  <asp:Parameter Name="fecha" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="objeto" Type="String" />
                  <asp:Parameter Name="comentario" Type="String" />
                  <asp:Parameter Name="fecha" Type="String" />
                  <asp:Parameter Name="IdIncidencia" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:DetailsView ID="dtlIncidencias" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="IdIncidencia" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" CssClass="dtlView" HorizontalAlign="Center" OnItemDeleted="dtlIncidencias_ItemDeleted" OnItemInserted="dtlIncidencias_ItemInserted" OnItemUpdated="dtlIncidencias_ItemUpdated">
              <AlternatingRowStyle BackColor="White" />
              <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" CssClass="dtlViewComands" />
              <EditRowStyle BackColor="#7C6F57"/>
              <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" CssClass="dtlViewHeader" />
              <Fields>
                  <asp:BoundField DataField="objeto" HeaderText="objeto" SortExpression="objeto" >
                  </asp:BoundField>
                  <asp:BoundField DataField="comentario" HeaderText="comentario" SortExpression="comentario" >
                  </asp:BoundField>
                  <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" >
                  </asp:BoundField>
                  <asp:BoundField DataField="IdIncidencia" HeaderText="IdIncidencia" SortExpression="IdIncidencia" InsertVisible="False" ReadOnly="True" >
                  </asp:BoundField>
                  <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
              </Fields>
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#E3EAEB" CssClass="dtlViewField" />
          </asp:DetailsView>
          <hr />
      </div>
    </div>
</asp:Content>

