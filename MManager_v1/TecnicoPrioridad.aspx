<%@ Page Title="" Language="C#" MasterPageFile="~/MPtecnico.master" AutoEventWireup="true" CodeFile="TecnicoPrioridad.aspx.cs" Inherits="IndexDirector" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentWeb" Runat="Server">
        <div class="panel panel-danger">
      <div class="panel-heading">
          <h2>Incidencias Urgentes</h2>
      </div>
        <div class="panel-body">
            <div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [INCIDENCIA] WHERE [IdIncidencia] = @IdIncidencia" InsertCommand="INSERT INTO [INCIDENCIA] ([comentario]) VALUES (@comentario)" SelectCommand="SELECT [comentario], [IdIncidencia] FROM [INCIDENCIA] WHERE ([IdIncidencia] = @IdIncidencia)" UpdateCommand="UPDATE [INCIDENCIA] SET [comentario] = @comentario WHERE [IdIncidencia] = @IdIncidencia">
                    <DeleteParameters>
                        <asp:Parameter Name="IdIncidencia" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="comentario" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="grdPersonal" Name="IdIncidencia" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="comentario" Type="String" />
                        <asp:Parameter Name="IdIncidencia" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
          <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="IdIncidencia" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" OnItemUpdated="DetailsView1_ItemUpdated" Width="280px">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
              <EditRowStyle BackColor="#999999" />
              <FieldHeaderStyle BackColor="#E9ECF1" CssClass="dtlViewHeader" Font-Bold="True" />
              <Fields>
                  <asp:BoundField DataField="comentario" HeaderText="Comentario" SortExpression="comentario">
                  <ItemStyle CssClass="dtlViewItem" />
                  </asp:BoundField>
                  <asp:BoundField DataField="IdIncidencia" HeaderText="IdIncidencia" SortExpression="IdIncidencia" InsertVisible="False" ReadOnly="True" Visible="False">
                  </asp:BoundField>
                  <asp:CommandField ButtonType="Button" ShowEditButton="True">
                  <ControlStyle CssClass="dtlViewComands" />
                  <ItemStyle CssClass="dtlViewComands" />
                  </asp:CommandField>
              </Fields>
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" CssClass="d" ForeColor="#333333" />
          </asp:DetailsView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdIncidencia], [IdTipo], [IdLugar], [comentario], [IdUser]  FROM [INCIDENCIA] WHERE [comentario] LIKE '%ppp%'"></asp:SqlDataSource>
          <asp:GridView ID="grdPersonal" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%" CssClass="grdView" PagerStyle-CssClass="pgr" DataKeyNames="IdIncidencia">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                  <asp:BoundField DataField="IdIncidencia" HeaderText="IdIncidencia" SortExpression="IdIncidencia" InsertVisible="False" ReadOnly="True" Visible="False" />
                  <asp:BoundField DataField="IdTipo" HeaderText="Tipo" SortExpression="IdTipo" />
                  <asp:BoundField DataField="IdLugar" HeaderText="Lugar" SortExpression="IdLugar" />
                  <asp:BoundField DataField="comentario" HeaderText="Comentario" SortExpression="comentario" />
                  <asp:BoundField DataField="IdUser" HeaderText="Avisa" SortExpression="IdUser" />
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
    </div>
</asp:Content>