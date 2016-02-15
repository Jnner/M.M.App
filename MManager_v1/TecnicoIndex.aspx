<%@ Page Title="" Language="C#" MasterPageFile="~/MPtecnico.master" AutoEventWireup="true" CodeFile="TecnicoIndex.aspx.cs" Inherits="IndexDirector" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentWeb" Runat="Server">
        <div class="panel panel-success">
      <div class="panel-heading">
          <h2>Datos Personales</h2>
      </div>
        <div class="panel-body">
            <div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [USER] WHERE [IdUser] = @IdUser" InsertCommand="INSERT INTO [USER] ([IdUser], [nombre], [pass]) VALUES (@IdUser, @nombre, @pass)" SelectCommand="SELECT [IdUser], [nombre], [pass] FROM [USER] WHERE ([IdUser] = @IdUser)" UpdateCommand="UPDATE [USER] SET [nombre] = @nombre, [pass] = @pass WHERE [IdUser] = @IdUser">
                    <DeleteParameters>
                        <asp:Parameter Name="IdUser" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="IdUser" Type="String" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="pass" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="IdUser" SessionField="IdUser" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="pass" Type="String" />
                        <asp:Parameter Name="IdUser" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
          <asp:GridView ID="grdPersonal" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%" DataKeyNames="IdUser" CssClass="grdView" PagerStyle-CssClass="pgr" OnRowUpdated="grdPersonal_RowUpdated">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                  <asp:BoundField DataField="IdUser" HeaderText="Nick" ReadOnly="True" SortExpression="IdUser" />
                  <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                  <asp:BoundField DataField="pass" HeaderText="Contraseña" SortExpression="pass" />
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