<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="BarRestoManagerKitchen.aspx.cs" Inherits="MobiWebApplication.WebForm60" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            width: 100%;
        }
          
      input.XX-Large{
        width: 100px;
        height: 50px;
      }
        .auto-style34 {
            height: 40px;
        }
        .auto-style36 {
        }
        .auto-style39 {
            width: 417px;
            height: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     &nbsp;&nbsp;&nbsp;
     <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate> 
        <script language="javascript" type="text/javascript">
            function ColorChange(chkbox) {
                var IsChecked = chkbox.checked;
                if (IsChecked) {
                    chkbox.parentElement.parentElement.style.backgroundColor = 'Gray';
                    chkbox.parentElement.parentElement.style.color = 'White';
                }
                else {
                    chkbox.parentElement.parentElement.style.backgroundColor = '#244242';
                    chkbox.parentElement.parentElement.style.color = 'White';
                }
            }

        </script>
       
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td>
                    <asp:Panel ID="PanelAll" runat="server" BackColor="Gray">
                        <table class="auto-style4">
                            <tr>
                                <td>
                                    <asp:Panel ID="PanelList" runat="server" BackColor="Gray">
                                        <table class="auto-style4">
                                            <tr>
                                                <td align="center">
                                                    <asp:SqlDataSource ID="idProduct0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [Price] FROM [BarProducts]"></asp:SqlDataSource>
                                                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="UserName" runat="server" Text="UserName" Visible="False"></asp:Label>
                                                    <asp:SqlDataSource ID="COMMAND_ID0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idCommand] FROM [BarCommand] ORDER BY [idCommand] DESC"></asp:SqlDataSource>
                                                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:TextBox ID="TextBox4" runat="server" Visible="False" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                                                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Gray" DataSourceID="COMMAND_ID0" DataTextField="idCommand" DataValueField="idCommand" ForeColor="Gray" Height="1px" Width="1px">
                                                    </asp:DropDownList>
                                                    <asp:Panel ID="PanelCommand" runat="server" BackColor="#006666" BorderColor="#CCCCCC" BorderStyle="None" Width="100%">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:Button ID="Button77" runat="server" BackColor="#006666" BorderStyle="Solid" BorderWidth="2px" CssClass="BUTTOMROUND" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Orange" Height="57px" OnClick="Button77_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="Log out" Width="130px" />
                                                                    <br />
                                                                    <br />
                                                                    <br />
                                                                    <asp:TextBox ID="TextBox10" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="1px" placeholder="TABLE NO" Visible="False" Width="1px">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style34" align="center">
                                                                    <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="X-Large" ForeColor="White">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style34">
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text="Label" Visible="False"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Panel ID="PanelPayment0" runat="server" BackColor="Gray" Visible="False" Width="100%">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td class="auto-style36">
                                                                                    <asp:Panel ID="Drinks3" runat="server" BackColor="Gray">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td style="border-style: none; border-width: medium; border-color: #CCCCCC">
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td align="left">
                                                                                                                <asp:Label ID="AlertLabel34" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White">Items List</asp:Label>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <table class="auto-style4">
                                                                                                                    <tr>
                                                                                                                        <td align="right" class="auto-style39">&nbsp;</td>
                                                                                                                        <td align="left">&nbsp;</td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM DetailSales ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                                                                                    <asp:GridView ID="gvInformation14" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" EnableModelValidation="True" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation5_RowDataBound" OnSelectedIndexChanged="gvInformation5_SelectedIndexChanged" ShowFooter="True" style="margin-left: 0px" Width="100%" DataKeyNames="idCommand">
                                                                                                        <Columns>
                                                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                                                <ItemTemplate>
                                                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                                                </ItemTemplate>
                                                                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Left" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:CheckBox ID="CheckBox71" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="35px" OnCheckedChanged="CheckBox2_CheckedChanged1" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="35px" />
                                                                                                                </ItemTemplate>
                                                                                                                <HeaderStyle BackColor="#244242" ForeColor="Navy" />
                                                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:BoundField DataField="idRecord" SortExpression="idRecord">
                                                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Left" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="idCommand" SortExpression="idCommand">
                                                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Left" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="productName" HeaderText="Product" SortExpression="productName">
                                                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                            </asp:BoundField>                                                                                                            
                                                                                                            <asp:BoundField DataField="PriceSales" HeaderText="Price" SortExpression="PriceSales">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="quantity" HeaderText="Qty" SortExpression="quantity">
                                                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                                                            <FooterStyle ForeColor="Orange" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:CheckBox ID="CheckBox72" runat="server" AutoPostBack="True" BackColor="red" Font-Bold="False" ForeColor="White" Height="40px" OnCheckedChanged="CheckBox72_CheckedChanged" Text="Cancel" Width="140px" />
                                                                                                                </ItemTemplate>
                                                                                                                <FooterStyle BackColor="#244242" />
                                                                                                                <HeaderStyle BackColor="#244242" />
                                                                                                                <ItemStyle BackColor="#244242" Font-Bold="False" HorizontalAlign="Right" />
                                                                                                            </asp:TemplateField>
                                                                                                        </Columns>
                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <PagerStyle BackColor="#244242" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                        <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                                    </asp:GridView>
                                                                                                    <asp:Panel ID="Panel103" runat="server" BackColor="Gray">
                                                                                                        <asp:Label ID="RoleName" runat="server" Text="RoleName" Visible="False"></asp:Label>
                                                                                                    </asp:Panel>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td align="center">
                                                                                                                <asp:Button ID="Button80" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="60px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Orange'" Text="CONFIRM LIST" Width="247px" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:Label ID="AlertLabel39" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange">Pending Orders</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation12" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="1" DataKeyNames="idCommand" DataSourceID="Command2" EnableModelValidation="True" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" style="margin-left: 0px" Width="100%" AllowPaging="True">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="idCommand" SortExpression="idCommand">
                                                                            <FooterStyle ForeColor="#006666" />
                                                                            <ItemStyle Font-Size="Small" ForeColor="#244242" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <FooterStyle ForeColor="#244242" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Font-Bold="False"  HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="userAdded" HeaderText="Seller" SortExpression="userAdded">
                                                                            <ItemStyle Font-Bold="False"  HorizontalAlign="Left" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="Time">
                                                                            <ItemStyle Font-Bold="False"  />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="Time">
                                                                            <ItemStyle Font-Bold="False"  />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="Button78" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button78_Click" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="150px" />
                                                                                </ItemTemplate>                                                                               
                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="#333333" Font-Size="XX-Large" ForeColor="Orange" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Panel ID="PanelCommand0" runat="server" BackColor="#244242" BorderStyle="Solid" BorderWidth="2px">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:Label ID="AlertLabel37" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange">Given Orders</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:SqlDataSource ID="Command2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT idCommand, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandFood WHERE (requestStatus = 'unconfirmed') ORDER BY idCommand DESC" OnSelecting="Command2_Selecting">
                                                                       
                                                                    </asp:SqlDataSource>
                                                                    <asp:GridView ID="gvInformation7" runat="server" AutoGenerateColumns="False" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="1" DataKeyNames="idCommand" DataSourceID="Command3" EnableModelValidation="True" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gvInformation7_SelectedIndexChanged" style="margin-left: 0px" Width="100%" AllowPaging="True" PageSize="50">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="idCommand" SortExpression="idCommand">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#244242" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <FooterStyle ForeColor="#244242" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="userAdded" HeaderText="Seller" SortExpression="userAdded">
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="Time">
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="Time">
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                <ItemStyle BackColor="#244242" HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="Button41" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button41_Click1" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="150px" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle BackColor="#333333" ForeColor="Orange" />
                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="#333333" Font-Size="XX-Large" ForeColor="Orange" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                    </asp:GridView>
                                                                    <asp:SqlDataSource ID="Command3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT  idCommand, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandFood WHERE (requestStatus = 'confirmed') ORDER BY idCommand DESC">               
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="ServedDrink1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay, requestStatus FROM BarRequestViewStock WHERE (OperationDay = @OperationDay) AND ((idDrinkCategory = '3') OR (idDrinkCategory = '4')) AND (requestStatus = 'confirmed') GROUP BY productName, requestStatus, PriceSales, OperationDay">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center">
                                                                    <asp:Label ID="AlertLabel38" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="White">Sales Items</asp:Label>
                                                                    <asp:GridView ID="GridClientPayment3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrink1" EnableModelValidation="True" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#333333" GridLines="None" Width="100%">
                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                        <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                        <EditRowStyle BackColor="#999999" />
                                                                        <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="Sno">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="productName" HeaderText="Product" SortExpression="productName">
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                                                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="PriceSales" HeaderText="Price" SortExpression="PriceSales">
                                                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
     
    </asp:Panel>
    </ContentTemplate></asp:UpdatePanel>
</asp:Content>
