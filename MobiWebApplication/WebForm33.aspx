<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="WebForm33.aspx.cs" Inherits="MobiWebApplication.WebForm33" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style28 {
            height: 20px;
        }
        .auto-style339
        {
            width: 100%;
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
        .auto-style394 {
        }
        .auto-style395 {
            width: 261px;
            height: 74px;
        }
        .auto-style396 {
            width: 321px;
            height: 74px;
        }
        .auto-style397 {
            height: 74px;
        }
        .auto-style398 {
            width: 237px;
            height: 74px;
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" BackColor="#244242">
                        <table class="auto-style4">
                            <tr>
                                <td align="center" class="auto-style394" colspan="2">
                                    <table class="auto-style4">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox9" runat="server" BackColor="#244242" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="White" Height="38px" placeholder="Capical" Width="192px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="White" Height="38px" placeholder="Team-1" Width="192px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox8" runat="server" BackColor="#244242" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="White" Height="38px" placeholder="Team-2" Width="192px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style394">
                                    <asp:Button ID="Button73" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Navy" Height="49px" OnClick="Button73_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="PLACE BET" Width="223px" />
                                </td>
                                <td align="center">
                                    <asp:SqlDataSource ID="DailySummary" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idCalCulator], [Team1], [Team2], [Amount], [ValueA], [ValueB], [InterestA], [InterestB], [returnZero], [reduction], [newBetAmount], [InterestA1] FROM [BettFormula] ORDER BY [idCalCulator] DESC"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" class="auto-style28">
                                    <asp:FormView ID="FormView1" runat="server" BackColor="#333333" CssClass="BUTTOMM" DataSourceID="DailySummary" EnableModelValidation="True" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="White" style="text-align: left; margin-right: 0px">
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
                                                                                    <asp:Label ID="AlertLabel37" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">Capital:</asp:Label>
                                                                                </td>
                                                                                <td align="left">
                                                                                    <asp:Label ID="AlertLabel39" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("Amount") %>' />
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
                                                                                        <asp:Label ID="AlertLabel24" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">Amout-A:</asp:Label>
                                                                                    </td>
                                                                                    <td align="left" class="auto-style391">
                                                                                        <asp:Label ID="AlertLabel27" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("ValueA") %>'></asp:Label>
                                                                                    </td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td align="right" class="auto-style393">
                                                                                        <asp:Label ID="AlertLabel30" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">Amount-B:</asp:Label>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <asp:Label ID="AlertLabel35" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("ValueB") %>' />
                                                                                    </td>
                                                                                    <td align="left">&nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" class="auto-style395">
                                                                                        <asp:Label ID="AlertLabel25" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">Income-1:</asp:Label>
                                                                                    </td>
                                                                                    <td align="left" class="auto-style396">
                                                                                        <asp:Label ID="AlertLabel28" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("InterestA") %>'></asp:Label>
                                                                                    </td>
                                                                                    <td class="auto-style397"></td>
                                                                                    <td align="right" class="auto-style398">
                                                                                        <asp:Label ID="AlertLabel31" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">Income-2:</asp:Label>
                                                                                    </td>
                                                                                    <td align="left" class="auto-style397">
                                                                                        <asp:Label ID="AlertLabel34" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("InterestB") %>' />
                                                                                    </td>
                                                                                    <td align="left" class="auto-style397">&nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" class="auto-style390">
                                                                                        <asp:Label ID="AlertLabel40" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">return:</asp:Label>
                                                                                    </td>
                                                                                    <td align="left" class="auto-style391">
                                                                                        <asp:Label ID="AlertLabel41" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("returnZero") %>'></asp:Label>
                                                                                    </td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td align="right" class="auto-style393">
                                                                                        <asp:Label ID="AlertLabel42" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">reduction:</asp:Label>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <asp:Label ID="AlertLabel43" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("reduction") %>' />
                                                                                    </td>
                                                                                    <td align="left">&nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" class="auto-style390">
                                                                                        <asp:Label ID="AlertLabel44" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">New Bet:</asp:Label>
                                                                                    </td>
                                                                                    <td align="left" class="auto-style391">
                                                                                        <asp:Label ID="AlertLabel45" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("newBetAmount") %>'></asp:Label>
                                                                                    </td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td align="right" class="auto-style393">
                                                                                        <asp:Label ID="AlertLabel46" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">New Income:</asp:Label>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <asp:Label ID="AlertLabel47" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Eval("InterestA1") %>' />
                                                                                    </td>
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
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
