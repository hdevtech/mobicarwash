<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="SalessPreports.aspx.cs" Inherits="MobiWebApplication.WebForm63" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="PurchaseLoad.aspx.cs" Inherits="MobiWebApplication.WebForm62" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 35px;
        }
        .auto-style26
        {
            width: 82%;
        }
        .auto-style213
        {
            width: 100%;
            height: 21px;
        }
        .auto-style215 {
            width: 95px;
        }
        .auto-style209 {}
        .auto-style216 {
            height: 18px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="auto-style4">
        <tr>
            <td>
                                <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label>
                                 </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BackColor="#244242">
                    <table class="auto-style4">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button92" runat="server" BackColor="#333333" BorderStyle="None" CssClass="auto-style209" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="40px" OnClick="Button92_Click" onmouseout="this.style.backgroundColor='#333333'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Log Out" Width="45%" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5" colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style215">
                                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Panel ID="Panel3" runat="server">
                                    <b style="text-align: center"><span style="color: #000099">
                                    <asp:SqlDataSource ID="MonthlyReports" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" OnSelecting="MonthlyReports_Selecting" SelectCommand="SELECT operationMonth, idSales FROM StartDailyii ORDER BY idSales DESC"></asp:SqlDataSource>
                                    </span></b>
                                    <asp:SqlDataSource ID="ServedDrinkMontly" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT operationMonth FROM BarRequestViewStock"></asp:SqlDataSource>
                                    <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="#244242" CssClass="BUTTOMNUMBER" DataSourceID="ServedDrinkMontly" DataTextField="operationMonth" DataValueField="operationMonth" Font-Size="X-Large" ForeColor="White" Height="40px" Width="470px">
                                    </asp:DropDownList>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" BackColor="#244242" Visible="False">
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBox44" runat="server" BackColor="#244242" BorderColor="White" BorderStyle="Solid" CssClass="BUTTOM" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="30px" placeholder="New Item" Width="322px"></asp:TextBox>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5"></td>
                            <td class="auto-style5">
                                &nbsp;</td>
                            <td class="auto-style5"></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                
                                                                            <asp:DataList ID="DataList5" runat="server" DataSourceID="ServedDrinkGroup" Width="100%" Font-Names="Tahoma" Font-Size="Large">
                                                                                <ItemTemplate>
                                                                                    <asp:Panel ID="Panel102" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                        <table class="auto-style26">
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <table class="auto-style26">
                                                                                                        <tr>
                                                                                                            <td align="center" style="font-weight: 700" valign="top">
                                                                                                                <asp:Label ID="Month" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Text='<%# Eval("operationMonth") %>'></asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td align="center" style="font-weight: 700" valign="top">
                                                                                                                <asp:Button ID="Button80" runat="server" BackColor="#006666" BorderColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="BAR" Width="320px" />
                                                                                                                <asp:GridView ID="GridClientPayment3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrink1" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#333333" GridLines="None" Width="867px">
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
                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
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
                                                                                                        <tr>
                                                                                                            <td style="font-weight: 700" valign="top">
                                                                                                                <table class="auto-style213">
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <table class="auto-style4">
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMontho0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]*[PriceSales]) as Total FROM [BarRequestViewStock] where  (operationMonth=@operationMonth) and (idDrinkCategory='1')">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="operationMonth" PropertyName="SelectedValue" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrink1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, operationMonth, requestStatus FROM BarRequestViewStock WHERE (operationMonth = @operationMonth) AND (requestStatus = 'confirmed') AND (idDrinkCategory = '1') GROUP BY productName, requestStatus, PriceSales, operationMonth">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="operationMonth" PropertyName="SelectedValue" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                    </td>
                                                                                                                                    <td align="right">
                                                                                                                                        <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" ForeColor="White">Sub-Total</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <asp:FormView ID="FormView17" runat="server" DataSourceID="ServedDrinkMontho0" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
                                                                                                                                            <EditItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox11" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="UpdateButton5" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton5" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </EditItemTemplate>
                                                                                                                                            <InsertItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox12" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="InsertButton5" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton5" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </InsertItemTemplate>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:Panel ID="Panel103" runat="server">
                                                                                                                                                    <table class="auto-style26">
                                                                                                                                                        <tr>
                                                                                                                                                            <td style="text-align: right">&nbsp;</td>
                                                                                                                                                            <td style="text-align: left">
                                                                                                                                                                <asp:Label ID="NoLabel5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("Total") %>' />
                                                                                                                                                            </td>
                                                                                                                                                        </tr>
                                                                                                                                                    </table>
                                                                                                                                                </asp:Panel>
                                                                                                                                            </ItemTemplate>
                                                                                                                                        </asp:FormView>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <asp:Button ID="Button81" runat="server" BackColor="#006666" BorderColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="RESTO" Width="320px" />
                                                                                                                            <asp:GridView ID="GridClientPayment7" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrink2" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#333333" GridLines="None" Width="867px">
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
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
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
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <table class="auto-style4">
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMontho5" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]*[PriceSales]) as Total FROM [BarRequestViewStock] where  (operationMonth=@operationMonth) and (idDrinkCategory='2')">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="operationMonth" PropertyName="SelectedValue" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrink2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, operationMonth, requestStatus FROM BarRequestViewStock WHERE (operationMonth = @operationMonth) AND (requestStatus = 'confirmed') AND (idDrinkCategory = '2') GROUP BY productName, requestStatus, PriceSales, operationMonth">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="operationMonth" PropertyName="SelectedValue" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                    </td>
                                                                                                                                    <td align="right">
                                                                                                                                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Larger" ForeColor="White">Sub-Total</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <asp:FormView ID="FormView18" runat="server" DataSourceID="ServedDrinkMontho5" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
                                                                                                                                            <EditItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox13" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="UpdateButton6" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton6" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </EditItemTemplate>
                                                                                                                                            <InsertItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox14" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="InsertButton6" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton6" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </InsertItemTemplate>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:Panel ID="Panel104" runat="server">
                                                                                                                                                    <table class="auto-style26">
                                                                                                                                                        <tr>
                                                                                                                                                            <td style="text-align: right">&nbsp;</td>
                                                                                                                                                            <td style="text-align: left">
                                                                                                                                                                <asp:Label ID="NoLabel6" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("Total") %>' />
                                                                                                                                                            </td>
                                                                                                                                                        </tr>
                                                                                                                                                    </table>
                                                                                                                                                </asp:Panel>
                                                                                                                                            </ItemTemplate>
                                                                                                                                        </asp:FormView>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <asp:Button ID="Button82" runat="server" BackColor="#006666" BorderColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="KITCHEN" Width="320px" />
                                                                                                                            <asp:GridView ID="GridClientPayment8" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrink3" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#333333" GridLines="None" Width="867px">
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
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
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
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <table class="auto-style4">
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrink3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, operationMonth, requestStatus FROM BarRequestViewStock WHERE (operationMonth = @operationMonth) AND (requestStatus = 'confirmed') AND (idDrinkCategory = '3') GROUP BY productName, requestStatus, PriceSales, operationMonth">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="operationMonth" PropertyName="SelectedValue" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMontho6" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]*[PriceSales]) as Total FROM [BarRequestViewStock] where  (operationMonth=@operationMonth) and (idDrinkCategory='3')">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="operationMonth" PropertyName="SelectedValue" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                    </td>
                                                                                                                                    <td align="right">
                                                                                                                                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Larger" ForeColor="White">Sub-Total</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <asp:FormView ID="FormView19" runat="server" DataSourceID="ServedDrinkMontho6" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
                                                                                                                                            <EditItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox15" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="UpdateButton7" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton7" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </EditItemTemplate>
                                                                                                                                            <InsertItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox16" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="InsertButton7" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton7" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </InsertItemTemplate>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:Panel ID="Panel105" runat="server">
                                                                                                                                                    <table class="auto-style26">
                                                                                                                                                        <tr>
                                                                                                                                                            <td style="text-align: right">&nbsp;</td>
                                                                                                                                                            <td style="text-align: left">
                                                                                                                                                                <asp:Label ID="NoLabel7" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("Total") %>' />
                                                                                                                                                            </td>
                                                                                                                                                        </tr>
                                                                                                                                                    </table>
                                                                                                                                                </asp:Panel>
                                                                                                                                            </ItemTemplate>
                                                                                                                                        </asp:FormView>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td colspan="4" class="auto-style216">
                                                                                                                            <asp:Button ID="Button83" runat="server" BackColor="#006666" BorderColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="OTHERS" Width="320px" />
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <asp:GridView ID="GridClientPayment9" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrink4" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#333333" GridLines="None" Width="867px">
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
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
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
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <table class="auto-style4">
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrink4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, operationMonth, requestStatus FROM BarRequestViewStock WHERE (operationMonth = @operationMonth) AND (requestStatus = 'confirmed') AND (idDrinkCategory = '4') GROUP BY productName, requestStatus, PriceSales, operationMonth">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="operationMonth" PropertyName="SelectedValue" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMontho8" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]*[PriceSales]) as Total FROM [BarRequestViewStock] where  (operationMonth=@operationMonth) and (idDrinkCategory='4')">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="operationMonth" PropertyName="SelectedValue" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                    </td>
                                                                                                                                    <td align="right">
                                                                                                                                        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Size="Larger" ForeColor="White">Sub-Total</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <asp:FormView ID="FormView20" runat="server" DataSourceID="ServedDrinkMontho8" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
                                                                                                                                            <EditItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox17" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="UpdateButton8" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton8" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </EditItemTemplate>
                                                                                                                                            <InsertItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox18" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="InsertButton8" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton8" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </InsertItemTemplate>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:Panel ID="Panel106" runat="server">
                                                                                                                                                    <table class="auto-style26">
                                                                                                                                                        <tr>
                                                                                                                                                            <td style="text-align: right">&nbsp;</td>
                                                                                                                                                            <td style="text-align: left">
                                                                                                                                                                <asp:Label ID="NoLabel8" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("Total") %>' />
                                                                                                                                                            </td>
                                                                                                                                                        </tr>
                                                                                                                                                    </table>
                                                                                                                                                </asp:Panel>
                                                                                                                                            </ItemTemplate>
                                                                                                                                        </asp:FormView>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <table class="auto-style4">
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMontho4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]*[price]) as Total FROM [BarPurchaseView2] where  (operationMonth=@operationMonth) and  (idDrinkCategory='4')

