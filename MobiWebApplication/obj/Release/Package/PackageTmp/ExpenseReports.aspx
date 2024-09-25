<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ExpenseReports.aspx.cs" Inherits="MobiWebApplication.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>
        function doPrintdailyRPT() {
            var prtContent = document.getElementById('<%= Panel1.ClientID %>');
         prtContent.border = 0; //set no border here
         WinPrint = window.open('', '', 'left=0,top=0,width=800,height=800,toolbar=0,scrollbars=1,status=0,resizable=1');
         WinPrint.document.write(prtContent.outerHTML);
         WinPrint.document.close();
         WinPrint.focus();
         WinPrint.print();
         //WinPrint.close();
     }
         </script>

    <style type="text/css">
        .auto-style4
        {
            width: 99%;
            height: 122px;
        }
        .auto-style8
        {
        }
        .auto-style9
        {
            width: 494px;
            height: 14px;
            font-family:Tahoma;
            font-size:large
        }
        .auto-style20
        {
            height: 268px;
            width: 896px;
        }
        .auto-style21
        {
            height: 268px;
        }
        .auto-style25
        {
            height: 14px;
            width: 98px;
        }
        .auto-style30
        {
            font-size: large;
        }
        .auto-style32
        {
            height: 268px;
            width: 66px;
        }
        .auto-style34
        {
            height: 13px;
            width: 66px;
        }
        .auto-style35
        {
            width: 896px;
            height: 13px;
        }
        .auto-style36
        {
            height: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style34">
            </td>
            <td class="auto-style35">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="27px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="184px" DataSourceID="SqlDataSource1" DataTextField="OperationDay" DataValueField="OperationDay">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [OperationDay], [idSales] FROM [StartDaily] ORDER BY [idSales] DESC"></asp:SqlDataSource>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button2" runat="server" Text="Print" Width="106px" CssClass="btnlogin" Height="40px" OnClientClick="doPrintdailyRPT()" OnClick="Button2_Click" />
                </td>
            <td class="auto-style36"></td>
        </tr>
        <tr>
            <td class="auto-style32"></td>
            <td class="auto-style20">
                <asp:Panel ID="Panel1" runat="server" Height="289px" Width="898px">
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style9">&nbsp;&nbsp;<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DAILY EXPENSES</span></h4>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td class="auto-style25">
                                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8" colspan="2">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableModelValidation="True" Height="97px" Width="706px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound1" ShowFooter="True" style="font-size: small">
                                    <Columns>
                                         <asp:TemplateField HeaderText="Sno">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                                        <asp:BoundField DataField="DetailsExpense" HeaderText="DetailsExpense" SortExpression="DetailsExpense" />
                                        <asp:BoundField DataField="dateAdded" HeaderText="dateAdded" SortExpression="dateAdded" />
                                        <asp:BoundField DataField="userAdded" HeaderText="userAdded" SortExpression="userAdded" />
                                    </Columns>
                                    <FooterStyle BackColor="White" BorderStyle="Solid" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [amount], [DetailsExpense], [dateAdded], [userAdded] FROM [ExpensesReports] WHERE ([OperationDay] = @OperationDay)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [amount], [DetailsExpense], [dateAdded] FROM [ExpensesReports] WHERE ([OperationDay] = @OperationDay)"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style20">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
        </table>
</asp:Content>
