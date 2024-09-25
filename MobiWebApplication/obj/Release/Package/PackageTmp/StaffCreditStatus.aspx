<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="StaffCreditStatus.aspx.cs" Inherits="MobiWebApplication.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

   
    <style type="text/css">
        .auto-style4
        {
            width: 100%;
            height: 55px;
        }
        .auto-style5
        {
            width: 154px;
        }
        .auto-style6
        {
            width: 620px;
        }
        .auto-style7
        {
            height: 37px;
            text-align: center;
        }
        .auto-style8
        {
            height: 37px;
            text-align: center;
            font-size: medium;
        }
        .auto-style9
        {
            width: 154px;
            height: 208px;
        }
        .auto-style10
        {
            width: 620px;
            height: 208px;
        }
        .auto-style11
        {
            height: 208px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     <script>
         function doPrintdailyRPT ()
         {
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
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                                    <%--<asp:Button ID="Button1" runat="server" CssClass="btnlogin" Text="Print" OnClientClick="doPrintdailyRPT()" OnClick="Button1_Click" Height="43px" Width="105px" />--%>
                                    <asp:Button ID="Button2" runat="server" OnClientClick="doPrintdailyRPT()" Text="Print" CssClass="btnlogin" Height="38px" OnClick="Button2_Click" Width="122px" />
                                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">
                <asp:Panel ID="Panel1" runat="server" Height="261px" Width="625px">
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style7"></td>
                            <td class="auto-style8"><strong>STAFF CREDIT STATUS</strong></td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" Width="617px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" style="font-size: small">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sno" >
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        <asp:BoundField DataField="StaffName" HeaderText="Staff Name" SortExpression="StaffName" />
                                        <asp:BoundField DataField="phone" HeaderText="Contact No" SortExpression="phone" />
                                        <asp:BoundField DataField="TotalCredit" HeaderText="Total Credit" SortExpression="TotalCredit" />
                                    </Columns>
                                    <FooterStyle BackColor="White" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [StaffName], [phone], [TotalCredit] FROM [MGridViewCreditControlStaff2] ORDER BY [TotalCredit] DESC"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style11">
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
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
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
            <td>
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
        </tr>
        </table>
</asp:Content>