">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="Month" Name="operationMonth" PropertyName="Text" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                    </td>
                                                                                                                                    <td align="right">
                                                                                                                                        &nbsp;</td>
                                                                                                                                    <td>
                                                                                                                                        &nbsp;</td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td >
                                                                                                                            <asp:SqlDataSource ID="ServedDrinkMontho7" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]*[PriceSales]) as Total FROM [BarRequestViewStock] where  (operationMonth=@operationMonth)">
                                                                                                                                <SelectParameters>
                                                                                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="operationMonth" PropertyName="SelectedValue" />
                                                                                                                                </SelectParameters>
                                                                                                                            </asp:SqlDataSource>
                                                                                                                        </td>
                                                                                                                        <td>
                                                                                                                            &nbsp;</td>
                                                                                                                        <td align="right">
                                                                                                                            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Larger" ForeColor="White">Grand-Total</asp:Label>
                                                                                                                        </td>
                                                                                                                        <td align="left">
                                                                                                                            <asp:FormView ID="FormView16" runat="server" DataSourceID="ServedDrinkMontho7" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
                                                                                                                                <EditItemTemplate>
                                                                                                                                    No:
                                                                                                                                    <asp:TextBox ID="NoTextBox9" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                    <br />
                                                                                                                                    <asp:LinkButton ID="UpdateButton4" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                </EditItemTemplate>
                                                                                                                                <InsertItemTemplate>
                                                                                                                                    No:
                                                                                                                                    <asp:TextBox ID="NoTextBox10" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                    <br />
                                                                                                                                    <asp:LinkButton ID="InsertButton4" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                </InsertItemTemplate>
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Panel ID="Panel100" runat="server">
                                                                                                                                        <table class="auto-style26">
                                                                                                                                            <tr>
                                                                                                                                                <td style="text-align: right">&nbsp;</td>
                                                                                                                                                <td style="text-align: left">
                                                                                                                                                    <asp:Label ID="NoLabel4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("Total") %>' />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                        </table>
                                                                                                                                    </asp:Panel>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:FormView>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </ItemTemplate>
                                                                            </asp:DataList>
                
            </td>
        </tr>
        <tr>
            <td>
                                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkGroup" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT operationMonth FROM BarRequestViewStock WHERE (operationMonth = @operationMonth) and (requestStatus='confirmed')">
                                                                                                                                                            <SelectParameters>
                                                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="operationMonth" PropertyName="SelectedValue" />
                                                                                                                                                            </SelectParameters>
                                                                                                                                                        </asp:SqlDataSource>
                                </td>
        </tr>
        <tr>
            <td>
                                                                                                                                                    <asp:SqlDataSource ID="KitchenProduct" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [ProductNames] FROM [KitchenProduct]"></asp:SqlDataSource>
                                                                                                                                                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                                                                                                    <asp:Label ID="UserName" runat="server" Text="UserName" Visible="False"></asp:Label>
                                                                                                                                                    <asp:Label ID="RoleName" runat="server" Text="RoleName" Visible="False"></asp:Label>
                                                                                                                                                    </td>
        </tr>
    </table>
</asp:Content>

