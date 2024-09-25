<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="ClientCreditNew.aspx.cs" Inherits="MobiWebApplication.WebForm56" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style122
        {
            width: 101%;
            height: 59px;
        }
        .style128
        {
            height: 20px;
        }
        .auto-style339
        {
            width: 100%;
        }
        .auto-style158
        {
            width: 513px;
        }
        .auto-style184
        {
            width: 48px;
        }
        .auto-style183
        {
            width: 275px;
        }
        .auto-style340 {
            height: 40px;
        }
        .auto-style341 {
            width: 345px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style340">
                    <asp:Button ID="Button90" runat="server" BackColor="#244242" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="66px" OnClick="Button90_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Silver'" Text="Back" Width="266px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style340">
                    <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text="CLIENTS CREDIT STATUS"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSoNamGroup" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            <asp:Panel ID="Panel5" runat="server" BackColor="Gray" CssClass="PanelHomeLogin">
                                <table class="auto-style122">
                                    <tr>
                                        <td class="style128">
                                            <asp:Panel ID="Panel8" runat="server">
                                                <table class="auto-style339">
                                                    <tr>
                                                        <td align="center">
                                                            <asp:Label ID="Name" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Text='<%# Eval("Name") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="Panel4" runat="server" BackColor="#006666" CssClass="BUTTOM" Width="880px">
                                                <asp:Panel ID="Panel6" runat="server">
                                                    <table class="auto-style122">
                                                        <tr>
                                                            <td>
                                                                <asp:GridView ID="gvInformation0" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource6" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" Font-Size="Large" ForeColor="#333333" GridLines="None" style="margin-left: 0px" Width="100%" OnRowDataBound="gvInformation0_RowDataBound" OnSelectedIndexChanged="gvInformation0_SelectedIndexChanged">
                                                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                    <FooterStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
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
                                                                                                                                                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                                                                                                                </asp:TemplateField>
                                                                                                                                                <asp:BoundField DataField="Name" HeaderText="Client Name" SortExpression="Name" >
                                                                                                                                                <ItemStyle Font-Bold="False" />
                                                                                                                                                </asp:BoundField>
                                                                                                                                                <asp:BoundField DataField="Phone" HeaderText="Contact No" SortExpression="Phone" >
                                                                                                                                                <ItemStyle Font-Bold="False" />
                                                                                                                                                </asp:BoundField>
                                                                                                                                                <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" >
                                                                                                                                                <ItemStyle Font-Bold="False" />
                                                                                                                                                </asp:BoundField>
                                                                                                                                                <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" FooterText="Sub-Total" >
                                                                                                                                                <ItemStyle Font-Bold="False" />
                                                                                                                                                </asp:BoundField>
                                                                                                                                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                                                                                                                                <ItemStyle ForeColor="#99FF33" Font-Bold="False" />
                                                                                                                                                </asp:BoundField>
                                                                                                                                            </Columns>
                                                                </asp:GridView>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style158">
                                                                <asp:Panel ID="Panel9" runat="server">
                                                                    <table style="width: 851px">
                                                                        <tr>
                                                                            <td class="auto-style184">
                                                                                <asp:SqlDataSource ID="SqlDataSub0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT Name, SUM(Price) AS Price FROM WebDetailsDataView WHERE (Name = @Name) AND (Payment = 'Credit') GROUP BY Name">
                                                                                    <SelectParameters>
                                                                                        <asp:ControlParameter ControlID="Name" Name="Name" PropertyName="Text" />
                                                                                    </SelectParameters>
                                                                                </asp:SqlDataSource>
                                                                            </td>
                                                                            <td class="auto-style183">
                                                                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, SUM(Price) AS Price, Payment,Name,Phone FROM WebDetailsDataView WHERE (Name = @Name) AND (Payment = 'Credit') GROUP BY Name, PlateNumber, brand, Payment,Phone
">
                                                                                    <SelectParameters>
                                                                                        <asp:ControlParameter ControlID="Name" Name="Name" PropertyName="Text" />
                                                                                    </SelectParameters>
                                                                                </asp:SqlDataSource>
                                                                            </td>
                                                                            <td class="a" align="right">
                                                                                <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text="Sub-Total:"></asp:Label>
                                                                            </td>
                                                                            <td align="left">
                                                                                <asp:FormView ID="FormView16" runat="server" DataSourceID="SqlDataSub0" EnableModelValidation="True">
                                                                                    <EditItemTemplate>
                                                                                        Name:
                                                                                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                                                        <br />
                                                                                        Price:
                                                                                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                        <br />
                                                                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                    </EditItemTemplate>
                                                                                    <InsertItemTemplate>
                                                                                        Name:
                                                                                        <asp:TextBox ID="NameTextBox0" runat="server" Text='<%# Bind("Name") %>' />
                                                                                        <br />
                                                                                        Price:
                                                                                        <asp:TextBox ID="PriceTextBox0" runat="server" Text='<%# Bind("Price") %>' />
                                                                                        <br />
                                                                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                    </InsertItemTemplate>
                                                                                    <ItemTemplate>
                                                                                        <asp:Panel ID="Panel14" runat="server">
                                                                                            <table>
                                                                                                <tr>
                                                                                                    <td style="text-align: right">&nbsp;</td>
                                                                                                    <td style="text-align: left">
                                                                                                        <asp:Label ID="PriceLabel" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="White" Text='<%# Bind("Price") %>' />
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </asp:Panel>
                                                                                    </ItemTemplate>
                                                                                </asp:FormView>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </asp:Panel>
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
                    <asp:Panel ID="Panel15" runat="server">
                        <table style="width: 851px">
                            <tr>
                                <td class="auto-style184">&nbsp;</td>
                                <td class="auto-style183">&nbsp;</td>
                                <td align="right" class="auto-style341">
                                    <asp:Label ID="Label41" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text="Total:"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:FormView ID="FormView17" runat="server" datasourceid="SqlDataSub1" EnableModelValidation="True">
                                        <EditItemTemplate>
                                            Name:
                                            <asp:TextBox ID="NameTextBox1" runat="server" Text='<%# Bind("Name") %>' />
                                            <br />
                                            Price:
                                            <asp:TextBox ID="PriceTextBox1" runat="server" Text='<%# Bind("Price") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            Name:
                                            <asp:TextBox ID="NameTextBox2" runat="server" Text='<%# Bind("Name") %>' />
                                            <br />
                                            Price:
                                            <asp:TextBox ID="PriceTextBox2" runat="server" Text='<%# Bind("Price") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Panel ID="Panel16" runat="server">
                                                <table>
                                                    <tr>
                                                        <td style="text-align: right">&nbsp;</td>
                                                        <td style="text-align: left">
                                                            <asp:Label ID="PriceLabel0" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="White" Text='<%# Bind("Price") %>' />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </ItemTemplate>
                                    </asp:FormView>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSoNamGroup" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT Name FROM WebDetailsDataView WHERE  (Payment = 'Credit')"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSub1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(Price) AS Price FROM WebDetailsDataView WHERE  (Payment = 'Credit')"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
