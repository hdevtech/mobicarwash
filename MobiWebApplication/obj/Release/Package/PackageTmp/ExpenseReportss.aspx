﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ExpenseReportss.aspx.cs" Inherits="MobiWebApplication.WebForm34" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="WiewServedVehicleByDay.aspx.cs" Inherits="MobiWebApplication.WebForm31" %>--%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ViewServedVehicleCredit.aspx.cs" Inherits="MobiWebApplication.WebForm27" %>--%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ViewServedVehicleCredit.aspx.cs" Inherits="MobiWebApplication.WebForm26" %>--%>
<%--<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MobiWebApplication.WebForm1" Title="Untitled Page" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
  
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 99%;
    }
        .style21
        {
            height: 38px;
            width: 153px;
            text-align:left;
            
        }
        .style22
        {
            height: 31px;
            width: 153px;
            text-align:left;
            
        }
        .style24
        {
            height: 30px;
            width: 153px;
            text-align:left;
            
        }
        .style30
        {
            height: 38px;
            width: 396px;
        }
        .style31
        {
            height: 31px;
            width: 396px;
        }
        .style33
        {
            height: 30px;
            width: 396px;
        }
        .style62
        {
            height: 32px;
            width: 153px;
            text-align: left;
        }
        .style68
        {
            height: 32px;
            width: 16%;
        }
        .style83
        {
            height: 28px;
            width: 153px;
            text-align: left;
        }
        .style84
        {
            height: 28px;
            width: 396px;
        }
        .style11
    {
        height: 23px;
        font-size:larger
    }
        .style87
        {
            height: 32px;
            width: 127px;
        }
        .style89
        {
            height: 28px;
            width: 127px;
        }
        .style90
        {
            height: 38px;
            width: 127px;
        }
        .style91
        {
            height: 31px;
            width: 127px;
        }
        .style92
        {
            height: 30px;
            width: 127px;
        }
        .style106
        {
            height: 74px;
            width: 127px;
        }
        .style107
        {
            height: 74px;
            width: 153px;
            text-align: left;
        }
        .style108
        {
            height: 74px;
            width: 396px;
           
           
        }
        .style110
        {
            height: 32px;
            width: 298px;
        }
        .style115
        {
            height: 8px;
            width: 127px;
        }
        .style116
        {
            height: 8px;
            width: 153px;
            text-align: left;
        }
        .style117
        {
            height: 8px;
            width: 396px;
        }
        .style118
        {
            width: 103%;
        height: 208px;
    }
        .style122
        {
            width: 910px;
        }
        .style123
        {
            height: 4px;
            width: 127px;
        }
        .style124
        {
            height: 4px;
            width: 153px;
            text-align: left;
        }
        .style125
        {
            height: 4px;
            width: 396px;
        }
        .style127
        {
            height: 20px;
            width: 153px;
        }
        .style128
        {
            height: 20px;
        }
        .style129
        {
            height: 20px;
            width: 127px;
        }
        .style130
        {
            height: 20px;
            width: 16%;
        }
        .style131
        {
            height: 20px;
            width: 298px;
        }
        .style132
        {
            height: 13px;
            width: 127px;
        }
        .style133
        {
            height: 13px;
            width: 153px;
        }
        .style134
        {
            height: 13px;
        }
        .style135
        {
            height: 13px;
            width: 16%;
        }
        .style136
        {
            height: 13px;
            width: 298px;
        }
        .style137
        {
            height: 32px;
            width: 140px;
        }
        .auto-style15
    {
        height: 38px;
        width: 62px;
    }
        .auto-style121
        {
            height: 89px;
        }
        .auto-style122
        {
            width: 101%;
            height: 59px;
        }
        .auto-style127
        {
            width: 50px;
            height: 99px;
        }
        .auto-style128
        {
            width: 734px;
            height: 99px;
        }
        .auto-style129
        {
            height: 99px;
        }
        .auto-style147
        {
            height: 38px;
            width: 320px;
        }
        .auto-style148
        {
            width: 734px;
        }
        .auto-style149
        {
            width: 50px;
        }
        .auto-style157
        {
            width: 47px;
            font-family:TeamViewer14;
            font-size:x-large;
        }
        .auto-style163
        {
            width: 50px;
            height: 67px;
        }
        .auto-style164
        {
            width: 734px;
            height: 67px;
        }
        .auto-style166
        {
            height: 67px;
        }
        .btnaddannce
        {}
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     <script>
         function doPrintdailyRPT() {
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
    <table class="style1">
        <tr>
            <td class="auto-style15">
               
                &nbsp;</td>
            <td class="auto-style147">
                <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style30">
                
                    
                <asp:Button ID="Button2" runat="server" Text="Save" Width="56px" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
               
                </td>
            <td class="auto-style147">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="OperationDay" DataValueField="OperationDay" Height="40px" Width="229px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT top 30 [idSales], [OperationDay] FROM [StartDaily] ORDER BY [idSales] DESC"></asp:SqlDataSource>
            </td>
            <td class="style30">
                <asp:Button ID="Button1" runat="server" CssClass="btnaddannce" Height="38px" Text="Download" Width="171px" OnClick="Button1_Click1" OnClientClick="doPrintdailyRPT()" />
                <br />
                <br />
            </td>
            <td class="style30">
                
                    
                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                
                    
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                
                </td>
        </tr>
        <tr>
            <td class="auto-style121" colspan="4">
                <asp:Panel ID="Panel3" runat="server" BackColor="#006666">
                    <table class="auto-style122">
                        <tr>
                            <td class="auto-style163"></td>
                            <td class="auto-style164">
                                <asp:Panel ID="Panel4" runat="server" Height="61px" Width="860px">
                                    <table class="auto-style122">
                                        <tr>
                                            <td class="auto-style157">&nbsp;</td>
                                            <td rowspan="2" F style="text-align: center; font-size: x-large; font-family:'Times New Roman'; color:orange; font-weight: 700;">DAILY EXPENSES&nbsp;&nbsp;&nbsp; </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style157">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td class="auto-style166"></td>
                        </tr>
                        <tr>
                            <td class="auto-style127"></td>
                            <td class="auto-style128">
                                <asp:GridView ID="GridView1" runat="server" CellPadding="8" ForeColor="#333333" GridLines="None" Width="801px" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableModelValidation="True" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True">
                                    <RowStyle BackColor="#006666" ForeColor="White" Font-Bold="True"/>
                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
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
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="gray" ForeColor="White" Font-Bold="True" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [amount], [DetailsExpense], [dateAdded], [userAdded] FROM [ExpensesReports] WHERE ([OperationDay] = @OperationDay)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td class="auto-style129"></td>
                        </tr>
                        <tr>
                            <td class="auto-style149">&nbsp;</td>
                            <td class="auto-style148">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        </table>
   
    <div>
 
    
    </div>
        
    
    </asp:Content>



