<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ReportsMenu.aspx.cs" Inherits="MobiWebApplication.WebForm65" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="Betty.aspx.cs" Inherits="MobiWebApplication.WebForm65" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style339
        {
            width: 100%;
        }
        .auto-style396 {
        }
        .auto-style389 {
            height: 21px;
        }
        .auto-style390 {
            width: 261px;
        }
        .auto-style391 {
            width: 321px;
        }
        .auto-style393 {
            width: 237px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:Panel ID="Panel100" runat="server">
        <table class="auto-style4">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:FormView ID="FormView1" runat="server" BackColor="#333333" CssClass="BUTTOMM" DataSourceID="DailySummary" EnableModelValidation="True" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="White" style="text-align: left; margin-right: 0px" Width="865px">
                        <EditItemTemplate>
                            Served Vehicle:
                            <asp:TextBox ID="servedVehTextBox1" runat="server" Text='<%# Bind("servedVeh") %>' />
                            <br />
                            Daily Services Value:
                            <asp:TextBox ID="Service_AmountTextBox1" runat="server" Text='<%# Bind("Service_Amount") %>' />
                            <br />
                            Daily Served Vehicle by Credit:
                            <asp:TextBox ID="Credit_AmountTextBox1" runat="server" Text='<%# Bind("Credit_Amount") %>' />
                            <br />
                            Served Vehicle by Momo:
                            <asp:TextBox ID="momoTextBox3" runat="server" Text='<%# Bind("momo") %>' />
                            <br />
                            Paid Amount for Served Vehicle:
                            <asp:TextBox ID="Payed_AmountTextBox1" runat="server" Text='<%# Bind("Payed_Amount") %>' />
                            <br />
                            Daily Staff Credit:
                            <asp:TextBox ID="Staff_CreditTextBox1" runat="server" Text='<%# Bind("Staff_Credit") %>' />
                            <br />
                            Amount Paid by Client on Credit:
                            <asp:Label ID="ClientPaymentTextBox1" runat="server" Text='<%# Bind("ClientPayment") %>' />
                            <br />
                            Amount Paid by Staff on Credit:
                            <asp:TextBox ID="AmountPayeddTextBox1" runat="server" Text='<%# Bind("AmountPayedd") %>' />
                            <br />
                            Daily Expenses:
                            <asp:TextBox ID="Daily_ExpensesTextBox1" runat="server" Text='<%# Bind("Daily_Expenses") %>' />
                            <br />
                            Balance:
                            <asp:TextBox ID="BalannceTextBox1" runat="server" Text='<%# Bind("Balannce") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton29" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton29" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Served Vehicle:
                            <asp:TextBox ID="servedVehTextBox2" runat="server" Text='<%# Bind("servedVeh") %>' />
                            <br />
                            Daily Services Value:
                            <asp:TextBox ID="Service_AmountTextBox2" runat="server" Text='<%# Bind("Service_Amount") %>' />
                            <br />
                            Daily Served Vehicle by Credit:
                            <asp:TextBox ID="Credit_AmountTextBox2" runat="server" Text='<%# Bind("Credit_Amount") %>' />
                            <br />
                            Served Vehicle by Momo:
                            <asp:TextBox ID="momoTextBox4" runat="server" Text='<%# Bind("momo") %>' />
                            <br />
                            Paid Amount for Served Vehicle:
                            <asp:TextBox ID="Payed_AmountTextBox2" runat="server" Text='<%# Bind("Payed_Amount") %>' />
                            <br />
                            Daily Staff Credit:
                            <asp:TextBox ID="Staff_CreditTextBox2" runat="server" Text='<%# Bind("Staff_Credit") %>' />
                            <br />
                            Amount Paid by Client on Credit:
                            <asp:Label ID="ClientPaymentTextBox2" runat="server" Text='<%# Bind("ClientPayment") %>' />
                            <br />
                            Amount Paid by Staff on Credit:
                            <asp:TextBox ID="AmountPayeddTextBox2" runat="server" Text='<%# Bind("AmountPayedd") %>' />
                            <br />
                            Daily Expenses:
                            <asp:TextBox ID="Daily_ExpensesTextBox2" runat="server" Text='<%# Bind("Daily_Expenses") %>' />
                            <br />
                            Balance:
                            <asp:TextBox ID="BalannceTextBox2" runat="server" Text='<%# Bind("Balannce") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton29" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton29" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Panel ID="Panel98" runat="server">
                                <table class="auto-style339">
                                    <tr>
                                        <td>
                                            <table align="left" class="auto-style339">
                                                <tr>
                                                    <td align="center" class="auto-style396" colspan="5" style="border-style: none none dashed none; border-width: medium; border-color: #FFFFFF">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="AlertLabel37" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">BALANCE:</asp:Label>
                                                                </td>
                                                                <td align="left">
                                                                    <asp:Label ID="AlertLabel39" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("Balannce") %>' />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td align="left" style="border-style: none none dashed none; border-width: medium; border-color: #FFFFFF">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" class="auto-style389" colspan="6">
                                                        <asp:Panel ID="Panel99" runat="server">
                                                            <table class="auto-style339">
                                                                <tr>
                                                                    <td align="right" class="auto-style390">
                                                                        <asp:Label ID="AlertLabel24" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">AMOUNT-A:</asp:Label>
                                                                    </td>
                                                                    <td align="left" class="auto-style391">
                                                                        <asp:Label ID="AlertLabel27" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("ValueA") %>'></asp:Label>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td align="right" class="auto-style393">
                                                                        <asp:Label ID="AlertLabel30" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">AMOUNT-B:</asp:Label>
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:Label ID="AlertLabel35" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("ValueB") %>' />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" class="auto-style390">
                                                                        <asp:Label ID="AlertLabel25" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">INCOME-1:</asp:Label>
                                                                    </td>
                                                                    <td align="left" class="auto-style391">
                                                                        <asp:Label ID="AlertLabel28" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("InterestA") %>'></asp:Label>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td align="right" class="auto-style393">
                                                                        <asp:Label ID="AlertLabel31" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">INCOME-2:</asp:Label>
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:Label ID="AlertLabel34" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("InterestB") %>' />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" class="auto-style390">&nbsp;</td>
                                                                    <td align="left" class="auto-style391">&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                    <td align="right" class="auto-style393">&nbsp;</td>
                                                                    <td align="left">&nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="border-style: dashed none none none; border-width: medium; border-color: #FFFFFF">&nbsp;</td>
                                                    <td align="right" style="border-style: dashed none none none; border-width: medium; border-color: #FFFFFF">&nbsp;</td>
                                                    <td align="left" style="border-style: dashed none none none; border-width: medium; border-color: #FFFFFF">&nbsp;</td>
                                                    <td align="right" style="border-style: dashed none none none; border-width: medium; border-color: #FFFFFF">&nbsp;</td>
                                                    <td align="left" style="border-style: dashed none none none; border-width: medium; border-color: #FFFFFF">&nbsp;</td>
                                                    <td align="left" style="border-style: dashed none none none; border-width: medium; border-color: #FFFFFF">&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="DailySummary" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idCalCulator], [Team1], [Team2], [Amount], [ValueA], [ValueB], [InterestA], [InterestB] FROM [BettFormula] ORDER BY [idCalCulator] DESC"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
