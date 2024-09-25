<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="StaffCreditStatusNew.aspx.cs" Inherits="MobiWebApplication.WebForm53" %>
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
        .auto-style213
        {
            width: 100%;
            height: 21px;
        }
        .auto-style274
        {
            text-align: center;
        }
        .auto-style273
        {
            width: 394px;
        }
        .auto-style275 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="auto-style4">
        <tr>
            <td align="center" class="auto-style275">
                                                                                            <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text="STAFF CREDIT STATUS"></asp:Label>
                                                                                        </td>
        </tr>
        <tr>
            <td>
                                                                                            <asp:Panel ID="Panel49" runat="server" BackColor="Gray" CssClass="BUTTOM">
                                                                                                <table class="auto-style26">
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <table class="auto-style26">
                                                                                                                <tr>
                                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                                        <asp:GridView ID="gvInformation0" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="StaffCreditStatus" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" style="margin-left: 0px" Width="893px" Font-Size="Large">
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
                                                                                                                                    <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                                                                                                </asp:TemplateField>
                                                                                                                                <asp:BoundField DataField="StaffName" HeaderText="Staff Name" SortExpression="StaffName" >
                                                                                                                                <ItemStyle Font-Bold="False" />
                                                                                                                                </asp:BoundField>
                                                                                                                                <asp:BoundField DataField="phone" HeaderText="Contact No" SortExpression="phone" >
                                                                                                                                <ItemStyle Font-Bold="False" />
                                                                                                                                </asp:BoundField>
                                                                                                                                <asp:BoundField DataField="TotalCredit" HeaderText="Total Credit" SortExpression="TotalCredit">
                                                                                                                                <ItemStyle ForeColor="Orange" HorizontalAlign="Center" Font-Bold="False" />
                                                                                                                                </asp:BoundField>
                                                                                                                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" >
                                                                                                                                <ItemStyle Font-Bold="False" />
                                                                                                                                </asp:BoundField>
                                                                                                                            </Columns>
                                                                                                                        </asp:GridView>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                                        <table class="auto-style213">
                                                                                                                            <tr>
                                                                                                                                <td class="auto-style274">&nbsp;</td>
                                                                                                                                <td class="auto-style273">&nbsp;</td>
                                                                                                                                <td style="text-align: right">
                                                                                                                                    <asp:FormView ID="FormView15" runat="server" DataSourceID="StaffCreditStatusTotal" EnableModelValidation="True">
                                                                                                                                        <EditItemTemplate>
                                                                                                                                            TotalCredit:
                                                                                                                                            <asp:TextBox ID="TotalCreditTextBox" runat="server" Text='<%# Bind("TotalCredit") %>' />
                                                                                                                                            <br />
                                                                                                                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                        </EditItemTemplate>
                                                                                                                                        <InsertItemTemplate>
                                                                                                                                            TotalCredit:
                                                                                                                                            <asp:TextBox ID="TotalCreditTextBox0" runat="server" Text='<%# Bind("TotalCredit") %>' />
                                                                                                                                            <br />
                                                                                                                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                        </InsertItemTemplate>
                                                                                                                                        <ItemTemplate>
                                                                                                                                            <asp:Panel ID="Panel14" runat="server">
                                                                                                                                                <table>
                                                                                                                                                    <tr>
                                                                                                                                                        <td style="text-align: right">
                                                                                                                                                            <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Text="TOTAL:"></asp:Label>
                                                                                                                                                        </td>
                                                                                                                                                        <td style="text-align: left">
                                                                                                                                                            <asp:Label ID="TotalCreditLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Bind("TotalCredit") %>' />
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </asp:Panel>
                                                                                                                                        </ItemTemplate>
                                                                                                                                    </asp:FormView>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td class="auto-style274">&nbsp;</td>
                                                                                                                                <td class="auto-style273">
                                                                                                                                    <asp:SqlDataSource ID="StaffCreditStatusTotal" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM([TotalCredit]) AS TotalCredit FROM MGridViewCreditControlStaff2"></asp:SqlDataSource>
                                                                                                                                </td>
                                                                                                                                <td style="text-align: right">
                                                                                                                                    <asp:SqlDataSource ID="StaffCreditStatus" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [StaffName], [phone], [TotalCredit], [status] FROM [MGridViewCreditControlStaff2] ORDER BY [TotalCredit] DESC"></asp:SqlDataSource>
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
                                                                                        </td>
        </tr>
    </table>
</asp:Content>
