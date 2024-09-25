<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Rpt_ClientCreditStatus.aspx.cs" Inherits="MobiWebApplication.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>  
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            width: 98%;
             font-family:Tahoma;
            font-size:large;
            height: 113px;
        }
        .auto-style5
        {
            width: 38px;
        }
        .auto-style6
        {
            height: 46px;
            width: 762px;
        }
        .auto-style7
        {
            height: 357px;
        }
        .auto-style8
        {
            width: 762px;
        }
        .auto-style10
        {
            width: 591px;
        }
        .auto-style11
        {
            width: 38px;
            height: 248px;
        }
        .auto-style12
        {
            width: 591px;
            height: 248px;
        }
        .auto-style13
        {
            height: 248px;
        }
        .auto-style14
        {
            width: 38px;
            height: 11px;
        }
        .auto-style15
        {
            width: 591px;
            height: 11px;
        }
        .auto-style16
        {
            height: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="PanelHomeLogin" BackColor="PowderBlue" Width="924px">
        <script>
            function doPrintdcredit() {
                var prtContent = document.getElementById('<%= Panel3.ClientID %>');
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
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style7">
                    <asp:Panel ID="Panel2" runat="server" CssClass="Panel1Registration" Width="886px" BackColor="PowderBlue" Height="900px">
                        <table class="auto-style4" bgcolor="PowderBlue">
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style10">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style11" valign="top">
                                    <asp:Button ID="Button1" runat="server" CssClass="btnlogin" Text="Print" OnClientClick="doPrintdcredit()" OnClick="Button1_Click" Height="35px" Width="65px" />
                                </td>
                                <td class="auto-style12">
                                    <asp:Panel ID="Panel3" runat="server" BorderStyle="Double" CssClass="PanelHomeLogin" Width="580px">
                                        <table class="auto-style4" bgcolor="PowderBlue">
                                            <tr>
                                                <td style="text-align: center; border-bottom-style: solid;" class="auto-style6" bgcolor="PowderBlue">CLIENT CREDIT STATUS</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="PowderBlue" class="auto-style8">
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" EnableModelValidation="True" GridLines="Horizontal" style="font-size: small; text-align: left" Width="582px" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" Font-Names="Tahoma" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="Sno">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="center" />
                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="Name" HeaderText="Client" SortExpression="Name" />
                                                            <asp:BoundField DataField="Phone" HeaderText="Contact" SortExpression="Phone" />
                                                            <asp:BoundField DataField="PlateNumber" HeaderText="Plate No." SortExpression="PlateNumber" />
                                                            <asp:BoundField DataField="brand" HeaderText="Vehicle Type" SortExpression="brand" />
                                                            <asp:BoundField DataField="amount" HeaderText="Total Credit" SortExpression="amount" DataFormatString="{0:#,###}" />
                                                        </Columns>
                                                        <FooterStyle BackColor="White" ForeColor="#333333" />
                                                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle BackColor="White" ForeColor="#333333" />
                                                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber], [brand], [Name], [Phone], [amount] FROM [ClientCreditStatus2] ORDER BY [amount] DESC"></asp:SqlDataSource>
                                </td>
                                <td valign="top" class="auto-style13"></td>
                            </tr>
                            <tr>
                                <td class="auto-style14" bgcolor="PowderBlue"></td>
                                <td class="auto-style15">
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </td>
                                <td bgcolor="PowderBlue" class="auto-style16"></td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
