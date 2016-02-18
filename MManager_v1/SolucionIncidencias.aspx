<%@ Page Title="" Language="C#" MasterPageFile="~/MPsolucionIncidencia.master" AutoEventWireup="true" CodeFile="SolucionIncidencias.aspx.cs" Inherits="IndexDirector" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentWeb" Runat="Server">
        <div class="panel panel-success">
      <div class="panel-heading">
          <h2>Incidencias Solucionadas</h2>
      </div>
        <div class="panel-body">
            <div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdTipo], [IdLugar], [comentario], [IdUser], [fecha] FROM [INCIDENCIA] WHERE [comentario] LIKE '%-ok%'">
                </asp:SqlDataSource>
          <asp:GridView ID="grdPersonal" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%" CssClass="grdView" PagerStyle-CssClass="pgr" AllowPaging="True">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:BoundField DataField="IdTipo" HeaderText="Tipo" SortExpression="IdTipo" />
                  <asp:BoundField DataField="IdLugar" HeaderText="Lugar" SortExpression="IdLugar" />
                  <asp:BoundField DataField="comentario" HeaderText="Comentario" SortExpression="comentario" />
                  <asp:BoundField DataField="IdUser" HeaderText="Autor/a" SortExpression="IdUser" />
                  <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
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
            <div class="center">
            </div>
      </div>
    </div>
    <div class="panel panel-success">
      <div class="panel-heading">
          <h2>Incidencias Atendidas</h2>
      </div>
        <div class="panel-body">
            <div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdTipo], [IdLugar], [comentario], [IdUser] FROM [INCIDENCIA] WHERE [comentario] LIKE '%-a%'">
                </asp:SqlDataSource>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%" CssClass="grdView" PagerStyle-CssClass="pgr" AllowPaging="True">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:BoundField DataField="IdTipo" HeaderText="Tipo" SortExpression="IdTipo" />
                  <asp:BoundField DataField="IdLugar" HeaderText="Lugar" SortExpression="IdLugar" />
                  <asp:BoundField DataField="comentario" HeaderText="Comentario" SortExpression="comentario" />
                  <asp:BoundField DataField="IdUser" HeaderText="Autor/a" SortExpression="IdUser" />
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
            <div class="center">
            </div>
      </div>
    </div>
</asp:Content>