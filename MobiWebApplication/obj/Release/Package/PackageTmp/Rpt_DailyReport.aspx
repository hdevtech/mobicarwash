<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Rpt_DailyReport.aspx.cs" Inherits="MobiWebApplication.WebForm18" Title="Untitled Page" %>
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
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 695px;
        }
        .style4
        {
            width: 695px;
            height: 18px;
        }
        .style5
        {
            height: 18px;
        }
        .style6
        {
            height: 24px;
        }
        .style7
        {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style4
        {
            width: 703px;
            height: 18px;
        }
        .auto-style5
        {
            width: 703px;
        }
        .auto-style6
        {
            width: 434px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="style2">
        <tr>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Print" CssClass="btnlogin" OnClientClick="doPrintdailyRPT()" OnClick="Button1_Click" Width="77px" />
            </td>
            <td class="style5">
                on:<asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Panel ID="Panel1" runat="server" CssClass="PanelHomeLogin" Width="830px">
                    <table class="style2">
                        <tr>
                            <td class="style6" colspan="2" style="text-align: center">
                                <b>DAILY SERVED&nbsp; VEHICLES</b></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Panel ID="Panel2" runat="server" CssClass="PanelLogin" Width="839px">
                                    <table class="style7">
                                        <tr>
                                            <td colspan="2">
                                                <asp:GridView ID="GridView1" runat="server" ShowFooter="True"  AutoGenerateColumns="False" EnableModelValidation="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" CellPadding="3" GridLines="Horizontal" style="font-size: small" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" Font-Names="Tahoma" Width="823px">
                                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                                    <Columns>
                                                         <asp:TemplateField HeaderText="Sno">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Right" />
                                            </asp:TemplateField>
                                                        <asp:BoundField DataField="PlateNumber" HeaderText="Plate No." SortExpression="PlateNumber" />
                                                        <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
                                                        <asp:BoundField DataField="NameService" HeaderText="Service" SortExpression="NameService" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                        <asp:BoundField DataField="PayedCash" HeaderText="Payed Cash" SortExpression="PayedCash" />
                                                        <asp:BoundField DataField="Payment" HeaderText="Payment" SortExpression="Payment" />
                                                         <asp:BoundField DataField="StaffName" HeaderText="Washman" SortExpression="StaffName" />
                                                        <asp:BoundField DataField="dateRecorded" HeaderText="Issued Date" SortExpression="dateRecorded" /> 
                                                       
                                                         <asp:TemplateField></asp:TemplateField>
                                                       
                                                    </Columns>
                                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="auto-style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="auto-style6">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
