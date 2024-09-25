<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="UnpaidReport.aspx.cs" Inherits="MobiWebApplication.WebForm64" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style26
        {
            width: 82%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="ServedDrinkMontly" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT operationMonth FROM BarRequestViewStock"></asp:SqlDataSource>
                    <table class="auto-style4">
                        <tr>
                            <td>
                                <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="#244242" CssClass="BUTTOMNUMBER" DataSourceID="ServedDrinkMontly" DataTextField="operationMonth" DataValueField="operationMonth" Font-Size="X-Large" ForeColor="White" Height="40px" Width="470px">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:Button ID="Button38" runat="server" Height="48px" OnClick="Button38_Click" Text="Back" Width="175px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel105" runat="server" BackColor="#006666" CssClass="BUTTOM">
                        <table class="auto-style26">
                            <tr>
                                <td>
                                    <table class="auto-style26">
                                        <tr>
                                            <td style="font-weight: 700" valign="top">
                                                <asp:SqlDataSource ID="Command1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand, TableeNo, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandB WHERE  (operationMonth=@operationMonth)  and (Total != Paid) AND (requestStatus = 'confirmed') ORDER BY idCommand DESC">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="DropDownList14" Name="operationMonth" PropertyName="SelectedValue" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <asp:Label ID="Label6" runat="server" Text="66" Visible="False"></asp:Label>
                                                <asp:SqlDataSource ID="Remarks" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand, Remarks FROM BarCommandB WHERE (idCommand = @idCommand)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <asp:FormView ID="FormView41" runat="server" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" DataSourceID="Remarks" EnableModelValidation="True" Height="30px" style="margin-left: 0px" Width="100%">
                                                    <EditItemTemplate>
                                                        No:
                                                        <asp:TextBox ID="NoTextBox11" runat="server" Text='<%# Bind("Total") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="UpdateButton36" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton36" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        No:
                                                        <asp:TextBox ID="NoTextBox12" runat="server" Text='<%# Bind("Total") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="InsertButton36" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton36" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Panel ID="Panel124" runat="server">
                                                            <table class="auto-style26">
                                                                <tr>
                                                                    <td style="text-align: right">&nbsp;</td>
                                                                    <td style="text-align: left">
                                                                        <asp:Label ID="NoLabel5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text='<%# Eval("Remarks") %>' />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </ItemTemplate>
                                                </asp:FormView>
                                                <asp:GridView ID="GridClientPayment2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command1" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" Font-Size="Large" ForeColor="#333333" GridLines="None" OnRowDataBound="GridClientPayment2_RowDataBound" OnSelectedIndexChanged="GridClientPayment2_SelectedIndexChanged" ShowFooter="True" Width="867px">
                                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                    <FooterStyle BackColor="#006666" Font-Bold="True" ForeColor="Orange" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                    <EditRowStyle BackColor="#999999" />
                                                    <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="idCommand" HeaderText="Ref No" SortExpression="idCommand">
                                                        <FooterStyle ForeColor="#244242" />
                                                        <HeaderStyle Font-Size="Small" HorizontalAlign="Center" />
                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Time" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="Time">
                                                        <HeaderStyle Font-Bold="False" />
                                                        <ItemStyle Font-Bold="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="TableeNo" HeaderText="TableNo" SortExpression="TableeNo">
                                                        <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                        <HeaderStyle Font-Bold="False" />
                                                        <ItemStyle Font-Bold="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Paid" HeaderText="Paid" SortExpression="Paid">
                                                        <HeaderStyle Font-Bold="False" />
                                                        <ItemStyle Font-Bold="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Balance" HeaderText="Unpaid" SortExpression="Balance">
                                                        <HeaderStyle Font-Bold="False" />
                                                        <ItemStyle Font-Bold="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="userAdded" HeaderText="Operator" ReadOnly="True" SortExpression="userAdded">
                                                        <HeaderStyle Font-Bold="False" />
                                                        <ItemStyle Font-Bold="False" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="TableeNo" HeaderText="Status" SortExpression="TableeNo">
                                                        <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                        </asp:BoundField>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:Button ID="Button37" runat="server" BackColor="#006666" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="26px" OnClick="Button37_Click2" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="100px" />
                                                            </ItemTemplate>
                                                            <ItemStyle BackColor="#006666" CssClass="input" Font-Bold="False" HorizontalAlign="Right" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
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
</asp:Content>
